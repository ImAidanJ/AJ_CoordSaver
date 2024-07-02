--  ___              _    _     _                 _ 
-- |_ _|_ __ ___    / \  (_) __| | __ _ _ __     | |
--  | || '_ ` _ \  / _ \ | |/ _` |/ _` | '_ \ _  | |
--  | || | | | | |/ ___ \| | (_| | (_| | | | | |_| |
-- |___|_| |_| |_/_/   \_\_|\__,_|\__,_|_| |_|\___/ 
-- 


-- FUNCTION CONFIG
Function = {}
Function.Prefix = "^4[AJ:CoordSaver]^0"
Function.ResourceName = "AJ_CoordSaver"
Function.Version = "1.1.0"


-- Debug Mode
Debug = {}
Debug.Enabled = false


-- VARIABLES
local currentResource = GetCurrentResourceName()
local resourceName = Function.ResourceName
local version = Function.Version


-- Check Name Function
function checkName()
    if currentResource ~= resourceName then
        print("^1[ERROR]^7 Incorrect resource name detected. Shutting down the resource...")
        print("^1[ERROR]^7 Resource must be named "..resourceName.." to work.")
        StopResource(currentResource)
        return
    end
end


-- Debug Check Function
function debugCheck()
    if Debug.Enabled then
        print("^1[WARNING]^7 "..resourceName.." is currently in debug mode.")
    end
end


-- OTHER FUNCTIONS BELOW THIS MARK --