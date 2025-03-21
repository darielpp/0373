<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" indent="yes"/>
    <xsl:template match="notes">
        Programació 1
        -------------
        <xsl:apply-templates select="."/>
        Base de dades
        -------------
        <xsl:apply-templates select="."/>
        </xsl:template>
        <xsl:template match="notes">
        <xsl:value-of select="."/>
    </xsl:template>
</xsl:stylesheet>