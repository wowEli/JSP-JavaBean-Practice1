package test;

import java.util.ArrayList;

public class StudentManagerBean {
	ArrayList<StudentBean> datas = new ArrayList<StudentBean>();
	
	public boolean insert(StudentBean sb) {
		this.datas.add(sb);
		return true;
	}
	
	public ArrayList<StudentBean> selectAll(StudentBean sb){
		return this.datas;
	}
	
	public StudentBean selectOne(StudentBean sb) {
		for(StudentBean vo:this.datas) {
			if(sb.getSname().equals(vo.getSname())) {
				return vo;
			}
		}
		return null;
	}
}
