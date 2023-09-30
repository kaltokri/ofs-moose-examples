-- ATIS Batumi Airport on 143.00 MHz AM.
atisBatumi=ATIS:New( AIRBASE.Caucasus.Batumi, 143.00 )
atisBatumi:SetRadioRelayUnitName( "Atis_Relay_Batumi" )
atisBatumi:SetTowerFrequencies( {260, 131} )
atisBatumi:Start()

MESSAGE:New( "ATIS Batumi started on 143.000 AM.", 25, "INFO" ):ToAll():ToLog()
