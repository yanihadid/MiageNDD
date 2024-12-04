/// 
Class esb.Rule.ReservationSinistreDispatch Extends Ens.Rule.Definition
{

Parameter RuleAssistClass = "EnsLib.MsgRouter.RuleAssist";

XData RuleDefinition [ XMLNamespace = "http://www.intersystems.com/rule" ]
{
<ruleDefinition alias="" context="EnsLib.MsgRouter.RoutingEngine" production="esb.Production.ProductionESB">
<ruleSet name="" effectiveBegin="" effectiveEnd="">
<rule name="">
</rule>
<send transform="esb.Transform.TransformSinistreFromESBToCommande" target=",COMMANDE"></send>
</ruleSet>
</ruleDefinition>
}

}

