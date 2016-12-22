<g:each in="${locales}" var="locale">
    <a href="${uri + 'lang=' + locale.language}" class="lang_link"
       title="${g.message(code:"com.webbfontaine.grails.plugins.langSelector.locale.${locale.language}", default:locale.getDisplayName(locale))}">
        <span class="lang_flag ${locale==selected || locale.language == selected.language ? 'opacity_selected' : 'opacity_not_selected'}">
            <g:if test="${hasAsset}">
                <asset:image src="flags/png/${locale.country.toLowerCase()}.png" />
            </g:if>
            <g:else>
                <img src="${resource(plugin: 'com.webbfontaine.grails.plugins.langSelector', dir: 'images/flags/png',
                        file: locale.country.toLowerCase() + '.png')}" border="0">
            </g:else>
        </span>
    </a>
</g:each>