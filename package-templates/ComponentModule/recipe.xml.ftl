<?xml version="1.0"?>
<recipe>

   	<open file="${escapeXmlAttribute(srcOut)}/${Name}Component.java" />

    <instantiate from="src/app_package/BlankComponent.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${Name}Component.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${Name}Module.java" />

    <instantiate from="src/app_package/BlankModule.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${Name}Module.java" />
</recipe>
