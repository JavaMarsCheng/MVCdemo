package com.demo.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.demo.model.Student;
import com.demo.service.StudentService;


/**
 * 学生控制器
 * @author Cloud Lau
 * @company SZU
 * @date 2016年3月5日
 * @description
 */
@Controller
@RequestMapping("student")
public class StudentController {
	
	@Resource 
	private StudentService studentService;
	
	@RequestMapping(value = {"" , "/"})
	public String index(){
		return "index";
	}
	
	@ResponseBody
	@RequestMapping("list.json")
	public List<Student> list(HttpServletRequest request){
		
		return studentService.list();
	}
	
	@ResponseBody
	@RequestMapping("edit.json")
	public Map<String,Object> edit(String name){
		//TODO
		return null;
	}
	
	@ResponseBody
	@RequestMapping("delete.json")
	public Map<String,Object> delete(){
		//TODO
		
		return null;
	}
	
}
