-- Create a moose.cfg file in "Saved Games\DCS.openbeta\Config" directory
-- Content:
-- SrsServerPort=5002
-- SrsServerPath=G:/Spiele/DCS/Tools/DCS-SimpleRadio-Standalone
local cfgPath = lfs.writedir() .. 'Config\\moose.cfg'
local cfgFile = io.open(cfgPath, "r")
local cfgTable = {}

-- Save the configuration in a key/value table
for line in cfgFile:lines() do
    key, value = string.match(line,"(.-)=(.-)$")
    cfgTable[key] = value
end

local srsFolderPath = cfgTable['SrsServerPath']
local srsPort = cfgTable['SrsServerPort']

-- ATIS Batumi Airport on 143.00 MHz AM.
atisBatumi=ATIS:New( AIRBASE.Caucasus.Batumi, 143.00 )
atisBatumi:SetRadioRelayUnitName( "Atis_Relay_Batumi" )

atisBatumi:SetTowerFrequencies( {260, 131} )
atisBatumi:SetTransmitOnlyWithPlayers( true )

-- Parameter: Path to SRS folder, gender, accent, voice, SRS port
atisBatumi:SetSRS( srsFolderPath, "male", "en-US", nil, srsPort )

atisBatumi:Start()

MESSAGE:New( "ATIS Batumi started on 143.000 AM.", 25, "INFO" ):ToAll():ToLog()
