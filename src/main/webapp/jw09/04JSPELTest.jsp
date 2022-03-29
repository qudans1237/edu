<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="jw09.*" %>
   
   <% session.setAttribute("client", new Client()); %>
   
   name:${client.name}<br/>
   addr:${client.addr}<br/>
   age: ${client.age}<br/>
   ${client.info[0]}<br/>
   ${client.info[1]}
    