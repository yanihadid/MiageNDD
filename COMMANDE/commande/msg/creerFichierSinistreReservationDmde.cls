Class commande.msg.creerFichierSinistreReservationDmde Extends Ens.Request
{

Property plaque As %String;

Property codeSinistre As %String;

Property libelleSinistre As %String;

Property detailSinistre As %String;

Storage Default
{
<Data name="creerFichierSinistreReservationDmdeDefaultData">
<Subscript>"creerFichierSinistreReservationDmde"</Subscript>
<Value name="1">
<Value>plaque</Value>
</Value>
<Value name="2">
<Value>codeSinistre</Value>
</Value>
<Value name="3">
<Value>libelleSinistre</Value>
</Value>
<Value name="4">
<Value>detailSinistre</Value>
</Value>
</Data>
<DefaultData>creerFichierSinistreReservationDmdeDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
