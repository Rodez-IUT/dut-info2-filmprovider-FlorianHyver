<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/films">
        <html>
            <head>
                <title>Film Provider</title>
            </head>
            <body>
                <h1>Liste des films</h1>
                <xsl:apply-templates select="film">
                    <xsl:sort select="@annee"/>
                </xsl:apply-templates>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="film">
        <xsl:variable name="id_film" select="@id_realisateur" />
        <table width="60%">
            <tr>
                <td colspan="2"><b><xsl:value-of select="titre"/></b><i> (<xsl:value-of select="../realisateur[@id_realisateur=$id_film]/prenom"/>, <xsl:value-of select="../realisateur[@id_realisateur=$id_film]/nom"/>)</i></td>
            </tr>
            <tr>
                <xsl:if test="resume/image=true()">
                <td>
                    <xsl:element name="img">
                        <xsl:attribute name="src">
                            <xsl:value-of select="resume/image/@source"/>
                        </xsl:attribute>
                    </xsl:element>
                </td>
                </xsl:if>
                <xsl:element name="td">
                    <xsl:if test="resume/image=false()"><xsl:attribute name="colspan">2</xsl:attribute></xsl:if>
                    <xsl:value-of select="resume/text"/>
                </xsl:element>
            </tr>
        </table>
        <hr/>
    </xsl:template>
</xsl:stylesheet>