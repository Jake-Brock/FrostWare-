getgenv()._frostw = "https://system.heatherx.site"
getgenv()._dc = "https://getfrosts.xyz"
getgenv()._frost = "https://raw.githubusercontent.com/Jake-Brock/FrostWare-/main/FrostWare%20Main.lua"

local response = game:HttpGet(getgenv()._frostw .. "/check-access/" .. gethwid())
local hasAccess = response:find('"valid"%s*:%s*true') ~= nil

if hasAccess then
    loadstring(game:HttpGet(getgenv()._frost))()
else
    repeat task.wait(0.1) until game:IsLoaded()
    loadstring(game:HttpGet(getgenv()._frostw .. "/init"))()
end
