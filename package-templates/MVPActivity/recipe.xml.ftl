<?xml version="1.0"?>
<recipe>

    <merge from="AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    <merge from="res/values/strings.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/strings.xml" />

    <instantiate from="res/layout/activity_blank.xml.ftl"
                    to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(activityName)}.xml" />

    <#if includeComponent>
      <instantiate from="src/app_package/BlankComponent.java.ftl"
                     to="${escapeXmlAttribute(srcOut)}/${packName}/${Name}Component.java" />

      <instantiate from="src/app_package/BlankModule.java.ftl"
                     to="${escapeXmlAttribute(srcOut)}/${packName}/${Name}Module.java" />
    </#if>
    
    <instantiate from="src/app_package/BlankView.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${packName}/${Name}View.java" />

   	<open file="${escapeXmlAttribute(srcOut)}/${packName}/${Name}Presenter.java" />

    <instantiate from="src/app_package/BlankPresenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${packName}/${Name}Presenter.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${packName}/${className}.java" />

    <instantiate from="src/app_package/BlankActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${packName}/${className}.java" />
</recipe>
