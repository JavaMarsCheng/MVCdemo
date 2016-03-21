package com.demo.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.demo.dao.StudentDao;
import com.demo.model.Student;

/**
 * Student Service
 * @author Cloud Lau
 * @company SZU
 * @date 2016年3月5日
 * @description
 */
@Service
public class StudentService {

	@Resource
	private StudentDao studentDao;
	
	public List<Student> list(){
		return studentDao.list();
	}
	public void edit(String name){
		studentDao.edit(name);
	}
	
}
