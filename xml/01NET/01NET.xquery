xquery version "1.0";
 <ARTICLES>
{
for $l  in doc("article01NET.xml")//ARTICLES/ARTICLE
return
<ARTICLE>
<NA>{count($l //preceding-sibling::ARTICLE)+1}</NA>

<TI>
{
for $a  in $l/TI//MC
return

<MC>{$a /./text()}</MC>

}
</TI>
<AU>{$l/AU/text()}</AU>
<DP>{$l/DP/text()}</DP>
</ARTICLE>
}
 </ARTICLES>