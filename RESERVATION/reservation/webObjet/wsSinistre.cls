Class reservation.webObjet.wsSinistre Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor)
{

Property codeSinistre As %String;

Property libelleSinistre As %String;

Property detailSinistre As %String(MAXLEN = 4000);

Storage Default
{
<Data name="wsSinistreState">
<Value name="1">
<Value>codeSinistre</Value>
</Value>
<Value name="2">
<Value>libelleSinistre</Value>
</Value>
<Value name="3">
<Value>detailSinistre</Value>
</Value>
</Data>
<State>wsSinistreState</State>
<StreamLocation>^reservation.web83ED.wsSinistreS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
