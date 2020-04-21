package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import model.Exam;
import util.DBConnect;

public class ExamDao {
	
	List<Exam> list = new ArrayList();
	
	public List<Exam> getAllExam(){
		String sql = "select * from exam";
		try {
			ResultSet rs = DBConnect.getConnection().createStatement().executeQuery(sql);
			while(rs.next()) {
				list.add(new Exam(rs.getInt("id"),rs.getInt("referencia"), rs.getString("nome"),rs.getString("descricao"),rs.getString("classe")));
			}
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		
	}
	
	public boolean saveExam(Exam ex) {
		String sql = "insert into exam (referencia, nome, descricao, classe) values (?, ?, ?, ?)";
		
		try {
			PreparedStatement pst = DBConnect.getConnection().prepareStatement(sql);
			pst.setInt(1, ex.getReferencia());
			pst.setString(2, ex.getNome());
			pst.setString(3, ex.getDescricao());
			pst.setString(4, ex.getClasse());

			
			int value = pst.executeUpdate();
			
			if(value > 0) {
				return true;
			}else {
				return false;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}
	
	public boolean UpdateExam(Exam ex) {
		String sql = "Update exam set referencia=?, nome=?, descricao=?, classe=? where id=?";
		
		try {
			PreparedStatement pst = DBConnect.getConnection().prepareStatement(sql);
			pst.setInt(1, ex.getReferencia());
			pst.setString(2, ex.getNome());
			pst.setString(3, ex.getDescricao());
			pst.setString(4, ex.getClasse());
			pst.setInt(5, ex.getId());
			
			int value = pst.executeUpdate();
			
			if(value > 0) {
				return true;
			}else {
				return false;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}
	
	public boolean deleteExam(int id) {
		String sql = "delete from exam where id=?";
		
		try {
			PreparedStatement pst = DBConnect.getConnection().prepareStatement(sql);
			pst.setInt(1,id);
			
			int value = pst.executeUpdate();
			
			if(value > 0) {
				return true;
			}else {
				return false;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}
	
	public Exam getExam(int id) {
		Exam ex = new Exam();
		String sql = "Select * from exam where id=" + id;
		
		try {
			ResultSet rs = DBConnect.getConnection().createStatement().executeQuery(sql);
			if(rs.next()) {
				ex.setId(rs.getInt("id"));
				ex.setReferencia(rs.getInt("referencia"));
				ex.setNome(rs.getString("nome"));
				ex.setDescricao(rs.getString("descricao"));
				ex.setClasse(rs.getString("classe"));
			}
			
			return ex;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		
	}

	
}
