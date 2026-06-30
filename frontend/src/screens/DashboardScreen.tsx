import React, { useEffect, useState } from 'react';
import { Award, TrendingUp, AlertCircle, UserCheck, CheckCircle2, Medal, ChevronDown, ChevronUp, Cpu, XCircle, Trophy, X, HeartHandshake } from 'lucide-react';
import { PieChart, Pie, Cell, ResponsiveContainer } from 'recharts';
import { useAuthStore } from '../store/authStore';
import { api } from '../services/api';
import toast from 'react-hot-toast';

import { CircularProgress } from '../components/ui/CircularProgress';
import ChamadosHistoryCard from '../components/dashboard/ChamadosHistoryCard';
import { ModalDetalhesPontuacao } from '../components/dashboard/ModalDetalhesPontuacao';
import { ModalElegivel } from '../components/dashboard/ModalElegivel';
import { ModalInelegivel } from '../components/dashboard/ModalInelegivel';

export default function DashboardScreen() {
  const { user } = useAuthStore();

  const [metricas, setMetricas] = useState<any>(null);
  const [selectedMonth, setSelectedMonth] = useState<string>('Média Final');
  const [loading, setLoading] = useState(true);
  const [detailsModalOpen, setDetailsModalOpen] = useState(false);
  const [isElegivelModalOpen, setIsElegivelModalOpen] = useState(false);
  const [isInelegivelModalOpen, setIsInelegivelModalOpen] = useState(false);

  useEffect(() => {
    let mounted = true;

    const applyData = (data: any) => {
      const normalize = (str: string) => str ? str.normalize('NFD').replace(/[\u0300-\u036f]/g, '').toLowerCase().trim() : '';

      const dadosTecnico = data.find((t: any) =>
        (user?.nomeCompleto && t.tecnico && normalize(t.tecnico) === normalize(user.nomeCompleto)) ||
        (user?.matricula && t.matricula && String(t.matricula) === String(user.matricula))
      );

      if (dadosTecnico) {
        setMetricas(dadosTecnico);
      } else {
        setMetricas({
          pontosTotal: 0,
          percentualSla: 0,
          percentualReincidencia: 0,
          posicaoRanking: '--',
          ultimosChamados: [],
          percentualEficienciaPecas: 0
        });
      }
    };

    const fetchMetricas = async () => {
      try {
        // 1. Carrega dados em cache para mostrar a tela rápido
        const response = await api.get('/dashboard/ranking');
        if (mounted) applyData(response.data);

        // 2. Dispara recálculo silencioso no background
        if (user?.matricula) {
          api.post(`/dashboard/calcular-tecnico?matricula=${user.matricula}`, {}, { timeout: 120000 })
            .then(async () => {
              const freshResponse = await api.get('/dashboard/ranking');
              if (mounted) {
                applyData(freshResponse.data);
                toast.success('Pontuação atualizada com sucesso!');
              }
            })
            .catch(e => console.error('Erro no recálculo em background:', e));
        }

      } catch (error) {
        console.error('Erro ao buscar métricas do BD:', error);
      } finally {
        if (mounted) setLoading(false);
      }
    };

    fetchMetricas();

    return () => {
      mounted = false;
    };
  }, [user]);

  const displayMetricas = React.useMemo(() => {
    if (!metricas) return null;
    if (selectedMonth === 'Média Final') return metricas;
    const monthData = metricas.historico?.find((h: any) => h.mes === selectedMonth);
    if (!monthData) return metricas;
    return { ...metricas, ...monthData };
  }, [metricas, selectedMonth]);

  if (loading) {
    return (
      <div className="flex justify-center items-center h-[60vh]">
        <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-accent-teal"></div>
      </div>
    );
  }

  const percentualConsumo = displayMetricas?.percentualEficienciaPecas || 0;
  const percentualSla = displayMetricas?.percentualSla || 0;
  const percentualReincidencia = displayMetricas?.percentualReincidencia || 0;
  const pontuacaoTotal = displayMetricas?.pontosTotal || 0;
  const eficienciaData = [
    { name: 'Consumo', value: percentualConsumo },
    { name: 'Restante', value: Math.max(100 - percentualConsumo, 0) },
  ];



  const getPremioInfo = (pontos: number) => {
    if (pontos >= 90) return { titulo: '1º Prêmio', valor: 'R$ 300,00' };
    if (pontos >= 80) return { titulo: '2º Prêmio', valor: 'R$ 200,00' };
    if (pontos >= 70) return { titulo: '3º Prêmio', valor: 'R$ 100,00' };
    return null;
  };
  const premioAtual = getPremioInfo(pontuacaoTotal);

  return (
    <div className="space-y-6 pb-6">

      <div className="flex flex-col md:flex-row md:items-center justify-between gap-4">
        <div>
          <h1 className="text-2xl font-bold text-light-text-main dark:text-text-main">Dashboard de Performance</h1>
          <p className="text-sm text-light-text-muted dark:text-text-muted mt-1">
            Acompanhe os seus indicadores e ranking em tempo real.
          </p>
        </div>
        <div className="flex flex-col items-end gap-2">
          {displayMetricas?.elegivel ? (
            <button
              onClick={() => setIsElegivelModalOpen(true)}
              className="flex items-center space-x-2 bg-transparent border border-accent-emerald text-accent-emerald px-4 py-2 rounded-full font-medium text-sm hover:bg-accent-emerald/10 transition-colors">
              <CheckCircle2 size={16} />
              <span>Elegível para Premiação</span>
            </button>
          ) : (
            <button
              onClick={() => setIsInelegivelModalOpen(true)}
              className="flex items-center space-x-2 bg-transparent border border-status-danger text-status-danger px-4 py-2 rounded-full font-medium text-sm hover:bg-status-danger/10 transition-colors">
              <XCircle size={16} />
              <span>Não Elegível</span>
            </button>
          )}
          {displayMetricas?.posicaoRanking && displayMetricas.posicaoRanking !== '--' && (
            <span className="text-xs font-bold text-light-text-muted bg-slate-100 dark:bg-surface px-3 py-1 rounded-full flex items-center shadow-sm">
              <Medal size={12} className="mr-1 text-accent-teal" /> Ranking: {displayMetricas.posicaoRanking}º Lugar
            </span>
          )}
        </div>
      </div>

      {/* Seletor de Mês (Segmented Control) */}
      {metricas?.historico && metricas.historico.length > 0 && (
        <div className="flex justify-center mt-2 mb-8">
          <div className="inline-flex bg-slate-100 dark:bg-background/80 p-1.5 rounded-full border border-light-borderStrong dark:border-border/50 shadow-inner overflow-x-auto max-w-full scrollbar-hide">
            {['Média Final', ...metricas.historico.map((h: any) => h.mes).filter((m: string) => m !== 'Média Final')].map((monthOption: string) => (
              <button
                key={monthOption}
                onClick={() => setSelectedMonth(monthOption)}
                className={`px-6 py-2 rounded-full text-sm font-bold transition-all duration-300 whitespace-nowrap ${selectedMonth === monthOption
                    ? 'bg-light-surface dark:bg-surface text-accent-teal shadow-md border border-light-borderStrong/50 dark:border-border transform scale-105'
                    : 'text-light-text-muted dark:text-light-text-muted hover:text-light-text-secondary dark:hover:text-slate-200 hover:bg-slate-200/50 dark:hover:bg-surface/50'
                  }`}
              >
                {monthOption === 'Média Final' ? 'Campanha Inteira' : monthOption}
              </button>
            ))}
          </div>
        </div>
      )}

      {/* Top Grid: Pontuação & Últimos Chamados */}
      <div className="grid grid-cols-1 lg:grid-cols-3 gap-6 mb-6">

        {/* Card Pontuação Total */}
        <div
          onClick={() => setDetailsModalOpen(true)}
          className="bg-gradient-to-br from-slate-900 to-slate-800 dark:from-slate-800 dark:to-background rounded-positivo-lg p-6 border border-border shadow-xl flex flex-col items-center justify-center text-center relative overflow-hidden group cursor-pointer hover:border-accent-teal/50 hover:shadow-2xl hover:shadow-accent-teal/20 transition-all duration-300"
        >
          <div className="absolute -right-6 -top-6 text-light-text-secondary/30 dark:text-light-text-secondary/20 transform group-hover:scale-110 transition-transform duration-500">
            <Award size={120} />
          </div>
          <h3 className="text-sm font-medium text-slate-300 mb-2 z-10 uppercase tracking-widest">Pontuação Total</h3>
          <div className="flex items-baseline gap-1 z-10">
            <span className="text-6xl font-black text-text-main">{pontuacaoTotal}</span>
            <span className="text-lg text-light-text-muted font-bold">/100</span>
          </div>
          <div className="mt-4 bg-light-surface/10 backdrop-blur px-4 py-1.5 rounded-full z-10">
            <p className="text-xs text-slate-200 font-medium flex items-center">
              <TrendingUp size={14} className="mr-1 text-accent-emerald" />
              Sua performance global
            </p>
          </div>
        </div>

        {/* Últimos Chamados */}
        <div className="lg:col-span-2">
          {displayMetricas?.idTecnico && (
            <ChamadosHistoryCard tecnicoId={displayMetricas.idTecnico} />
          )}
        </div>
      </div>

      {/* Grid Inferior: 6 KPIs */}
      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">

        {/* Card SLA (Equipe) */}
        <div className="bg-light-surface dark:bg-surface rounded-positivo-lg p-4 border border-light-border dark:border-border shadow-sm flex flex-col items-center text-center justify-center hover:border-accent-teal/30 transition-colors">
          <div className="flex flex-col items-center mb-2">
            <span className="text-[10px] font-bold bg-slate-100 dark:bg-surface text-light-text-muted px-2 py-0.5 rounded-full mb-1">EQUIPE</span>
            <h3 className="text-xs font-bold text-light-text-secondary dark:text-text-main uppercase tracking-wider">SLA On-site</h3>
          </div>
          <CircularProgress
            value={percentualSla}
            maxValue={100}
            color="#0891b2"
            label={percentualSla.toFixed(1)}
            isPercentage={true}
          />
          <p className="text-[10px] text-light-text-muted mt-1">Meta: ≥ 90%</p>
        </div>

        {/* Card Reincidência (Equipe) */}
        <div className="bg-light-surface dark:bg-surface rounded-positivo-lg p-4 border border-light-border dark:border-border shadow-sm flex flex-col items-center text-center justify-center hover:border-status-danger/30 transition-colors">
          <div className="flex flex-col items-center mb-2">
            <span className="text-[10px] font-bold bg-slate-100 dark:bg-surface text-light-text-muted px-2 py-0.5 rounded-full mb-1">EQUIPE</span>
            <h3 className="text-xs font-bold text-light-text-secondary dark:text-text-main uppercase tracking-wider">Reincidência</h3>
          </div>
          <CircularProgress
            value={displayMetricas?.percentualReincidenciaEquipe || 0}
            maxValue={100}
            color="#EF4444"
            label={(displayMetricas?.percentualReincidenciaEquipe || 0).toFixed(1)}
            isPercentage={true}
          />
          <p className="text-[10px] text-light-text-muted mt-1">Meta: {'<'} 7%</p>
        </div>

        {/* Card Perdas SLA (Equipe) */}
        <div className="bg-light-surface dark:bg-surface rounded-positivo-lg p-4 border border-light-border dark:border-border shadow-sm flex flex-col items-center text-center justify-center hover:border-orange-400/30 transition-colors">
          <div className="flex flex-col items-center mb-2">
            <span className="text-[10px] font-bold bg-slate-100 dark:bg-surface text-light-text-muted px-2 py-0.5 rounded-full mb-1">EQUIPE</span>
            <h3 className="text-xs font-bold text-light-text-secondary dark:text-text-main uppercase tracking-wider">Perdas de SLA</h3>
          </div>
          <CircularProgress
            value={displayMetricas?.percentualPerdidos || 0}
            maxValue={100}
            color="#fb923c"
            label={(displayMetricas?.percentualPerdidos || 0).toFixed(1)}
            isPercentage={true}
          />
          <p className="text-[10px] text-light-text-muted mt-1">Meta: ≤ 1%</p>
        </div>

        {/* Card NPS (Equipe) */}
        <div className="bg-light-surface dark:bg-surface rounded-positivo-lg p-4 border border-light-border dark:border-border shadow-sm flex flex-col items-center text-center justify-center hover:border-accent-blue/30 transition-colors">
          <div className="flex flex-col items-center mb-2">
            <span className="text-[10px] font-bold bg-slate-100 dark:bg-surface text-light-text-muted px-2 py-0.5 rounded-full mb-1">EQUIPE</span>
            <h3 className="text-xs font-bold text-light-text-secondary dark:text-text-main uppercase tracking-wider">Satisfação (NPS)</h3>
          </div>
          <CircularProgress
            value={displayMetricas?.npsScore || 0}
            maxValue={100}
            color="#3b82f6"
            label={(displayMetricas?.npsScore || 0).toFixed(0)}
            isPercentage={true}
          />
          <p className="text-[10px] text-light-text-muted mt-1">Gatilho Ouro</p>
        </div>

        {/* Card Reincidência Técnica (Individual) */}
        <div className="bg-light-surface dark:bg-surface rounded-positivo-lg p-4 border border-light-border dark:border-border shadow-sm flex flex-col items-center text-center justify-center hover:border-pink-500/30 transition-colors">
          <div className="flex flex-col items-center mb-2">
            <span className="text-[10px] font-bold bg-accent-teal/10 text-accent-teal px-2 py-0.5 rounded-full mb-1">INDIVIDUAL</span>
            <h3 className="text-xs font-bold text-light-text-secondary dark:text-text-main uppercase tracking-wider">Reincidência Técnica</h3>
          </div>
          <CircularProgress
            value={percentualReincidencia}
            maxValue={100}
            color="#ec4899"
            label={percentualReincidencia.toFixed(1)}
            isPercentage={true}
          />
          <p className="text-[10px] text-light-text-muted mt-1">Meta: {'<'} 7%</p>
        </div>

        {/* Card Uso de Peças (Individual) */}
        <div className="bg-light-surface dark:bg-surface rounded-positivo-lg p-4 border border-light-border dark:border-border shadow-sm flex flex-col items-center text-center justify-center hover:border-cyan-400/30 transition-colors">
          <div className="flex flex-col items-center mb-2">
            <span className="text-[10px] font-bold bg-accent-teal/10 text-accent-teal px-2 py-0.5 rounded-full mb-1">INDIVIDUAL</span>
            <h3 className="text-xs font-bold text-light-text-secondary dark:text-text-main uppercase tracking-wider">Uso de Peças</h3>
          </div>

          <div className="relative w-36 h-36 mx-auto mb-2 mt-2">
            {percentualConsumo === 0 ? (
              <div className="absolute inset-0 flex flex-col items-center justify-center bg-accent-teal/10 rounded-full border border-accent-teal/20">
                <CheckCircle2 size={32} className="text-accent-teal mb-1" />
                <span className="text-xl font-bold text-accent-teal">0%</span>
              </div>
            ) : (
              <>
                <ResponsiveContainer width="100%" height="100%">
                  <PieChart>
                    <Pie
                      data={eficienciaData}
                      cx="50%"
                      cy="50%"
                      innerRadius={46}
                      outerRadius={56}
                      startAngle={90}
                      endAngle={-270}
                      dataKey="value"
                      stroke="none"
                    >
                      <Cell key="consumo" fill="#00E5FF" />
                      <Cell key="restante" fill="#f1f5f9" className="dark:fill-slate-800" />
                    </Pie>
                  </PieChart>
                </ResponsiveContainer>

                {/* Texto no centro do Donut */}
                <div className="absolute inset-0 flex flex-col items-center justify-center">
                  <span className="text-2xl font-bold text-light-text-main dark:text-text-main">{percentualConsumo.toFixed(1)}%</span>
                </div>
              </>
            )}
          </div>
          <p className="text-[10px] text-light-text-muted mt-1">Meta: ≤ 25%</p>
        </div>

      </div>

      {/* Modal de Detalhes da Pontuação */}
      <ModalDetalhesPontuacao
        isOpen={detailsModalOpen}
        onClose={() => setDetailsModalOpen(false)}
        metricas={metricas}
      />

      {/* Modal Elegível */}
      <ModalElegivel
        isOpen={isElegivelModalOpen}
        onClose={() => setIsElegivelModalOpen(false)}
        premioAtual={premioAtual}
        pontuacaoTotal={pontuacaoTotal}
      />

      {/* Modal Inelegível */}
      <ModalInelegivel
        isOpen={isInelegivelModalOpen}
        onClose={() => setIsInelegivelModalOpen(false)}
        motivoInelegibilidade={displayMetricas?.motivoInelegibilidade}
      />


    </div>
  );
}
