import React from 'react';
import { Award, TrendingUp, CheckCircle2, XCircle } from 'lucide-react';

interface ModalDetalhesPontuacaoProps {
  isOpen: boolean;
  onClose: () => void;
  metricas: any;
}

export const ModalDetalhesPontuacao: React.FC<ModalDetalhesPontuacaoProps> = ({
  isOpen,
  onClose,
  metricas
}) => {
  if (!isOpen) return null;

  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center bg-black/50 backdrop-blur-sm p-4 animate-in fade-in">
      <div className="bg-light-surface dark:bg-surface rounded-xl shadow-2xl w-full max-w-4xl overflow-hidden border border-light-borderStrong dark:border-border animate-in zoom-in-95">
        <div className="p-6 border-b border-light-borderStrong dark:border-border flex justify-between items-center bg-light-background dark:bg-background/50">
          <h2 className="text-xl font-bold text-light-text-main dark:text-text-main flex items-center gap-2">
            <Award className="text-accent-teal" /> Detalhamento da Pontuação
          </h2>
          <button onClick={onClose} className="text-light-text-muted hover:text-slate-600 transition-colors">
            <XCircle size={24} />
          </button>
        </div>
        <div className="p-6 overflow-x-auto overflow-y-auto max-h-[70vh] scrollbar-hide">
          <table className="w-full text-left border-collapse min-w-[800px]">
            <thead>
              <tr className="bg-slate-100 dark:bg-background text-slate-600 dark:text-text-muted text-sm font-bold uppercase tracking-wider">
                <th className="p-4 border-b border-light-borderStrong dark:border-border rounded-tl-lg">Mês</th>
                <th className="p-4 border-b border-light-borderStrong dark:border-border text-center">SLA</th>
                <th className="p-4 border-b border-light-borderStrong dark:border-border text-center" title="Reincidência Equipe">Reinc. (Eqp)</th>
                <th className="p-4 border-b border-light-borderStrong dark:border-border text-center" title="Reincidência Individual">Reinc. (Ind)</th>
                <th className="p-4 border-b border-light-borderStrong dark:border-border text-center">Perdas</th>
                <th className="p-4 border-b border-light-borderStrong dark:border-border text-center">NPS</th>
                <th className="p-4 border-b border-light-borderStrong dark:border-border text-center">Peças</th>
                <th className="p-4 border-b border-light-borderStrong dark:border-border text-center">Total</th>
                <th className="p-4 border-b border-light-borderStrong dark:border-border text-center rounded-tr-lg">Elegibilidade</th>
              </tr>
            </thead>
            <tbody className="divide-y divide-slate-100 dark:divide-border/50 bg-light-surface dark:bg-surface">
              {metricas?.historico?.map((h: any, index: number) => {
                const isMedia = h.mes === 'Média Final';
                return (
                  <tr key={index} className={`hover:bg-light-background dark:hover:bg-background/50 transition-colors ${isMedia ? 'bg-light-background dark:bg-background/30' : ''}`}>
                    <td className="p-4 font-bold text-light-text-main dark:text-text-main flex items-center gap-2">
                      {isMedia ? <TrendingUp size={16} className="text-accent-teal"/> : null}
                      {h.mes}
                    </td>
                    <td className="p-4 text-center">
                      <div className="font-bold text-light-text-secondary dark:text-text-main">{h.percentualSla?.toFixed(2)}%</div>
                      <div className="text-xs font-medium text-accent-teal bg-accent-teal/10 px-2 py-0.5 rounded-full inline-block mt-1 whitespace-nowrap">{h.pontosSla} pts</div>
                    </td>
                    <td className="p-4 text-center">
                      <div className="font-bold text-light-text-secondary dark:text-text-main">{h.percentualReincidenciaEquipe?.toFixed(2)}%</div>
                      <div className="text-xs font-medium text-accent-teal bg-accent-teal/10 px-2 py-0.5 rounded-full inline-block mt-1 whitespace-nowrap">{h.pontosReincidenciaEquipe} pts</div>
                    </td>
                    <td className="p-4 text-center">
                      <div className="font-bold text-light-text-secondary dark:text-text-main">{h.percentualReincidencia?.toFixed(2)}%</div>
                      <div className="text-xs font-medium text-accent-teal bg-accent-teal/10 px-2 py-0.5 rounded-full inline-block mt-1 whitespace-nowrap">{h.pontosReincidencia} pts</div>
                    </td>
                    <td className="p-4 text-center">
                      <div className="font-bold text-light-text-secondary dark:text-text-main">{h.percentualPerdidos?.toFixed(2)}%</div>
                      <div className="text-xs font-medium text-accent-teal bg-accent-teal/10 px-2 py-0.5 rounded-full inline-block mt-1 whitespace-nowrap">{h.pontosPerdidos} pts</div>
                    </td>
                    <td className="p-4 text-center">
                      <div className="font-bold text-light-text-secondary dark:text-text-main">{h.npsScore?.toFixed(2)}%</div>
                      <div className="text-xs font-medium text-accent-teal bg-accent-teal/10 px-2 py-0.5 rounded-full inline-block mt-1 whitespace-nowrap">{h.pontosNps} pts</div>
                    </td>
                    <td className="p-4 text-center">
                      <div className="font-bold text-light-text-secondary dark:text-text-main">{h.percentualEficienciaPecas?.toFixed(2)}%</div>
                      <div className="text-xs font-medium text-accent-teal bg-accent-teal/10 px-2 py-0.5 rounded-full inline-block mt-1 whitespace-nowrap">{h.pontosPecas} pts</div>
                    </td>
                    <td className="p-4 text-center">
                      <div className="text-2xl font-black text-light-text-main dark:text-text-main">{h.pontosTotal}</div>
                      <div className="text-[10px] text-light-text-muted font-bold uppercase tracking-widest mt-1">Pontos</div>
                    </td>
                    <td className="p-4 text-center">
                      {h.elegivel ? (
                        <span className="bg-accent-emerald text-text-main text-xs font-bold px-3 py-1.5 rounded-full inline-flex items-center gap-1 shadow-sm"><CheckCircle2 size={14}/> Elegível</span>
                      ) : (
                        <span className="bg-status-danger text-text-main text-xs font-bold px-3 py-1.5 rounded-full inline-flex items-center gap-1 shadow-sm" title={h.motivoInelegibilidade}><XCircle size={14}/> Inelegível</span>
                      )}
                    </td>
                  </tr>
                );
              })}
            </tbody>
          </table>
        </div>
        <div className="p-4 bg-light-background dark:bg-background/80 border-t border-light-borderStrong dark:border-border flex justify-end">
          <button onClick={onClose} className="bg-surface hover:bg-background text-text-main px-6 py-2 rounded-lg font-medium transition-colors shadow-md hover:shadow-lg focus:ring-2 focus:ring-slate-400 focus:outline-none">
            Fechar
          </button>
        </div>
      </div>
    </div>
  );
};
