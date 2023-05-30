package com.bit.web.controller;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.bit.web.dao.ProjectDao;
import com.bit.web.vo.PageBean;
@Component
public class PaginAction {
	@Autowired
	private ProjectDao dao;
	public PageBean paging(HttpServletRequest request) {
		int pageScale=10;  //�������� ������ �� ����
		int totalRow=dao.getTotalRow(); //���� �� ���� 
		int totalPage=totalRow%pageScale==0?totalRow/pageScale:(totalRow/pageScale)+1; //�� �������� ����
		if(totalRow==0)totalPage=1;	
		int currentPage=1; //���� ������ 
		try{
			currentPage=Integer.parseInt(request.getParameter("page"));
		}catch (Exception e) {
			// TODO: handle exception
		}
		int start=1+(currentPage-1)*pageScale;
		int end=pageScale+(currentPage-1)*pageScale;
		
		int currentBlock=currentPage%pageScale==0?currentPage/pageScale:(currentPage/pageScale)+1;
		
		int startPage=1+(currentBlock-1)*pageScale;
		int endPage=pageScale+(currentBlock-1)*pageScale;
		endPage=totalPage<=endPage?totalPage:endPage;
		
		
		
		return new PageBean(totalPage,start,end,currentPage,currentBlock,startPage,endPage);
	}
}
