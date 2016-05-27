<?xml version="1.0"?>
<recipe>

    <merge from="AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    <merge from="res/values/strings.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/strings.xml" />

    <instantiate from="res/layout/activity_blank.xml.ftl"
                    to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(activityName)}.xml" />

    <instantiate from="src/app_package/BlankView.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${packName}/view/${Name}View.java" />

   	<open file="${escapeXmlAttribute(srcOut)}/${packName}/viewmodel/${Name}ViewModel.java" />

    <instantiate from="src/app_package/BlankViewModel.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${packName}/viewmodel/${Name}ViewModel.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${packName}/${className}.java" />

    <instantiate from="src/app_package/BlankActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${packName}/${className}.java" />
</recipe>
