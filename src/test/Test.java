package test;

import dao.ExamDao;

public class Test {
	public static void main(String[] args) {
		ExamDao dao = new ExamDao();
		System.out.println(dao.getExam(1));
	}
}
