<%@ page import="grails.util.Holders; grails.plugins.GrailsPluginManager" %>
<g:set var="displayAsBar" value="${grailsApplication.config.grails.plugin.langSelector.displayAsBar}" />
<div id="lang_selector" class="lang_selector">

    <g:if test="${grailsApplication.config.grails.plugin.langSelector.displayAsLabels}">
        <g:render template="/langSelector/labelsDisplay"/>
    </g:if>
    <g:else>
        <g:if test="${displayAsBar}">
            <g:render template="/langSelector/barDisplay"/>
        </g:if>
        <g:else>
            <g:render template="/langSelector/dropDownDisplay"/>
        </g:else>
    </g:else>

</div>

