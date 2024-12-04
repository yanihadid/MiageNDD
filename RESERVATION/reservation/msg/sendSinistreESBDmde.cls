/// Description
Class reservation.msg.sendSinistreESBDmde Extends Ens.Request
{

Property sinistre As reservation.webObjet.wsSinistre;

Property plaque As %String;

Storage Default
{
<Data name="sendSinistreESBDmdeDefaultData">
<Subscript>"sendSinistreESBDmde"</Subscript>
<Value name="1">
<Value>sinistre</Value>
</Value>
<Value name="2">
<Value>plaque</Value>
</Value>
</Data>
<DefaultData>sendSinistreESBDmdeDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
