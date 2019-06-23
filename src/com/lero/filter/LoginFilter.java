package com.lero.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginFilter implements Filter{

	public void destroy() {
		
	}

	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse,
			FilterChain filterChain) throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest)servletRequest;
		HttpServletResponse response = (HttpServletResponse)servletResponse;
		
		HttpSession session = request.getSession();
		
		String path = request.getRequestURI();
		boolean check = false;
		
		if (path.endsWith(".jsp") || path.endsWith(".html")) {
            check = true;
        }
		if(path.endsWith("/bootstrap") || path.endsWith("/images")) {
			check = true;
		}
		if(path.endsWith("/login.jsp") || path.endsWith("/validateColor") || path.endsWith("/register.jsp") ){
			check = false;
		}
		if(check){
			if(session.getAttribute("currentUser") != null){
				System.out.println("-------> 通过");
				filterChain.doFilter(servletRequest, servletResponse);
			}else{
				System.out.println("-------> 拦截");
				response.sendRedirect(request.getContextPath() + "/login.jsp");
			}
		}
		else {
			System.out.println("不需要拦截的");
			filterChain.doFilter(servletRequest, servletResponse);
		}
	}

	public void init(FilterConfig arg0) throws ServletException {
		
	}

}
