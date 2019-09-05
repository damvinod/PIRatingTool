<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
	exclude-result-prefixes="#all">
	<xsl:output method="html" indent="yes" omit-xml-declaration="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="piMain" />
	</xsl:template>

	<xsl:template match="piMain">
		<xsl:for-each select="titlePane">
			<button class="headerDiv accordion">
				<xsl:value-of select="@heading" />
			</button>
			<div class="panel">
				<xsl:for-each select="piDetails">
					<div class="hairline">
						<xsl:apply-templates select="question" />
						
						<xsl:apply-templates select="answer" />
						
						<xsl:if test="question/@validation='Y'">
						</xsl:if>
					</div>
				</xsl:for-each>
			</div>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="question">
		<div class="sNo floatLeft">
			<xsl:value-of select="questionNo" />
		</div>
		<xsl:choose>
			<xsl:when test="@type='basic'">
				<div class="insuredName floatLeft">
					<xsl:value-of select="questionDes" />
				</div>
			</xsl:when>
			<xsl:otherwise>
				<div class="question floatLeft">
					<xsl:value-of select="questionDes" />
				</div>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template match="answer">
		<xsl:if test="@widType='radio'">
			<xsl:apply-templates select="radioDetails" />
			<div class="remark floatLeft">Pass</div>
		</xsl:if>
		<xsl:if test="@widType='textBox'">
			<xsl:apply-templates select="textBoxDetails" />
			<div class="remark floatLeft"></div>
		</xsl:if>
		<xsl:if test="@widType='percentageTextBox'">
			<xsl:apply-templates select="percentageTextBoxDetails" />
			<div class="remark floatLeft"></div>
		</xsl:if>
		<xsl:if test="@widType='label'">
			<xsl:apply-templates select="labelDetails" />
		</xsl:if>
	</xsl:template>

	<xsl:template match="labelDetails">
		<div class="yesNo swithLabelAlign"> 
			<xsl:value-of select="labelDes" />
		</div>
	</xsl:template>
	
	<xsl:template match="percentageTextBoxDetails">
		<div class="yesNo swithLabelAlign">
		<xsl:element name="input">
			<xsl:attribute name="id"><xsl:value-of select='@id' /></xsl:attribute>
			<xsl:attribute name="maxlength"><xsl:value-of select='@maxlength' /></xsl:attribute>
			<xsl:attribute name="type">text</xsl:attribute>
			<xsl:attribute name="class">percentageInput</xsl:attribute>
		</xsl:element>
		</div>
	</xsl:template>
	
	<xsl:template match="textBoxDetails">
		<div class="insuredInput swithLabelAlign">
			<input type="text" class="inputStyle" />
		</div>
	</xsl:template>

	<xsl:template match="radioDetails">
		<div class="yesNo swithLabelAlign">
			<label class="switch">
				<input type="checkbox" class="switch-input" id="" />
				<span class="switch-label" id="" data-on="Yes" data-off="No"></span>
				<span class="switch-handle"></span>
			</label>
		</div>
	</xsl:template>

</xsl:stylesheet>