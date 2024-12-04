/// 
Class commande.BP.GestionSinistre Extends Ens.BusinessProcessBPL
{

/// BPL Definition
XData BPL [ XMLNamespace = "http://www.intersystems.com/bpl" ]
{
<process language='objectscript' request='commande.msg.creerFichierSinistreReservationDmde' response='Ens.Response' height='2000' width='2000' >
<sequence xend='200' yend='650' >
<trace name='codeSinistre' value='"Code Sinistre : " _ request.codeSinistre' xpos='200' ypos='250' />
<trace name='detailSinistre' value='"Detail Sinistre : " _ request.detailSinistre' xpos='200' ypos='350' />
<trace name='libelleSinistre' value='"Libelle Sinistre : " _ request.libelleSinistre' xpos='200' ypos='450' />
<trace name='plaque' value='"Plaque : " _ request.plaque' xpos='200' ypos='550' />
</sequence>
</process>
}

Storage Default
{
<Type>%Storage.Persistent</Type>
}

}

