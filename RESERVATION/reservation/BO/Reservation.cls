Class reservation.BO.Reservation Extends Ens.BusinessOperation
{

Parameter INVOCATION = "Queue";

Method recupererVoitureDisponible(pRequest As reservation.msg.recupererVoitureDisponibleDmde, pResponse As reservation.msg.recupererVoitureDisponibleRpse) As %Status
{

    set pResponse = ##class(reservation.msg.recupererVoitureDisponibleRpse).%New()

    set sql = "select plaque from data.Voiture where categorie = '"_pRequest.categorie_"' and plaque not in ("
    set sql = sql_" SELECT voiture->plaque FROM data.Reservation where voiture->categorie = '"_pRequest.categorie_"'"
    set sql = sql_" and ((dateDebut >= '"_pRequest.dateDebut_"' and dateDebut <= '"_pRequest.dateFin_"' ) "
    set sql = sql_" or (dateFin >= '"_pRequest.dateDebut_"' and dateFin <= '"_pRequest.dateFin_"' ) "
    set sql = sql_" or (dateDebut <= '"_pRequest.dateDebut_"' and dateFin >= '"_pRequest.dateFin_"' ) "
    set sql = sql_" or (dateDebut >= '"_pRequest.dateDebut_"' and dateFin <= '"_pRequest.dateFin_"' )) "
    set sql = sql_ " ) "

    $$$TRACE(sql)
    set statement=##class(%SQL.Statement).%New() 
    do statement.%Prepare(sql)
    set SQLrequest = statement.%Execute()
    if SQLrequest.%Next(){
	    set pResponse.voitureDisponible = SQLrequest.%Get("plaque")
    }
    else{
        set pResponse.codeRetour = "KO"
        set pResponse.libErreur = "Pas de voiture disponible"
        Quit $$$OK
    }

    set pResponse.codeRetour = "OK"
    Quit $$$OK
}

Method creerReservation(pRequest As reservation.msg.creerReservationDmde, pResponse As reservation.msg.creerReservationRpse) As %Status
{

    set pResponse = ##class(reservation.msg.creerReservationRpse).%New()
    if (##class(reservation.data.Voiture).consulterParPlaqueExists(pRequest.plaque,.idVoiture)){
        set voiture = ##class(reservation.data.Voiture).%OpenId(idVoiture)

        set reservation = ##class(data.Reservation).%New()
        set reservation.voiture = voiture
        set reservation.dateDebut = pRequest.dateDebut
        set reservation.dateFin = pRequest.dateFin

        set tsc = reservation.%Save()

        if 'tsc {
            set pResponse.codeRetour = "KO"
            set pResponse.libErreur = "Erreur lors de la réservation : "_tsc
            Quit $$$OK
        }
    }
    else {
        set pResponse.codeRetour = "KO"
        set pResponse.libErreur = "Voiture inexistante"
        Quit $$$OK
    }


    set pResponse.codeRetour = "OK"
    Quit $$$OK
}

XData MessageMap
{
<MapItems>
    <MapItem MessageType="msg.recupererVoitureDisponibleDmde">
        <Method>recupererVoitureDisponible</Method>
    </MapItem>
    <MapItem MessageType="msg.creerReservationDmde">
        <Method>creerReservation</Method>
    </MapItem>
</MapItems>
}

}
