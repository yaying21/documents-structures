<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="3.0">
    <!-- <xsl:param name="bible_fre" select="document('bible_engfr-4.xml')"/> -->
		<xsl:template match="/">
		<!--        <xsl:result-document href="output.html" method="html" indent="yes">-->
			<html>
				<head>
					<!-- <link rel="stylesheet" type="text/css" href="style/type/visualisation.css" media="all"/> -->
				</head>
				<body> 
				<div>
				<xsl:apply-templates select="/doc"/>
				</div>
				</body>
			</html>
		</xsl:template>
		<xsl:template match="/doc">
			<div class="header">
				<h1 align="center">
					<xsl:value-of select="h1"/>
				</h1>
			</div>
			<p>
				<xsl:value-of select="p"/>
			</p>
			<xsl:for-each select="nav/lien">
				<nav>
					<a herf="{./@url}">
						<xsl:value-of select="."/>
					</a>
				</nav>
			</xsl:for-each>
		</xsl:template>
</xsl:stylesheet>