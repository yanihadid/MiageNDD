Class commande.BS.ServiceVoiture Extends Ens.BusinessService
{

/// Name of the WebService
Parameter SERVICENAME = "ServiceVoiture";

Method OnProcessInput(pInput As %RegisteredObject, Output pOutput As %RegisteredObject, ByRef pHint As %String) As %Status
{
    set tsc = $CASE(pHint,
        "CommanderVoiture":..CommanderVoiture(pInput,.pOutput),
        "SupprimerVoiture":..SupprimerVoiture(pInput,.pOutput),
        "RechercherVoiture":..SupprimerVoiture(pInput,.pOutput),
	 	: $$$ERROR($$$NotImplemented)
    )
    Quit tsc
}

Method CommanderVoiture(pInput As %RegisteredObject, Output pOutput As %RegisteredObject) As %Status
{
    ///set tsc = ..SendRequestSync("Voiture",pInput,.pOutput)

    set pOutput = ##class(commande.msg.basic.reponse).%New()
    set pOutput.codeRetour = "OK - Voiture Créée"
    Quit $$$OK
}

Method SupprimerVoiture(pInput As %RegisteredObject, Output pOutput As %RegisteredObject) As %Status
{
    ///set tsc = ..SendRequestSync("Voiture",pInput,.pOutput)

    set pOutput = ##class(commande.msg.basic.reponse).%New()
    set pOutput.codeRetour = "OK - Voiture Supprimée"
    Quit $$$OK
}

Method RechercherVoiture(pInput As %RegisteredObject, Output pOutput As %RegisteredObject) As %Status
{
    ///set tsc = ..SendRequestSync("Voiture",pInput,.pOutput)

    set pOutput = ##class(commande.msg.basic.reponse).%New()
    set pOutput.codeRetour = "OK - Voiture recherchée"
    Quit $$$OK
}

}
