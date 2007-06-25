<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xd="http://www.pnp-software.com/XSLTdoc" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:exsl="http://exslt.org/common" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes="exsl xd" extension-element-prefixes="exsl" version="1.0">
  <xsl:import href="../common/tei.xsl"/>
  <xsl:import href="tei-param.xsl"/>
  <xsl:import href="../common/verbatim.xsl"/>
  <xsl:output method="text" encoding="utf8"/>
  <xsl:strip-space elements="*"/>
  <xsl:include href="core.xsl"/>
  <xsl:include href="corpus.xsl"/>
  <xsl:include href="drama.xsl"/>
  <xsl:include href="figures.xsl"/>
  <xsl:include href="header.xsl"/>
  <xsl:include href="linking.xsl"/>
  <xsl:include href="namesdates.xsl"/>
  <xsl:include href="tagdocs.xsl"/>
  <xsl:include href="textstructure.xsl"/>
  <xsl:include href="verse.xsl"/>

  <xsl:param name="startNamespace">\color{red}</xsl:param>
  <xsl:param name="startElement">{</xsl:param>
  <xsl:param name="startElementName">\textbf{</xsl:param>
  <xsl:param name="startAttribute">\textit{</xsl:param>
  <xsl:param name="startAttributeValue">\textrm{</xsl:param>
  <xsl:param name="startComment">\textsf{</xsl:param>
  <xsl:param name="endElement">}</xsl:param>
  <xsl:param name="endElementName">}</xsl:param>
  <xsl:param name="endComment">}</xsl:param>
  <xsl:param name="endAttribute">}</xsl:param>
  <xsl:param name="endAttributeValue">}</xsl:param>
  <xsl:param name="endNamespace"/>
  <xsl:param name="spaceCharacter">\hspace*{1em}</xsl:param>
  <xd:doc type="stylesheet">
    <xd:short>
    TEI stylesheet for making LaTeX output.
      </xd:short>
    <xd:detail>
    This library is free software; you can redistribute it and/or
    modify it under the terms of the GNU Lesser General Public
    License as published by the Free Software Foundation; either
    version 2.1 of the License, or (at your option) any later version.

    This library is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
    Lesser General Public License for more details.

    You should have received a copy of the GNU Lesser General Public
    License along with this library; if not, write to the Free Software
    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA

   
   
      </xd:detail>
    <xd:author>See AUTHORS</xd:author>
    <xd:cvsId>$Id$</xd:cvsId>
    <xd:copyright>2005, TEI Consortium</xd:copyright>
  </xd:doc>
  <xsl:variable name="docClass">
    <xsl:choose>
      <xsl:when test="/tei:TEI[@rend='letter']">
        <xsl:text>letter</xsl:text>
      </xsl:when>
      <xsl:when test="/tei:TEI[@rend='book']">
        <xsl:text>book</xsl:text>
      </xsl:when>
      <xsl:otherwise>
        <xsl:text>article</xsl:text>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:variable>
  <xd:doc>
    <xd:short>Process elements  processing-instruction()[name(.)='tex']</xd:short>
    <xd:detail> </xd:detail>
  </xd:doc>
  <xsl:template match="processing-instruction()[name(.)='tex']">
    <xsl:value-of select="."/>
  </xsl:template>

  <xsl:template name="lineBreak">
    <xsl:param name="id"/>
    <xsl:text>\mbox{}\\&#10;</xsl:text>
  </xsl:template>

</xsl:stylesheet>
