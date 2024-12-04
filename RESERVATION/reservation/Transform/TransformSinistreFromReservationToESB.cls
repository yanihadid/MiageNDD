Class reservation.Transform.TransformSinistreFromReservationToESB Extends Ens.DataTransformDTL [ DependsOn = (reservation.msg.sendSinistreESBDmde, reservation.webObjet.ESB.sinistreESB) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='reservation.msg.sendSinistreESBDmde' targetClass='reservation.webObjet.ESB.sinistreESB' create='new' language='objectscript' >
</transform>
}

}

