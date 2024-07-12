--  ___              _    _     _                 _ 
-- |_ _|_ __ ___    / \  (_) __| | __ _ _ __     | |
--  | || '_ ` _ \  / _ \ | |/ _` |/ _` | '_ \ _  | |
--  | || | | | | |/ ___ \| | (_| | (_| | | | | |_| |
-- |___|_| |_| |_/_/   \_\_|\__,_|\__,_|_| |_|\___/ 
-- 


-- Function Config --

Function = {}
Function.Prefix = "^4[AJ:CoordSaver]^0"
Function.ResourceName = "AJ_CoordSaver"
Function.Version = "1.2.0"

-- Debug Mode --

Debug = {}
Debug.Enabled = false

-- Function Variables --

local currentResource = GetCurrentResourceName()
local resourceName = Function.ResourceName
local version = Function.Version

-- Check Name Function --

function checkName()
    if currentResource ~= resourceName then
        print("^1[ERROR]^7 Incorrect resource name detected. Issues may persist...")
        print("^1[ERROR]^7 Resource must be named "..resourceName.." to work.")
        return
    end
end

-- Debug Check Function --

function debugCheck()
    if Debug.Enabled then
        print("^1[WARNING]^7 "..resourceName.." is currently in debug mode.")
    end
end

-- Other Functions Below --