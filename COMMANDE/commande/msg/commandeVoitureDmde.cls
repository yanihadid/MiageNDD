Class commande.msg.commandeVoitureDmde Extends (Ens.Request, %JSON.Adaptor)
{

Property marque As %String;

Property modele As %String;

Property couleur As %String;

Storage Default
{
<Data name="commandeVoitureDmdeDefaultData">
<Subscript>"commandeVoitureDmde"</Subscript>
<Value name="1">
<Value>marque</Value>
</Value>
<Value name="2">
<Value>modele</Value>
</Value>
<Value name="3">
<Value>couleur</Value>
</Value>
</Data>
<DefaultData>commandeVoitureDmdeDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
