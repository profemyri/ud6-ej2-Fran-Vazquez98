<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
    <html>
        <head>
            <title>Catálogo de Hobbies</title>
        </head>
        <body>
            <h2>Lista de Hobbies</h2>
            <table>
                <tr>
                    <th>Name</th>
                    <th>Description</th>
                    <th>Popularity</th>
                    <th>Difficulty</th>
                </tr>
            <xsl:for-each select="hobbies/hobby">
                <tr>
                    <td><xsl:value-of select="name" /></td>
                    <td><xsl:value-of select="description" /></td>
                    <td><xsl:value-of select="popularity" /></td>
                    <td>
                        <xsl:choose>
                            <xsl:when test="@difficulty">
                            <xsl:value-of select="@difficulty" />
                            </xsl:when>
                        </xsl:choose>
                    </td>
                </tr>
            </xsl:for-each>
            </table>
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>