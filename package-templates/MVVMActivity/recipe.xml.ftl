<?xml version="1.0"?>
<recipe>

    <instantiate from="res/layout/activity_blank.xml.ftl"
                    to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(activityName)}.xml" />

    <open file="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(activityName)}.xml" />

   	<open file="${escapeXmlAttribute(srcOut)}/${packName}/view/${Name}View.java" />

    <instantiate from="src/app_package/BlankView.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${packName}/view/${Name}View.java" />

   	<open file="${escapeXmlAttribute(srcOut)}/${packName}/viewmodel/${Name}ViewModel.java" />

    <instantiate from="src/app_package/BlankViewModel.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${packName}/viewmodel/${Name}ViewModel.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${packName}/${className}.java" />

    <instantiate from="src/app_package/BlankActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${packName}/${className}.java" />
</recipe>
