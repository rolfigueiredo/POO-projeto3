<%-- 
    Document   : newjsp
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
                            <h2 class="no-margin-bottom">Cadastro de Fornecedores</h2>
                        </div>
                    </header>
                    <%
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
                            <section class="tela projects padding-top no-padding-bottom">
                                <div class="container-fluid">
                                    <div class="project">
                                        <div class="row bg-yellow has-shadow">
                                            <div class="left-col retirar_borda d-flex align-items-center justify-content-between">
                                                <div class="project-title d-flex align-items-center">
                                                    <div class="text">
                                                        <small>Mensagem</small>
                                                        <h3 class="h4">CADASTRO EFETUADO COM SUCESSO!</h3>
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
                                            <form method="post">
                                                <div class="row">
                                                    <div id="tipo_cad" class="col-sm-12 format-box-forms-ini">
                                                        <div class="col-sm-8 format-box-forms-ini">
                                                            <div class="form-group-material">
                                                                <input id="nome" type="text" name="nome" class="input-material" required />
                                                                <label for="nome" class="label-material">Nome</label>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-8 format-box-forms-ini">
                                                            <div class="form-group-material">
                                                                <input id="razao_social" type="text" name="razao_social" class="input-material" required />
                                                                <label for="razao_social" class="label-material">Razão Social</label>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-8 format-box-forms-ini">
                                                            <div class="form-group-material">
                                                                <input id="cnpj" maxlength="18" type="text" name="cnpj" class="input-material" required />
                                                                <label for="cnpj" class="label-material">CNPJ</label>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-8 format-box-forms-ini">
                                                            <div class="form-group-material">
                                                                <input id="email" type="email" name="email" class="input-material" required />
                                                                <label for="email" class="label-material">E-mail</label>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-8 format-box-forms-ini">
                                                            <div class="form-group-material">
                                                                <input id="telefone" type="text" name="telefone" class="input-material" required />
                                                                <label for="telefone" class="label-material">Telefone</label>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-8 format-box-forms-ini">
                                                            <div class="form-group-material">
                                                                <input id="logradouro" type="text" name="logradouro" class="input-material" required />
                                                                <label for="logradouro" class="label-material">Endereço</label>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-8 format-box-forms-ini">
                                                            <div class="form-group-material">
                                                                <input id="bairro" type="text" name="bairro" class="input-material" required />
                                                                <label for="bairro" class="label-material">Bairro</label>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-8 format-box-forms-ini">
                                                            <div class="form-group-material">
                                                                <input id="cidade" type="text" name="cidade" class="input-material" required />
                                                                <label for="cidade" class="label-material">Cidade</label>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-8 format-box-forms-ini">
                                                            <div class="form-group-material">
                                                                <input id="estado" type="text" name="estado" class="input-material" required />
                                                                <label for="estado" class="label-material">Estado</label>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-8 format-box-forms-ini">
                                                            <div class="form-group-material">
                                                                <input id="cep" maxlength="9" type="text" name="cep" class="input-material" required />
                                                                <label for="cep" class="label-material">CEP</label>
                                                            </div>
                                                        </div>
                                                        <div class="line"></div>
                                                        <div class="form-group row">
                                                            <div class="col-sm-4 offset-sm-3">
                                                                <button type="submit" name="add" class="btn btn-primary">Cadastrar</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
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
