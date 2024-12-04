Class reservation.msg.creerReservationDmde Extends (Ens.Request, %JSON.Adaptor)
{

Property plaque As %String;

Property dateDebut As %TimeStamp;

Property dateFin As %TimeStamp;

Storage Default
{
<Data name="creerReservationDmdeDefaultData">
<Subscript>"creerReservationDmde"</Subscript>
<Value name="1">
<Value>plaque</Value>
</Value>
<Value name="2">
<Value>dateDebut</Value>
</Value>
<Value name="3">
<Value>dateFin</Value>
</Value>
</Data>
<DefaultData>creerReservationDmdeDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
