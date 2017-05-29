<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<header class="mdl-layout__header">
    <div class="mdl-layout__header-row">
        <div class="mdl-layout-spacer"></div>

		<!-- Notifications dropdown-->
        <!-- <div class="material-icons mdl-badge mdl-badge--overlap mdl-button--icon notification" id="notification"
             data-badge="23">
            notifications_none
        </div>
        <ul class="mdl-menu mdl-list mdl-js-menu mdl-js-ripple-effect mdl-menu--bottom-right mdl-shadow--2dp notifications-dropdown"
            for="notification">
            <li class="mdl-list__item">
                Você tem 23 novas notificações!
            </li>
            <li class="mdl-menu__item mdl-list__item list__item--border-top">
                <span class="mdl-list__item-primary-content">
                    <span class="mdl-list__item-avatar background-color--primary">
                        <i class="material-icons">plus_one</i>
                    </span>
                    <span>Você tem 3 novos pedidos.</span>
                </span>
                <span class="mdl-list__item-secondary-content">
                  <span class="label">agora</span>
                </span>
            </li>
            <li class="mdl-menu__item mdl-list__item list__item--border-top">
                <span class="mdl-list__item-primary-content">
                    <span class="mdl-list__item-avatar background-color--secondary">
                        <i class="material-icons">error_outline</i>
                    </span>
                  <span>Erro no Banco</span>
                </span>
                <span class="mdl-list__item-secondary-content">
                  <span class="label">1 min</span>
                </span>
            </li>
            <li class="mdl-menu__item mdl-list__item list__item--border-top">
                <span class="mdl-list__item-primary-content">
                    <span class="mdl-list__item-avatar background-color--primary">
                        <i class="material-icons">new_releases</i>
                    </span>
                  <span>A Estrela da Morte está construída!</span>
                </span>
                <span class="mdl-list__item-secondary-content">
                  <span class="label">2 horas</span>
                </span>
            </li>
            <li class="mdl-menu__item mdl-list__item list__item--border-top">
                <span class="mdl-list__item-primary-content">
                    <span class="mdl-list__item-avatar background-color--primary">
                        <i class="material-icons">mail_outline</i>
                    </span>
                  <span>Você tem 4 novos emails.</span>
                </span>
                <span class="mdl-list__item-secondary-content">
                  <span class="label">5 dias</span>
                </span>
            </li>
            <li class="mdl-list__item list__item--border-top">
                <button href="#" class="mdl-button mdl-js-button mdl-js-ripple-effect">TODAS AS NOTIFICAÇÕES</button>
            </li>
        </ul> -->

        <div class="avatar-dropdown" id="icon">
            <span>
            	<security:authentication property="principal.nome"/>
            </span>
            <img src="${contextPath}resources/images/Icon_header.png">
        </div>
        <!-- Account dropdawn-->
        <ul class="mdl-menu mdl-list mdl-menu--bottom-right mdl-js-menu mdl-js-ripple-effect mdl-shadow--2dp account-dropdown"
            for="icon">
            <li class="mdl-list__item mdl-list__item--two-line">
                <span class="mdl-list__item-primary-content">
                    <span class="material-icons mdl-list__item-avatar"></span>
                    <span>
                    	<security:authentication property="principal.nome"/>
                    </span>
                    <span class="mdl-list__item-sub-title">
                    	<security:authentication property="principal.email"/>
                    </span>
                </span>
            </li>
            <li class="list__item--border-top"></li>
            <li class="mdl-menu__item mdl-list__item">
                <span class="mdl-list__item-primary-content">
                    <i class="material-icons mdl-list__item-icon">account_circle</i>
                    Minha Conta
                </span>
            </li>
            <li class="list__item--border-top"></li>
            <li class="mdl-menu__item mdl-list__item">
                <span class="mdl-list__item-primary-content">
                    <i class="material-icons mdl-list__item-icon">settings</i>
                    Configurações
                </span>
            </li>
            <li class="mdl-menu__item mdl-list__item">
                <span class="mdl-list__item-primary-content">
                    <i class="material-icons mdl-list__item-icon text-color--secondary">exit_to_app</i>
                    <a href="${s:mvcUrl('LC#logout').build()}">Sair</a>
                </span>
            </li>
        </ul>
    </div>
</header>