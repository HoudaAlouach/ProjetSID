xquery version "1.0";
 <BREVETS>
{
for $l  in doc("USPTO.xml")//BREVETS/BREVET
return
<BREVET>
<NA>{count($l //preceding-sibling::BREVET)+1}</NA>

<TI>
{
for $a  in $l/TI//MC
return

<MC>{$a /./text()}</MC>

}
</TI>

<AUS>
{
for $b  in $l/AUS//AU
return
<AU>{$b /./text()}</AU>
}
</AUS>

<DP>{$l/DP/text()}</DP>

<PAS>
{
for $bb  in $l/AUS//AU/PA
return
<PA>{$bb /./text()}</PA>
}
</PAS>

</BREVET>
}
 </BREVETS>