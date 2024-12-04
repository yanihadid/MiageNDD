Class reservation.BS.API Extends reservation.REST.Base
{

Parameter Version = "1.0.6";

XData UrlMap [ XMLNamespace = "http://www.intersystems.com/urlmap" ]
{
<Routes>
<!-- Server Info -->
<Route Url="/" Method="GET" Call="GetInfo" Cors="true"/>
<!-- Swagger specs -->
<Route Url="/_spec" Method="GET" Call="SwaggerSpec" />
<!-- Créer une voiture-->
<Route Url="/ROUTETODEFINE" Method="POST" Call="CreerVoiture"/>
<!-- Déclarer un sinistre suite à un retour retour-->
<Route Url="/voiture/:plaque/sinistre" Method="POST" Call="VoitureCreerSinistre"/>



<!-- Reserver une voiture-->
<Route Url="/ROUTETODEFINE" Method="?" Call="ReserverVoiture"/>
<Route Url="/ROUTETODEFINE" Method="?" Call="SupprimerReservationVoiture"/>
<Route Url="/ROUTETODEFINE" Method="?" Call="ModifierReservationVoiture"/>
<Route Url="/ROUTETODEFINE" Method="?" Call="RechercherReservationVoiture"/>
<Route Url="/ROUTETODEFINE" Method="?" Call="RecupérerCategorieVoitureDisponible"/>
</Routes>
}

/// PersonsREST general information
ClassMethod GetInfo() As %Status
{
  SET version = ..#Version
  SET info = {
    "version": (version)
  }
  RETURN ..%ProcessResult($$$OK, info)
}

ClassMethod SwaggerSpec() As %Status
{
  Set tSC = ##class(%REST.API).GetWebRESTApplication($NAMESPACE, %request.Application, .swagger)
  Do swagger.info.%Remove("x-ISC_Namespace")
  Set swagger.basePath = "/api/reservation"
  Set swagger.info.title = "InterSystems IRIS REST CRUD demo"
  Set swagger.info.version = "0.1"
  Set swagger.host = "localhost:52773"
  Return ..%ProcessResult($$$OK, swagger)
}

ClassMethod CreerVoiture() As %Status
{
    #dim tSC As %Status = $$$OK
    Set msg = ##class(reservation.msg.creerVoitureDmde).%New()

    Set data=%request.Content
    $$$TOE(tSC,msg.%JSONImport(data))

    set tSC = ##class(Ens.Director).CreateBusinessService("ServiceVoiture",.tService) if $$$ISERR(tSC) quit 
    set tSC = tService.ProcessInput(msg,.response,"creerVoiture")
    Set %response.Status = 200
    Set %response.ContentType = ..#CONTENTTYPEJSON
    Do response.%JSONExport()
    Quit tSC
}

ClassMethod VoitureCreerSinistre(plaque As %String) As %Status
{
    #dim tSC As %Status = $$$OK
    Set msg = ##class(reservation.msg.voitureCreerSinistreDmde).%New()

    Set data=%request.Content
    $$$TOE(tSC,msg.%JSONImport(data))
    set msg.plaque = plaque
    set tSC = ##class(Ens.Director).CreateBusinessService("ServiceVoiture",.tService) if $$$ISERR(tSC) quit 
    set tSC = tService.ProcessInput(msg,.response,"voitureCreerSinistre")
    Set %response.Status = 200
    Set %response.ContentType = ..#CONTENTTYPEJSON
    Do response.%JSONExport()
    Quit tSC
}

ClassMethod ReserverVoiture() As %Status
{
	  #dim tSC As %Status = $$$OK
    Set msg = ##class(reservation.msg.reserverVoitureDmde).%New()


    //On récupére les données de la requête
    Set data=%request.Content
    do msg.%JSONImport(data)
    //$$$TOE(tSC,msg.%JSONImport(data))


    set tSC = ##class(Ens.Director).CreateBusinessService("ServiceReservation",.tService) if $$$ISERR(tSC) quit tSC
    set tSC = tService.ProcessInput(msg,.response,"ReserverVoiture")

    Set %response.Status = 200
    Set %response.ContentType = ..#CONTENTTYPEJSON
    Do response.%JSONExport()

    Quit tSC
}

ClassMethod SupprimerReservationVoiture() As %Status
{
	  #dim tSC As %Status = $$$OK
    Set msg = ##class(reservation.msg.supprimerReservationVoitureDmde).%New()


    //On récupére les données de la requête
    Set data=%request.Content
    do msg.%JSONImport(data)
    //$$$TOE(tSC,msg.%JSONImport(data))


    set tSC = ##class(Ens.Director).CreateBusinessService("ServiceReservation",.tService) if $$$ISERR(tSC) quit tSC
    set tSC = tService.ProcessInput(msg,.response,"SupprimerReservationVoiture")

    Set %response.Status = 200
    Set %response.ContentType = ..#CONTENTTYPEJSON
    Do response.%JSONExport()

    Quit tSC
}

ClassMethod ModifierReservationVoiture() As %Status
{
	  #dim tSC As %Status = $$$OK
    Set msg = ##class(reservation.msg.modifierReservationVoitureDmde).%New()


    //On récupére les données de la requête
    Set data=%request.Content
    do msg.%JSONImport(data)
    //$$$TOE(tSC,msg.%JSONImport(data))


    set tSC = ##class(Ens.Director).CreateBusinessService("ServiceReservation",.tService) if $$$ISERR(tSC) quit tSC
    set tSC = tService.ProcessInput(msg,.response,"ModifierReservationVoiture")

    Set %response.Status = 200
    Set %response.ContentType = ..#CONTENTTYPEJSON
    Do response.%JSONExport()

    Quit tSC
}

ClassMethod RechercherReservationVoiture() As %Status
{
	  #dim tSC As %Status = $$$OK
    Set msg = ##class(reservation.msg.rechercherReservationVoitureDmde).%New()


    //On récupére les données de la requête
    Set data=%request.Content
    do msg.%JSONImport(data)
    //$$$TOE(tSC,msg.%JSONImport(data))


    set tSC = ##class(Ens.Director).CreateBusinessService("ServiceReservation",.tService) if $$$ISERR(tSC) quit tSC
    set tSC = tService.ProcessInput(msg,.response,"RechercherReservationVoiture")

    Set %response.Status = 200
    Set %response.ContentType = ..#CONTENTTYPEJSON
    Do response.%JSONExport()

    Quit tSC
}

ClassMethod RecupererCategorieVoitureDisponible() As %Status
{
	  #dim tSC As %Status = $$$OK
    Set msg = ##class(reservation.msg.recupererCategorieVoitureDisponibleDmde).%New()


    //On récupére les données de la requête
    Set data=%request.Content
    do msg.%JSONImport(data)
    //$$$TOE(tSC,msg.%JSONImport(data))


    set tSC = ##class(Ens.Director).CreateBusinessService("ServiceReservation",.tService) if $$$ISERR(tSC) quit tSC
    set tSC = tService.ProcessInput(msg,.response,"RecupererCategorieVoitureDisponible")

    Set %response.Status = 200
    Set %response.ContentType = ..#CONTENTTYPEJSON
    Do response.%JSONExport()

    Quit tSC
}

}
