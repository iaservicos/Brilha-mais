import React, { useEffect, useState, useMemo } from 'react';
import { Users, Filter, CheckCircle2, XCircle, Medal, RefreshCw } from 'lucide-react';
import { useAuthStore } from '../store/authStore';
import { api } from '../services/api';
import { CircularProgress } from '../components/ui/CircularProgress';
import { PieChart, Pie, Cell, ResponsiveContainer } from 'recharts';
import ChamadosHistoryCard from '../components/dashboard/ChamadosHistoryCard';
import basesData from '../utils/bases_atp.json';

export default function AdminDashboardScreen() {
  const { user } = useAuthStore();
  
  // JSDoc: Identifica se é Moderador (nível 3)
  const isModerador = user?.role === 'MODERADOR';

  const [rankingOriginal, setRankingOriginal] = useState<any[]>([]);
  const [todosTecnicos, setTodosTecnicos] = useState<any[]>([]);
  const [loading, setLoading] = useState(true);
  const [isProcessing, setIsProcessing] = useState(false);
  
  // Filtros
  const [selectedSupervisor, setSelectedSupervisor] = useState<string>('all');
  const [selectedEquipe, setSelectedEquipe] = useState<string>('all');
  const [selectedTecnicoIdentifier, setSelectedTecnicoIdentifier] = useState<string>('all');

  // Mês selecionado (para o Drilldown do Técnico)
  const [selectedMonth, setSelectedMonth] = useState<string>('Média Final');

  useEffect(() => {
    let mounted = true;
    const fetchData = async () => {
      try {
        setLoading(true);
        // Busca a arvore completa de funcionarios e os resultados do ranking simultaneamente
        const [rankingResp, tecnicosResp] = await Promise.all([
          api.get('/dashboard/ranking'),
          api.get('/tecnicos')
        ]);
        
        if (mounted) {
          if (rankingResp.data) setRankingOriginal(rankingResp.data);
          if (tecnicosResp.data) setTodosTecnicos(tecnicosResp.data);
        }
      } catch (error) {
        console.error('Erro ao buscar dados do dashboard:', error);
      } finally {
        if (mounted) setLoading(false);
      }
    };
    fetchData();
    
    // Configura valor inicial do supervisor se não for moderador
    if (!isModerador && user?.matricula) {
      setSelectedSupervisor(user.matricula);
    }
    
    return () => { mounted = false; };
  }, [isModerador, user?.matricula]);

  const handleProcessarMes = async () => {
    try {
      setIsProcessing(true);
      await api.post('/dashboard/calcular');
      // Recarrega os dados após processamento
      const response = await api.get('/dashboard/ranking');
      if (response.data) {
        setRankingOriginal(response.data);
      }
      alert('Cálculo finalizado com sucesso! A tela foi atualizada com os novos dados.');
    } catch (error) {
      console.error('Erro ao processar mês:', error);
      alert('Ocorreu um erro ao processar o mês. Tente novamente.');
    } finally {
      setIsProcessing(false);
    }
  };

  // 1. Lógica de Supervisores
  const listaSupervisores = useMemo(() => {
    return todosTecnicos.filter(t => t.role === 'ADMIN');
  }, [todosTecnicos]);

  // Se for Moderador, escolhe qualquer um. Se for Admin, crava nele mesmo.
  const supervisorEfetivo = isModerador ? selectedSupervisor : (user?.matricula || 'none');

  // 2. Lógica de Equipes (Base ATP)
  const equipesDisponiveis = useMemo(() => {
    const equipes = new Set<string>();
    
    if (supervisorEfetivo === 'all') {
      // Moderador vendo todos os supervisores = vê todas as bases
      todosTecnicos.forEach(t => {
        if (t.ctBase) {
          t.ctBase.split(',').forEach((b: string) => equipes.add(b.trim()));
        }
      });
    } else {
      // Pega as bases do supervisor selecionado
      const supervisor = listaSupervisores.find(s => s.matricula === supervisorEfetivo);
      if (supervisor && supervisor.ctBase) {
        supervisor.ctBase.split(',').forEach((b: string) => equipes.add(b.trim()));
      }
    }
    
    return Array.from(equipes).filter(e => e.length > 0).sort();
  }, [todosTecnicos, listaSupervisores, supervisorEfetivo]);

  // Se a base selecionada não estiver na lista (ex: mudou de supervisor), reseta
  useEffect(() => {
    if (selectedEquipe !== 'all' && !equipesDisponiveis.includes(selectedEquipe)) {
      setSelectedEquipe('all');
    }
  }, [equipesDisponiveis, selectedEquipe]);

  // 3. Lógica de Técnicos Visíveis
  const tecnicosVisiveis = useMemo(() => {
    // Pega só os TECNICOS
    let lista = todosTecnicos.filter(t => t.role === 'TECNICO');
    
    // Filtra pelas bases permitidas (do supervisor atual)
    if (selectedEquipe !== 'all') {
      lista = lista.filter(t => t.ctBase === selectedEquipe);
    } else {
      // Se "Todas as equipes", mas tem um supervisor selecionado, filtra apenas tecnicos das bases dele
      if (supervisorEfetivo !== 'all') {
         lista = lista.filter(t => t.ctBase && equipesDisponiveis.includes(t.ctBase));
      }
    }
    return lista.sort((a, b) => (a.nomeCompleto || '').localeCompare(b.nomeCompleto || ''));
  }, [todosTecnicos, selectedEquipe, supervisorEfetivo, equipesDisponiveis]);

  // Se o técnico selecionado não estiver na lista atual, reseta
  useEffect(() => {
    if (selectedTecnicoIdentifier !== 'all') {
      const tecnicoAindaVisivel = tecnicosVisiveis.find(t => t.matricula === selectedTecnicoIdentifier);
      if (!tecnicoAindaVisivel) {
        setSelectedTecnicoIdentifier('all');
      }
    }
  }, [tecnicosVisiveis, selectedTecnicoIdentifier]);

  // 4. Técnico Selecionado (Cruza os dados com o ranking)
  const metricas = useMemo(() => {
    if (selectedTecnicoIdentifier === 'all') return null;
    
    // Procura o técnico selecionado na lista bruta
    const tecnicoInfo = tecnicosVisiveis.find(t => t.matricula === selectedTecnicoIdentifier);
    if (!tecnicoInfo) return null;
    
    // Procura os resultados dele no motor de calculo
    const rankingData = rankingOriginal.find(r => r.matricula === selectedTecnicoIdentifier);
    
    // Se não tiver dados no ranking (ex: mes vazio ou novo tecnico), retorna um stub zerado
    if (!rankingData) {
      return {
         idTecnico: tecnicoInfo.idTecnico,
         tecnico: tecnicoInfo.nomeCompleto,
         matricula: tecnicoInfo.matricula,
         localEquipe: tecnicoInfo.ctBase,
         pontosTotal: 0,
         percentualSla: 0,
         pontosSla: 0,
         percentualReincidencia: 0,
         pontosReincidencia: 0,
         quantidadeProdutividade: 0,
         pontosProdutividade: 0,
         percentualEficienciaPecas: 0,
         pontosPecas: 0,
         npsScore: 0,
         pontosNps: 0,
         elegivel: false,
         motivoInelegibilidade: 'Nenhum resultado processado para o mês',
         historico: []
      };
    }
    
    return rankingData;
  }, [tecnicosVisiveis, selectedTecnicoIdentifier, rankingOriginal]);

  // Aplicação do mês para o técnico selecionado (Drilldown)
  const displayMetricas = useMemo(() => {
    if (!metricas) return null;
    if (selectedMonth === 'Média Final') return metricas;
    const monthData = metricas.historico?.find((h: any) => h.mes === selectedMonth);
    if (!monthData) return metricas;
    return { ...metricas, ...monthData };
  }, [metricas, selectedMonth]);

  // 5. Resumo da Equipe (Team Dashboard)
  const teamSummary = useMemo(() => {
    if (tecnicosVisiveis.length === 0) return null;
    
    // Pega as métricas REAIS dos técnicos visíveis
    const metricasReais = tecnicosVisiveis.map(t => rankingOriginal.find(r => r.matricula === t.matricula)).filter(Boolean);
    
    if (metricasReais.length === 0) {
      return { mediaPontos: 0, somaProd: 0, mediaSla: 0, qtd: tecnicosVisiveis.length };
    }
    
    const somaTotal = metricasReais.reduce((acc, t) => acc + (t.pontosTotal || 0), 0);
    const mediaPontos = somaTotal / metricasReais.length;
    const somaProd = metricasReais.reduce((acc, t) => acc + (t.quantidadeProdutividade || 0), 0);
    const mediaSla = metricasReais.reduce((acc, t) => acc + (t.percentualSla || 0), 0) / metricasReais.length;
    
    return { mediaPontos, somaProd, mediaSla, qtd: tecnicosVisiveis.length };
  }, [tecnicosVisiveis, rankingOriginal]);

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
      <div className="flex flex-col xl:flex-row xl:items-start justify-between gap-4 bg-light-surface dark:bg-surface p-4 md:p-6 rounded-positivo-lg shadow-sm border border-light-borderStrong dark:border-border">
        <div>
          <h1 className="text-2xl font-bold text-light-text-main dark:text-text-main flex items-center gap-2">
            <Users className="text-accent-teal" size={24} />
            Painel de Supervisão
          </h1>
          <p className="text-sm text-light-text-muted dark:text-text-muted mt-1">
            {isModerador ? 'Visão global (Moderador)' : `Gestão da equipe: ${user?.localEquipe || 'Sem equipe vinculada'}`}
          </p>
          {isModerador && (
            <button
              onClick={handleProcessarMes}
              disabled={isProcessing}
              className="mt-3 flex items-center gap-2 bg-accent-teal hover:bg-accent-teal/90 text-white px-4 py-2 rounded-md text-sm font-medium transition-colors disabled:opacity-50"
            >
              <RefreshCw size={16} className={isProcessing ? 'animate-spin' : ''} />
              {isProcessing ? 'Processando Mês...' : 'Processar Mês'}
            </button>
          )}
        </div>

        <div className="flex flex-col lg:flex-row items-center gap-3 w-full xl:w-auto">
          
          {/* JSDoc: Dropdown de Supervisor (Apenas para Moderador interagir) */}
          <div className="w-full lg:w-auto">
            <label className="block text-xs font-medium text-light-text-muted dark:text-text-muted mb-1 ml-1">Supervisor</label>
            <select
              value={supervisorEfetivo}
              onChange={(e) => isModerador && setSelectedSupervisor(e.target.value)}
              disabled={!isModerador}
              className={`w-full lg:w-48 bg-slate-50 dark:bg-background border border-light-borderStrong dark:border-border text-light-text-main dark:text-text-main text-sm rounded-positivo-md p-2.5 outline-none transition-shadow ${!isModerador ? 'opacity-75 cursor-not-allowed' : 'focus:ring-accent-teal focus:border-accent-teal'}`}
            >
              {isModerador && <option value="all">Todos os Supervisores</option>}
              {listaSupervisores.map(s => (
                <option key={s.matricula} value={s.matricula}>{s.nomeCompleto}</option>
              ))}
            </select>
          </div>

          {/* JSDoc: Dropdown de equipes disponivel filtrado pelo Supervisor */}
          <div className="w-full lg:w-auto">
            <label className="block text-xs font-medium text-light-text-muted dark:text-text-muted mb-1 ml-1">Base ATP</label>
            <select
              value={selectedEquipe}
              onChange={(e) => setSelectedEquipe(e.target.value)}
              className="w-full lg:w-64 bg-slate-50 dark:bg-background border border-light-borderStrong dark:border-border text-light-text-main dark:text-text-main text-sm rounded-positivo-md focus:ring-accent-teal focus:border-accent-teal p-2.5 outline-none transition-shadow"
            >
              <option value="all">Todas as Bases</option>
              {equipesDisponiveis.map(eq => {
                const baseInfo = basesData.find((b: any) => b.ct_codigo === eq);
                const label = baseInfo ? `${eq} - ${baseInfo.nome_atp || ''} (${baseInfo.uf || ''})` : eq;
                return <option key={eq} value={eq}>{label}</option>
              })}
            </select>
          </div>

          {/* JSDoc: Técnicos da base/equipe selecionada */}
          <div className="w-full lg:w-auto">
            <label className="block text-xs font-medium text-light-text-muted dark:text-text-muted mb-1 ml-1">Técnico Analisado</label>
            <select
              value={selectedTecnicoIdentifier}
              onChange={(e) => setSelectedTecnicoIdentifier(e.target.value)}
              className="w-full lg:w-72 bg-slate-50 dark:bg-background border border-light-borderStrong dark:border-border text-light-text-main dark:text-text-main text-sm rounded-positivo-md focus:ring-accent-teal focus:border-accent-teal p-2.5 outline-none transition-shadow"
            >
              <option value="all">-- Visão da Equipe --</option>
              {tecnicosVisiveis.map(t => {
                const id = t.matricula;
                const matText = t.matricula ? `(${t.matricula})` : '';
                return (
                  <option key={id} value={id}>
                    {t.nomeCompleto} {matText}
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
