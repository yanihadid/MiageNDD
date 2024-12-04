Class esb.msg.pushSinistreFileDmde Extends (Ens.Request, %JSON.Adaptor)
{

Property plaque As %String;

Property sinistre As esb.webObjet.wsSinistre;

Storage Default
{
<Data name="pushSinistreFileDefaultData">
<Subscript>"pushSinistreFile"</Subscript>
<Value name="1">
<Value>plaque</Value>
</Value>
<Value name="2">
<Value>sinistre</Value>
</Value>
</Data>
<DefaultData>pushSinistreFileDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}

