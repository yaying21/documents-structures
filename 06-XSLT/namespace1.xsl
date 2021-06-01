<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">

    <xsl:output indent="yes" method="xml"/>

    <xsl:template match="/">
        <TEI xmlns="http://www.tei-c.org/ns/1.0">
            <teiHeader>
                <fileDesc>
                    <titleStmt>
                        <title>Un faux document</title>
                        <author>
                            <xsl:value-of
                                select="document/metadonnee[1]/auteurs[1]/auteur[@type = 'principal']"
                            />
                        </author>
                    </titleStmt>
                    <publicationStmt>
                        <p>
                            <xsl:value-of
                                select="document/metadonnee[1]/description[1]/publication[1]"/>
                        </p>
                    </publicationStmt>
                    <sourceDesc>
                        <p>
                            <xsl:value-of select="document/metadonnee[1]/description[1]/source[1]"/>
                        </p>
                    </sourceDesc>
                </fileDesc>
            </teiHeader>
            <text>
                <body>
                    <head n="1">
                        <xsl:value-of select="document/contenu[1]/div[1]/titre[1]"/>
                    </head>
                    <p>
                        <xsl:value-of select="document/contenu[1]/div[1]/para[1]"/>
                    </p>
                </body>
            </text>
        </TEI>
    </xsl:template>


</xsl:stylesheet>