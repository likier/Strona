<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>

	<xsl:template match="/">
		<html>
			<head>
				<meta charset="UTF-8" />
				<title>Yerba Mate</title>
				<meta name="viewport" content="width=device-width, initial-scale=1.0" />
				<link rel="stylesheet" href="styleXSLT.css" />
			</head>
			<body>
				<div id="wrapper">
					<header>
						Yerba Mate
					</header>
					<div id="content">
						<xsl:call-template name="nav"/>
						<xsl:apply-templates select="yerba/cytat"/>
						<xsl:apply-templates select="yerba/history[@times='middle_ages']"/>
						<xsl:call-template name="yerba"/>
						<xsl:call-template name="number"/>
						<xsl:call-template name="liczba"/>
						<xsl:apply-templates select="yerba/composition"/>
						<xsl:call-template name="ilosc"/>
						<xsl:call-template name="zaokraglij"/>
						<xsl:apply-templates select="yerba/health[@theme='obesity']"/>
						<xsl:apply-templates select="yerba/media/image"/>
						<xsl:apply-templates select="yerba/yerbastore"/>
						<xsl:apply-templates select="yerba/legend[@kind='myth']"/>
						<xsl:apply-templates select="yerba/links/link"/>
					</div>
					<footer>
					<xsl:apply-templates select="yerba/author"/> 
					</footer>
				</div>
			</body>
		</html>
	</xsl:template>
	
<xsl:template name="nav">
	<nav>
		<ul>
			<li><a href="#">Yerba</a></li>				
			<li><a href="#">Wpływ na zdrowie</a></li>
			<li><a href="#">Gdzie kupię?</a></li>
			<li><a href="#">Historia</a></li>
		</ul>
	</nav>	
</xsl:template>

<xsl:variable name="quote">
	"Gdzie czujesz yerbę, tam wchodź, tam dobre serca mają, źli ludzie, wierzaj mi, Ci nigdy jej nie pijają."
</xsl:variable>

<xsl:template match="cytat">
<cytat>
<xsl:attribute name="class">
cytat
</xsl:attribute>
<xsl:value-of select="$quote"/>
</cytat>
<br/><br/>
</xsl:template>

<xsl:template match="history[@times='middle_ages']">
<history>
<xsl:attribute name="class">
text
</xsl:attribute>
<xsl:value-of select="begin"/>
</history>
<br/><br/>
</xsl:template>

<xsl:template name="yerba">
<yerbaa>
<xsl:attribute name="class">
yerba
</xsl:attribute>
<xsl:value-of select='concat("Y","e","r","b","a")'/>
</yerbaa>
</xsl:template>

<xsl:template name="number">
<numery>
<xsl:attribute name="class">
numery
</xsl:attribute>
<xsl:value-of select='substring("Mateusz",1,4)'/>
</numery>
</xsl:template>

<xsl:template name="liczba">
<h1>Ilość liter w słowie powyżej:</h1>
<liczby>
<xsl:attribute name="class">
liczby
</xsl:attribute>
<xsl:value-of select='string-length("YerbaMate")'/>
</liczby>
</xsl:template>

<xsl:template match="composition">
	<h3>Węglowodory aromatyczne:</h3>
	<table>
		<tr bgcolor="#9a7c58">
			<th>Nazwa</th>
			<th>Ilość w ng/l</th>
			<th>Rodzaj</th>
		</tr>
	<xsl:for-each select="compound">
	<xsl:sort select="name"/>
	<xsl:if test="amount &gt; 100">
		<tr>			
			<td><xsl:value-of select="name"/></td>
			<td><xsl:value-of select="amount"/></td>
			<td><xsl:value-of select="kind"/></td>
		</tr>
	</xsl:if>
	</xsl:for-each>
	</table>
</xsl:template>

<xsl:template name="ilosc">
<wartosci>
<h4>Ilosć przedstawiona w pikogramach(pg):</h4>
<ol><a>Acenaften:
<xsl:value-of select='format-number(426.3, "#.000")'/>
</a></ol>
<ol><a>Fenanren:
<xsl:value-of select='format-number(347.5, "#.000")' />
</a></ol>
</wartosci>
</xsl:template>

<xsl:template name="zaokraglij">
<kolo>
<p>Zaokrąglone wartości: </p>
<ol><a>
<xsl:value-of select='round(426.3)'/>
</a></ol>
<ol><a>
<xsl:value-of select='round(347.5)'/>
</a></ol>
</kolo>
</xsl:template>

<xsl:template match="health[@theme='obesity']">
<zdrowie>
<xsl:attribute name="class">
text
</xsl:attribute>
<xsl:value-of select="solution"/>
</zdrowie>
</xsl:template>

<xsl:template match="media/image">
<image>
<xsl:attribute name="src">
<xsl:value-of select="@src"/>
</xsl:attribute>
<xsl:attribute name="class">
obrazek
</xsl:attribute>
<xsl:attribute name="title">
<xsl:value-of select="."/>
</xsl:attribute>
</image>
</xsl:template>

<xsl:template match="yerbastore">
<h2>Przykłady Yerby:</h2> 
<table border="1">
	<tr bgcolor="#3383e1">
		<th style="text-align:center">Marka</th>
		<th style="text-align:center">Cena</th>
		<th style="text-align:center">Smak</th>
		<th style="text-align:center">Jakość</th>
		<th style="text-align:center">Opakowanie</th>
	</tr>
	<xsl:for-each select="element">
	<xsl:sort select="price"/>
	<tr>
		<td><xsl:value-of select="brand"/></td>
		<xsl:choose>
		<xsl:when test="price &gt; 30">
		<td bgcolor="#fa4a5a">
		<xsl:value-of select="price"/>
		</td>
		</xsl:when>
		<xsl:otherwise>
		<td bgcolor="#eddacc">
		<xsl:value-of select="price"/>
		</td>
		</xsl:otherwise>
		</xsl:choose>
		<td><xsl:value-of select="taste"/></td>
		<td><xsl:value-of select="quality"/></td>
		<td><xsl:value-of select="package"/></td>
	</tr>
	</xsl:for-each>
</table>
</xsl:template>

<xsl:template match="legend[@kind='myth']">
<mit>
<xsl:attribute name="class">
text
</xsl:attribute>
<xsl:value-of select="story"/>
</mit>
</xsl:template>

<xsl:template match="links/link">
<kolejnosc>
<xsl:number value="position()" format="1."/>
</kolejnosc>
<linki>
<xsl:if test="not(position() = last())">
<ol>
<a>
<xsl:attribute name="href">
<xsl:value-of select="@source"/>
</xsl:attribute>
<xsl:attribute name="class">
linki
</xsl:attribute>
<xsl:value-of select="."/>
</a>
</ol>
</xsl:if>
</linki>
<xsl:if test="(position() = last())">
<ol>
<a>
<xsl:attribute name="href">
<xsl:value-of select="@source"/>
</xsl:attribute>
<ostatni>
<xsl:attribute name="class">
ostatni_link
</xsl:attribute>
<xsl:value-of select="."/>
</ostatni>
</a>
</ol>
</xsl:if>
</xsl:template>

<xsl:template match="author">
Wszelkie prawa zastrzeżone, <xsl:value-of select="name"/><xsl:text> </xsl:text><xsl:value-of select="surname"/> 
</xsl:template>

</xsl:stylesheet>