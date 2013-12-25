xquery version "1.0";
 <BREVETS>
{
for $l  in doc("EspaceNet.xml")//BREVETS/BREVET
return
<BREVET>
{
for $f  in $l//TI/MC
return
<CH1>
<MC>{$f /./text()} </MC> {$l /NA}
</CH1>
}

{
for $a  in $l/AUS//AU
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

{
for $b  in $l/PAS//PA
return
<CH4>
<PA>{$b /./text()} </PA> {$l /NA}
</CH4>
}


</BREVET>
}
 </BREVETS>