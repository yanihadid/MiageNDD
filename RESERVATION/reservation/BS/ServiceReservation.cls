Class reservation.BS.ServiceReservation Extends Ens.BusinessService
{

/// Name of the WebService
Parameter SERVICENAME = "ServiceReservation";

Method OnProcessInput(pInput As %RegisteredObject, Output pOutput As %RegisteredObject, ByRef pHint As %String) As %Status
{
    set tsc = $CASE(pHint,
        "ReserverVoiture":..reserverVoiture(pInput,.pOutput),
        "SupprimerReservationVoiture":..SupprimerReservationVoiture(pInput,.pOutput),
        "ModifierReservationVoiture":..ModifierReservationVoiture(pInput,.pOutput),
        "RechercherReservationVoiture":..RechercherReservationVoiture(pInput,.pOutput),
        "RecupererCategorieVoitureDisponible":..RecupererCategorieVoitureDisponible(pInput,.pOutput),
	 	: $$$ERROR($$$NotImplemented)
    )
    Quit tsc
}

Method reserverVoiture(pInput As %RegisteredObject, Output pOutput As %RegisteredObject) As %Status
{
    //set tsc = ..SendRequestSync("Reservation",pInput,.pOutput)

    set pOutput = ##class(reservation.msg.basic.reponse).%New()
    set pOutput.codeRetour = "OK - Reservation Créée"
    Quit $$$OK
}
Method SupprimerReservationVoiture(pInput As %RegisteredObject, Output pOutput As %RegisteredObject) As %Status
{
    //set tsc = ..SendRequestSync("Reservation",pInput,.pOutput)

    set pOutput = ##class(reservation.msg.basic.reponse).%New()
    set pOutput.codeRetour = "OK - Reservation Supprimée"
    Quit $$$OK
}
Method ModifierReservationVoiture(pInput As %RegisteredObject, Output pOutput As %RegisteredObject) As %Status
{
    //set tsc = ..SendRequestSync("Reservation",pInput,.pOutput)

    set pOutput = ##class(reservation.msg.basic.reponse).%New()
    set pOutput.codeRetour = "OK - Reservation Modifiée"
    Quit $$$OK
}
Method RechercherReservationVoiture(pInput As %RegisteredObject, Output pOutput As %RegisteredObject) As %Status
{
    //set tsc = ..SendRequestSync("Reservation",pInput,.pOutput)

    set pOutput = ##class(reservation.msg.basic.reponse).%New()
    set pOutput.codeRetour = "OK - Reservation Recherchée"
    Quit $$$OK
}
Method RecupererCategorieVoitureDisponible(pInput As %RegisteredObject, Output pOutput As %RegisteredObject) As %Status
{
    //set tsc = ..SendRequestSync("Reservation",pInput,.pOutput)

    set pOutput = ##class(reservation.msg.basic.reponse).%New()
    set pOutput.codeRetour = "KO"
    set pOutput.libErreur = "Aucune catégorie disponible pour ces dates"
    Quit $$$OK
}

}

