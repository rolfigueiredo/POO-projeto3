<%-- 
    Document   : newjsp
    Created on : 27/09/2017, 16:01:14
    Author     : Rodrigo
--%>
<%@page import="br.com.fatecpg.Bd"%>
<%@page import="br.com.fatecpg.Contato"%>
<%@page import="java.util.Set"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%String titulo = "Contatos & Fornecedores";%>
        <%@include file="WEB-INF/adic/cabecalho.jspf"%>
    </head>
    <body>
        <div class="page home-page">
            <%@include file="WEB-INF/adic/menu-top.jspf"%>
            <div class="page-content d-flex align-items-stretch">
                <%@include file="WEB-INF/adic/menu.jspf"%>
                <div class="content-inner">
                    <header class="page-header">
                        <div class="container-fluid">
                            <h2 class="no-margin-bottom">Dashboard</h2>
                        </div>
                    </header>
                    <section class="dashboard-counts no-padding-bottom dashboard">
                        <div class="container-fluid">
                            <div class="row bg-white has-shadow">
                                <div class="col-xl-6 col-sm-6">
                                    <div class="item d-flex align-items-center">
                                        <div class="title"><span>CLIENTES</span>
                                            <div class="progress">
                                                <div role="progressbar" style="width: 15%; height: 4px;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" class="progress-bar bg-violet"></div>
                                            </div>
                                        </div>
                                        <div class="number"><strong>46</strong></div>
                                    </div>
                                </div>
                                <div class="col-xl-6 col-sm-6">
                                    <div class="item d-flex align-items-center">
                                        <div class="title"><span>FORNECEDORES</span>
                                            <div class="progress">
                                                <div role="progressbar" style="width: 15%; height: 4px;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" class="progress-bar bg-violet"></div>
                                            </div>
                                        </div>
                                        <div class="number"><strong>46</strong></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <footer class="main-footer">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-sm-12">
                                    <p>FATEC - POO - Projeto 3 &copy; 2017</p>
                                </div>
                            </div>
                        </div>
                    </footer>
                </div>
            </div>
        </div>
        <%@include file="WEB-INF/adic/rodape.jspf"%>
    </body>
</html>
