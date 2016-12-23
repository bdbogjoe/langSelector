<%@ page import="grails.util.Holders; grails.plugins.GrailsPluginManager" %>
<g:set var="hasAsset" value="${grailsApplication.mainContext.getBean(GrailsPluginManager.class).hasGrailsPlugin('asset-pipeline') }" />
<div class="dropdown btn-group">
    <g:each in="${locales}" var="locale">
        <g:if test="${locale==selected || locale.language == selected.language}">
            <g:set var="selectedLangCountryCode" value="${locale.country.toLowerCase()}"/>
            <g:set var="locales" value="${locales - locale}"/>
        </g:if>
    </g:each>
    <button class="btn btn-inverse btn-mini dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown">
        <g:if test="${hasAsset}">
            <asset:image src="flags/png/${selectedLangCountryCode}.png" />
        </g:if>
        <g:else>
            <img src="${resource(plugin: 'com.webbfontaine.grails.plugins.langSelector', dir: 'images/flags/png',
                    file: selected.country.toLowerCase() + '.png')}" border="0" />
        </g:else>
    </button>
    <ul class="dropdown-menu">
        <g:each in="${locales}" var="locale">
            <li>
                <a href="${uri + 'lang=' + locale.language}" class="lang_link"
                   title="${g.message(code:"com.webbfontaine.grails.plugins.langSelector.locale.${locale.language}", default:locale.getDisplayName(locale))}">
                    <span class="lang_flag">
                        <g:if test="${hasAsset}">
                            <asset:image src="flags/png/${locale.country.toLowerCase()}.png" />
                        </g:if>
                        <g:else>
                            <img src="${resource(plugin: 'com.webbfontaine.grails.plugins.langSelector', dir: 'images/flags/png',
                                    file: locale.country.toLowerCase() + '.png')}" border="0">
                        </g:else>
                    </span>
                </a>
            </li>
        </g:each>
    </ul>
</div>
