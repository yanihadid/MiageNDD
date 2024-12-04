Class reservation.msg.recupererVoitureDisponibleDmde Extends (Ens.Request, %JSON.Adaptor)
{

Property categorie As %String;

Property dateDebut As %TimeStamp;

Property dateFin As %TimeStamp;

Storage Default
{
<Data name="recupererVoitureDisponibleDefaultData">
<Subscript>"recupererVoitureDisponible"</Subscript>
<Value name="1">
<Value>categorie</Value>
</Value>
<Value name="2">
<Value>dateDebut</Value>
</Value>
<Value name="3">
<Value>dateFin</Value>
</Value>
</Data>
<DefaultData>recupererVoitureDisponibleDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
