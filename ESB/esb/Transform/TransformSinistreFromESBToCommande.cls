Class esb.Transform.TransformSinistreFromESBToCommande Extends Ens.DataTransformDTL [ DependsOn = (esb.msg.reservationSinistreDmde, esb.msg.pushSinistreFileDmde) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='esb.msg.reservationSinistreDmde' targetClass='esb.msg.pushSinistreFileDmde' create='new' language='objectscript' >
</transform>
}

}

