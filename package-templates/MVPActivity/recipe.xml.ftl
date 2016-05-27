<?xml version="1.0"?>
<recipe>

    <instantiate from="res/layout/activity_blank.xml.ftl"
                    to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(activityName)}.xml" />

    <open file="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(activityName)}.xml" />


    <#if includeComponent>
      <open file="${escapeXmlAttribute(srcOut)}/${packName}/${Name}Component.java" />

      <instantiate from="src/app_package/BlankComponent.java.ftl"
                     to="${escapeXmlAttribute(srcOut)}/${packName}/${Name}Component.java" />

      <open file="${escapeXmlAttribute(srcOut)}/${packName}/${Name}Module.java" />

      <instantiate from="src/app_package/BlankModule.java.ftl"
                     to="${escapeXmlAttribute(srcOut)}/${packName}/${Name}Module.java" />
    </#if>
    
   	<open file="${escapeXmlAttribute(srcOut)}/${packName}/${Name}View.java" />

    <instantiate from="src/app_package/BlankView.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${packName}/${Name}View.java" />

   	<open file="${escapeXmlAttribute(srcOut)}/${packName}/${Name}Presenter.java" />

    <instantiate from="src/app_package/BlankPresenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${packName}/${Name}Presenter.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${packName}/${className}.java" />

    <instantiate from="src/app_package/BlankActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${packName}/${className}.java" />
</recipe>
