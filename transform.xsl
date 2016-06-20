<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    version="2.0"
    >
    <xsl:param name="exclude"></xsl:param>
    <xsl:template match="/">
        <html>
            <head>
                <title>hola</title>
            </head>
            <body>
                <h1>input</h1>
                <p><xsl:value-of select="input/replaceWithUniqueNodes/text()"/></p>
                <h2>param exclude</h2>
                <p><xsl:value-of select="$exclude"/></p>
                
                <h1>tokenized unique values output</h1>
                <pre>
                    <xsl:apply-templates select="node()"/>
                </pre>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="text()">
        <xsl:for-each select="distinct-values(./tokenize(.,'\^'))">
            <xsl:if test=". ne $exclude">
                <p><xsl:value-of select="."/></p>
                
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
    
</xsl:stylesheet>