<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="3.0">
	<xsl:output method="html" encoding="utf-8"/>
	<xsl:template match="/">
		<html>
			<head>
				<style>
					h1{
					text-align: center;
					}
					body{
					magrin : auto;
					font-size :18px;
					}
				</style>
			</head>
			<body>
				<div>
				<xsl:apply-templates select="//doc"/>
				</div>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="div">
		<xsl:for-each select="./*">
			<xsl:choose>
				<xsl:when test="name()='h1'">
					<h1>
                        <xsl:value-of select="./text()"/>
                    </h1>
				</xsl:when>
				<xsl:when test="name()='p'">
					<p>
                        <xsl:value-of select="./text()"/>
                    </p>
				</xsl:when>
				<xsl:when test="name()='label'">
					<label>
                        <xsl:value-of select="./text()"/>
                    </label>
                    <br/>
                    <br/>
					<form>
						<input type="search" name="annee" style="width:150px; height:30px;" placeholder="God"/>
                        <br/>
                        <br/>
						<input type="submit" name="envoyer" style="width:65px; height:25px;"/>
					</form>
				</xsl:when>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>

</xsl:stylesheet>