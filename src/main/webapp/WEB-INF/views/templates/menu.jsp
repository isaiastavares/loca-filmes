<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<div class="mdl-layout__drawer">
    <header>Loca Filmes</header>
    <nav class="mdl-navigation">
        <a class="mdl-navigation__link mdl-navigation__link--current" href="${s:mvcUrl('DC#dashboard').build()}">
            <i class="material-icons" role="presentation">dashboard</i>
            Dashboard
        </a>
        <a class="mdl-navigation__link" href="${s:mvcUrl('AC#account').build()}">
            <i class="material-icons" role="presentation">person</i>
            Account
        </a>
        <a class="mdl-navigation__link" href="${s:mvcUrl('UIEC#uiElements').build()}">
            <i class="material-icons">view_comfy</i>
            UI Elements
        </a>
    </nav>
</div>