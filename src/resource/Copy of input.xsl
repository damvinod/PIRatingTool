<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="#all">
    <xsl:output method="html" indent="yes" omit-xml-declaration="yes"/>

	<xsl:template match="/">
		<xsl:apply-templates select="piMain" />
	</xsl:template>
	
	<xsl:template match="piMain">
		<xsl:for-each select="piDetails">
			<div class="hairline">
				<xsl:apply-templates select="question" />
				<xsl:apply-templates select="answer" />
			</div>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template match="question">
		<div class="sNo floatLeft"><xsl:value-of select="question/questionNo" /></div>
		<div class="question floatLeft"><xsl:value-of select="question/questionNo" /></div>
	</xsl:template>
	
	<xsl:template match="answer">
		<xsl:if test="@type='radio'">
			<xsl:apply-templates select="answerDetails" />
		</xsl:if>
	</xsl:template>
	
	<xsl:template match="answerDetails">
		<div class="yesNo swithLabelAlign">
			<label class="switch">
				<input type="checkbox" class="switch-input" id="flip-1" />
				<span class="switch-label" id="flip-1" data-on="Yes" data-off="No"></span>
				<span class="switch-handle"></span>
			</label>
		</div>
		<div class="remark floatLeft">Remarks</div>
	</xsl:template>
	
</xsl:stylesheet>