import React, { useState, useEffect } from 'react';
import axios from 'axios';
import { Calendar, AlertTriangle, ShieldAlert } from 'lucide-react';
import { useAuthStore } from '../../store/authStore';

export default function CampaignManager() {
  const { token } = useAuthStore();
  const [isModalOpen, setIsModalOpen] = useState(false);
  const [dataInicio, setDataInicio] = useState('');
  const [dataFim, setDataFim] = useState('');
  const [limparDadosBrutos, setLimparDadosBrutos] = useState(false);
  const [confirmText, setConfirmText] = useState('');
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState('');
  const [successMessage, setSuccessMessage] = useState('');
  
  const [campanhaAtual, setCampanhaAtual] = useState<{dataInicio: string, dataFim: string} | null>(null);

  useEffect(() => {
    fetchCampanhaAtual();
  }, []);

  const fetchCampanhaAtual = async () => {
    try {
      const baseURL = typeof window !== 'undefined' && window.location ? `http://${window.location.hostname}:8080` : 'http://localhost:8080';
      const response = await axios.get(`${baseURL}/api/v1/campanha/ativa`, {
        headers: { Authorization: `Bearer ${token}` }
      });
      setCampanhaAtual(response.data);
    } catch (err) {
      console.error('Erro ao buscar campanha', err);
    }
  };

  const handleReset = async () => {
    if (confirmText !== 'CONFIRMAR') {
      setError('Digite CONFIRMAR para prosseguir.');
      return;
    }
    
    if (!dataInicio || !dataFim) {
      setError('Preencha as datas de início e fim da nova campanha.');
      return;
    }

    setLoading(true);
    setError('');

    try {
      const baseURL = typeof window !== 'undefined' && window.location ? `http://${window.location.hostname}:8080` : 'http://localhost:8080';
      await axios.post(`${baseURL}/api/v1/campanha/nova-campanha`, {
        dataInicio,
        dataFim,
        limparDadosBrutos
      }, {
        headers: { Authorization: `Bearer ${token}` }
      });

      setSuccessMessage('Nova campanha iniciada com sucesso!');
      setIsModalOpen(false);
      setConfirmText('');
      setLimparDadosBrutos(false);
      fetchCampanhaAtual();
      
      // Auto dismiss success message
      setTimeout(() => setSuccessMessage(''), 5000);
    } catch (err: any) {
      setError(err.response?.data?.message || 'Erro ao iniciar nova campanha.');
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="space-y-6">
      {successMessage && (
        <div className="bg-emerald-500/20 text-emerald-400 p-4 rounded-xl border border-emerald-500/30 flex items-center gap-3">
          <Calendar size={20} />
          {successMessage}
        </div>
      )}
      
      <div className="bg-[#1e293b] rounded-2xl p-6 border border-border shadow-lg flex flex-col items-start gap-4">
        <h2 className="text-xl font-bold text-text-main flex items-center gap-2">
          <Calendar className="text-accent-teal" size={24} />
          Campanha Ativa
        </h2>
        
        {campanhaAtual ? (
          <div className="flex gap-4 items-center">
            <div className="bg-surface p-4 rounded-xl">
              <p className="text-sm text-text-muted">Início</p>
              <p className="text-lg font-bold text-slate-200">{campanhaAtual.dataInicio}</p>
            </div>
            <div className="bg-surface p-4 rounded-xl">
              <p className="text-sm text-text-muted">Fim</p>
              <p className="text-lg font-bold text-slate-200">{campanhaAtual.dataFim}</p>
            </div>
          </div>
        ) : (
          <p className="text-text-muted">Nenhuma campanha ativa no momento.</p>
        )}

        <button 
          onClick={() => setIsModalOpen(true)}
          className="mt-4 bg-rose-500/20 text-rose-400 hover:bg-rose-500/30 border border-rose-500/30 px-6 py-3 rounded-xl font-semibold transition-all flex items-center gap-2"
        >
          <ShieldAlert size={20} />
          Encerrar Campanha Atual e Iniciar Nova
        </button>
      </div>

      {isModalOpen && (
        <div className="fixed inset-0 z-50 flex items-center justify-center bg-black/60 backdrop-blur-sm p-4">
          <div className="bg-[#1e293b] border border-border rounded-2xl w-full max-w-lg overflow-hidden shadow-2xl animate-in zoom-in-95 duration-200">
            <div className="p-6 border-b border-border">
              <h3 className="text-2xl font-bold text-rose-400 flex items-center gap-2">
                <AlertTriangle />
                Atenção: Ação Irreversível
              </h3>
            </div>
            
            <div className="p-6 space-y-4">
              <p className="text-slate-300">
                Você está prestes a encerrar a campanha atual. Configure o próximo ciclo abaixo:
              </p>

              <div className="grid grid-cols-2 gap-4">
                <div className="space-y-1">
                  <label className="text-xs font-semibold text-text-muted uppercase">Nova Data de Início</label>
                  <input 
                    type="date" 
                    className="w-full bg-surface border border-border rounded-xl p-3 text-slate-200 focus:outline-none focus:border-accent-teal focus:ring-1 focus:ring-accent-teal"
                    value={dataInicio}
                    onChange={(e) => setDataInicio(e.target.value)}
                  />
                </div>
                <div className="space-y-1">
                  <label className="text-xs font-semibold text-text-muted uppercase">Nova Data Fim</label>
                  <input 
                    type="date" 
                    className="w-full bg-surface border border-border rounded-xl p-3 text-slate-200 focus:outline-none focus:border-accent-teal focus:ring-1 focus:ring-accent-teal"
                    value={dataFim}
                    onChange={(e) => setDataFim(e.target.value)}
                  />
                </div>
              </div>

              <div className="bg-rose-500/10 border border-rose-500/20 p-4 rounded-xl space-y-2 mt-6">
                <label className="flex items-start gap-3 cursor-pointer group">
                  <div className="relative flex items-center mt-0.5">
                    <input 
                      type="checkbox" 
                      className="sr-only"
                      checked={limparDadosBrutos}
                      onChange={(e) => setLimparDadosBrutos(e.target.checked)}
                    />
                    <div className={`w-5 h-5 rounded border ${limparDadosBrutos ? 'bg-rose-500 border-rose-500' : 'bg-surface border-slate-600'} transition-colors flex items-center justify-center`}>
                      {limparDadosBrutos && <svg className="w-3.5 h-3.5 text-white" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth={3} d="M5 13l4 4L19 7" /></svg>}
                    </div>
                  </div>
                  <div>
                    <span className="text-rose-400 font-bold">Excluir Dados Operacionais Antigos</span>
                    <p className="text-xs text-rose-400/80 mt-1 leading-relaxed">
                      Marque se quiser limpar as tabelas de <strong>Chamados</strong>, <strong>Reincidências</strong> e <strong>Consumo de Peças</strong> da campanha que passou. 
                      <br/><strong className="text-emerald-400">Os Resultados Mensais Apurados e Rankings ficarão salvos no histórico independentemente desta opção.</strong>
                    </p>
                  </div>
                </label>
              </div>

              <div className="space-y-1 mt-6">
                <label className="text-xs font-semibold text-text-muted uppercase">Digite CONFIRMAR para prosseguir</label>
                <input 
                  type="text" 
                  placeholder="CONFIRMAR"
                  className="w-full bg-surface border border-border rounded-xl p-3 text-slate-200 focus:outline-none focus:border-rose-400 focus:ring-1 focus:ring-rose-400"
                  value={confirmText}
                  onChange={(e) => setConfirmText(e.target.value)}
                />
              </div>

              {error && <p className="text-sm text-rose-400 font-semibold">{error}</p>}
            </div>

            <div className="p-6 border-t border-border bg-[#162032] flex justify-end gap-3">
              <button 
                onClick={() => setIsModalOpen(false)}
                className="px-6 py-2.5 rounded-xl text-slate-300 font-semibold hover:bg-surface transition-colors"
                disabled={loading}
              >
                Cancelar
              </button>
              <button 
                onClick={handleReset}
                disabled={loading || confirmText !== 'CONFIRMAR'}
                className="px-6 py-2.5 rounded-xl bg-rose-500 hover:bg-rose-600 text-white font-bold transition-colors disabled:opacity-50 disabled:cursor-not-allowed flex items-center gap-2"
              >
                {loading ? 'Processando...' : 'Iniciar Nova Campanha'}
              </button>
            </div>
          </div>
        </div>
      )}
    </div>
  );
}
