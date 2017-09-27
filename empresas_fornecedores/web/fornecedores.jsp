<%-- 
    Document   : clientes
    Created on : 27/09/2017, 16:01:14
    Author     : Rodrigo
--%>
<%@page import="br.com.fatecpg.Bd"%>
<%@page import="br.com.fatecpg.Fornecedor"%>
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
                            <h2 class="no-margin-bottom">Fornecedores</h2>
                        </div>
                    </header><%
                    try{
                        if (request.getParameter("add")!=null){
                            String nome = request.getParameter("nome");
                            String razao_social = request.getParameter("razao_social");
                            String cnpj = request.getParameter("cnpj");
                            String email = request.getParameter("email");
                            String telefone = request.getParameter("telefone");
                            String logradouro = request.getParameter("logradouro");
                            String bairro = request.getParameter("bairro");
                            String cidade = request.getParameter("cidade");
                            String estado = request.getParameter("estado");
                            String cep = request.getParameter("cep");
                            
                            
                            Fornecedor f = new Fornecedor();
                            f.setNome(nome);
                            f.setRazaoSocial(razao_social);
                            f.setCnpj(cnpj);
                            f.setEmail(email);
                            f.setTelefone(telefone);
                            f.setLogradouro(logradouro);
                            f.setBairro(bairro);
                            f.setCidade(cidade);
                            f.setEstado(estado);
                            f.setCep(cep);

                            Bd.getFornecedores().put(cnpj, f);%>
                            <section class="projects padding-top no-padding-bottom">
                                <div class="container-fluid">
                                    <div class="project">
                                        <div class="row bg-yellow has-shadow">
                                            <div class="left-col retirar_borda d-flex align-items-center justify-content-between">
                                                <div class="project-title d-flex align-items-center">
                                                    <div class="text">
                                                        <small>Mensagem</small>
                                                        <h3 class="h4">FORNECEDOR ALTERADO COM SUCESSO!</h3>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </section>
                        <%}else if (request.getParameter("remove")!=null && request.getParameter("cnpj")!=null){
                            Bd.getFornecedores().remove(request.getParameter("cnpj"));%>
                            <section class="projects padding-top no-padding-bottom">
                                <div class="container-fluid">
                                    <div class="project">
                                        <div class="row bg-yellow has-shadow">
                                            <div class="left-col retirar_borda d-flex align-items-center justify-content-between">
                                                <div class="project-title d-flex align-items-center">
                                                    <div class="text">
                                                        <small>Mensagem</small>
                                                        <h3 class="h4">fornecedor EXCLUÍDO COM SUCESSO!</h3>
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
                                                            <th>Razão Social</th>
                                                            <th>CNPJ</th>
                                                            <th>E-mail</th>
                                                            <th>Telefone</th>
                                                            <th></th>
                                                            <th></th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <%Set<String> chaves = Bd.getFornecedores().keySet();
                                                        int i=1;
                                                        for (String chave : chaves){
                                                            if(chave != null){
                                                                Fornecedor c = Bd.getFornecedores().get(chave);%>
                                                                <tr>
                                                                    <td><%=i%></td>
                                                                    <td><%=c.getNome()%></td>
                                                                    <td><%=c.getRazaoSocial()%></td>
                                                                    <td><%=c.getCnpj()%></td>
                                                                    <td><%=c.getEmail()%></td>
                                                                    <td><%=c.getTelefone()%></td>
                                                                    <form action="forn-alt.jsp">
                                                                        <input type="hidden" name="cnpj" value="<%=chave%>">
                                                                        <td><input type="submit" name="alterar" value="Alterar"></td>
                                                                    </form>
                                                                    <form>
                                                                        <input type="hidden" name="cnpj" value="<%=chave%>">
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
