<?xml version="1.0"?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<table id="Jobtable" border="1" class="indent">
<thead>
<tr>
    <th>Select</th>
    <th>jobType</th>
    <th>Company</th>
    <th>JobTile</th>
    
</tr>
</thead>

<tbody>
    <xsl:for-each select="//jobType">
    <tr>
    <tb colspan="3">
        <xsl:value-of select="@categories" />
    </tb>
    </tr>    
    <xsl:for-each select="entry">
    <tr>
        <td>
            <xsl:value-of select="company" />
        </td>
        <td>
            <xsl:value-of select="jobTitle" />
        </td>
    </tr>
    </xsl:for-each>
    </xsl:for-each>
</tbody>


</table>
</html>
</xsl:template>

</xsl:stylesheet>
