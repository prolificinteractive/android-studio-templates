<?xml version="1.0"?>
<recipe>

	<#if includeAppComponent>
	   	<open file="${escapeXmlAttribute(srcOut)}/dagger/components/${Name}Component.java" />

	    <instantiate from="src/app_package/AppComponent.java.ftl"
	                   to="${escapeXmlAttribute(srcOut)}/dagger/components/${Name}Component.java" />

	    <instantiate from="src/app_package/AppModule.java.ftl"
	                   to="${escapeXmlAttribute(srcOut)}/dagger/modules/${Name}Module.java" />
	</#if>

	<#if includeHasComponent>
	    <instantiate from="src/app_package/HasComponent.java.ftl"
	                   to="${escapeXmlAttribute(srcOut)}/dagger/HasComponent.java" />
	</#if>

	<#if includeQualifiers>
	    <instantiate from="src/app_package/Qualifiers.java.ftl"
	                   to="${escapeXmlAttribute(srcOut)}/dagger/Qualifiers.java" />
	</#if>

    <instantiate from="src/app_package/PerActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/dagger/PerActivity.java" />

    <instantiate from="src/app_package/PerApp.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/dagger/PerApp.java" />

    <instantiate from="src/app_package/Injector.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/dagger/Injector.java" />
</recipe>
