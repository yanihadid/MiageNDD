Class reservation.msg.voitureCreerSinistreDmde Extends (Ens.Request, %JSON.Adaptor)
{

Property plaque As %String;

Property sinistre As reservation.webObjet.wsSinistre;

Storage Default
{
<Data name="voitureCreerSinistreDmdeDefaultData">
<Subscript>"voitureCreerSinistreDmde"</Subscript>
<Value name="1">
<Value>plaque</Value>
</Value>
<Value name="2">
<Value>sinistre</Value>
</Value>
</Data>
<DefaultData>voitureCreerSinistreDmdeDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
