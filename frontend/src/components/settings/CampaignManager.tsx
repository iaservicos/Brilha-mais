import React, { useState, useEffect } from 'react';
import axios from 'axios';
import { Calendar, AlertTriangle, ShieldAlert, Edit2, Check, X } from 'lucide-react';
import { useAuthStore } from '../../store/authStore';

export default function CampaignManager() {
  const { token } = useAuthStore();
  const [isModalOpen, setIsModalOpen] = useState(false);
  const [dataInicio, setDataInicio] = useState('');
  const [duracaoMeses, setDuracaoMeses] = useState<number>(1);
  const [limparDadosBrutos, setLimparDadosBrutos] = useState(false);
  const [confirmText, setConfirmText] = useState('');
  const [loading, setLoading] = useState(false);
  const [isProcessing, setIsProcessing] = useState(false);
  const [error, setError] = useState('');
  const [successMessage, setSuccessMessage] = useState('');
  
  const [campanhaAtual, setCampanhaAtual] = useState<{dataInicio: string, dataFim: string, duracaoMeses: number} | null>(null);

  // Edição Inline
  const [isEditing, setIsEditing] = useState(false);
  const [editInicio, setEditInicio] = useState('');
  const [editDuracao, setEditDuracao] = useState(1);

  const formatDate = (dateStr: string) => {
    if (!dateStr) return '';
    const [y, m, d] = dateStr.split('-');
    return `${d}/${m}/${y}`;
  };

  useEffect(() => {
    fetchCampanhaAtual();
  }, []);

  const fetchCampanhaAtual = async () => {
    try {
      const baseURL = import.meta.env.VITE_API_URL || 'http://localhost:8080/api/v1';
      const response = await axios.get(`${baseURL}/campanha/ativa`, {
        headers: { Authorization: `Bearer ${token}` }
      });
      setCampanhaAtual(response.data);
    } catch (err) {
      console.error('Erro ao buscar campanha', err);
    }
  };

  const handleProcessarCalculos = async () => {
    setIsProcessing(true);
    setError('');
    setSuccessMessage('');
    try {
      const baseURL = import.meta.env.VITE_API_URL || 'http://localhost:8080/api/v1';
      await axios.post(`${baseURL}/dashboard/calcular`, {}, {
        headers: { Authorization: `Bearer ${token}` },
        timeout: 120000
      });
      setSuccessMessage('Cálculos finalizados com sucesso!');
      setTimeout(() => setSuccessMessage(''), 5000);
    } catch (err: any) {
      setError('Erro ao processar os cálculos da campanha.');
    } finally {
      setIsProcessing(false);
    }
  };

  const handleReset = async () => {
    if (confirmText !== 'CONFIRMAR') {
      setError('Digite CONFIRMAR para prosseguir.');
      return;
    }
    
    if (!dataInicio || !duracaoMeses) {
      setError('Preencha a data de início e a duração da nova campanha.');
      return;
    }

    setLoading(true);
    setError('');

    try {
      const baseURL = import.meta.env.VITE_API_URL || 'http://localhost:8080/api/v1';
      await axios.post(`${baseURL}/campanha/nova-campanha`, {
        dataInicio,
        duracaoMeses,
        limparDadosBrutos
      }, {
        headers: { Authorization: `Bearer ${token}` }
      });

      setSuccessMessage('Nova campanha criada. Iniciando processamento automático...');
      setIsModalOpen(false);
      setConfirmText('');
      setLimparDadosBrutos(false);
      await fetchCampanhaAtual();
      
      // Engatilha o cálculo automaticamente
      handleProcessarCalculos();
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
      
      <div className="bg-light-surface dark:bg-[#1e293b] rounded-2xl p-6 border border-light-borderStrong dark:border-border shadow-lg flex flex-col items-start gap-4">
        <div className="w-full flex justify-between items-center">
          <h2 className="text-xl font-bold text-light-text-main dark:text-text-main flex items-center gap-2">
            <Calendar className="text-accent-teal" size={24} />
            Campanha Ativa
          </h2>
          {campanhaAtual && !isEditing && (
            <button 
              onClick={() => {
                setEditInicio(campanhaAtual.dataInicio);
                setEditDuracao(campanhaAtual.duracaoMeses || 1);
                setIsEditing(true);
              }}
              className="text-light-text-muted dark:text-text-muted hover:text-accent-teal transition-colors flex items-center gap-2 text-sm"
            >
              <Edit2 size={16} />
              Editar
            </button>
          )}
        </div>
        
        {campanhaAtual ? (
          isEditing ? (
            <div className="w-full bg-slate-100 dark:bg-surface/50 p-4 rounded-xl border border-light-borderStrong dark:border-border space-y-4">
              <div className="grid grid-cols-2 gap-4">
                <div className="space-y-1">
                  <label className="text-xs font-semibold text-light-text-muted dark:text-text-muted uppercase">Data de Início</label>
                  <input 
                    type="date" 
                    className="w-full bg-slate-50 dark:bg-surface border border-light-borderStrong dark:border-border rounded-xl p-3 text-light-text-main dark:text-slate-200 focus:outline-none focus:border-accent-teal focus:ring-1 focus:ring-accent-teal"
                    value={editInicio}
                    onChange={(e) => setEditInicio(e.target.value)}
                  />
                </div>
                <div className="space-y-1">
                  <label className="text-xs font-semibold text-light-text-muted dark:text-text-muted uppercase">Duração (Meses)</label>
                  <select
                    className="w-full bg-slate-50 dark:bg-surface border border-light-borderStrong dark:border-border rounded-xl p-3 text-light-text-main dark:text-slate-200 focus:outline-none focus:border-accent-teal focus:ring-1 focus:ring-accent-teal cursor-pointer"
                    value={editDuracao}
                    onChange={(e) => setEditDuracao(Number(e.target.value))}
                  >
                    {[1, 2, 3, 4, 5, 6, 12].map(meses => (
                      <option key={meses} value={meses}>{meses} {meses === 1 ? 'Mês' : 'Meses'}</option>
                    ))}
                  </select>
                </div>
              </div>
              <div className="flex gap-2 justify-end">
                <button 
                  onClick={() => setIsEditing(false)}
                  className="px-4 py-2 rounded-lg text-light-text-secondary dark:text-slate-400 hover:bg-slate-200 dark:hover:bg-surface transition-colors flex items-center gap-2 text-sm"
                >
                  <X size={16} /> Cancelar
                </button>
                <button 
                  onClick={async () => {
                    setLoading(true);
                    try {
                      const baseURL = import.meta.env.VITE_API_URL || 'http://localhost:8080/api/v1';
                      await axios.post(`${baseURL}/campanha/ativa`, {
                        dataInicio: editInicio,
                        duracaoMeses: editDuracao
                      }, {
                        headers: { Authorization: `Bearer ${token}` }
                      });
                      setIsEditing(false);
                      setSuccessMessage('Campanha atualizada com sucesso!');
                      fetchCampanhaAtual();
                      setTimeout(() => setSuccessMessage(''), 3000);
                    } catch(err) {
                      setError('Erro ao atualizar campanha.');
                    } finally {
                      setLoading(false);
                    }
                  }}
                  disabled={loading}
                  className="px-4 py-2 rounded-lg bg-accent-teal/20 text-accent-teal hover:bg-accent-teal/30 border border-accent-teal/30 transition-colors flex items-center gap-2 font-semibold text-sm"
                >
                  <Check size={16} /> Salvar
                </button>
              </div>
            </div>
          ) : (
            <div className="flex gap-4 items-center">
              <div className="bg-slate-100 dark:bg-surface p-4 rounded-xl">
                <p className="text-sm text-light-text-muted dark:text-text-muted">Início</p>
                <p className="text-lg font-bold text-light-text-main dark:text-slate-200">{formatDate(campanhaAtual.dataInicio)}</p>
              </div>
              <div className="bg-slate-100 dark:bg-surface p-4 rounded-xl">
                <p className="text-sm text-light-text-muted dark:text-text-muted">Fim</p>
                <p className="text-lg font-bold text-light-text-main dark:text-slate-200">{formatDate(campanhaAtual.dataFim)}</p>
              </div>
              <div className="bg-slate-100 dark:bg-surface p-4 rounded-xl">
                <p className="text-sm text-light-text-muted dark:text-text-muted">Duração</p>
                <p className="text-lg font-bold text-light-text-main dark:text-slate-200">{campanhaAtual.duracaoMeses || 1} {campanhaAtual.duracaoMeses === 1 ? 'mês' : 'meses'}</p>
              </div>
            </div>
          )
        ) : (
          <div className="flex flex-col items-start gap-3 w-full py-4">
            <p className="text-light-text-muted dark:text-text-muted">Nenhuma campanha ativa no momento.</p>
          </div>
        )}

        {campanhaAtual ? (
          <div className="flex flex-wrap items-center gap-3 mt-2">
            <button 
              onClick={handleProcessarCalculos}
              disabled={isProcessing}
              className="bg-accent-teal hover:bg-accent-teal/80 text-white px-6 py-3 rounded-xl font-bold transition-all flex items-center gap-2 disabled:opacity-50 disabled:cursor-not-allowed"
            >
              <Check size={20} />
              {isProcessing ? 'Iniciando...' : 'Iniciar campanha'}
            </button>
            <button 
              onClick={() => setIsModalOpen(true)}
              className="bg-slate-100 dark:bg-surface hover:bg-slate-200 dark:hover:bg-[#253248] text-light-text-secondary dark:text-slate-300 border border-light-borderStrong dark:border-border px-6 py-3 rounded-xl font-semibold transition-all flex items-center gap-2"
            >
              Encerrar Campanha
            </button>
          </div>
        ) : (
          <button 
            onClick={() => setIsModalOpen(true)}
            className="mt-2 bg-accent-teal hover:bg-accent-teal-dark text-[#0f172a] px-6 py-3 rounded-xl font-bold transition-all flex items-center gap-2"
          >
            <Calendar size={20} />
            Iniciar Nova Campanha
          </button>
        )}
      </div>

      {isModalOpen && (
        <div className="fixed inset-0 z-50 flex items-center justify-center bg-black/60 backdrop-blur-sm p-4">
          <div className="bg-light-surface dark:bg-[#1e293b] border border-light-borderStrong dark:border-border rounded-2xl w-full max-w-lg overflow-hidden shadow-2xl animate-in zoom-in-95 duration-200">
            <div className="p-6 border-b border-light-borderStrong dark:border-border">
              {campanhaAtual ? (
                <h3 className="text-2xl font-bold text-rose-400 flex items-center gap-2">
                  <AlertTriangle />
                  Atenção: Ação Irreversível
                </h3>
              ) : (
                <h3 className="text-2xl font-bold text-accent-teal flex items-center gap-2">
                  <Calendar />
                  Configurar Nova Campanha
                </h3>
              )}
            </div>
            
            <div className="p-6 space-y-4">
              <p className="text-slate-300">
                {campanhaAtual 
                  ? "Você está prestes a encerrar a campanha atual. Configure o próximo ciclo abaixo:" 
                  : "Preencha as informações abaixo para iniciar um novo ciclo de campanha:"}
              </p>

              <div className="grid grid-cols-2 gap-4">
                <div className="space-y-1">
                  <label className="text-xs font-semibold text-light-text-muted dark:text-text-muted uppercase">Nova Data de Início</label>
                  <input 
                    type="date" 
                    className="w-full bg-slate-50 dark:bg-surface border border-light-borderStrong dark:border-border rounded-xl p-3 text-light-text-main dark:text-slate-200 focus:outline-none focus:border-accent-teal focus:ring-1 focus:ring-accent-teal"
                    value={dataInicio}
                    onChange={(e) => setDataInicio(e.target.value)}
                  />
                </div>
                <div className="space-y-1">
                  <label className="text-xs font-semibold text-light-text-muted dark:text-text-muted uppercase">Duração (Meses)</label>
                  <select
                    className="w-full bg-slate-50 dark:bg-surface border border-light-borderStrong dark:border-border rounded-xl p-3 text-light-text-main dark:text-slate-200 focus:outline-none focus:border-accent-teal focus:ring-1 focus:ring-accent-teal cursor-pointer"
                    value={duracaoMeses}
                    onChange={(e) => setDuracaoMeses(Number(e.target.value))}
                  >
                    {[1, 2, 3, 4, 5, 6, 12].map(meses => (
                      <option key={meses} value={meses}>{meses} {meses === 1 ? 'Mês' : 'Meses'}</option>
                    ))}
                  </select>
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
                    <div className={`w-5 h-5 rounded border ${limparDadosBrutos ? 'bg-rose-500 border-rose-500' : 'bg-slate-100 dark:bg-surface border-light-borderStrong dark:border-slate-600'} transition-colors flex items-center justify-center`}>
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
                <label className="text-xs font-semibold text-light-text-muted dark:text-text-muted uppercase">Digite CONFIRMAR para prosseguir</label>
                <input 
                  type="text" 
                  placeholder="CONFIRMAR"
                  className="w-full bg-slate-50 dark:bg-surface border border-light-borderStrong dark:border-border rounded-xl p-3 text-light-text-main dark:text-slate-200 focus:outline-none focus:border-rose-400 focus:ring-1 focus:ring-rose-400"
                  value={confirmText}
                  onChange={(e) => setConfirmText(e.target.value)}
                />
              </div>

              {error && <p className="text-sm text-rose-400 font-semibold">{error}</p>}
            </div>

            <div className="p-6 border-t border-light-borderStrong dark:border-border bg-slate-100 dark:bg-[#162032] flex justify-end gap-3">
              <button 
                onClick={() => setIsModalOpen(false)}
                className="px-6 py-2.5 rounded-xl text-light-text-secondary dark:text-slate-300 font-semibold hover:bg-slate-200 dark:hover:bg-surface transition-colors"
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
