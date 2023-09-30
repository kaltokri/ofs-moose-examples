-- ATIS Batumi Airport on 143.00 MHz AM.
atisBatumi=ATIS:New( AIRBASE.Caucasus.Batumi, 143.00 )
atisBatumi:SetRadioRelayUnitName( "Atis_Relay_Batumi" )

atisBatumi:SetTowerFrequencies( {260, 131} )
atisBatumi:SetTransmitOnlyWithPlayers( true )

-- Parameter: Path to SRS folder, gender, accent, voice, SRS port
local srsFolderPath = "G:/Spiele/DCS/Tools/DCS-SimpleRadio-Standalone"
local srsPort = 5002
atisBatumi:SetSRS( srsFolderPath, "male", "en-US", nil, srsPort )

atisBatumi:Start()

MESSAGE:New( "ATIS Batumi started on 143.000 AM.", 25, "INFO" ):ToAll():ToLog()
