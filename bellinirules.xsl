<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" 
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:tei="http://www.tei-c.org/ns/1.0"
        xmlns="http://www.w3.org/1999/xhtml">
<xsl:output method="html" encoding="UTF-8" indent="yes" omit-xml-declaration="yes"/>


    <xsl:template match="/">
        <html>
            <head>
                <title>
                    <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/>
                </title>
            </head>
             <body>
                <xsl:apply-templates/>     
            </body> 
        </html>
    </xsl:template>

    <xsl:template match="tei:text">
        <h1>Testo della Lettera</h1>
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="tei:back">
        <h1>Appendici</h1>
        <xsl:apply-templates/>
    </xsl:template>

    <!--div-->
   <xsl:template match="tei:div[@type='fronte']">
        <div id="fronte"><xsl:apply-templates/></div>
    </xsl:template>

    <xsl:template match="tei:div[@facs='#LL1.14_pt1']">
        <div id="LL1.14_pt1"><xsl:apply-templates/></div>
    </xsl:template>

    <xsl:template match="tei:div[@facs='#LL1.14_pt2']">
        <div id="LL1.14_pt2"><xsl:apply-templates/></div>
    </xsl:template>

   <xsl:template match="tei:div[@facs='#LL1.14_pt3']">
        <div id="LL1.14_pt3"><xsl:apply-templates/></div>
    </xsl:template>

   <xsl:template match="tei:div[@type='retro']">
        <div id="retro"><xsl:apply-templates/></div>
    </xsl:template>

    <xsl:template match="tei:div[@type='notes']">
        <div id="notes"><xsl:apply-templates/></div>
    </xsl:template>

    <xsl:template match="tei:div[@type='ann_notes']">
        <div id="ann_notes"><xsl:apply-templates/></div>
    </xsl:template>

    <xsl:template match="tei:div[@type='bibliography']">
        <div id="bibliography"><xsl:apply-templates/></div>
    </xsl:template>

    <!--tag-->
    <xsl:template match="*[@type='parag']">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>

    <xsl:template match="tei:lb">
        <br />
    </xsl:template> 

    <xsl:template match="tei:ab//tei:term">
        <i><xsl:apply-templates/></i>
    </xsl:template>

    <xsl:template match="tei:ab//tei:persName|tei:ab//tei:orgName">
        <b><xsl:apply-templates/></b>
    </xsl:template> 

    <xsl:template match="*[@rend='strikethrough']">
       <del><xsl:apply-templates/></del>
    </xsl:template>

    <xsl:template match="tei:gap[@reason='deleted']">
       <b>(parte di testo cancellato) </b>
    </xsl:template>  

    <!--note e bibliografia-->
    <xsl:template match="tei:div[@type='notes']">
        <h2>Note e Bibliografia</h2>
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="tei:div[@type='ann_notes']">
        <h3>Note</h3>
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="tei:note">
        <p>
            <xsl:apply-templates/>
        </p><br />
    </xsl:template>

    <xsl:template match="tei:listBibl[@xml:id='LL1_14_bibliography']">
        <h3><xsl:value-of select="//tei:head"/></h3>
            <xsl:apply-templates/>
        
    </xsl:template> 

    <xsl:template match="tei:ref">
        <p>
            <xsl:apply-templates/>
        </p><br />
    </xsl:template>


</xsl:stylesheet>