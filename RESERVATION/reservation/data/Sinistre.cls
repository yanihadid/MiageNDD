Class reservation.data.Sinistre Extends (%Persistent, %JSON.Adaptor)
{

Property codeSinistre As %String;

Property libelleSinistre As %String;

Property detailSinistre As %String(MAXLEN = 4000);

Property voiture As reservation.data.Voiture;

Storage Default
{
<Data name="SinistreDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>codeSinistre</Value>
</Value>
<Value name="3">
<Value>libelleSinistre</Value>
</Value>
<Value name="4">
<Value>detailSinistre</Value>
</Value>
<Value name="5">
<Value>voiture</Value>
</Value>
</Data>
<DataLocation>^reservation.data.SinistreD</DataLocation>
<DefaultData>SinistreDefaultData</DefaultData>
<ExtentSize>6</ExtentSize>
<IdLocation>^reservation.data.SinistreD</IdLocation>
<IndexLocation>^reservation.data.SinistreI</IndexLocation>
<Property name="%%CLASSNAME">
<AverageFieldSize>2</AverageFieldSize>
<Selectivity>100.0000%</Selectivity>
</Property>
<Property name="%%ID">
<AverageFieldSize>3</AverageFieldSize>
<Selectivity>1</Selectivity>
</Property>
<Property name="codeSinistre">
<AverageFieldSize>3.5</AverageFieldSize>
<Selectivity>50.0000%</Selectivity>
</Property>
<Property name="detailSinistre">
<AverageFieldSize>5</AverageFieldSize>
<Selectivity>50.0000%</Selectivity>
</Property>
<Property name="libelleSinistre">
<AverageFieldSize>5.5</AverageFieldSize>
<Selectivity>50.0000%</Selectivity>
</Property>
<Property name="voiture">
<AverageFieldSize>2.17</AverageFieldSize>
<Selectivity>50.0000%</Selectivity>
</Property>
<SQLMap name="IDKEY">
<BlockCount>-4</BlockCount>
</SQLMap>
<StreamLocation>^reservation.data.SinistreS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

