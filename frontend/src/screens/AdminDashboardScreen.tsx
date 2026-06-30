import React, { useEffect, useState, useMemo } from 'react';
import { Users, Filter, CheckCircle2, XCircle, Medal } from 'lucide-react';
import { useAuthStore } from '../store/authStore';
import { api } from '../services/api';
import { CircularProgress } from '../components/ui/CircularProgress';
import { PieChart, Pie, Cell, ResponsiveContainer } from 'recharts';
import ChamadosHistoryCard from '../components/dashboard/ChamadosHistoryCard';
import basesData from '../utils/bases_atp.json';

export default function AdminDashboardScreen() {
  const { user } = useAuthStore();
  
  // JSDoc: Identifica se é Moderador (nível 3) ou Administrador (nível 2)
  const isModerador = user?.role === 'MODERADOR';

  const [rankingOriginal, setRankingOriginal] = useState<any[]>([]);
  const [loading, setLoading] = useState(true);
  
  // Filtros
  const [selectedEquipe, setSelectedEquipe] = useState<string>('all');
  const [selectedTecnicoIdentifier, setSelectedTecnicoIdentifier] = useState<string>('all');

  // Mês selecionado (para o Drilldown do Técnico)
  const [selectedMonth, setSelectedMonth] = useState<string>('Média Final');

  useEffect(() => {
    let mounted = true;
    const fetchMetricas = async () => {
      try {
        setLoading(true);
        // O ranking traz a lista de todos os técnicos e seus resultados
        const response = await api.get('/dashboard/ranking');
        if (mounted && response.data) {
          setRankingOriginal(response.data);
        }
      } catch (error) {
        console.error('Erro ao buscar ranking:', error);
      } finally {
        if (mounted) setLoading(false);
      }
    };
    fetchMetricas();
    return () => { mounted = false; };
  }, []);

  // 1. Lógica de Equipes
  // JSDoc: Se for Moderador, pode ver todas. Se for Administrador, trava nas equipes vinculadas.
  const equipesPermitidas = useMemo(() => {
    if (isModerador) return new Set<string>(); // Moderador pode tudo, tratado depois
    return new Set(user?.localEquipe?.split(',') || []);
  }, [isModerador, user?.localEquipe]);

  const equipesDisponiveis = useMemo(() => {
    const equipes = new Set<string>();
    rankingOriginal.forEach(t => {
      if (t.localEquipe) {
        if (isModerador || equipesPermitidas.has(t.localEquipe)) {
          equipes.add(t.localEquipe);
        }
      }
    });
    return Array.from(equipes).sort();
  }, [rankingOriginal, isModerador, equipesPermitidas]);

  const equipeEfetiva = isModerador ? selectedEquipe : (selectedEquipe !== 'all' ? selectedEquipe : 'all_permitted');

  // 2. Lógica de Técnicos Visíveis
  const tecnicosVisiveis = useMemo(() => {
    if (equipeEfetiva === 'all') return rankingOriginal; // Apenas Moderador chega aqui com 'all'
    if (equipeEfetiva === 'all_permitted') {
      return rankingOriginal.filter(t => equipesPermitidas.has(t.localEquipe));
    }
    return rankingOriginal.filter(t => t.localEquipe === equipeEfetiva);
  }, [rankingOriginal, equipeEfetiva, equipesPermitidas]);

  // Se a equipe mudar e o técnico atual não estiver nela, reseta o seletor
  useEffect(() => {
    if (selectedTecnicoIdentifier !== 'all') {
      const tecnicoAindaVisivel = tecnicosVisiveis.find(t => (t.matricula || t.tecnico) === selectedTecnicoIdentifier);
      if (!tecnicoAindaVisivel) {
        setSelectedTecnicoIdentifier('all');
      }
    }
  }, [tecnicosVisiveis, selectedTecnicoIdentifier]);

  // 3. Técnico Selecionado
  const metricas = useMemo(() => {
    if (selectedTecnicoIdentifier === 'all') return null;
    return tecnicosVisiveis.find(t => (t.matricula || t.tecnico) === selectedTecnicoIdentifier);
  }, [tecnicosVisiveis, selectedTecnicoIdentifier]);

  // Aplicação do mês para o técnico selecionado
  const displayMetricas = useMemo(() => {
    if (!metricas) return null;
    if (selectedMonth === 'Média Final') return metricas;
    const monthData = metricas.historico?.find((h: any) => h.mes === selectedMonth);
    if (!monthData) return metricas;
    return { ...metricas, ...monthData };
  }, [metricas, selectedMonth]);

  // 4. Resumo da Equipe (Team Dashboard)
  const teamSummary = useMemo(() => {
    if (tecnicosVisiveis.length === 0) return null;
    const somaTotal = tecnicosVisiveis.reduce((acc, t) => acc + (t.pontosTotal || 0), 0);
    const mediaPontos = somaTotal / tecnicosVisiveis.length;
    const somaProd = tecnicosVisiveis.reduce((acc, t) => acc + (t.quantidadeProdutividade || 0), 0);
    const mediaSla = tecnicosVisiveis.reduce((acc, t) => acc + (t.percentualSla || 0), 0) / tecnicosVisiveis.length;
    
    return { mediaPontos, somaProd, mediaSla, qtd: tecnicosVisiveis.length };
  }, [tecnicosVisiveis]);

  if (loading) {
    return (
      <div className="flex justify-center items-center h-[60vh]">
        <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-accent-teal"></div>
      </div>
    );
  }

  // Variáveis para o Gráfico de Consumo (Reaproveitado do DashboardScreen)
  const percentualConsumo = displayMetricas?.percentualEficienciaPecas || 0;
  const eficienciaData = [
    { name: 'Consumo', value: percentualConsumo },
    { name: 'Restante', value: Math.max(100 - percentualConsumo, 0) },
  ];

  return (
    <div className="space-y-6 pb-6 mt-16 md:mt-24 px-4 md:px-8">
      <div className="flex flex-col md:flex-row md:items-end justify-between gap-4 bg-light-surface dark:bg-surface p-4 md:p-6 rounded-positivo-lg shadow-sm border border-light-borderStrong dark:border-border">
        <div>
          <h1 className="text-2xl font-bold text-light-text-main dark:text-text-main flex items-center gap-2">
            <Users className="text-accent-teal" size={24} />
            Painel de Supervisão
          </h1>
          <p className="text-sm text-light-text-muted dark:text-text-muted mt-1">
            {isModerador ? 'Visão global (Moderador)' : `Gestão da equipe: ${user?.localEquipe || 'Sem equipe vinculada'}`}
          </p>
        </div>

        <div className="flex flex-col sm:flex-row items-center gap-3">
          {/* JSDoc: Dropdown de equipes disponivel para todos os lideres (filtrado via state para Supervisores) */}
          <div className="w-full sm:w-auto">
            <label className="block text-xs font-medium text-light-text-muted dark:text-text-muted mb-1 ml-1">Equipe</label>
            <select
              value={selectedEquipe}
              onChange={(e) => setSelectedEquipe(e.target.value)}
              className="w-full sm:w-64 bg-slate-50 dark:bg-background border border-light-borderStrong dark:border-border text-light-text-main dark:text-text-main text-sm rounded-positivo-md focus:ring-accent-teal focus:border-accent-teal p-2.5 outline-none transition-shadow"
            >
              <option value="all">Todas as Equipes</option>
              {equipesDisponiveis.map(eq => {
                const baseInfo = basesData.find((b: any) => b.ct_codigo === eq);
                const label = baseInfo ? `${eq} - ${baseInfo.nome_atp || ''} (${baseInfo.uf || ''})` : eq;
                return <option key={eq} value={eq}>{label}</option>
              })}
            </select>
          </div>

          {/* JSDoc: Técnicos da base/equipe */}
          <div className="w-full sm:w-auto">
            <label className="block text-xs font-medium text-light-text-muted dark:text-text-muted mb-1 ml-1">Técnico Analisado</label>
            <select
              value={selectedTecnicoIdentifier}
              onChange={(e) => setSelectedTecnicoIdentifier(e.target.value)}
              className="w-full sm:w-80 bg-slate-50 dark:bg-background border border-light-borderStrong dark:border-border text-light-text-main dark:text-text-main text-sm rounded-positivo-md focus:ring-accent-teal focus:border-accent-teal p-2.5 outline-none transition-shadow"
            >
              <option value="all">-- Visão da Equipe --</option>
              {tecnicosVisiveis.map(t => {
                const id = t.matricula || t.tecnico;
                const matText = t.matricula ? `(${t.matricula})` : '';
                return (
                  <option key={id} value={id}>
                    {t.tecnico} {matText}
                  </option>
                );
              })}
            </select>
          </div>
        </div>
      </div>

      {/* JSDoc: Visão Global (Team Dashboard) quando nenhum técnico específico está selecionado */}
      {selectedTecnicoIdentifier === 'all' && teamSummary && (
        <div className="space-y-6 animate-in fade-in slide-in-from-bottom-4">
          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-4">
            <div className="bg-light-surface dark:bg-surface p-5 rounded-positivo-lg shadow-sm border border-light-borderStrong dark:border-border">
              <p className="text-sm font-medium text-light-text-muted dark:text-text-muted">Técnicos Listados</p>
              <p className="text-3xl font-bold text-light-text-main dark:text-text-main mt-1">{teamSummary.qtd}</p>
            </div>
            <div className="bg-light-surface dark:bg-surface p-5 rounded-positivo-lg shadow-sm border border-light-borderStrong dark:border-border">
              <p className="text-sm font-medium text-light-text-muted dark:text-text-muted">Média de Pontos</p>
              <p className="text-3xl font-bold text-accent-teal mt-1">{teamSummary.mediaPontos.toFixed(1)}</p>
            </div>
            <div className="bg-light-surface dark:bg-surface p-5 rounded-positivo-lg shadow-sm border border-light-borderStrong dark:border-border">
              <p className="text-sm font-medium text-light-text-muted dark:text-text-muted">Volume (Produtividade)</p>
              <p className="text-3xl font-bold text-brilhamais-gold mt-1">{teamSummary.somaProd} <span className="text-sm font-normal text-light-text-muted">chamados</span></p>
            </div>
            <div className="bg-light-surface dark:bg-surface p-5 rounded-positivo-lg shadow-sm border border-light-borderStrong dark:border-border">
              <p className="text-sm font-medium text-light-text-muted dark:text-text-muted">SLA Médio (Atingimento)</p>
              <p className="text-3xl font-bold text-status-success mt-1">{teamSummary.mediaSla.toFixed(1)}%</p>
            </div>
          </div>
          
          <div className="bg-light-surface dark:bg-surface p-6 rounded-positivo-lg shadow-sm border border-light-borderStrong dark:border-border text-center">
            <Filter className="mx-auto h-12 w-12 text-light-text-muted/50 dark:text-text-muted/30 mb-3" />
            <h3 className="text-lg font-medium text-light-text-main dark:text-text-main">Visão Consolidada</h3>
            <p className="text-light-text-muted dark:text-text-muted text-sm mt-1 max-w-md mx-auto">
              Selecione um técnico no menu acima para realizar o drill-down e visualizar o detalhamento do Brilha Mais idêntico à visão do técnico.
            </p>
          </div>
        </div>
      )}

      {/* JSDoc: Visão Individual (Drill-down) que simula o DashboardScreen para manter identidade visual */}
      {selectedTecnicoIdentifier !== 'all' && displayMetricas && (
        <div className="space-y-6 animate-in fade-in slide-in-from-bottom-4">
          
          <div className="flex flex-col md:flex-row justify-between items-center bg-light-background dark:bg-background/50 p-4 rounded-positivo-lg border border-light-borderStrong dark:border-border/30">
            <div>
              <h2 className="text-xl font-bold text-light-text-main dark:text-text-main">{displayMetricas.tecnico}</h2>
              <p className="text-sm text-light-text-muted dark:text-text-muted">Matrícula: {displayMetricas.matricula} | Base: {displayMetricas.localEquipe || 'N/A'}</p>
            </div>
            <div className="flex items-center gap-3 mt-4 md:mt-0">
               {displayMetricas.elegivel ? (
                 <span className="flex items-center space-x-1 text-accent-emerald text-sm font-medium bg-accent-emerald/10 px-3 py-1.5 rounded-full">
                   <CheckCircle2 size={16} /><span>Elegível</span>
                 </span>
               ) : (
                 <span className="flex items-center space-x-1 text-status-danger text-sm font-medium bg-status-danger/10 px-3 py-1.5 rounded-full">
                   <XCircle size={16} /><span>Não Elegível</span>
                 </span>
               )}
               {displayMetricas.posicaoRanking && displayMetricas.posicaoRanking !== '--' && (
                 <span className="flex items-center space-x-1 text-light-text-main dark:text-text-main text-sm font-bold bg-brilhamais-gold/20 px-3 py-1.5 rounded-full">
                   <Medal size={16} className="text-brilhamais-gold" /><span>{displayMetricas.posicaoRanking}º Lugar</span>
                 </span>
               )}
            </div>
          </div>

          {/* Seletor de Mês (Segmented Control) */}
          {metricas?.historico && metricas.historico.length > 0 && (
            <div className="flex justify-center mt-2 mb-4">
              <div className="inline-flex bg-slate-100 dark:bg-background/80 p-1.5 rounded-full border border-light-borderStrong dark:border-border/50 shadow-inner overflow-x-auto max-w-full scrollbar-hide">
                {['Média Final', ...metricas.historico.map((h: any) => h.mes).filter((m: string) => m !== 'Média Final')].map((monthOption: string) => (
                  <button
                    key={monthOption}
                    onClick={() => setSelectedMonth(monthOption)}
                    className={`px-5 py-2 text-sm font-medium rounded-full transition-all whitespace-nowrap ${
                      selectedMonth === monthOption
                        ? 'bg-white dark:bg-surface text-accent-teal shadow-md ring-1 ring-black/5 dark:ring-white/10 scale-105'
                        : 'text-light-text-muted dark:text-text-muted hover:text-light-text-main dark:hover:text-text-main hover:bg-white/50 dark:hover:bg-surface/50'
                    }`}
                  >
                    {monthOption}
                  </button>
                ))}
              </div>
            </div>
          )}

          {/* Grid de Cards (Idêntico ao DashboardScreen) */}
          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-4">
            <div className="bg-light-surface dark:bg-surface p-5 rounded-positivo-lg shadow-sm border border-light-borderStrong dark:border-border relative overflow-hidden group">
              <div className="absolute top-0 right-0 p-4 opacity-10 group-hover:opacity-20 transition-opacity">
                <CheckCircle2 size={48} className="text-accent-emerald" />
              </div>
              <h3 className="text-sm font-medium text-light-text-muted dark:text-text-muted mb-4">SLA (No Prazo)</h3>
              <div className="flex items-end justify-between">
                <div>
                  <p className="text-3xl font-bold text-light-text-main dark:text-text-main">{displayMetricas.percentualSla?.toFixed(1) || 0}%</p>
                  <p className="text-sm font-medium text-accent-emerald mt-1">+{displayMetricas.pontosSla?.toFixed(1) || 0} pts</p>
                </div>
              </div>
            </div>

            <div className="bg-light-surface dark:bg-surface p-5 rounded-positivo-lg shadow-sm border border-light-borderStrong dark:border-border relative overflow-hidden group">
              <h3 className="text-sm font-medium text-light-text-muted dark:text-text-muted mb-4">Reincidência</h3>
              <div className="flex items-end justify-between">
                <div>
                  <p className="text-3xl font-bold text-light-text-main dark:text-text-main">{displayMetricas.percentualReincidencia?.toFixed(1) || 0}%</p>
                  <p className="text-sm font-medium text-brilhamais-gold mt-1">+{displayMetricas.pontosReincidencia?.toFixed(1) || 0} pts</p>
                </div>
              </div>
            </div>

            <div className="bg-light-surface dark:bg-surface p-5 rounded-positivo-lg shadow-sm border border-light-borderStrong dark:border-border relative overflow-hidden group">
              <h3 className="text-sm font-medium text-light-text-muted dark:text-text-muted mb-4">Produtividade</h3>
              <div className="flex items-end justify-between">
                <div>
                  <p className="text-3xl font-bold text-light-text-main dark:text-text-main">{displayMetricas.quantidadeProdutividade || 0}</p>
                  <p className="text-sm font-medium text-accent-teal mt-1">+{displayMetricas.pontosProdutividade?.toFixed(1) || 0} pts</p>
                </div>
              </div>
            </div>

            <div className="bg-light-surface dark:bg-surface p-5 rounded-positivo-lg shadow-sm border border-light-borderStrong dark:border-border relative overflow-hidden group">
              <h3 className="text-sm font-medium text-light-text-muted dark:text-text-muted mb-4">NPS</h3>
              <div className="flex items-end justify-between">
                <div>
                  <p className="text-3xl font-bold text-light-text-main dark:text-text-main">{displayMetricas.npsScore?.toFixed(1) || 0}%</p>
                  <p className="text-sm font-medium text-accent-emerald mt-1">+{displayMetricas.pontosNps?.toFixed(1) || 0} pts</p>
                </div>
              </div>
            </div>
          </div>

          <div className="grid grid-cols-1 lg:grid-cols-2 gap-6">
            <div className="bg-light-surface dark:bg-surface p-6 rounded-positivo-lg shadow-sm border border-light-borderStrong dark:border-border">
              <div className="flex items-center justify-between mb-6">
                <h3 className="text-lg font-bold text-light-text-main dark:text-text-main">Pontuação Total</h3>
              </div>
              <div className="flex justify-center my-4">
                <CircularProgress 
                  value={displayMetricas.pontosTotal || 0} 
                  maxValue={100} 
                  size={200}
                  color={
                    (displayMetricas.pontosTotal || 0) >= 90 ? 'text-brilhamais-gold' : 
                    (displayMetricas.pontosTotal || 0) >= 70 ? 'text-accent-teal' : 'text-status-warning'
                  }
                />
              </div>
            </div>

            <div className="bg-light-surface dark:bg-surface p-6 rounded-positivo-lg shadow-sm border border-light-borderStrong dark:border-border">
              <h3 className="text-lg font-bold text-light-text-main dark:text-text-main mb-6">Eficiência de Peças</h3>
              <div className="h-48 relative">
                <ResponsiveContainer width="100%" height="100%">
                  <PieChart>
                    <Pie
                      data={eficienciaData}
                      cx="50%"
                      cy="50%"
                      innerRadius={60}
                      outerRadius={80}
                      paddingAngle={5}
                      dataKey="value"
                      stroke="none"
                    >
                      <Cell fill="#00d8a6" />
                      <Cell fill="#1e293b" />
                    </Pie>
                  </PieChart>
                </ResponsiveContainer>
                <div className="absolute inset-0 flex items-center justify-center flex-col">
                  <span className="text-2xl font-bold text-light-text-main dark:text-text-main">{percentualConsumo.toFixed(1)}%</span>
                  <span className="text-xs text-light-text-muted dark:text-text-muted">Atingimento</span>
                </div>
              </div>
            </div>
          </div>

          <div className="mt-8">
             <ChamadosHistoryCard tecnicoId={displayMetricas.idTecnico} />
          </div>
        </div>
      )}
    </div>
  );
}
