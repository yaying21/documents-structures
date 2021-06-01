<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="3.0">
    <xsl:param name="bible_fre" select="document('bible_fre-5.html')"/>
    <xsl:param name="bible_eng" select="document('bible_eng-5.html')"/>
    <xsl:output indent="yes" method="xml"></xsl:output>
    <xsl:template match='/'>
        <tmx>
            <body>
                <xsl:for-each select="$bible_eng/html/body/p">
                    <xsl:variable name="pos_eng" select="position()"/>
                    <tu>
                        <tuv xml:lang="en_GB">
                            <seg>
                                <!-- en -->
                           
								<xsl:analyze-string select="." regex="(God)|((S|s)pirits?)|((D|d)ays?)|((N|n)ights?)|((L|l)ords?)|((B|b)lood)">
                                    <xsl:matching-substring>
										<xsl:choose>
											<xsl:when test="regex-group(1)">
												<hi x="1">
													<xsl:value-of select="regex-group(1)"/>
												</hi>
											</xsl:when>
											<xsl:when test="regex-group(2)">
												<hi x="2">
													<xsl:value-of select="regex-group(2)"/>
												</hi>
											</xsl:when>
											<xsl:when test="regex-group(3)">
												<hi x="3">
													<xsl:value-of select="regex-group(3)"/>
												</hi>
											</xsl:when>
											<xsl:when test="regex-group(4)">
												<hi x="4">
													<xsl:value-of select="regex-group(4)"/>
												</hi>
											</xsl:when>
											<xsl:when test="regex-group(5)">
												<hi x="5">
													<xsl:value-of select="regex-group(5)"/>
												</hi>
											</xsl:when>
											<xsl:when test="regex-group(6)">
												<hi x="6">
													<xsl:value-of select="regex-group(6)"/>
												</hi>
											</xsl:when>
										</xsl:choose>

									</xsl:matching-substring>
									<xsl:non-matching-substring>
                                        <xsl:value-of select="."/>
                                    </xsl:non-matching-substring>
                                </xsl:analyze-string>
                            </seg>
                        </tuv>
                        <!-- fr -->
						
                        <tuv xml:lang="fr">
                            <seg>
								<!-- <xsl:value-of select="$bible_fre/html/body/p[position()=$pos_eng]"></xsl:value-of> -->
									<xsl:analyze-string select="$bible_fre/html/body/p[position()=$pos_eng]" regex="(Dieu)|((E|e)sprits?)|((J|j)ours?)|((N|n)uits?)|((E|é)tenels?)|((S|s)ang)">
										<xsl:matching-substring>
											<xsl:choose>
												<xsl:when test="regex-group(1)">
													<hi x="1">
														<xsl:value-of select="regex-group(1)"/>
													</hi>
												</xsl:when>
												<xsl:when test="regex-group(2)">
													<hi x="2">
														<xsl:value-of select="regex-group(2)"/>
													</hi>
												</xsl:when>
												<xsl:when test="regex-group(3)">
													<hi x="3">
														<xsl:value-of select="regex-group(3)"/>
													</hi>
												</xsl:when>
												<xsl:when test="regex-group(4)">
													<hi x="4">
														<xsl:value-of select="regex-group(4)"/>
													</hi>
												</xsl:when>
												<xsl:when test="regex-group(5)">
													<hi x="5">
														<xsl:value-of select="regex-group(5)"/>
													</hi>
												</xsl:when>
												<xsl:when test="regex-group(6)">
													<hi x="6">
														<xsl:value-of select="regex-group(6)"/>
													</hi>
												</xsl:when>
											</xsl:choose>
										</xsl:matching-substring>
										<xsl:non-matching-substring>
										<xsl:value-of select="."/>
										</xsl:non-matching-substring>
									</xsl:analyze-string>
								
                            </seg>
                         </tuv>
                    </tu>
                </xsl:for-each>
            </body>
        </tmx>
    </xsl:template>
</xsl:stylesheet>
