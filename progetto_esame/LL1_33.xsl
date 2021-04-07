<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:tei="http://www.tei-c.org/ns/1.0" 
    xmlns="http://www.w3.org/1999/xhtml" >
    
    
    <xsl:output method="html" indent="yes"/>
    <xsl:strip-space elements="*"/>
    <xsl:template match="/">
        
        <html>
        
            <head>
                <link rel="stylesheet" type="text/css" href="LL1_33.css" media="screen" /> 
                <script src="LL1_33.js"> </script>
                <title><xsl:value-of select="//tei:titleStmt/tei:title"/></title>            
            </head>
            <body>
                <!--fileDesc--> 
                <div id="fileDesc">
                 <!--titleStmt-->
                    <div class="dropdown">
                        <span class="menu">Informazioni generali</span>
                        <div class="dropdown-content">
                            <xsl:apply-templates select="//tei:titleStmt"/>
                        </div>
                    </div>
                    <!--editionStmt-->
                    <div class="dropdown">
                        <span class="menu">Edizione digitale</span>
                        <div class="dropdown-content">
                            <xsl:apply-templates select="//tei:editionStmt"/>
                        </div>
                    </div>
                    <!--publicationStmt-->
                    <div class="dropdown">
                        <span class="menu">Pubblicazione</span>
                        <div class="dropdown-content">
                            <xsl:apply-templates select="//tei:publicationStmt"/>
                        </div>
                    </div>
                    <!--sourceDesc-->
                    <div class="dropdown">
                        <span class="menu">Dettagli manoscritto</span>
                        <div class="dropdown-content">
                            <xsl:apply-templates select="//tei:sourceDesc"/>
                        </div>
                    </div>
                </div>
                <!--msDesc-->
                <div id="descManoscritto">
                    <h2>Descrizione manoscritto</h2>
                    <div id="descContent">
                        <xsl:apply-templates select="//tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:support"/>
                    </div>
                </div>
                <!--facsimile-->
                <div id="facsimile">
                    <h2>Manoscritto originale</h2>
                    <div id="iconeNumeri" >
                        <input id="num1" type="image" class="iconaNumero" alt="Clicca per visualizzare il folio fronte-recto" src="icona1.png"/>
                        <input id="num2" type="image" class="iconaNumero" alt="Clicca per visualizzare il folio retro-recto" src="icona2.png"/>
                        <input id="num3" type="image" class="iconaNumero" alt="Clicca per visualizzare il folio retro-verso" src="icona3.png"/>           
                        <input id="num4" type="image" class="iconaNumero" alt="Clicca per visualizzare il folio fronte-verso" src="icona4.png"/>             
                    </div>
                    <xsl:apply-templates select="//tei:facsimile"/>
                </div>
                <!--fronte-recto-->
                <div id="fronte-recto">
                    <h2>Corpo della lettera</h2>
                        <div>
                            <xsl:apply-templates select="//tei:body/tei:div[@type='fronte-recto']"/>
                        </div>
                </div>
                <!--legenda-->
                <div id="legenda">
                    <h4>Legenda</h4>
                    <p>Le espressioni evidenziate in <mark>giallo</mark> sono informazioni aggiunte in fase di codifica</p>
                </div>
                <!--note-->
                <div id="note">
                    <h4>Note</h4>
                    <ol>
                        <xsl:apply-templates select="//tei:div[@type='ann_notes']/tei:note" />
                    </ol>
                </div>
                <!--bibliography-->
                <div id="biblioEfonti">
                    <div id="bibliografia">
                        <h4>Bibliografia</h4>
                        <ul>
                            <xsl:apply-templates select="//tei:div[@type='bibliography']/tei:listBibl/tei:bibl" />
                        </ul>
                    </div>
                    <!--listBibl-->
                    <div id="fonti">
                        <h4>Dettagli bibliografia</h4>
                        <ul>
                            <xsl:apply-templates select="//tei:div[@type='lists']/tei:listBibl" />
                        </ul>
                    </div>
                </div>
                <!--listPerson-->
                <div id="persone">
                    <h3 id="titlePerson">Persone citate</h3>
                    <div id="listaPersone">
                        <ul>
                            <li>
                                <xsl:element name="a">
                                    <xsl:attribute name="id">
                                        <xsl:value-of select="//tei:div[@type='lists']/tei:listPerson/tei:person[@xml:id='VB']/@xml:id"/>
                                    </xsl:attribute>
                                    <xsl:apply-templates select="//tei:div[@type='lists']/tei:listPerson/tei:person[@xml:id='VB']" />
                                </xsl:element>
                            </li>
                            <li>
                                <xsl:element name="a">
                                    <xsl:attribute name="id">
                                        <xsl:value-of select="//tei:div[@type='lists']/tei:listPerson/tei:person[@xml:id='VGT']/@xml:id"/>
                                    </xsl:attribute>
                                    <xsl:apply-templates select="//tei:div[@type='lists']/tei:listPerson/tei:person[@xml:id='VGT']" />               
                                </xsl:element>       
                            </li>
                            <li>
                                <xsl:element name="a">
                                    <xsl:attribute name="id">
                                        <xsl:value-of select="//tei:div[@type='lists']/tei:listPerson/tei:person[@xml:id='FM']/@xml:id"/>
                                    </xsl:attribute>
                            
                                    <xsl:apply-templates select="//tei:div[@type='lists']/tei:listPerson/tei:person[@xml:id='FM']" />
                                </xsl:element>
                            </li>
                            <li>
                                <xsl:element name="a">
                                    <xsl:attribute name="id">
                                        <xsl:value-of select="//tei:div[@type='lists']/tei:listPerson/tei:person[@xml:id='PP']/@xml:id"/>
                                    </xsl:attribute>
                                    <xsl:apply-templates select="//tei:div[@type='lists']/tei:listPerson/tei:person[@xml:id='PP']" />
                                </xsl:element>
                            </li>
                            <li>
                                <xsl:element name="a">
                                    <xsl:attribute name="id">
                                        <xsl:value-of select="//tei:div[@type='lists']/tei:listPerson/tei:person[@xml:id='FH']/@xml:id"/>
                                    </xsl:attribute>
                                    <xsl:apply-templates select="//tei:div[@type='lists']/tei:listPerson/tei:person[@xml:id='FH']" />
                                </xsl:element>
                            </li>
                            <li>
                                <xsl:element name="a">
                                    <xsl:attribute name="id">
                                        <xsl:value-of select="//tei:div[@type='lists']/tei:listPerson/tei:person[@xml:id='GS']/@xml:id"/>
                                    </xsl:attribute>
                                    <xsl:apply-templates select="//tei:div[@type='lists']/tei:listPerson/tei:person[@xml:id='GS']" />
                                </xsl:element>
                            </li>
                            <li>
                                <xsl:element name="a">
                                    <xsl:attribute name="id">
                                        <xsl:value-of select="//tei:div[@type='lists']/tei:listPerson/tei:person[@xml:id='CN']/@xml:id"/>
                                    </xsl:attribute>
                                    <xsl:apply-templates select="//tei:div[@type='lists']/tei:listPerson/tei:person[@xml:id='CN']" />
                                </xsl:element>
                            </li>
                            <li>
                                <xsl:element name="a">
                                    <xsl:attribute name="id">
                                        <xsl:value-of select="//tei:div[@type='lists']/tei:listPerson/tei:person[@xml:id='LC']/@xml:id"/>
                                    </xsl:attribute>
                                    <xsl:apply-templates select="//tei:div[@type='lists']/tei:listPerson/tei:person[@xml:id='LC']" />
                                </xsl:element>
                            </li>
                            <li>
                                <xsl:element name="a">
                                    <xsl:attribute name="id">
                                        <xsl:value-of select="//tei:div[@type='lists']/tei:listPerson/tei:person[@xml:id='AA']/@xml:id"/>
                                    </xsl:attribute>
                                    <xsl:apply-templates select="//tei:div[@type='lists']/tei:listPerson/tei:person[@xml:id='AA']" />
                                </xsl:element>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- listPlace -->
                <div id="luoghi">
                    <h3 id="titlePlace">Luoghi citati</h3>
                    <ul>
                        <xsl:apply-templates select="//tei:div[@type='lists']/tei:listPlace/tei:place" />
                    </ul>
                </div>
               
            </body>
            
        </html>
    </xsl:template>

    <!-- TEMPLATE --> 
 
    <!-- titleStmt -->    
    <xsl:template match="//tei:titleStmt">
        <h3 id="titleLetter"><xsl:value-of select="tei:title"/></h3>
        <div><xsl:apply-templates select="tei:respStmt" /></div> 
    </xsl:template>

    <!-- respStmt -->
    <xsl:template match="//tei:respStmt">
        <h3><xsl:value-of select="tei:resp"/></h3>
        <ul>
            <xsl:for-each select="tei:name">
                <li><xsl:value-of select="."/></li>     
            </xsl:for-each>
        </ul>
    </xsl:template>

    <!-- editionStmt -->
    <xsl:template match="//tei:editionStmt">
        <h2><xsl:value-of select="tei:edition"/></h2>
        <h3><xsl:value-of select="tei:edition/date"/></h3>
        <div><xsl:apply-templates select="tei:respStmt" /></div> 
    </xsl:template>

    <!-- publicationStmt -->
    <xsl:template match="//tei:publicationStmt">
        <h2><xsl:value-of select="tei:publisher"/></h2>
        Licenza: <a href="https://creativecommons.org/licenses/by/4.0/"><xsl:value-of select="tei:availability/tei:licence"/></a>
    </xsl:template>

    <!-- sourceDesc -->
    <xsl:template match="//tei:sourceDesc">
        <div>
            <h2>Collocazione del manoscritto</h2>
            <p>
               <xsl:value-of select="//tei:msDesc/tei:msIdentifier/tei:country"/>, <xsl:value-of select="//tei:msDesc/tei:msIdentifier/tei:settlement"/>; <xsl:value-of select="//tei:msDesc/tei:msIdentifier/tei:altIdentifier/tei:idno"/>.
               <xsl:value-of select="//tei:adminInfo/tei:note"/>
            </p>           
        </div>
    </xsl:template>

    <!-- support -->
    <xsl:template match="//tei:support">
        <ul>
            <!-- Materiale -->
            <li><a><xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;]]></xsl:text>Materiale: <xsl:value-of select="tei:material"/> </a></li>
            <!-- Filigrana -->
            <xsl:element name="li">
                <xsl:element name="a">
                    <xsl:attribute name="name">
                        <xsl:value-of select="concat('ID',//tei:watermark/tei:hi/@facs)"/>
                    </xsl:attribute>
                    <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;&nbsp;&nbsp;]]></xsl:text>
                </xsl:element>
                <xsl:element name="a">
                    <xsl:attribute name="name">
                        <xsl:value-of select="concat('ID', //tei:watermark/tei:hi[2]/@facs )"/>
                    </xsl:attribute>
                    <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;&nbsp;&nbsp;]]></xsl:text>
                </xsl:element>
                <xsl:element name="a">
                    <xsl:attribute name="name">
                        <xsl:value-of select="concat('ID', //tei:watermark/tei:hi[3]/@facs )"/>
                    </xsl:attribute>
                    <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;&nbsp;&nbsp;]]></xsl:text>
                </xsl:element>
                <xsl:element name="a">
                    <xsl:attribute name="name">
                        <xsl:value-of select="concat('ID', //tei:watermark/tei:hi[4]/@facs )"/>
                    </xsl:attribute>
                    <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;&nbsp;&nbsp;]]></xsl:text>
                </xsl:element>
                <xsl:value-of select="concat('Filigrana: ',tei:watermark)"/>
            </xsl:element>
            <!-- Sigilli e timbri -->
            <xsl:element name="li">
                <xsl:element name="a">
                    <xsl:attribute name="name">
                        <xsl:value-of select="concat('ID', //tei:support/tei:stamp)"/>
                    </xsl:attribute>
                    <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;]]></xsl:text>
                </xsl:element>
                <xsl:value-of select="concat('Sigilli e timbri: ', //tei:support/tei:stamp)"/>
            </xsl:element>
            <!-- Condizioni: -->
            <xsl:element name="li">
                <xsl:element name="a">
                    <xsl:attribute name="name">
                        <xsl:value-of select="concat('ID',//tei:support/tei:p[1]/tei:hi/@facs)"/>
                    </xsl:attribute>
                    <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;]]></xsl:text>
                </xsl:element>
                <xsl:element name="a">
                    <xsl:attribute name="name">
                        <xsl:value-of select="concat('ID',//tei:support/tei:p[1]/tei:hi[2]/@facs)"/>
                    </xsl:attribute>
                    <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;]]></xsl:text>
                </xsl:element>
                <xsl:value-of select="concat('Condizioni: ',//tei:support/tei:p[1])"/>
            </xsl:element>
            <!-- Segni particolari -->
            <xsl:element name="li">
                <xsl:element name="a">
                    <xsl:attribute name="name">
                        <xsl:value-of select="concat('ID',//tei:support/tei:p[2]/tei:hi/@facs)"/>
                    </xsl:attribute>
                    <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;&nbsp;&nbsp;]]></xsl:text>
                </xsl:element>
                <xsl:element name="a">
                    <xsl:attribute name="name">
                        <xsl:value-of select="concat('ID',//tei:support/tei:p[2]/tei:hi[2]/@facs)"/>
                    </xsl:attribute>
                    <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;&nbsp;&nbsp;]]></xsl:text>
                </xsl:element>
                <xsl:element name="a">
                    <xsl:attribute name="name">
                        <xsl:value-of select="concat('ID',//tei:support/tei:p[2]/tei:hi[3]/@facs)"/>
                    </xsl:attribute>
                    <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;&nbsp;&nbsp;]]></xsl:text>
                </xsl:element>
                <xsl:element name="a">
                    <xsl:attribute name="name">
                        <xsl:value-of select="concat('ID',//tei:support/tei:p[2]/tei:hi[4]/@facs)"/>
                    </xsl:attribute>
                    <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;&nbsp;&nbsp;]]></xsl:text>
                </xsl:element>
                <xsl:value-of select="concat('Segni particolari: ',//tei:support/tei:p[2])"/>
            </xsl:element>
            
            <li> <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;]]></xsl:text>Dimensioni (mm): <xsl:value-of select="//tei:extent/tei:dimensions/tei:height"/> x <xsl:value-of select="//tei:extent/tei:dimensions/tei:width"/> </li>
            <li> <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;]]></xsl:text>Piegatura: <xsl:value-of select="//tei:foliation"/> </li>
           
            <!-- Annotazioni: -->
            <xsl:element name="li">
                <xsl:element name="a">
                    <xsl:attribute name="name">
                        <xsl:value-of select="concat('ID',//tei:handNote/tei:hi/@facs)"/>
                    </xsl:attribute>
                    <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;&nbsp;&nbsp;&nbsp;]]></xsl:text>
                </xsl:element> 
                <xsl:element name="a">
                    <xsl:attribute name="name">
                        <xsl:value-of select="concat('ID',//tei:handNote/tei:hi[2]/@facs)"/>
                    </xsl:attribute>
                    <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;&nbsp;&nbsp;&nbsp;]]></xsl:text>
                </xsl:element>
                <xsl:element name="a">
                    <xsl:attribute name="name">
                        <xsl:value-of select="concat('ID',//tei:handNote/tei:hi[3]/@facs)"/>
                    </xsl:attribute>
                    <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;&nbsp;&nbsp;&nbsp;]]></xsl:text>
                </xsl:element>
                <xsl:value-of select="concat('Annotazioni: ',//tei:handDesc)"/>
            </xsl:element>        
        </ul>
    </xsl:template>

    <!-- fronte-recto --> 
    <xsl:template match="//tei:body/tei:div[@type='fronte-recto']">
        <div id="letter">
            <p>
                <xsl:call-template name="facs"> </xsl:call-template>     
                <xsl:call-template name="supplied"> </xsl:call-template>   
            </p>
        </div>
    </xsl:template>
    
    <!-- supplied -->    
    <xsl:template name="supplied" match="//tei:supplied">
        <xsl:if test="position() != last()">
            <mark class="supplied_class"><xsl:value-of select="."/></mark>
        </xsl:if>
    </xsl:template>

    <!-- expan -->    
    <xsl:template name="abbr_template" match="//tei:expan">
        <select class="expan_class">
            <xsl:element name="option">
                <xsl:attribute name="value">
                    <xsl:value-of select="concat(tei:abbr[1], tei:abbr[2])"/>
                </xsl:attribute>
                <xsl:value-of select="concat(tei:abbr[1], tei:abbr[2])"/>
            </xsl:element>
            <xsl:element name="option">
                <xsl:attribute name="value">
                    <xsl:value-of select="concat(tei:abbr[1], tei:ex, tei:abbr[2])"/>
                </xsl:attribute>
                <xsl:value-of select="concat(tei:abbr[1], tei:ex, tei:abbr[2])"/>
            </xsl:element>
        </select>
    </xsl:template>

    <!--facsimile -->
    <xsl:template match="//tei:facsimile">
        <xsl:for-each select="tei:surface/tei:graphic"> 
            <xsl:variable name="position" select="position()"/>

            <xsl:element name="img">    <!-- ottengo <img usemap="#map1" id="imgLetter1" src="LL1.33_0001scalato.jpg" class="imgLetter"> -->
                <xsl:attribute name="usemap">
                    <xsl:value-of select="concat('#map',$position)"/>   <!-- usemap="#map1" -->
                </xsl:attribute>
                <xsl:attribute name="id">
                    <xsl:value-of select="concat('imgLetter' , $position)"/>  <!-- id="imgLetter1" -->
                </xsl:attribute> 
                <xsl:attribute name="src">
                    <xsl:value-of select="current()/@url"/>     <!-- src="LL1.33_0001scalato.jpg" -->
                </xsl:attribute>
                <xsl:attribute name="class">
                    <xsl:text>imgLetter</xsl:text>
                </xsl:attribute>
    
                <xsl:element name="map">    <!--  aree -->
                    <xsl:attribute name="name">
                        <xsl:value-of select="concat('map',$position)"/>
                    </xsl:attribute>

                    <xsl:for-each select="parent::tei:surface/tei:zone">
                        <xsl:element name="area">   
                            <xsl:attribute name="class">
                                <xsl:value-of select="concat(parent::tei:surface/@xml:id, '_class')"/>     
                            </xsl:attribute>   
                            <xsl:attribute name="id">
                                <xsl:value-of select="@xml:id"/>       
                            </xsl:attribute>
                            <xsl:attribute name="shape">
                                <xsl:value-of select="concat('rect','')"/>
                            </xsl:attribute>
                            <xsl:attribute name="coords">
                                <xsl:value-of select="@ulx"/>,<xsl:value-of select="@uly"/>,<xsl:value-of select="@lrx"/>,<xsl:value-of select="@lry"/>
                            </xsl:attribute>
                            <xsl:attribute name="href"> 
                                <xsl:value-of select="concat('#ID#', @xml:id)"/>
                            </xsl:attribute>
                            <xsl:attribute name="onclick">
                                <xsl:value-of select="concat( 'pointer(&quot;ID#', @xml:id, '&quot;)' )"/>     <!-- onclick pointer --> 
                            </xsl:attribute>
                        </xsl:element>
                    </xsl:for-each>
                </xsl:element>
            </xsl:element>
        </xsl:for-each>
    </xsl:template>

    <!-- facs -->
    <xsl:template >        
        <div>
            <p>
                <xsl:call-template name="facs"> </xsl:call-template>                    
            </p>
        </div>
    </xsl:template>
    <xsl:template name="facs" match="*[@facs]">
        <xsl:apply-templates/><br /><xsl:element name="a">
            <xsl:attribute name="name">
                <xsl:value-of select="concat('ID',@facs)"/>
            </xsl:attribute>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;]]></xsl:text> 
        </xsl:element>
    </xsl:template>

    <!-- ref (i) -->
    <xsl:template match="*[@ref]">
        <xsl:apply-templates />
        <xsl:element name="a">
            <xsl:attribute name="href">
                <xsl:value-of select="@ref"/>
            </xsl:attribute>
            <sub>&#8505;</sub>
        </xsl:element>
    </xsl:template>

    <!-- ptr_notes -->
    <xsl:template name="notesTemplate" match="//tei:ptr">
        <xsl:apply-templates/><xsl:element name="a">
            <xsl:attribute name="href">
                <xsl:value-of select="concat(@target, '')"/>
            </xsl:attribute>
            <sup>[nota]</sup>
        </xsl:element>
    </xsl:template>

    <!-- ann_notes -->
    <xsl:template match="//tei:div[@type='ann_notes']/tei:note">  
        <xsl:element name="li">
            <xsl:attribute name="id"> 
                <xsl:value-of select="concat(@xml:id, '')"/>
            </xsl:attribute>
            <xsl:value-of select="tei:p"/>
            [Fonte:
            <xsl:element name="a">
                <xsl:attribute name="href"> 
                    <xsl:value-of select="concat(@source, '')"/>
                </xsl:attribute>
                Seminara 2017,              
            </xsl:element>
            <xsl:if test="tei:bibl/tei:citedRange">
                pag. <xsl:value-of select="tei:bibl/tei:citedRange"/>]
            </xsl:if>
        </xsl:element>
    </xsl:template>

    <!-- bibliography -->
    <xsl:template match="//tei:div[@type='bibliography']/tei:listBibl/tei:bibl">
        <li>
            <xsl:element name="a">
                <xsl:attribute name="id">
                    <xsl:value-of select="@xml:id"/>
                </xsl:attribute>
                <xsl:value-of select="tei:ref/tei:bibl/tei:author" />, edizione anno <xsl:value-of select="tei:ref/tei:bibl/tei:date" />, pagina: <xsl:value-of select="tei:ref/tei:bibl/tei:citedRange" />
            </xsl:element>
        </li>
    </xsl:template>

    <!-- listBibl  -->
    <xsl:template match="//tei:div[@type='lists']/tei:listBibl">
        <xsl:for-each select="tei:bibl">
            <li>
                <xsl:element name="a">
                    <xsl:attribute name="id">
                        <xsl:value-of select="@xml:id"/>
                    </xsl:attribute>

                    <xsl:for-each select="*">
                        <xsl:value-of select="current()"/>
                        <xsl:text>. </xsl:text>              
                    </xsl:for-each>
                </xsl:element>
            </li>       
        </xsl:for-each>
    </xsl:template>
   
    <!-- listPerson -->
    <!-- Vincenzo Bellini -->
    <xsl:template match="//tei:div[@type='lists']/tei:listPerson/tei:person[@xml:id='VB']">
        <xsl:variable name="forename1">
            <xsl:value-of select="tei:persName/tei:forename"/>
        </xsl:variable>
         <xsl:variable name="forename2">
            <xsl:value-of select="tei:persName/tei:forename[2]"/>
        </xsl:variable> 
            <xsl:variable name="forename3">
            <xsl:value-of select="tei:persName/tei:forename[3]"/>
        </xsl:variable>  
        <xsl:variable name="forename4">
            <xsl:value-of select="tei:persName/tei:forename[4]"/>
        </xsl:variable>     
        <xsl:variable name="surname">
            <xsl:value-of select="tei:persName/tei:surname"/>
        </xsl:variable>
        <xsl:variable name="alias">
            <xsl:value-of select="tei:persName/tei:addName"/>
        </xsl:variable>
        <xsl:variable name="roleName">
            <xsl:value-of select="tei:persName/tei:roleName"/>
        </xsl:variable>
        <xsl:variable name="birth">
            <xsl:value-of select="tei:birth/tei:date"/>
        </xsl:variable>
        <xsl:variable name="Bsettlement">
            <xsl:value-of select="tei:birth/tei:placeName/tei:settlement"/>
        </xsl:variable> 
        <xsl:variable name="Bcountry">
            <xsl:value-of select="tei:birth/tei:placeName/tei:country"/>
        </xsl:variable> 
        <xsl:variable name="death">
            <xsl:value-of select="tei:death/tei:date"/>
        </xsl:variable> 
        <xsl:variable name="Dsettlement">
            <xsl:value-of select="tei:death/tei:placeName/tei:settlement"/>
        </xsl:variable>
           <xsl:variable name="Dsettlement2">
            <xsl:value-of select="tei:death/tei:placeName/tei:settlement[2]"/>
        </xsl:variable>
        <xsl:variable name="Dcountry">
            <xsl:value-of select="tei:death/tei:placeName/tei:country"/>
        </xsl:variable>
        <xsl:variable name="treccani">
            <xsl:value-of select="tei:persName[@role='composer']/tei:ref/@target"/>  
        </xsl:variable>
        <xsl:variable name="viaf">
            <xsl:value-of select="//tei:div[@type='lists']/tei:listPerson/tei:person[@xml:id='VB']/@sameAs"/>
        </xsl:variable>
        [Compositore della lettera]
        <xsl:text disable-output-escaping="yes"><![CDATA[<br>]]></xsl:text>
        Nome completo: <xsl:copy-of select="$forename1"/>, <xsl:copy-of select="$forename2"/>, <xsl:copy-of select="$forename3"/>, <xsl:copy-of select="$forename4"/> <xsl:text disable-output-escaping="yes"><![CDATA[<br>]]></xsl:text>
        Cognome: <xsl:copy-of select="$surname"/> <xsl:text disable-output-escaping="yes"><![CDATA[<br>]]></xsl:text>
        Alias: <xsl:copy-of select="$alias"/> <xsl:text disable-output-escaping="yes"><![CDATA[<br>]]></xsl:text>
        Titolo: <xsl:copy-of select="$roleName"/> <xsl:text disable-output-escaping="yes"><![CDATA[<br>]]></xsl:text>
        Data di nascita: <xsl:copy-of select="$birth"/> <xsl:text disable-output-escaping="yes"><![CDATA[<br>]]></xsl:text>
        Luogo di nascita: <xsl:copy-of select="$Bsettlement"/>, <xsl:copy-of select="$Bcountry"/> <xsl:text disable-output-escaping="yes"><![CDATA[<br>]]></xsl:text>
        Data di morte: <xsl:copy-of select="$death"/> <xsl:text disable-output-escaping="yes"><![CDATA[<br>]]></xsl:text>
        Luogo di morte: <xsl:copy-of select="$Dsettlement"/>, <xsl:copy-of select="$Dsettlement2"/>, <xsl:copy-of select="$Dcountry"/><xsl:text disable-output-escaping="yes"><![CDATA[<br>]]></xsl:text>
        Fonti:
        <xsl:element name="a">                        
            <xsl:attribute name="href">
                <xsl:value-of select="$viaf"/>
            </xsl:attribute>
            <sup>VIAF</sup>
        </xsl:element> 
        <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]></xsl:text>
        <xsl:element name="a">                     
            <xsl:attribute name="href">
                <xsl:value-of select="$treccani"/>
            </xsl:attribute>
            <sup>Treccani</sup>
        </xsl:element>
        <xsl:text disable-output-escaping="yes"><![CDATA[<br><br>]]></xsl:text>
    </xsl:template>
    <!-- Viriginia Giovio della Torre -->
    <xsl:template match="//tei:div[@type='lists']/tei:listPerson/tei:person[@xml:id='VGT']">
        <xsl:variable name="forename">
            <xsl:value-of select="tei:persName/tei:forename"/>
        </xsl:variable>
        <xsl:variable name="surname">
            <xsl:value-of select="tei:persName/tei:surname"/>
        </xsl:variable>
        <xsl:variable name="surname2">
            <xsl:value-of select="tei:persName/tei:surname[2]"/>
        </xsl:variable>
        <xsl:variable name="birth">
            <xsl:value-of select="tei:birth/tei:date"/>
        </xsl:variable>
        <xsl:variable name="Bsettlement">
            <xsl:value-of select="tei:birth/tei:placeName/tei:settlement"/>
        </xsl:variable> 
        <xsl:variable name="Bcountry">
            <xsl:value-of select="tei:birth/tei:placeName/tei:country"/>
        </xsl:variable> 
        <xsl:variable name="death">
            <xsl:value-of select="tei:death/tei:date"/>
        </xsl:variable> 
        <xsl:variable name="Dsettlement">
            <xsl:value-of select="tei:death/tei:placeName/tei:settlement"/>
        </xsl:variable>
        <xsl:variable name="Dcountry">
            <xsl:value-of select="tei:birth/tei:placeName/tei:country"/>
        </xsl:variable>
        [Destinatario della lettera]
        <xsl:text disable-output-escaping="yes"><![CDATA[<br>]]></xsl:text>
        Nome: <xsl:copy-of select="$forename"/><xsl:text disable-output-escaping="yes"><![CDATA[<br>]]></xsl:text>
        Cognome da nubile: <xsl:copy-of select="$surname"/><xsl:text disable-output-escaping="yes"><![CDATA[<br>]]></xsl:text>
        Cognome da sposata: <xsl:copy-of select="$surname2"/><xsl:text disable-output-escaping="yes"><![CDATA[<br>]]></xsl:text>
        Data di nascita: <xsl:copy-of select="$birth"/><xsl:text disable-output-escaping="yes"><![CDATA[<br>]]></xsl:text>
        Luogo di nascita: <xsl:copy-of select="$Bsettlement"/>, <xsl:copy-of select="$Bcountry"/><xsl:text disable-output-escaping="yes"><![CDATA[<br>]]></xsl:text>
        Data di morte: <xsl:copy-of select="$death"/><xsl:text disable-output-escaping="yes"><![CDATA[<br>]]></xsl:text>
        Luogo di morte: <xsl:copy-of select="$Dsettlement"/>, <xsl:copy-of select="$Dcountry"/><xsl:text disable-output-escaping="yes"><![CDATA[<br>]]></xsl:text>
        Fonte: 
        <xsl:element name="a">
            <xsl:attribute name="href">
                <xsl:value-of select="tei:note/@source"/>
            </xsl:attribute>
            <sup>Seminara2017</sup>
        </xsl:element> 
        <xsl:text disable-output-escaping="yes"><![CDATA[<br><br>]]></xsl:text>
    </xsl:template>
    <!-- Francesco Martini -->
    <xsl:template match="//tei:div[@type='lists']/tei:listPerson/tei:person[@xml:id='FM']">
        <xsl:variable name="forename">
            <xsl:value-of select="tei:persName/tei:forename"/>
        </xsl:variable>
        <xsl:variable name="surname">
            <xsl:value-of select="tei:persName/tei:surname"/>
        </xsl:variable>
        [Coniuge di Virginia Giovio della Torre]
        <xsl:text disable-output-escaping="yes"><![CDATA[<br>]]></xsl:text>
        Nome: <xsl:copy-of select="$forename"/> <xsl:text disable-output-escaping="yes"><![CDATA[<br>]]></xsl:text>
        Cognome: <xsl:copy-of select="$surname"/><xsl:text disable-output-escaping="yes"><![CDATA[<br>]]></xsl:text>
        Fonte:  
        <xsl:element name="a">
            <xsl:attribute name="href">
                <xsl:value-of select="tei:note/@source"/>
            </xsl:attribute>
            <sup>Seminara2017</sup>
        </xsl:element> 
        <xsl:text disable-output-escaping="yes"><![CDATA[<br><br>]]></xsl:text>
    </xsl:template>
    <!-- Francesco Hayez -->
      <xsl:template match="//tei:div[@type='lists']/tei:listPerson/tei:person[@xml:id='FH']">
        <xsl:variable name="forename">
            <xsl:value-of select="tei:persName/tei:forename"/>
        </xsl:variable>
        <xsl:variable name="surname">
            <xsl:value-of select="tei:persName/tei:surname"/>
        </xsl:variable>
         <xsl:variable name="birth">
            <xsl:value-of select="tei:birth/tei:date"/>
        </xsl:variable>
        <xsl:variable name="Bsettlement">
            <xsl:value-of select="tei:birth/tei:placeName/tei:settlement"/>
        </xsl:variable> 
        <xsl:variable name="Bcountry">
            <xsl:value-of select="tei:birth/tei:placeName/tei:country"/>
        </xsl:variable> 
        <xsl:variable name="death">
            <xsl:value-of select="tei:death/tei:date"/>
        </xsl:variable> 
        <xsl:variable name="Dsettlement">
            <xsl:value-of select="tei:death/tei:placeName/tei:settlement"/>
        </xsl:variable>
        <xsl:variable name="Dcountry">
            <xsl:value-of select="tei:death/tei:placeName/tei:country"/>
        </xsl:variable>
         <xsl:variable name="treccani">
            <xsl:value-of select="tei:persName/tei:ref/@target"/>  
        </xsl:variable>
        [Pittore]
        <xsl:text disable-output-escaping="yes"><![CDATA[<br>]]></xsl:text>
        Nome: <xsl:copy-of select="$forename"/> <xsl:text disable-output-escaping="yes"><![CDATA[<br>]]></xsl:text>
        Cognome: <xsl:copy-of select="$surname"/><xsl:text disable-output-escaping="yes"><![CDATA[<br>]]></xsl:text>
        Data di nascita: <xsl:copy-of select="$birth"/><xsl:text disable-output-escaping="yes"><![CDATA[<br>]]></xsl:text>
        Luogo di nascita: <xsl:copy-of select="$Bsettlement"/>, <xsl:copy-of select="$Bcountry"/><xsl:text disable-output-escaping="yes"><![CDATA[<br>]]></xsl:text>
        Data di morte: <xsl:copy-of select="$death"/><xsl:text disable-output-escaping="yes"><![CDATA[<br>]]></xsl:text>
        Luogo di morte: <xsl:copy-of select="$Dsettlement"/>, <xsl:copy-of select="$Dcountry"/><xsl:text disable-output-escaping="yes"><![CDATA[<br>]]></xsl:text>
        Fonti:
        <xsl:element name="a">                     
            <xsl:attribute name="href">
                <xsl:value-of select="$treccani"/>
            </xsl:attribute>
            <sup>Treccani</sup>
        </xsl:element>
        <xsl:element name="a">
            <xsl:attribute name="href">
                <xsl:value-of select="tei:note/@source"/>
            </xsl:attribute>
            <sup>Seminara2017</sup>
        </xsl:element> 
        <xsl:text disable-output-escaping="yes"><![CDATA[<br><br>]]></xsl:text>
    </xsl:template>
    <!-- Pietro Ponzani -->
    <xsl:template match="//tei:div[@type='lists']/tei:listPerson/tei:person[@xml:id='PP']">
        <xsl:variable name="forename">
            <xsl:value-of select="tei:persName/tei:forename"/>
        </xsl:variable>
        <xsl:variable name="surname">
            <xsl:value-of select="tei:persName/tei:surname"/>
        </xsl:variable>
        [Amico di Vincenzo Bellini]
        <xsl:text disable-output-escaping="yes"><![CDATA[<br>]]></xsl:text>
        Nome: <xsl:copy-of select="$forename"/> <xsl:text disable-output-escaping="yes"><![CDATA[<br>]]></xsl:text>
        Cognome: <xsl:copy-of select="$surname"/>
        <xsl:text disable-output-escaping="yes"><![CDATA[<br><br>]]></xsl:text>
    </xsl:template>
    <!-- Graziella Seminara -->
    <xsl:template match="//tei:div[@type='lists']/tei:listPerson/tei:person[@xml:id='GS']">
        <xsl:variable name="forename">
            <xsl:value-of select="tei:persName/tei:forename"/>
        </xsl:variable>
        <xsl:variable name="surname">
            <xsl:value-of select="tei:persName/tei:surname"/>
        </xsl:variable>
        <xsl:variable name="birth">
            <xsl:value-of select="tei:birth/tei:date"/>
        </xsl:variable>
        <xsl:variable name="Bsettlement">
            <xsl:value-of select="tei:birth/tei:placeName/tei:settlement"/>
        </xsl:variable> 
        <xsl:variable name="Bcountry">
            <xsl:value-of select="tei:birth/tei:placeName/tei:country"/>
        </xsl:variable> 
        <xsl:variable name="viaf">
            <xsl:value-of select="//tei:div[@type='lists']/tei:listPerson/tei:person[@xml:id='GS']/@sameAs"/>
        </xsl:variable>
        [Editore 2017]
        <xsl:text disable-output-escaping="yes"><![CDATA[<br>]]></xsl:text>
        Nome: <xsl:copy-of select="$forename"/> <xsl:text disable-output-escaping="yes"><![CDATA[<br>]]></xsl:text>
        Cognome: <xsl:copy-of select="$surname"/> <xsl:text disable-output-escaping="yes"><![CDATA[<br>]]></xsl:text>
        Data di nascita: <xsl:copy-of select="$birth"/><xsl:text disable-output-escaping="yes"><![CDATA[<br>]]></xsl:text>
        Luogo di nascita: <xsl:copy-of select="$Bsettlement"/>, <xsl:copy-of select="$Bcountry"/><xsl:text disable-output-escaping="yes"><![CDATA[<br>]]></xsl:text>
        Fonte:
        <xsl:element name="a">                        
            <xsl:attribute name="href">
                <xsl:value-of select="$viaf"/>
            </xsl:attribute>
            <sup>VIAF</sup>
        </xsl:element> 
        <xsl:text disable-output-escaping="yes"><![CDATA[<br><br>]]></xsl:text>
    </xsl:template>
    <!-- Carmelo Neri -->
    <xsl:template match="//tei:div[@type='lists']/tei:listPerson/tei:person[@xml:id='CN']">
        <xsl:variable name="forename">
            <xsl:value-of select="tei:persName/tei:forename"/>
        </xsl:variable>
        <xsl:variable name="surname">
            <xsl:value-of select="tei:persName/tei:surname"/>
        </xsl:variable>
        <xsl:variable name="birth">
            <xsl:value-of select="tei:birth/tei:date"/>
        </xsl:variable>
        <xsl:variable name="viaf">
            <xsl:value-of select="//tei:div[@type='lists']/tei:listPerson/tei:person[@xml:id='CN']/@sameAs"/>
        </xsl:variable>
        [Editore 2005]
        <xsl:text disable-output-escaping="yes"><![CDATA[<br>]]></xsl:text>
        Nome: <xsl:copy-of select="$forename"/> <xsl:text disable-output-escaping="yes"><![CDATA[<br>]]></xsl:text>
        Cognome: <xsl:copy-of select="$surname"/> <xsl:text disable-output-escaping="yes"><![CDATA[<br>]]></xsl:text>
        Data di nascita: <xsl:copy-of select="$birth"/><xsl:text disable-output-escaping="yes"><![CDATA[<br>]]></xsl:text>
        Fonte:
        <xsl:element name="a">                        
            <xsl:attribute name="href">
                <xsl:value-of select="$viaf"/>
            </xsl:attribute>
            <sup>VIAF</sup>
        </xsl:element> 
        <xsl:text disable-output-escaping="yes"><![CDATA[<br><br>]]></xsl:text>
    </xsl:template>
    <!-- Luisa Cambi -->
    <xsl:template match="//tei:div[@type='lists']/tei:listPerson/tei:person[@xml:id='LC']">
        <xsl:variable name="forename">
            <xsl:value-of select="tei:persName/tei:forename"/>
        </xsl:variable>
        <xsl:variable name="surname">
            <xsl:value-of select="tei:persName/tei:surname"/>
        </xsl:variable>
        <xsl:variable name="viaf">
            <xsl:value-of select="//tei:div[@type='lists']/tei:listPerson/tei:person[@xml:id='LC']/@sameAs"/>
        </xsl:variable>
        [Editore 1943]
        <xsl:text disable-output-escaping="yes"><![CDATA[<br>]]></xsl:text>
        Nome: <xsl:copy-of select="$forename"/><xsl:text disable-output-escaping="yes"><![CDATA[<br>]]></xsl:text>
        Cognome: <xsl:copy-of select="$surname"/><xsl:text disable-output-escaping="yes"><![CDATA[<br>]]></xsl:text>
        Fonte:
        <xsl:element name="a">                        
            <xsl:attribute name="href">
                <xsl:value-of select="$viaf"/>
            </xsl:attribute>
            <sup>VIAF</sup>
        </xsl:element> 
        <xsl:text disable-output-escaping="yes"><![CDATA[<br><br>]]></xsl:text>
    </xsl:template>
    <!-- Antonino Amore -->
    <xsl:template match="//tei:div[@type='lists']/tei:listPerson/tei:person[@xml:id='AA']">
        <xsl:variable name="forename">
            <xsl:value-of select="tei:persName/tei:forename"/>
        </xsl:variable>
        <xsl:variable name="surname">
            <xsl:value-of select="tei:persName/tei:surname"/>
        </xsl:variable>
        [Editore 1894]
        <xsl:text disable-output-escaping="yes"><![CDATA[<br>]]></xsl:text>
        Nome: <xsl:copy-of select="$forename"/> <xsl:text disable-output-escaping="yes"><![CDATA[<br>]]></xsl:text>
        Cognome: <xsl:copy-of select="$surname"/>
        <xsl:text disable-output-escaping="yes"><![CDATA[<br><br>]]></xsl:text>
    </xsl:template>

    <!-- listPlace -->
    <xsl:template match="//tei:div[@type='lists']/tei:listPlace/tei:place">
        <li>
            <xsl:variable name="listPlace" select="tei:placeName/@ref"/>
            <xsl:element name="a">
                <xsl:attribute name="id">
                    <xsl:value-of select="@xml:id"/>
                </xsl:attribute>
                <xsl:for-each select="*">
                    <xsl:choose>
                        <xsl:when test="tei:bibl">
                            [pagina <xsl:value-of select="tei:bibl"/>: <xsl:value-of select="tei:p"/>]
                            <xsl:element name="a">
                                <xsl:attribute name="href">
                                    <xsl:value-of select="@source"/>
                                </xsl:attribute>                               
                                <sup>[nota]</sup>
                            </xsl:element>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="."/> 
                            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]></xsl:text>
                        </xsl:otherwise>
                    </xsl:choose>
                    
                </xsl:for-each>
                <xsl:element name="a">
                        
                    <xsl:attribute name="href">
                        <xsl:value-of select="substring-before( $listPlace, ' ' )"/>
                    </xsl:attribute>
                    <sub>geonames</sub>

                </xsl:element>, 
                <xsl:element name="a">
                        
                    <xsl:attribute name="href">
                        <xsl:value-of select="substring-after( $listPlace, ' ' )"/>
                    </xsl:attribute>
                    <sub>Treccani</sub>

                </xsl:element>
            </xsl:element>
        </li>
    </xsl:template>
</xsl:stylesheet>