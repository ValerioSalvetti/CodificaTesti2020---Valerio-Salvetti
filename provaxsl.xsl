<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" 
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:tei="http://www.tei-c.org/ns/1.0">
<xsl:output method="html" encoding="UTF-8" indent="yes" omit-xml-declaration="yes"/>

    <xsl:template match="tei:teiHeader">
        <h1>Informazioni sul documento</h1>
            <xsl:apply-templates />
    </xsl:template>
    
    <xsl:template match="tei:front">
            <h1>Frontespizio e prefazione</h1> <br/>
        <xsl:apply-templates/>
    </xsl:template>

     <xsl:template match="tei:titlePart">
        <h3 class="center">
            <xsl:apply-templates />
        </h3>
    </xsl:template>

    <xsl:template match="tei:byline">
        <h4 class="center">
            <xsl:apply-templates />
        </h4>
    </xsl:template>

    <xsl:template match="tei:body">
        <div class="text">
            <xsl:apply-templates />
        </div>
    </xsl:template>

    <xsl:template match="tei:p">
        <div class="paragrafi">
            <xsl:apply-templates />
        </div>
    </xsl:template>

    <xsl:template match="tei:said">
        <i class="disc">
        <b>
            <xsl:apply-templates />
        </b>
        </i>
    </xsl:template>

</xsl:stylesheet>