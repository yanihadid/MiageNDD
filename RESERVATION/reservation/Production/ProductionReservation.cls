Class reservation.Production.ProductionReservation Extends Ens.Production
{

XData ProductionDefinition
{
<Production Name="reservation.Production.ProductionReservation" TestingEnabled="true" LogGeneralTraceEvents="false">
  <Description></Description>
  <ActorPoolSize>1</ActorPoolSize>
  <Item Name="Voiture" Category="" ClassName="reservation.BO.Voiture" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="InactivityTimeout">0</Setting>
  </Item>
  <Item Name="ServiceVoiture" Category="" ClassName="reservation.BS.ServiceVoiture" PoolSize="0" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="GestionSinistre" Category="" ClassName="reservation.BP.GestionSinistre" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="Sinistre" Category="" ClassName="reservation.BO.Sinistre" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
</Production>
}

}

