<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="#all" version="3.0">
	<xsl:output method="html" version="4.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<html>
			<head>
			 <link rel="stylesheet" type="text/css" href="style/type/visualisation.css"/>
			</head>
			<body>
				<div>
				<xsl:apply-templates select="//main"/>
				</div>
				<div>
				<xsl:apply-templates select="//content"/>
				</div>			
			</body>
		</html>
	</xsl:template>
	<xsl:template match="//main">
			<div class="header">
				<h1 align="center">
					<xsl:value-of select="h1"/>
				</h1>
			</div>
		</xsl:template>
		<xsl:template match="//content">
			<p class="objectif">
				<i>
                <xsl:value-of select="objectif"/>
            </i>
			</p>
			<xsl:for-each select="nav/lien">
			<nav>
				<a herf="{./@url}">
					<xsl:value-of select="."/>
				</a>
			</nav>
			</xsl:for-each>
			<xsl:for-each select="presentation/etape/h3">
				<h3>
					<xsl:value-of select="."/>
				</h3>
				<p>
					<xsl:apply-templates select="following-sibling::p"/>
				</p>
			</xsl:for-each>
		</xsl:template>
		<!--
		<xsl:template match="//presentation/etape">
			<xsl:for-each select="h3">
				<h3>
					<xsl:value-of select="."/>
				</h3>
			</xsl:for-each>
			<xsl:for-each select="p">
				<p>
					<xsl:value-of select="."/>
				</p>
			</xsl:for-each>		
	</xsl:template>	-->
	
	
</xsl:stylesheet>