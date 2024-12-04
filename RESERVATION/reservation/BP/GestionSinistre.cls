/// 
Class reservation.BP.GestionSinistre Extends Ens.BusinessProcessBPL
{

Storage Default
{
<Type>%Storage.Persistent</Type>
}

/// BPL Definition
XData BPL [ XMLNamespace = "http://www.intersystems.com/bpl" ]
{
<process language='objectscript' request='reservation.msg.voitureCreerSinistreDmde' response='reservation.msg.voitureCreerSinistreRpse' height='2000' width='2000' >
<sequence xend='200' yend='350' >
<call name='CreerSinistre' target='Sinistre' async='0' xpos='200' ypos='250' >
<annotation><![CDATA[On appelle l'operation permettant de repertorier le sinitre]]></annotation>
<request type='reservation.msg.voitureCreerSinistreDmde' >
<assign property="callrequest" value="request" action="set" />
</request>
<response type='reservation.msg.voitureCreerSinistreRpse' >
<assign property="response" value="callresponse" action="set" />
</response>
</call>
</sequence>
</process>
}

}

