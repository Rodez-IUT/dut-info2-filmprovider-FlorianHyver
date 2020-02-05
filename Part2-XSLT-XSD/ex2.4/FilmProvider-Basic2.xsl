<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/films">
        <html>
            <head>
                <title>Films</title>
            </head>
            <body>
                <h1>Films</h1>
                <table>
                    <thead>
                        <tr>
                            <th>Titre</th>
                            <th>Résumé</th>
                            <th>Prénom Réalisateur</th>
                            <th>Nom Réalisateur</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:apply-templates select="film"/>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="film">
        <xsl:variable name="id_film" select="@id_realisateur" />
        <tr>
            <td><xsl:value-of select="titre"/> </td>
            <td><xsl:value-of select="resume/text"/></td>
            <td><xsl:value-of select="//realisateur[@id_realisateur=$id_film]/prenom"/> </td>
            <td><xsl:value-of select="//realisateur[@id_realisateur=$id_film]/nom"/> </td>
        </tr>
    </xsl:template>
</xsl:stylesheet>