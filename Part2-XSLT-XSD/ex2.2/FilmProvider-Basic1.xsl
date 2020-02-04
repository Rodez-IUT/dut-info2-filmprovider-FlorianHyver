<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title><xsl:value-of select="/films/film[titre='Minority Report']/resume/text"/></title>
            </head>
            <body>
                <h1>Hello world !</h1>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>