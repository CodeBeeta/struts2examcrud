package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.ExamDao;
import model.Exam;

public class ExamCtrl extends ActionSupport{

	Exam exam = new Exam();
	ExamDao dao = new ExamDao();
	private List<Exam> examList;
	private String sm = "";
	private String em = "";
	public Exam getExam() {
		return exam;
	}
	public void setExam(Exam exam) {
		this.exam = exam;
	}
	public ExamDao getDao() {
		return dao;
	}
	public void setDao(ExamDao dao) {
		this.dao = dao;
	}
	public List<Exam> getExamList() {
		return examList;
	}
	public void setExamList(List<Exam> examList) {
		this.examList = examList;
	}
	public String getSm() {
		return sm;
	}
	public void setSm(String sm) {
		this.sm = sm;
	}
	public String getEm() {
		return em;
	}
	public void setEm(String em) {
		this.em = em;
	}
	
	
	public String saveExam() {
		
		exam.setReferencia(exam.getReferencia());
		exam.setNome(exam.getNome());
		exam.setDescricao(exam.getDescricao());
		exam.setClasse(exam.getClasse());
		
		boolean status = dao.saveExam(exam);
		if(status) {
			setSm("Exame salvo com Sucesso");
			setEm(null);
			return "success";
		}else {
			setEm("Problemas ao salvar o exame");
			setSm(null);
			return "input";
		}
	}
	
	public String updateExam() {
		
		exam.setId(exam.getId());
		exam.setReferencia(exam.getReferencia());
		exam.setNome(exam.getNome());
		exam.setDescricao(exam.getDescricao());
		exam.setClasse(exam.getClasse());
		
		boolean status = dao.UpdateExam(exam);
		if(status) {
			setSm("Exame Editado com Sucesso");
			setEm(null);
			return "success";
		}else {
			setSm(null);
			setEm("Problemas ao editar o exame");
			return "input";
		}
	}
	
	
	public String editExam() {
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		int id = Integer.parseInt(request.getParameter("id"));
		
		Exam ex = dao.getExam(id);
		
		exam.setId(id);
		exam.setReferencia(ex.getReferencia());
		exam.setNome(ex.getNome());
		exam.setDescricao(ex.getDescricao());
		exam.setClasse(ex.getClasse());
		
		setSm(null);
		setEm(null);
		
		return "success";
	}
	
	public String deleteExam() {
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		int id = Integer.parseInt(request.getParameter("id"));
		
		boolean status = dao.deleteExam(id);
		if(status) {
			setSm("Exame deletado com Sucesso");
			setEm(null);
			findAllExam();
			return "success";
		}else {
			setSm(null);
			setEm("Problemas ao deletar o exame");
			return "input";
		}

	}
	
	public String findAllExam() {
		examList = dao.getAllExam();
		
		setSm(null);
		setEm(null);
		
		return "success";
	}
	
}
