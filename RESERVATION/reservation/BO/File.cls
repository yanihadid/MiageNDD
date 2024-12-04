/// Description
Class reservation.BO.File Extends Ens.BusinessOperation
{

Property Adapter As EnsLib.File.OutboundAdapter;

Parameter ADAPTER = "EnsLib.File.OutboundAdapter";

Parameter INVOCATION = "Queue";

Method pushSinistreFile(pRequest As reservation.msg.pushSinistreFileDmde, Output pResponse As reservation.msg.pushSinistreFileRpse) As %Status
{
    set pResponse = ##class(reservation.msg.pushSinistreFileRpse).%New()

    set file = ##class(%Library.FileBinaryStream).%New()

    do file.Write(pRequest.plaque_";"_pRequest.sinistre.codeSinistre_";"_pRequest.sinistre.libelleSinistre_";"_pRequest.sinistre.detailSinistre)

    set tsc = ..Adapter.PutStream("fichierSinistre"_$TR($TR($ZDT($ZDTH($ZTS,-3),3,9),":/-","")," ","_")_".csv",file)
    


    
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
    <MapItem MessageType="reservation.msg.pushSinistreFileDmde">
        <Method>pushSinistreFile</Method>
    </MapItem>
</MapItems>
}

}
