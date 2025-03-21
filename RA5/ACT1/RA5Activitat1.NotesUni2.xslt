<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes" encoding="UTF-8"/>
    <xsl:template match="notes">
        <html>
            <head>
                <title>Notes</title>
                <style>
                    table {
                        border-collapse: collapse;
                        margin-bottom: 20px;
                        width: 300px;
                    }
                    th, td {
                        border: 1px solid black;
                        padding: 5px;
                        text-align: left;
                    }
                    .title {
                        background-color: #ccc;
                        font-weight: bold;
                        text-align: left;
                        padding: 5px;
                    }
                </style>
            </head>
            <body>
                <xsl:for-each select="assignatura">
                    <table>
                        <tr>
                            <td colspan="2" class="title">
                                <xsl:value-of select="nom_assignatura"/>
                            </td>
                        </tr>
                        <xsl:for-each select="alumnes/alumne">
                            <tr>
                                <td><xsl:value-of select="nom"/></td>
                                <td><xsl:value-of select="nota"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>