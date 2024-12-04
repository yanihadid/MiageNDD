Class esb.Production.ProductionESB Extends Ens.Production
{

XData ProductionDefinition
{
<Production Name="esb.Production.ProductionESB" LogGeneralTraceEvents="false">
  <Description></Description>
  <ActorPoolSize>2</ActorPoolSize>
  <Item Name="ServiceSinistreReservation" Category="" ClassName="esb.BS.ServiceSinistreReservation" PoolSize="0" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="COMMANDE" Category="" ClassName="esb.BO.COMMANDE" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="ReservationSinistreDispatch" Category="" ClassName="EnsLib.MsgRouter.RoutingEngine" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="BusinessRuleName">esb.Rule.ReservationSinistreDispatch</Setting>
  </Item>
</Production>
}

}

