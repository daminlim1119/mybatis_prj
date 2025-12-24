package day1224;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import day1219.DeptDTO;
import kr.co.sist.dao.MyBatisHandler;

public class TestMyBatisDAO2 {

	public void updateNonParameter()throws PersistenceException {
		//1.mybatis handler얻기
		SqlSession ss=MyBatisHandler.getInstance().getMyBatisHandler(true);
		//2.쿼리문을 찾아서 parsing한 후 실행
		int cnt=ss.update("day1224.updateNonParameter");
		//3.실행결과받기
		System.out.println(cnt+"건 변경");
		//4.mybatis handler 닫기
		if(ss!=null) {ss.close();}//end if
	}//updateNonParameter
	
	public void updateParameter(int num)throws PersistenceException {
		//1.mybatis handler얻기
		SqlSession ss=MyBatisHandler.getInstance().getMyBatisHandler(true);
		//2.쿼리문을 찾아서 parsing한 후 실행
		int cnt=ss.update("day1224.updateParameter",num);
		//3.실행결과받기
		System.out.println(cnt+"건 변경");
		//4.mybatis handler 닫기
		if(ss!=null) {ss.close();}//end if
	}//updateNonParameter
	
	public void deleteNonParameter()throws PersistenceException {
		SqlSession ss=MyBatisHandler.getInstance().getMyBatisHandler(true);
		int cnt=ss.delete("day1224.deleteCpDept");
		System.out.println(cnt+"건 삭제");
		ss.close();
	}
	
	
	public void deleteParameter(int deptno)throws PersistenceException {
		SqlSession ss=MyBatisHandler.getInstance().getMyBatisHandler(true);
		int cnt=ss.delete("day1224.deleteCpDeptNo");
		System.out.println(cnt+"건 삭제");
		if(ss!=null){ss.close();}
	}
	
	
	public static void main(String[] args) {
try {
		new TestMyBatisDAO2().deleteParameter(90);
	//DeptDTO dDTO=new DeptDTO(50, "QA", "경기도");
	//	new TestMyBatisDAO2().insertCpDept2(dDTO);
}catch(PersistenceException pe) {	
	System.err.println("문제발생");
	pe.printStackTrace();
}
	}

}
