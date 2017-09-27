<!--#include file="inc/topo.asp"-->

<style type="text/css">
    .novaFonte{
        font-family: 'Courgette', cursive;
        font-size: 2.8rem;
        font-weight: bold;
    }
</style>

        <div class="uk-container hero">
            
            <h1 class="uk-heading-primary uk-text-center uk-margin-large-top uk-light novaFonte">Busque, aprenda e aplique em seu sistema!</h1>
                                  
            <div class="uk-flex uk-flex-center uk-inliner">
                <form class="uk-margin-medium-top uk-margin-xlarge-bottom uk-search uk-search-default">
                    <select id="ddlPesquisa" class="uk-select uk-form-large">
                        <option value=""></option>
                    </select>
                </form>
            </div>
        </div>
    </div>

    <input type="hidden" value="1" id="hddMenuOpcao">
    <input type="hidden" value="1" id="hddAbaOpcao">

    <div class="uk-section" style="padding-top: 20px; padding-bottom: 0;">
        <div class="uk-container">
            <center>
                <button class="uk-button uk-button-primary uk-active menuOpcao" menuOpcao="1">Usuários</button>
                <button class="uk-button uk-button-default uk-active menuOpcao" menuOpcao="2">Corretores</button>
            </center>               
        </div>
    </div>

    <div class="uk-section" style="padding-top: 10px;">
        <div class="uk-container">
            <div class="uk-width-2-4@m uk-flex-last@m">
                    <ul uk-tab>
                        <li class="uk-active"><a href="#" menuOpcao="1" class="abaOpcao abaAtiva">Ajuda</a></li>
                        <li><a href="#" menuOpcao="2" class="abaOpcao">Treinamento</a></li>
                    </ul>
                </div>
            <div class="uk-child-width-1-3@s uk-grid-match uk-grid-medium uk-text-center" uk-grid id="divModulos">
            </div>
        </div>
    </div>

    <div class="uk-section uk-padding-remove-top uk-padding-remove-bottom">
        <div class="uk-container">
            <hr>
        </div>
    </div>

    <div class="uk-section">
        <div class="uk-container">
            <div class="uk-child-width-1-2@s text-dark" uk-grid>
                <div>
                    <h3>Dúvidas frequentes relacionadas ao suporte</h3>
                    <ul class="uk-list uk-list-large uk-list-divider link-icon-right" id="listaPerguntaSuporte">
                    </ul>
                </div>
                <div>
                    <h3>Dúvidas frequentes relacionadas ao treinamento</h3>
                    <ul class="uk-list uk-list-large uk-list-divider link-icon-right" id="listaPerguntaTreinamento">
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="uk-section uk-padding-remove section-cta  uk-background-center-center uk-background-cover uk-text-center" style="background-image: url(assets/img/cafe.jpg);">
        <div class="uk-background-muted1 uk-border-rounded1 uk-padding-large">
            <h2>Não encontrou o que estava procurando?</h2>
            <p class="uk-text-lead">Ainda restou alguma dúvida? Entre em contato com nossa equipe de suporte.</p>
            <p class="uk-margin-medium-top">
                <a href="contato.asp" class="uk-button uk-button-primary uk-button-large">Contato</a>
            </p>
        </div>
    </div>

<!--#include file="inc/rodape.asp"-->

<script type="text/javascript">

$(document).ready(function(){

    var opcaoTelaInicial = $("#hddMenuOpcao").val();
    var abaTelaInicial = $("#hddAbaOpcao").val();

    carregaCategorias(1,0,opcaoTelaInicial,abaTelaInicial);
    carregaPerguntasFrequentes();
    carregaBaseJson();

});

$(".menuOpcao").on("click", function(){

    $(".menuOpcao").removeClass("uk-button-default");
    $(".menuOpcao").removeClass("uk-button-primary");
    $(".menuOpcao").addClass("uk-button-default");
    $(this).removeClass("uk-button-default");
    $(this).addClass("uk-button-primary");

    var opcaoTelaInicial = $(this).attr("menuOpcao");
    $("#hddMenuOpcao").val(opcaoTelaInicial);
    
    var abaTelaInicial = $("#hddAbaOpcao").val();  
    
    carregaCategorias(1,0,opcaoTelaInicial,abaTelaInicial);

});

$(".abaOpcao").on("click", function(){

    $(".abaOpcao").removeClass("abaAtiva");
    $(this).addClass("abaAtiva");

    var opcaoTelaInicial = $("#hddMenuOpcao").val();
    var abaTelaInicial = $(this).attr("menuOpcao");
    $("#hddAbaOpcao").val(abaTelaInicial);

    carregaCategorias(1,0,opcaoTelaInicial,abaTelaInicial);
});

</script>
