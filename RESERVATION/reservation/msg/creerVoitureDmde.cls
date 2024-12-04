Class reservation.msg.creerVoitureDmde Extends (Ens.Request, %JSON.Adaptor)
{

Property plaque As %String(MAXLEN = 9, MINLEN = 9);

Storage Default
{
<Data name="creerVoitureDmdeDefaultData">
<Subscript>"creerVoitureDmde"</Subscript>
<Value name="1">
<Value>plaque</Value>
</Value>
</Data>
<DefaultData>creerVoitureDmdeDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
