<?xml version="1.0"?>
<recipe>

    <instantiate from="res/layout/fragment_blank.xml.ftl"
                    to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(fragmentName)}.xml" />

    <open file="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(fragmentName)}.xml" />

   	<open file="${escapeXmlAttribute(srcOut)}/view/${Name}View.java" />

    <instantiate from="src/app_package/BlankView.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/view/${Name}View.java" />

   	<open file="${escapeXmlAttribute(srcOut)}/viewmodel/${Name}ViewModel.java" />

    <instantiate from="src/app_package/BlankViewModel.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/viewmodel/${Name}ViewModel.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${className}.java" />

    <instantiate from="src/app_package/BlankFragment.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}.java" />
</recipe>
