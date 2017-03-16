<g:set var="lastLocaleIndex" value="${locales.size() - 1}"/>
<g:each in="${locales}" var="locale" status="index">
    <a href="${uri + 'lang=' + locale.language}" class="lang_link"
       title="${g.message(code: "langSelector.locale.${locale.language}", default: locale.getDisplayName(locale))}">

        <span class="lang_flag ${locale == selected || locale.language == selected.language ? 'opacity_selected' : 'opacity_not_selected'}">
            <g:message code="langSelector.locale.${locale.language}"/>
        </span>
    </a>
    <g:if test="${!lastLocaleIndex.equals(index)}">
        <span class="divider-vertical"></span>
    </g:if>
</g:each>