Class commande.BS.ServiceFichierSinistreReservation Extends Ens.BusinessService
{

Property Adapter As EnsLib.File.InboundAdapter;

Parameter ADAPTER = "EnsLib.File.InboundAdapter";

Method OnProcessInput(pInput As %File, pOutput As %RegisteredObject) As %Status
{

    set line = pInput.ReadLine()

    set msg = ##class(commande.msg.creerFichierSinistreReservationDmde).%New()
    set msg.plaque = $PIECE(line,";",1)
    set msg.codeSinistre = $PIECE(line,";",2)
    set msg.libelleSinistre = $PIECE(line,";",3)
    set msg.detailSinistre = $PIECE(line,";",4)

    do ..SendRequestSync("GestionSinistre",msg, .response)

    Return $$$OK
}

}

