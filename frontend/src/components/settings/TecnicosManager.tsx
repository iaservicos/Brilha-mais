import React, { useState, useEffect } from 'react';
import axios from 'axios';
import { useAuthStore } from '../../store/authStore';
import { Pencil, Trash2, KeyRound, Plus, X, Search, Loader2 } from 'lucide-react';

interface Tecnico {
  idTecnico: number;
  matricula: string;
  cpf: string;
  nomeCompleto: string;
  ctBase: string;
  cargo: string;
  ativo: boolean;
  role: string;
}

export default function TecnicosManager() {
  const { token } = useAuthStore();
  const [tecnicos, setTecnicos] = useState<Tecnico[]>([]);
  const [loading, setLoading] = useState(true);
  const [searchTerm, setSearchTerm] = useState('');
  
  // Modals state
  const [isEditModalOpen, setIsEditModalOpen] = useState(false);
  const [isPasswordModalOpen, setIsPasswordModalOpen] = useState(false);
  const [selectedTecnico, setSelectedTecnico] = useState<Tecnico | null>(null);
  
  // Form state
  const [formData, setFormData] = useState<Partial<Tecnico>>({});
  const [newPassword, setNewPassword] = useState('');
  const [isSubmitting, setIsSubmitting] = useState(false);
  const [error, setError] = useState('');

  useEffect(() => {
    fetchTecnicos();
  }, []);

  const fetchTecnicos = async () => {
    try {
      setLoading(true);
      const baseURL = import.meta.env.VITE_API_URL || 'http://localhost:8080/api/v1';
      const response = await axios.get(`${baseURL}/tecnicos`, {
        headers: { Authorization: `Bearer ${token}` }
      });
      setTecnicos(response.data);
    } catch (err) {
      console.error('Erro ao buscar técnicos', err);
    } finally {
      setLoading(false);
    }
  };

  const openEditModal = (tecnico?: Tecnico) => {
    setError('');
    if (tecnico) {
      setSelectedTecnico(tecnico);
      setFormData(tecnico);
    } else {
      setSelectedTecnico(null);
      setFormData({
        ativo: true,
        role: 'PADRAO'
      });
    }
    setIsEditModalOpen(true);
  };

  const openPasswordModal = (tecnico: Tecnico) => {
    setError('');
    setSelectedTecnico(tecnico);
    setNewPassword('');
    setIsPasswordModalOpen(true);
  };

  const handleDelete = async (id: number) => {
    if (!window.confirm('Tem certeza que deseja excluir este técnico? Esta ação é irreversível e pode quebrar os históricos se ele possuir métricas atreladas.')) return;
    
    try {
      const baseURL = import.meta.env.VITE_API_URL || 'http://localhost:8080/api/v1';
      await axios.delete(`${baseURL}/tecnicos/${id}`, {
        headers: { Authorization: `Bearer ${token}` }
      });
      setTecnicos(tecnicos.filter(t => t.idTecnico !== id));
    } catch (err) {
      console.error('Erro ao deletar', err);
      alert('Erro ao excluir técnico.');
    }
  };

  const handleSave = async (e: React.FormEvent) => {
    e.preventDefault();
    setIsSubmitting(true);
    setError('');

    try {
      const baseURL = import.meta.env.VITE_API_URL || 'http://localhost:8080/api/v1';
      
      if (selectedTecnico) {
        // Update
        await axios.put(`${baseURL}/tecnicos/${selectedTecnico.idTecnico}`, formData, {
          headers: { Authorization: `Bearer ${token}` }
        });
      } else {
        // Create (need a default password, e.g. M@#$2020 or CPF)
        await axios.post(`${baseURL}/tecnicos`, {
          ...formData,
          senha: 'senha-temporaria' // No primeiro acesso ele vai redefinir
        }, {
          headers: { Authorization: `Bearer ${token}` }
        });
      }
      
      await fetchTecnicos();
      setIsEditModalOpen(false);
    } catch (err: any) {
      setError(err.response?.data?.message || 'Erro ao salvar os dados.');
    } finally {
      setIsSubmitting(false);
    }
  };

  const handleResetPassword = async (e: React.FormEvent) => {
    e.preventDefault();
    if (!selectedTecnico || !newPassword) return;
    
    setIsSubmitting(true);
    setError('');

    try {
      const baseURL = import.meta.env.VITE_API_URL || 'http://localhost:8080/api/v1';
      await axios.patch(`${baseURL}/tecnicos/${selectedTecnico.idTecnico}/senha`, 
      { novaSenha: newPassword }, 
      { headers: { Authorization: `Bearer ${token}` } });
      
      setIsPasswordModalOpen(false);
      alert('Senha redefinida com sucesso!');
    } catch (err: any) {
      setError(err.response?.data?.message || 'Erro ao redefinir a senha.');
    } finally {
      setIsSubmitting(false);
    }
  };

  const filteredTecnicos = tecnicos.filter(t => 
    t.nomeCompleto?.toLowerCase().includes(searchTerm.toLowerCase()) ||
    t.matricula?.toLowerCase().includes(searchTerm.toLowerCase())
  );

  return (
    <div className="space-y-4 animate-in fade-in zoom-in-95 duration-200">
      <div className="flex flex-col sm:flex-row justify-between items-start sm:items-center gap-4 bg-[#1e293b] p-4 rounded-2xl border border-border">
        <div className="relative w-full sm:w-96">
          <Search className="absolute left-3 top-1/2 -translate-y-1/2 text-text-muted" size={18} />
          <input 
            type="text" 
            placeholder="Buscar por nome ou matrícula..."
            className="w-full pl-10 pr-4 py-2.5 bg-surface border border-border rounded-xl text-sm focus:outline-none focus:border-accent-teal focus:ring-1 focus:ring-accent-teal text-slate-200 placeholder-slate-500"
            value={searchTerm}
            onChange={(e) => setSearchTerm(e.target.value)}
          />
        </div>
        
        <button 
          onClick={() => openEditModal()}
          className="w-full sm:w-auto bg-accent-teal text-[#0f172a] hover:bg-emerald-400 px-5 py-2.5 rounded-xl font-bold flex items-center justify-center gap-2 transition-colors"
        >
          <Plus size={18} />
          Adicionar Técnico
        </button>
      </div>

      <div className="bg-[#1e293b] border border-border rounded-2xl overflow-hidden shadow-lg">
        <div className="overflow-x-auto">
          <table className="w-full text-left text-sm">
            <thead className="bg-surface/50 text-text-muted text-xs uppercase font-semibold">
              <tr>
                <th className="px-6 py-4">Matrícula</th>
                <th className="px-6 py-4">Nome Completo</th>
                <th className="px-6 py-4">Base</th>
                <th className="px-6 py-4">Perfil</th>
                <th className="px-6 py-4">Status</th>
                <th className="px-6 py-4 text-right">Ações</th>
              </tr>
            </thead>
            <tbody className="divide-y divide-border/50">
              {loading ? (
                <tr>
                  <td colSpan={6} className="px-6 py-12 text-center text-text-muted">
                    <Loader2 className="animate-spin mx-auto mb-2" size={24} />
                    Carregando técnicos...
                  </td>
                </tr>
              ) : filteredTecnicos.length === 0 ? (
                <tr>
                  <td colSpan={6} className="px-6 py-12 text-center text-text-muted">
                    Nenhum técnico encontrado.
                  </td>
                </tr>
              ) : (
                filteredTecnicos.map(t => (
                  <tr key={t.idTecnico} className="hover:bg-surface/30 transition-colors">
                    <td className="px-6 py-3 font-medium text-slate-300">{t.matricula}</td>
                    <td className="px-6 py-3 text-slate-300">{t.nomeCompleto}</td>
                    <td className="px-6 py-3 text-slate-400">{t.ctBase || '-'}</td>
                    <td className="px-6 py-3">
                      <span className={`px-2.5 py-1 rounded-md text-[11px] font-bold tracking-wider ${
                        t.role === 'MODERADOR' ? 'bg-amber-500/20 text-amber-400' : 
                        t.role === 'ADMINISTRADOR' ? 'bg-purple-500/20 text-purple-400' : 
                        'bg-slate-500/20 text-slate-300'
                      }`}>
                        {t.role}
                      </span>
                    </td>
                    <td className="px-6 py-3">
                      <span className={`flex items-center gap-1.5 text-xs font-semibold ${t.ativo ? 'text-emerald-400' : 'text-rose-400'}`}>
                        <div className={`w-1.5 h-1.5 rounded-full ${t.ativo ? 'bg-emerald-400' : 'bg-rose-400'}`}></div>
                        {t.ativo ? 'Ativo' : 'Inativo'}
                      </span>
                    </td>
                    <td className="px-6 py-3">
                      <div className="flex items-center justify-end gap-2">
                        <button onClick={() => openEditModal(t)} className="p-2 hover:bg-accent-teal/10 hover:text-accent-teal text-slate-400 rounded-lg transition-colors" title="Editar">
                          <Pencil size={16} />
                        </button>
                        <button onClick={() => openPasswordModal(t)} className="p-2 hover:bg-amber-500/10 hover:text-amber-400 text-slate-400 rounded-lg transition-colors" title="Redefinir Senha">
                          <KeyRound size={16} />
                        </button>
                        <button onClick={() => handleDelete(t.idTecnico)} className="p-2 hover:bg-rose-500/10 hover:text-rose-400 text-slate-400 rounded-lg transition-colors" title="Excluir">
                          <Trash2 size={16} />
                        </button>
                      </div>
                    </td>
                  </tr>
                ))
              )}
            </tbody>
          </table>
        </div>
      </div>

      {/* MODAL EDIÇÃO/CRIAR */}
      {isEditModalOpen && (
        <div className="fixed inset-0 z-50 flex items-center justify-center bg-black/60 backdrop-blur-sm p-4">
          <div className="bg-[#1e293b] border border-border rounded-2xl w-full max-w-xl overflow-hidden shadow-2xl animate-in zoom-in-95 duration-200">
            <div className="flex justify-between items-center p-6 border-b border-border">
              <h3 className="text-xl font-bold text-slate-200">
                {selectedTecnico ? 'Editar Técnico' : 'Adicionar Técnico'}
              </h3>
              <button onClick={() => setIsEditModalOpen(false)} className="text-slate-400 hover:text-white transition-colors">
                <X size={24} />
              </button>
            </div>
            
            <form onSubmit={handleSave}>
              <div className="p-6 space-y-4">
                <div className="grid grid-cols-2 gap-4">
                  <div className="space-y-1">
                    <label className="text-xs font-semibold text-text-muted uppercase">Nome Completo</label>
                    <input 
                      required
                      type="text" 
                      className="w-full bg-surface border border-border rounded-xl p-2.5 text-slate-200 focus:outline-none focus:border-accent-teal"
                      value={formData.nomeCompleto || ''}
                      onChange={e => setFormData({...formData, nomeCompleto: e.target.value})}
                    />
                  </div>
                  <div className="space-y-1">
                    <label className="text-xs font-semibold text-text-muted uppercase">Matrícula</label>
                    <input 
                      required
                      type="text" 
                      className="w-full bg-surface border border-border rounded-xl p-2.5 text-slate-200 focus:outline-none focus:border-accent-teal"
                      value={formData.matricula || ''}
                      onChange={e => setFormData({...formData, matricula: e.target.value})}
                    />
                  </div>
                  <div className="space-y-1">
                    <label className="text-xs font-semibold text-text-muted uppercase">CPF (opcional)</label>
                    <input 
                      type="text" 
                      className="w-full bg-surface border border-border rounded-xl p-2.5 text-slate-200 focus:outline-none focus:border-accent-teal"
                      value={formData.cpf || ''}
                      onChange={e => setFormData({...formData, cpf: e.target.value})}
                    />
                  </div>
                  <div className="space-y-1">
                    <label className="text-xs font-semibold text-text-muted uppercase">CT Base</label>
                    <input 
                      type="text" 
                      className="w-full bg-surface border border-border rounded-xl p-2.5 text-slate-200 focus:outline-none focus:border-accent-teal"
                      value={formData.ctBase || ''}
                      onChange={e => setFormData({...formData, ctBase: e.target.value})}
                    />
                  </div>
                  <div className="space-y-1">
                    <label className="text-xs font-semibold text-text-muted uppercase">Perfil (Role)</label>
                    <select 
                      className="w-full bg-surface border border-border rounded-xl p-2.5 text-slate-200 focus:outline-none focus:border-accent-teal"
                      value={formData.role || 'PADRAO'}
                      onChange={e => setFormData({...formData, role: e.target.value})}
                    >
                      <option value="PADRAO">Técnico Padrão</option>
                      <option value="ADMINISTRADOR">Administrador / Supervisor</option>
                      <option value="MODERADOR">Moderador (Acesso Total)</option>
                    </select>
                  </div>
                  <div className="space-y-1 flex items-center mt-6">
                    <label className="flex items-center gap-2 cursor-pointer">
                      <input 
                        type="checkbox" 
                        className="w-4 h-4 rounded bg-surface border-border text-accent-teal focus:ring-accent-teal"
                        checked={formData.ativo || false}
                        onChange={e => setFormData({...formData, ativo: e.target.checked})}
                      />
                      <span className="text-sm font-semibold text-slate-300">Usuário Ativo no Sistema</span>
                    </label>
                  </div>
                </div>
                {error && <p className="text-sm text-rose-400 font-semibold">{error}</p>}
              </div>

              <div className="p-6 border-t border-border bg-[#162032] flex justify-end gap-3">
                <button 
                  type="button"
                  onClick={() => setIsEditModalOpen(false)}
                  className="px-5 py-2 rounded-xl text-slate-300 font-semibold hover:bg-surface transition-colors"
                >
                  Cancelar
                </button>
                <button 
                  type="submit"
                  disabled={isSubmitting}
                  className="px-6 py-2 rounded-xl bg-accent-teal hover:bg-emerald-400 text-[#0f172a] font-bold transition-colors disabled:opacity-50"
                >
                  {isSubmitting ? 'Salvando...' : 'Salvar Alterações'}
                </button>
              </div>
            </form>
          </div>
        </div>
      )}

      {/* MODAL SENHA */}
      {isPasswordModalOpen && (
        <div className="fixed inset-0 z-50 flex items-center justify-center bg-black/60 backdrop-blur-sm p-4">
          <div className="bg-[#1e293b] border border-border rounded-2xl w-full max-w-sm overflow-hidden shadow-2xl animate-in zoom-in-95 duration-200">
            <div className="flex justify-between items-center p-5 border-b border-border">
              <h3 className="text-lg font-bold text-slate-200 flex items-center gap-2">
                <KeyRound size={20} className="text-amber-400" />
                Redefinir Senha
              </h3>
              <button onClick={() => setIsPasswordModalOpen(false)} className="text-slate-400 hover:text-white transition-colors">
                <X size={20} />
              </button>
            </div>
            
            <form onSubmit={handleResetPassword}>
              <div className="p-5 space-y-4">
                <p className="text-sm text-text-muted">
                  Defina uma nova senha para <strong>{selectedTecnico?.nomeCompleto}</strong>. 
                  O técnico precisará trocar essa senha no próximo login.
                </p>
                <div className="space-y-1">
                  <label className="text-xs font-semibold text-text-muted uppercase">Nova Senha Temporária</label>
                  <input 
                    required
                    type="text" 
                    className="w-full bg-surface border border-border rounded-xl p-3 text-slate-200 focus:outline-none focus:border-amber-400"
                    value={newPassword}
                    onChange={e => setNewPassword(e.target.value)}
                    placeholder="Ex: Temp@2025"
                  />
                </div>
                {error && <p className="text-sm text-rose-400 font-semibold">{error}</p>}
              </div>

              <div className="p-5 border-t border-border bg-[#162032] flex justify-end gap-3">
                <button 
                  type="button"
                  onClick={() => setIsPasswordModalOpen(false)}
                  className="px-4 py-2 rounded-xl text-slate-300 font-semibold hover:bg-surface transition-colors"
                >
                  Cancelar
                </button>
                <button 
                  type="submit"
                  disabled={isSubmitting || !newPassword}
                  className="px-5 py-2 rounded-xl bg-amber-500 hover:bg-amber-600 text-white font-bold transition-colors disabled:opacity-50"
                >
                  {isSubmitting ? 'Redefinindo...' : 'Confirmar Senha'}
                </button>
              </div>
            </form>
          </div>
        </div>
      )}
    </div>
  );
}
