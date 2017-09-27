<%-- 
    Document   : clientes
    Created on : 27/09/2017, 16:01:14
    Author     : Rodrigo
--%>
<%@page import="br.com.fatecpg.Bd"%>
<%@page import="br.com.fatecpg.Cliente"%>
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
                            <h2 class="no-margin-bottom">Clientes</h2>
                        </div>
                    </header><%
                    try{
                        if (request.getParameter("add")!=null){
                            String nome = request.getParameter("nome");
                            String cpf = request.getParameter("cpf");
                            String rg = request.getParameter("rg");
                            String email = request.getParameter("email");
                            String telefone = request.getParameter("telefone");
                            String logradouro = request.getParameter("logradouro");
                            String bairro = request.getParameter("bairro");
                            String cidade = request.getParameter("cidade");
                            String estado = request.getParameter("estado");
                            String cep = request.getParameter("cep");
                            
                            
                            Cliente c = new Cliente();
                            c.setNome(nome);
                            c.setRg(rg);
                            c.setEmail(email);
                            c.setTelefone(telefone);
                            c.setLogradouro(logradouro);
                            c.setBairro(bairro);
                            c.setCidade(cidade);
                            c.setEstado(estado);
                            c.setCep(cep);

                            Bd.getClientes().put(cpf, c);%>
                            <section class="projects padding-top no-padding-bottom">
                                <div class="container-fluid">
                                    <div class="project">
                                        <div class="row bg-yellow has-shadow">
                                            <div class="left-col retirar_borda d-flex align-items-center justify-content-between">
                                                <div class="project-title d-flex align-items-center">
                                                    <div class="text">
                                                        <small>Mensagem</small>
                                                        <h3 class="h4">CLIENTE ALTERADO COM SUCESSO!</h3>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </section>
                        <%}else if (request.getParameter("remove")!=null && request.getParameter("cpf")!=null){
                            Bd.getClientes().remove(request.getParameter("cpf"));%>
                            <section class="projects padding-top no-padding-bottom">
                                <div class="container-fluid">
                                    <div class="project">
                                        <div class="row bg-yellow has-shadow">
                                            <div class="left-col retirar_borda d-flex align-items-center justify-content-between">
                                                <div class="project-title d-flex align-items-center">
                                                    <div class="text">
                                                        <small>Mensagem</small>
                                                        <h3 class="h4">CLIENTE EXCLUÍDO COM SUCESSO!</h3>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </section>
                        <%}%>
                        <section class="tela">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="chart col-lg-12 col-12">
                                        <div class="bg-white align-items-center justify-content-center has-shadow format-box-forms">
                                            <%if (Bd.getClientes().size()==0){%>Nenhum cliente cadastrado<%}else{%>
                                                <table class="table table-striped">
                                                    <thead>
                                                        <tr>
                                                            <th>#</th>
                                                            <th>Nome</th>
                                                            <th>CPF</th>
                                                            <th>RG</th>
                                                            <th>E-mail</th>
                                                            <th>Telefone</th>
                                                            <th></th>
                                                            <th></th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <%Set<String> chaves = Bd.getClientes().keySet();
                                                        int i=1;
                                                        for (String chave : chaves){
                                                            if(chave != null){
                                                                Cliente c = Bd.getClientes().get(chave);%>
                                                                <tr>
                                                                    <td><%=i%></td>
                                                                    <td><%=c.getNome()%></td>
                                                                    <td><%=c.getCpf()%></td>
                                                                    <td><%=c.getRg()%></td>
                                                                    <td><%=c.getEmail()%></td>
                                                                    <td><%=c.getTelefone()%></td>
                                                                    <form action="cli-alt.jsp">
                                                                        <input type="hidden" name="cpf" value="<%=chave%>">
                                                                        <td><input type="submit" name="alterar" value="Alterar"></td>
                                                                    </form>
                                                                    <form>
                                                                        <input type="hidden" name="cpf" value="<%=chave%>">
                                                                        <td><input type="submit" name="remove" value="Excluir"></td>
                                                                    </form>
                                                                </tr>
                                                                <%i+=1;
                                                            }
                                                        }%>
                                                    </tbody>
                                                </table>
                                            <%}%>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                    <%}catch(Exception ex){%>
                        <div>*Erro ao processar os parametros</div>
                    <%}%>
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
