<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://wwww.w3.org/1999/XSL/Transform">
<xsl:output method="xml" version="1.0" indent="yes"/>
    <xsl:template match="/">
        <b>
            <xsl:value-of select="//titlePage"/>
        </b>
    </xsl:template>
</xsl:stylesheet>