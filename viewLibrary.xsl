<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="1.0">
<xsl:template match="/">
<html>
<head>
  <link rel="stylesheet" type="text/css" href="library.css"/>
</head>
<body>
  
      <h1><xsl:value-of select="Library/libraryname"/></h1>
      <xsl:apply-templates select="Library/spell"/>
  
</body>
</html>
</xsl:template>

<xsl:template match="spell">
  <table frame="box" width="100%">
    <p><font face="serif" size="3" color="orange"><b><xsl:value-of select="title"/></b></font></p>
    <p>
      <b>R: </b><xsl:value-of select="range"/>
      <b>, D: </b><xsl:value-of select="duration"/>
      <b>, T: </b><xsl:value-of select="target"/>
    </p>
    <p><xsl:value-of select="description"/></p>
    <p>(<xsl:value-of select="guideline"/>) <xsl:value-of select="source/booktitle"/> p.<xsl:value-of select="source/pagenumber"/> Author:<xsl:value-of select="author"/></p>
  </table>
</xsl:template>

</xsl:stylesheet>
