<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="3.0">
    
    <xsl:output indent="yes" method="xml"></xsl:output>
    <xsl:mode on-no-match="shallow-skip"/>
    
    <xsl:template match="/">
        <TEI  xmlns="http://www.tei-c.org/ns/1.0">
            <teiHeader>
                <fileDesc>
                    <titleStmt>
                        <title>Un faux document</title>
                        <xsl:apply-templates select="document/metadonnee/auteurs"/>
                    </titleStmt>
                    <publicationStmt>
                        <p><xsl:value-of select="document/metadonnee[1]/description[1]/publication[1]"/></p>
                    </publicationStmt>
                    <sourceDesc>
                        <p><xsl:value-of select="document/metadonnee[1]/description[1]/source[1]"/></p>
                    </sourceDesc>
                </fileDesc>
            </teiHeader>
            <text><body>
                <xsl:apply-templates select="document/contenu"/>
            </body></text>
        </TEI>
    </xsl:template>
    
    <xsl:template match="auteur[@type='principal']">
        <author xmlns="http://www.tei-c.org/ns/1.0">
            <xsl:value-of select="."/>
        </author>
    </xsl:template>
    
    <xsl:template match="titre">
        <head n="1" xmlns="http://www.tei-c.org/ns/1.0">
            <xsl:value-of select="."/>
        </head>
    </xsl:template>
    <xsl:template match="para">
        <p xmlns="http://www.tei-c.org/ns/1.0">
            <xsl:value-of select="."/>
        </p>
    </xsl:template>
    
</xsl:stylesheet>