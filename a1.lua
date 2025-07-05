getgenv()._frostw = "https://system.heatherx.site"
getgenv()._dc = "https://getfrosts.xyz"
getgenv()._frost = "https://raw.githubusercontent.com/Jake-Brock/FrostWare-/main/FrostWare%20Main.lua"

local response = tonumber(game:HttpGet(getgenv()._frostw .. "/status/" .. gethwid()))
if response and response > 0 then
    loadstring(game:HttpGet(getgenv()._frost))()
    spawn(function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/OneCreatorX/FrostWare/refs/heads/main/Notify.lua'))()
    end)
else
    repeat task.wait(0.1) until game:IsLoaded()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/OneCreatorX/FrostWare/refs/heads/main/Exe.lua"))()
end
