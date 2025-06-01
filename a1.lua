getgenv()._frostw = "https://system.heatherx.site" -- no change
getgenv()._dc = "https://getfrosts.xyz" -- discord link
getgenv()._frost = "https://raw.githubusercontent.com/Jake-Brock/FrostWare-/main/FrostWare%20Main.lua" -- url gui or Script
local hA = "https://check.heatherx.site:7071"

local function fT()
    return os.time(os.date("!*t"))
end

local function fL(s)
    local m = math.floor(s / 60)
    local r = s % 60
    return string.format("%02dm %02ds", m, r)
end

local function pI(d)
    local p = "(%d+)%-(%d+)%-(%d+)T(%d+):(%d+):(%d+)"
    local y, mo, da, h, mi, s = d:match(p)
    if y and mo and da and h and mi and s then
        return os.time({year = tonumber(y), month = tonumber(mo), day = tonumber(da), hour = tonumber(h), min = tonumber(mi), sec = tonumber(s)})
    end
    return nil
end

local function cH(h)
    local su, re = pcall(function()
        return game:HttpGet(hA .. "/check?id=" .. h)
    end)
    if not su then return {exists = false} end
    local t = re:match('"timestamp"%s*:%s*"([^"]+)"')
    if not t then return {exists = false} end
    local tU = pI(t)
    if tU then
        local now = fT()
        local diff = now - tU
        local valid = diff < 180000
        local left = valid and (180000 - diff) or 0
        return {exists = true, timestamp = t, valid = valid, timeLeft = left, formatted = fL(left)}
    end
    return {exists = false}
end

local url = "https://raw.githubusercontent.com/OneCreatorX/X/refs/heads/main/Iconos/secure.png"
local fn = "secure.png"
local fp = "SecureLib/" .. fn

if not isfolder("SecureLib") then makefolder("SecureLib") end
if not isfile(fp) then
    pcall(function()
        local ct = game:HttpGet(url)
        writefile(fp, ct)
    end)
end

local hw = tostring(gethwid())
local hC = cH(hw)

if hC.exists and hC.valid then
    local timeLeft = hC.timeLeft
    local ml = math.floor(timeLeft / 60)
    local hr = math.floor(ml / 60)
    local mn = ml % 60
    loadstring(game:HttpGet(getgenv()._frost))()
    spawn(function()
        repeat task.wait(0.1) until game:IsLoaded()
        print("✅ Access verified! Time: " .. hr .. "h " .. mn .. "m")
    end)
    return
end

repeat task.wait(0.1) until game:IsLoaded()
loadstring(game:HttpGet(getgenv()._frostw .. "/init"))()
