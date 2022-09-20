package br.edu.infnet.Apprendizado.entities;

import java.io.Serializable;
import java.util.Objects;

import br.edu.infnet.Apprendizado.exceptions.LinkTarefaInvalidoException;
import br.edu.infnet.Apprendizado.exceptions.TempoLimiteInvalidoException;
import br.edu.infnet.Apprendizado.exceptions.VideoUrlInvalidoException;
import br.edu.infnet.Apprendizado.interfaces.IPrinter;

public abstract class Conteudo implements IPrinter, Serializable{
	private static final long serialVersionUID = 1L;
	
	private Long id;
	private String titulo;
	private String descricao;
	
	public Conteudo() {
	}

	public Conteudo(Long id, String titulo, String descricao) {
		this.id = id;
		this.titulo = titulo;
		this.descricao = descricao;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	
	public abstract String apurar() throws TempoLimiteInvalidoException, LinkTarefaInvalidoException, VideoUrlInvalidoException;

	@Override
	public int hashCode() {
		return Objects.hash(id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Conteudo other = (Conteudo) obj;
		return Objects.equals(id, other.id);
	}

	@Override
	public String toString() {
		return "Conteudo id=" + id + ", titulo=" + titulo + ", descricao=" + descricao;
	}
}
