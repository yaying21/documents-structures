<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="3.0">
    
    <xsl:mode on-no-match="shallow-copy"/>
    
    <xsl:template match="prix">
        <prix valeur="{concat(@valeur*0.001,'€')}">
            <xsl:apply-templates select="@* except @valeur"/>
            <xsl:apply-templates/>
        </prix>
    </xsl:template>
 
</xsl:stylesheet>