/// Description
Class reservation.BO.ESB Extends EnsLib.REST.Operation
{

Property Adapter As EnsLib.HTTP.OutboundAdapter;

Parameter ADAPTER = "EnsLib.HTTP.OutboundAdapter";

Parameter INVOCATION = "Queue";

Method sendSinistreESB(pRequest As reservation.msg.sendSinistreESBDmde, Output pResponse As reservation.msg.sendSinistreESBRpse) As %Status
{
    set pResponse = ##class(reservation.msg.sendSinistreESBRpse).%New()
    set httpRequest = ##class(%Net.HttpRequest).%New()

    do ##class(reservation.Transform.TransformSinistreFromReservationToESB).Transform(pRequest,.targetFormat)

    do ..ObjectToJSONStream(targetFormat, .EntityBody)

    set httpRequest.EntityBody = EntityBody

    set tsc = ..Adapter.SendFormDataArray(.httpResponse, "POST", httpRequest)

    if tsc {
        set pResponse.codeRetour = "OK"
    }
    else{
        set pResponse.codeRetour = "KO"
    }
    Quit $$$OK
}

XData MessageMap
{
<MapItems>
    <MapItem MessageType="reservation.msg.sendSinistreESBDmde">
        <Method>sendSinistreESB</Method>
    </MapItem>
</MapItems>
}

}
