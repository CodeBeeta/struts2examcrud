package model;

public class Exam {

	private int id;
	private int referencia;
	private String nome;
	private String descricao;
	private String classe;
		
	public Exam() {
		
	}

	public Exam(int id, int referencia, String nome, String descricao, String classe) {
		super();
		this.id = id;
		this.referencia = referencia;
		this.nome = nome;
		this.descricao = descricao;
		this.classe = classe;
	}
	
	

	@Override
	public String toString() {
		return "Exam [id=" + id + ", referencia=" + referencia + ", nome=" + nome + ", descricao=" + descricao
				+ ", classe=" + classe + "]";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getReferencia() {
		return referencia;
	}

	public void setReferencia(int referencia) {
		this.referencia = referencia;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getClasse() {
		return classe;
	}

	public void setClasse(String classe) {
		this.classe = classe;
	}

	
	
	
}
