<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <body>
            <xsl:for-each select="list/details">
                <div class="tag-grid" style="margin: 10px">
                    <xsl:if test="new_arrival = 'yes'">
                        <div class="pro-grd" style="top: 2%">
                            <a class="color3">New</a>
                        </div>
                    </xsl:if>
                    <xsl:if test="new_arrival = 'yes'">
                        <div class="pro-grd" style="top: 13%">
                            <a>Hot</a>
                        </div>
                    </xsl:if>

                    <div class="tag-wrapper">
                        <a href="#">
                            <img src="img/{picture}" class="img-responsive" alt=""/>
                        </a>
                        <div class="r-title">
                            <h3>
                                <xsl:value-of select="name"/>
                                <small><br/><xsl:value-of select="brand"/></small>
                            </h3>

                            <!-- If there's discount -->
                            <xsl:if test="discount > '0'">
                            <h4>
                                <br/><span class="label label-danger"><xsl:value-of select="discount"/>%</span>
                                RM <xsl:value-of select="format-number(discounted_price,'#.00')"/>
                            </h4>
                            <span class="reducedfrom"><br/>RM <xsl:value-of select="format-number(price,'#.00')"/></span>
                            </xsl:if>

                            <!-- If no discount -->
                            <xsl:if test="discount = '0'">
                                <h4><br/>RM <xsl:value-of select="format-number(price,'#.00')"/></h4>
                            </xsl:if>
                        </div>
                    </div>
                </div>
            </xsl:for-each>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>
