-- Join as GAME MASTER blue.
-- First AI aircraft is not protected and will be killed.
-- Second AI aircraft is protected and will not be damaged.

-- Create a new missile trainer object.
fox=FOX:New()

-- Add protected AI group
fox:AddProtectedGroup( GROUP:FindByName("FOX_A10C_Protected") )

-- Start missile trainer.
fox:Start()
MESSAGE:New( "FOX missile trainer started", 25, "INFO" ):ToAll():ToLog()
