package com.demo.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.demo.model.Student;

/**
 * 
 * @author Cloud Lau
 * @company SZU
 * @date 2016年3月5日
 * @description
 */

@Repository
public class StudentDao extends BaseDao<Student>{

	/**
	 * 获取所有学生信息
	 * 
	 * @author Cloud Lau
	 * @return
	 */
	public List<Student> list(){
		String statementName = getIbatisMapperNamespace() + ".list";
		return getSqlSessionTemplate().selectList(statementName, null);
	}

	@Override
	public Class<Student> getEntityClass() {
		// TODO Auto-generated method stub
		return Student.class;
	}
	
	public void edit(String name){
		String statementName = getIbatisMapperNamespace() + ".edit";
		getSqlSessionTemplate().selectList(statementName, null);
	}

}
