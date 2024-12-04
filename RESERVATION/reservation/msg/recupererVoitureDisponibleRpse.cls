Class reservation.msg.recupererVoitureDisponibleRpse Extends reservation.msg.basic.reponse
{

Property voitureDisponible As %String;

Storage Default
{
<Data name="recupererVoitureDisponibleRpseDefaultData">
<Subscript>"recupererVoitureDisponibleRpse"</Subscript>
<Value name="1">
<Value>voitureDisponible</Value>
</Value>
</Data>
<DefaultData>recupererVoitureDisponibleRpseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
