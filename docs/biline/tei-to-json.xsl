<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0">

    <!--
        A stylesheet to convert TEI-encoded dictionaries to Biline format
        By: Stephen Bounds
        Adapted from: Michal Boleslav Měchura, http://www.lexiconista.com/
    -->

    <xsl:output method="text"/>
    
    <xsl:variable name="target" select="'id'" />
    <xsl:variable name="ref" select="'en'" />

    <xsl:template match="/">
        [
          <xsl:apply-templates select="//tei:cit[@type='translation' or @type='trans']/tei:quote"/>
        ]
    </xsl:template>

    <xsl:template match="tei:quote">
      { "<xsl:copy-of select="$target"/>" : "<xsl:value-of select="." />",
        "<xsl:copy-of select="$ref"/>" : "<xsl:value-of select="./ancestor::tei:entry//tei:orth" />",
        "<xsl:copy-of select="$ref"/>_def" : "<xsl:value-of select="./ancestor::tei:sense//tei:def" />" 
      },
    </xsl:template>

</xsl:stylesheet>