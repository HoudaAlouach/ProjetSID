xquery version "1.0";
 <ARTICLES>
{
for $l  in doc("01NET1.xml")//ARTICLES/ARTICLE
return
<ARTICLE>
{
for $f  in $l//TI/MC
return
<CH1>
<MC>{$f /./text()} </MC> {$l /NA}
</CH1>
}

{
for $a  in $l/AU
return
<CH2>
<AU>{$a  /./text()} </AU> {$l /NA}
</CH2>
}
{
for $n  in $l//DP
return
<CH3>
<DP>{$n /./text()} </DP> {$l /NA}
</CH3>
}
</ARTICLE>
}
 </ARTICLES>