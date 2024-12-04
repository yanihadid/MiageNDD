Class reservation.data.Voiture Extends (%Persistent, %JSON.Adaptor)
{

Property plaque As %String(MAXLEN = 9, MINLEN = 9);

Index consulterParPlaque On plaque;

Storage Default
{
<Data name="VoitureDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>plaque</Value>
</Value>
</Data>
<DataLocation>^reservation.data.VoitureD</DataLocation>
<DefaultData>VoitureDefaultData</DefaultData>
<IdLocation>^reservation.data.VoitureD</IdLocation>
<IndexLocation>^reservation.data.VoitureI</IndexLocation>
<StreamLocation>^reservation.data.VoitureS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
