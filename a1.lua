repeat task.wait(0.1) until game:IsLoaded()

getgenv()._frostw = "https://system.heatherx.site" -- no change
getgenv()._dc = "https://getfrosts.xyz" -- discord link
getgenv()._frost = "https://raw.githubusercontent.com/Jake-Brock/FrostWare-/main/FrostWare%20Main.lua" -- url gui or Script


repeat task.wait(0.1) until game:IsLoaded()
loadstring(game:HttpGet(getgenv()._frostw .. "/init"))()
