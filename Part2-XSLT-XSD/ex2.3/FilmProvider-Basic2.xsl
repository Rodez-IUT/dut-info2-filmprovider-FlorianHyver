<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/films">
        <html>
            <head>
                <META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                <title>Films</title>
            </head>
            <body>
                <h1>Films</h1>
                <table>
                    <thead>
                        <tr>
                            <th>Titre</th><th>Résumé</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><xsl:value-of select="//film/titre"/> </td>
                            <td>Un homme est victime d'une machination. Il est pris au piége d'un système qu'il a l'habitude de controler.</td>
                        </tr>
                        <tr>
                            <td>Kill Bill</td>
                            <td>Une femme se venge des personnes qui ont voulu l'assassiner.</td>
                        </tr>
                        <tr>
                            <td>Casino</td>
                            <td>Le monde de la mafia italienne m le à celui des casinos...</td>
                        </tr>
                        <tr>
                            <td>Les affranchis</td>
                            <td>Inspir d'un fait rel : histoire de mafia italienne.</td>
                        </tr>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>