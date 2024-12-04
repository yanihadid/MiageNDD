Class reservation.BO.Sinistre Extends Ens.BusinessOperation
{

Property Adapter As Ens.OutboundAdapter;

Parameter ADAPTER = "Ens.OutboundAdapter";

Parameter INVOCATION = "Queue";

Method creerSinistre(pRequest As reservation.msg.voitureCreerSinistreDmde, Output pResponse As reservation.msg.voitureCreerSinistreRpse) As %Status
{
    
    set pResponse = ##class(reservation.msg.voitureCreerSinistreRpse).%New()
    set sinistre = ##class(reservation.data.Sinistre).%New()
    set sinistre.codeSinistre = pRequest.sinistre.codeSinistre
    set sinistre.libelleSinistre = pRequest.sinistre.libelleSinistre
    set sinistre.detailSinistre = pRequest.sinistre.detailSinistre
    if (##class(reservation.data.Voiture).consulterParPlaqueExists(pRequest.plaque,.idVoiture)){
        set sinistre.voiture = ##class(reservation.data.Voiture).%OpenId(idVoiture)
    }
    else{
        set pResponse.codeRetour = "KO"
        set pResponse.libErreur = "Voiture introuvable"
    }
    set tsc = sinistre.%Save()

    set pResponse.codeRetour = "OK"

    Quit $$$OK
}

XData MessageMap
{
<MapItems>
    <MapItem MessageType="reservation.msg.voitureCreerSinistreDmde">
        <Method>creerSinistre</Method>
    </MapItem>
</MapItems>
}

}

