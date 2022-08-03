package test;

import java.util.ArrayList;

public class MemberManagerBean {
	ArrayList<MemberBean> members = new ArrayList<MemberBean>();
	
	public void insert(MemberBean vo) {
		this.members.add(vo);
	}
	
	public ArrayList<MemberBean> selectAll(MemberBean vo) {
		return this.members;
	}
	
	public MemberBean selectOne(MemberBean vo) {
		
		for(MemberBean mb:this.members) {
			
			if(vo.getUname().equals(mb.getUname())) {
				return mb;
			}
		}
		return null;
	}
}
