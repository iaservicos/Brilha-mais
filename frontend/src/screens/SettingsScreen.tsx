import React, { useState } from 'react';
import axios from 'axios';
import { UploadCloud, FileSpreadsheet, CheckCircle, AlertCircle, Loader2 } from 'lucide-react';

type SpreadSheetType = 'BaseDL' | 'Parts' | 'Reincidencia' | 'EncerradosRRC';

interface UploadCardProps {
  type: SpreadSheetType;
  title: string;
  description: string;
  onUpload: (type: SpreadSheetType, file: File) => void;
  status: 'idle' | 'uploading' | 'success' | 'error';
  message?: string;
}

const UploadCard = ({ type, title, description, onUpload, status, message }: UploadCardProps) => {
  const handleFileChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    if (e.target.files && e.target.files.length > 0) {
      onUpload(type, e.target.files[0]);
    }
  };

  return (
    <div className="bg-[#1e293b] rounded-2xl p-6 border border-white/5 flex flex-col h-full shadow-lg relative overflow-hidden group hover:border-accent-teal/30 transition-all">
      <div className="flex items-start justify-between mb-4">
        <div className="p-3 bg-accent-teal/10 text-accent-teal rounded-xl">
          <FileSpreadsheet size={24} />
        </div>
        {status === 'success' && <CheckCircle className="text-emerald-400" size={24} />}
        {status === 'error' && <AlertCircle className="text-rose-400" size={24} />}
        {status === 'uploading' && <Loader2 className="text-accent-teal animate-spin" size={24} />}
      </div>
      
      <h3 className="text-lg font-bold text-white mb-1">{title}</h3>
      <p className="text-sm text-slate-400 mb-6 flex-grow">{description}</p>

      <div className="relative">
        <input 
          type="file" 
          accept=".xlsx, .xls, .csv" 
          onChange={handleFileChange}
          disabled={status === 'uploading'}
          className="absolute inset-0 w-full h-full opacity-0 cursor-pointer disabled:cursor-not-allowed" 
          id={`upload-${type}`}
        />
        <label 
          htmlFor={`upload-${type}`}
          className={`flex items-center justify-center gap-2 w-full py-3 px-4 rounded-xl text-sm font-semibold transition-all border ${
            status === 'uploading' 
              ? 'bg-slate-800 text-slate-500 border-slate-700' 
              : 'bg-[#0f172a] text-slate-300 border-slate-700 group-hover:bg-accent-teal/10 group-hover:text-accent-teal group-hover:border-accent-teal/30'
          }`}
        >
          <UploadCloud size={18} />
          {status === 'uploading' ? 'Processando...' : 'Selecionar Planilha'}
        </label>
      </div>

      {message && (
        <div className={`mt-4 p-3 rounded-lg text-xs font-medium ${status === 'success' ? 'bg-emerald-500/10 text-emerald-400' : 'bg-rose-500/10 text-rose-400'}`}>
          {message}
        </div>
      )}
    </div>
  );
};

export default function SettingsScreen() {
  const [uploadStatus, setUploadStatus] = useState<Record<SpreadSheetType, { status: 'idle' | 'uploading' | 'success' | 'error', message?: string }>>({
    BaseDL: { status: 'idle' },
    Parts: { status: 'idle' },
    Reincidencia: { status: 'idle' },
    EncerradosRRC: { status: 'idle' }
  });

  const handleUpload = async (type: SpreadSheetType, file: File) => {
    setUploadStatus(prev => ({ ...prev, [type]: { status: 'uploading', message: 'Enviando arquivo...' } }));

    const formData = new FormData();
    formData.append('file', file);

    try {
      // Endpoint que aponta para o Microserviço Python FastAPI
      const baseURL = typeof window !== 'undefined' && window.location ? `http://${window.location.hostname}:8001` : 'http://localhost:8001';
      
      const response = await axios.post(`${baseURL}/api/ingestion/upload?type=${type}`, formData, {
        headers: {
          'Content-Type': 'multipart/form-data'
        }
      });
      
      setUploadStatus(prev => ({ 
        ...prev, 
        [type]: { status: 'success', message: response.data.message || 'Arquivo processado com sucesso.' } 
      }));
    } catch (error: any) {
      console.error("Erro no upload", error);
      setUploadStatus(prev => ({ 
        ...prev, 
        [type]: { status: 'error', message: error.response?.data?.detail || 'Erro ao processar planilha.' } 
      }));
    }
  };

  return (
    <div className="w-full max-w-7xl mx-auto space-y-8 animate-in fade-in zoom-in-95 duration-300 pb-12">
      <div className="bg-[#1e293b]/50 backdrop-blur-md rounded-3xl p-8 border border-white/5 shadow-2xl relative overflow-hidden">
        <div className="absolute top-0 right-0 w-64 h-64 bg-accent-teal/5 rounded-full blur-3xl -translate-y-1/2 translate-x-1/3"></div>
        
        <h1 className="text-3xl md:text-4xl font-black text-white mb-2 tracking-tight">
          Painel do <span className="text-accent-teal">Moderador</span>
        </h1>
        <p className="text-slate-400 text-sm md:text-base max-w-2xl">
          Gerencie a base de dados do sistema Brilha+. Faça o upload das planilhas mensais. O sistema está configurado com <strong>Ingestão Incremental</strong>: os chamados novos serão adicionados e os antigos preservados, sem duplicatas.
        </p>
      </div>

      <div>
        <h2 className="text-xl font-bold text-white mb-6 flex items-center gap-2">
          <UploadCloud className="text-accent-teal" size={24} />
          Ingestão de Dados
        </h2>
        
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
          <UploadCard 
            type="BaseDL"
            title="Base DL (SLA)"
            description="Planilha principal contendo todos os chamados da base DL e indicadores de SLA (IND_SLA_GERAL_GOV_CORP)."
            status={uploadStatus.BaseDL.status}
            message={uploadStatus.BaseDL.message}
            onUpload={handleUpload}
          />
          <UploadCard 
            type="Parts"
            title="Consumo de Peças"
            description="Planilha contendo o detalhamento de peças aplicadas por chamado."
            status={uploadStatus.Parts.status}
            message={uploadStatus.Parts.message}
            onUpload={handleUpload}
          />
          <UploadCard 
            type="Reincidencia"
            title="Reincidências (RRC)"
            description="Planilha contendo os apontamentos de chamados reincidentes (voltas)."
            status={uploadStatus.Reincidencia.status}
            message={uploadStatus.Reincidencia.message}
            onUpload={handleUpload}
          />
          <UploadCard 
            type="EncerradosRRC"
            title="Encerrados RRC"
            description="Planilha base de encerrados, utilizada como divisor (base) para o cálculo percentual de reincidência."
            status={uploadStatus.EncerradosRRC.status}
            message={uploadStatus.EncerradosRRC.message}
            onUpload={handleUpload}
          />
        </div>
      </div>
    </div>
  );
}
