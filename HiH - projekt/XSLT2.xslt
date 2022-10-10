<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="xml" />
<xsl:template match="/">
	<xsl:element name="cennik">
		<xsl:call-template name="cennik"/>
	</xsl:element>
</xsl:template>

<xsl:template name="cennik">
	Ceny ziółek i akcesoriów:
		<ol>
			<li>Klasyczna Yerba - 30zł</li>
			<li>Owocowa Yerba - 25zł</li>
			<li>Yerba o smaku zielonej herbaty - 27zł</li>
			<li>Czajnik - 18zł</li>
			<li>Szczoteczka do czyszczenia słomki - 22zł</li>
			<li>Bombilla - 45zł</li>
		</ol>
</xsl:template>
</xsl:stylesheet>
