<!--#include file="inc/topoInternas.asp"-->

<%
Dim categoriaId : categoriaId = FormataDadosStrEInt(request.queryString("cid"),"I")
if categoriaId = "" then
    categoriaId = 1
end if

Dim topicoId : topicoId = FormataDadosStrEInt(request.queryString("tid"),"I")

Dim opcaoMenu : opcaoMenu = FormataDadosStrEInt(request.querystring("op"),"I")
if opcaoMenu = "" then
    opcaoMenu = 1
end if

Dim opcaoAba : opcaoAba = FormataDadosStrEInt(request.querystring("ab"),"I")
if opcaoAba = "" then
    opcaoAba = 1
end if


%>

    <div class="uk-section section-sub-nav uk-padding-remove">
        <div class="uk-container">
            <div uk-grid>
                <div class="uk-width-2-3@m">
                    <ul class="uk-breadcrumb uk-visible@m">
                        <li><a href="index.asp">Home</a></li>
                        <li><a href="categoria.asp?id=<%=categoriaId%>&op=<%=opcaoMenu%>&ab=<%=opcaoAba%>">Categorias</a></li>
                        <li><span id="tituloPaginaAtual"></span></li>
                    </ul>
                </div>
                <div class="uk-width-1-3@m">
                    <div class="uk-margin">
                        <form class="uk-search uk-search-default">
                            <select id="ddlPesquisa" class="uk-select uk-form-large" style="height: 40px; font-size: 13px;">
                                <option value=""></option>
                            </select>
                        </form>
                    </div>
                </div>
            </div>
            <div class="border-top"></div>
        </div>
    </div>

    <div class="uk-section uk-section-small uk-padding-remove-bottom section-content">
        <div class="uk-container">
            <div class="uk-grid-medium" uk-grid>
                <div class="uk-width-3-4@m uk-flex-last@m">

                    <div class="uk-section uk-section-small uk-padding-remove-bottom section-content uk-padding-remove-top">
                        <div class="uk-container container-xs">
                            <article class="uk-article">
                                <header>
                                    <h1 class="uk-article-title uk-margin-bottom" id="tituloTopico"></h1>
                                    <div class="author-box uk-card">
                                        <div class="uk-card-header uk-padding-remove">
                                            <div class="uk-grid-small uk-flex-middle  uk-position-relative" uk-grid>
                                                <div class="uk-width-auto" id="fotoPerfil" style="display: none;">
                                                    <img class="uk-border-circle" style="width: 80px; height: 80px;" src="assets/img/profile.png">
                                                </div>
                                                <div class="uk-width-expand">
                                                    <h5 class="uk-card-title" id="divFeitoPor"></h5>
                                                    <p class="uk-article-meta uk-margin-remove-top">Criado: <span id="spanDataCriacao"></span></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </header>

                                <!-- CONTEÚDO TÓPICO -->
                                <div class="entry-content uk-margin-medium-top">
                                    <div id="conteudoTopico"></div>                            
                                </div>

                                <!-- TÓPICO ÚTIL? -->
                                <div class="article-votes uk-text-center uk-margin-medium-top uk-padding uk-padding-remove-horizontal border-top">
                                    <h3>Esse tópico foi útil?</h3>
                                    <a href="#" class="vote uk-button uk-button-outline-primary" onclick="avaliacaoTopico(<%=topicoId%>, 1);">
                                        <span class="uk-margin-small-right" uk-icon="icon: check; ratio: 0.8"></span>Sim
                                    </a>
                                    <a href="#" class="vote uk-button uk-button-outline-primary uk-margin-small-left" onclick="avaliacaoTopico(<%=topicoId%>, 0);">
                                        <span class="uk-margin-small-right uk-inline" uk-icon="icon: close; ratio: 0.8"></span>Não
                                    </a>
                                    <p class="vote-thanks uk-margin-remove">
                                        Obrigado pelo seu feedback!
                                    </p>
                                </div>

                                <!-- COMENTÁRIO -->
                                <div class="reply uk-margin-medium-top border-top padding-top">
                                    <h3 class="uk-margin-medium-bottom">Deixe um comentário :)</h3>
                                    <div class="uk-grid-small" uk-grid>
                                        <div class="uk-width-1-2@s">
                                            <input class="uk-input" type="text" placeholder="Nome" id="txtNome">
                                        </div>
                                        <!--<div class="uk-width-1-2@s">
                                            <input class="uk-input" type="email" placeholder="Email" id="txtEmail">
                                        </div>-->
                                        <div class="uk-width-1-1">
                                            <textarea class="uk-textarea" rows="5" placeholder="Comentário" id="txtComentario"></textarea>
                                        </div>
                                        <div class="uk-width-1-1">
                                            <button class="uk-button uk-button-primary uk-width-1-1 uk-width-auto@s" onclick="comentarTopico(<%=topicoId%>)">Comentar</button>
                                        </div>
                                    </div>
                                </div>

                                <!-- COMENTÁRIOS -->
                                <div class="uk-margin-medium-top border-top padding-top">
                                    <h3 class="uk-margin-medium-bottom">Comentários</h3>
                                    <ul class="uk-comment-list" id="divComentarios"></ul>
                                </div>

                            </article>
                        </div>
                    </div>
                </div>
                
                <div class="uk-width-1-4@m text-dark sidebar">
                    <h3>Categorias</h3>
                    <ul class="uk-list uk-list-large uk-margin-medium-bottom" id="divModulos" idSelecionado="<%=categoriaId%>"></ul>
                </div>
            </div>
        </div>
    </div>

<!--#include file="inc/rodape.asp"-->

<script type="text/javascript">

carregaTopicoById(<%=topicoId%>);
carregaComentario(<%=topicoId%>);
carregaCategorias(3, <%=categoriaId%>, <%=opcaoMenu%>, <%=opcaoAba%>);
    carregaBaseJson();

</script>
