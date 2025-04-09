-- // GUI TO LUA \\ --

-- // INSTANCES: 68 | SCRIPTS: 11 | MODULES: 0 \\ --

-- Define the folder path
-- Define the folder path
local folder = "FW_Data/Scripts/"

--// User agent header
do
    local org;
    org = hookfunction(request, function(req)
        if type(req) ~= "table" then
            return org(req); -- will error for us
        end

        if type(req["Headers"]) == "table" and req["Headers"]["User-Agent"] ~= nil then
            return org(req); -- ua set by script, like eclipse
        end

        local headers = req["Headers"];
        if type(req["Headers"]) ~= "table" then
            headers = { };
        end

        headers["User-Agent"] = "FrostWare-Android";
        req["Headers"] = headers;
        return org(req);
    end);
end


-- Ensure the parent folder exists
if not isfolder("FW_Data") then
    makefolder("FW_Data")
end

-- Ensure the Scripts folder exists
if not isfolder(folder) then
    makefolder(folder)
end

-- Attempt to retrieve a list of files in the folder.
-- This function is provided by your exploit environment.
local files = listfiles and listfiles(folder) or {}

-- Helper function to create a default file if needed.
local function createDefaultFile(index)
    local filePath = folder .. "File" .. index .. ".lua"
    writefile(filePath, "-- Default content for File" .. index)
    return filePath
end

-- Ensure there are at least 4 files in the folder.
while #files < 4 do
    local newFile = createDefaultFile(#files + 1)
    table.insert(files, newFile)
end

-- Select the first 4 files regardless of their name or extension.
local selectedFiles = { files[1], files[2], files[3], files[4] }

-- Helper function to read a file's content and execute it using loadstring.
local function loadAndExecute(filePath)
    local content = readfile(filePath)
    local func, err = loadstring(content)
    if not func then
        warn("Error loading script from " .. filePath .. ": " .. err)
    else
        func()
    end
end

-- Define separate functions for each of the first 4 files.

function ExecuteFile1()
    loadAndExecute(selectedFiles[1])
end

function ExecuteFile2()
    loadAndExecute(selectedFiles[2])
end

function ExecuteFile3()
    loadAndExecute(selectedFiles[3])
end

function ExecuteFile4()
    loadAndExecute(selectedFiles[4])
end

-- Example usage:
-- ExecuteFile1()
-- ExecuteFile2()
-- ExecuteFile3()
-- ExecuteFile4()


local success, files_or_error = pcall(function()
    return dtc.listautoexe("") -- List files in the current directory
end)

if success then
    print("Executing all files in current directory...")

    for _, file in ipairs(files_or_error) do
        local load_success, chunk_or_error = pcall(function() -- FUCKING UODATE YOU FUNCKING MF DICK AS LULLIBRHAHHAHAHSHHSHDHD GOD HELP ME
            return loadfile("./" .. file) -- Load the file
        end)

        if load_success and chunk_or_error then
            print("Running: " .. file)
            pcall(chunk_or_error) -- Execute the script safely
        else
            pcall(function() error("Failed to load: " .. file .. " | Error: " .. tostring(chunk_or_error)) end)
        end
    end

else
    pcall(function() error("Error occurred: " .. tostring(files_or_error)) end) -- Print the exact error
end

-- Enables autoexec
setreadonly(dtc, false);
dtc.pushautoexec()
setreadonly(dtc, true);

local UI = {}

-- // StarterGui.FrostWareUI \\ --
UI["1"] = Instance.new("ScreenGui", gethui())
UI["1"]["IgnoreGuiInset"] = true
UI["1"]["ScreenInsets"] = Enum.ScreenInsets.None
UI["1"]["Name"] = [[FrostWareUI]]
UI["1"]["ResetOnSpawn"] = false

-- // StarterGui.FrostWareUI.EditorFrame \\ --
UI["2"] = Instance.new("Frame", UI["1"])
UI["2"]["BorderSizePixel"] = 0
UI["2"]["BackgroundColor3"] = Color3.fromRGB(57, 83, 117)
UI["2"]["Size"] = UDim2.new(0.38726, 0, 0.56496, 0)
UI["2"]["Position"] = UDim2.new(0.30594, 0, 0.21667, 0)
UI["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["2"]["Name"] = [[EditorFrame]]
UI["2"]["BackgroundTransparency"] = 1

-- // StarterGui.FrostWareUI.EditorFrame.UICorner \\ --
UI["3"] = Instance.new("UICorner", UI["2"])
UI["3"]["CornerRadius"] = UDim.new(0, 28)

-- // StarterGui.FrostWareUI.EditorFrame.UIStroke \\ --
UI["4"] = Instance.new("UIStroke", UI["2"])
UI["4"]["Transparency"] = 0.8
UI["4"]["Thickness"] = 2.5
UI["4"]["Color"] = Color3.fromRGB(44, 65, 88)

-- // StarterGui.FrostWareUI.EditorFrame.EditorFunctions \\ --
UI["5"] = Instance.new("LocalScript", UI["2"])
UI["5"]["Name"] = [[EditorFunctions]]

-- // StarterGui.FrostWareUI.EditorFrame.Frame \\ --
UI["6"] = Instance.new("Frame", UI["2"])
UI["6"]["BorderSizePixel"] = 0
UI["6"]["BackgroundColor3"] = Color3.fromRGB(51, 77, 110)
UI["6"]["Size"] = UDim2.new(0.93971, 0, 0.77209, 0)
UI["6"]["Position"] = UDim2.new(0.02961, 0, 0.03902, 0)
UI["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["6"]["BackgroundTransparency"] = 0.4

-- // StarterGui.FrostWareUI.EditorFrame.Frame.UICorner \\ --
UI["7"] = Instance.new("UICorner", UI["6"])
UI["7"]["CornerRadius"] = UDim.new(0, 24)

-- // StarterGui.FrostWareUI.EditorFrame.Frame.ScrollingFrame \\ --
UI["8"] = Instance.new("ScrollingFrame", UI["6"])
UI["8"]["Active"] = true
UI["8"]["ScrollingDirection"] = Enum.ScrollingDirection.Y
UI["8"]["BorderSizePixel"] = 0
UI["8"]["BackgroundColor3"] = Color3.fromRGB(25, 26, 26)
UI["8"]["Size"] = UDim2.new(0.94039, 0, 0.90575, 0)
UI["8"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0)
UI["8"]["Position"] = UDim2.new(0.02961, 0, 0.04335, 0)
UI["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["8"]["ScrollBarThickness"] = 0
UI["8"]["BackgroundTransparency"] = 1

-- // StarterGui.FrostWareUI.EditorFrame.Frame.ScrollingFrame.Line \\ --
UI["9"] = Instance.new("Frame", UI["8"])
UI["9"]["BorderSizePixel"] = 0
UI["9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["9"]["Size"] = UDim2.new(0.01764, 0, 0.68182, 0)
UI["9"]["Position"] = UDim2.new(0, 0, -0, 0)
UI["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["9"]["Name"] = [[Line]]
UI["9"]["BackgroundTransparency"] = 1

-- // StarterGui.FrostWareUI.EditorFrame.Frame.ScrollingFrame.Line.Line Number \\ --
UI["a"] = Instance.new("TextLabel", UI["9"])
UI["a"]["TextWrapped"] = false
UI["a"]["TextScaled"] = false
UI["a"]["BorderSizePixel"] = 0
UI["a"]["TextTransparency"] = 0.5
UI["a"]["TextYAlignment"] = Enum.TextYAlignment.Top
UI["a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["a"]["TextSize"] = 14
UI["a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["a"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["a"]["BackgroundTransparency"] = 1
UI["a"]["RichText"] = true
UI["a"]["Size"] = UDim2.new(1.04496, 0, 0.58454, 0)
UI["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["a"]["Text"] = [[1]]
UI["a"]["Name"] = [[Line Number]]
UI["a"]["Position"] = UDim2.new(-0.04495, 0, 0.0011, 0)

-- // StarterGui.FrostWareUI.EditorFrame.Frame.ScrollingFrame.Line.Line Number.LocalScript \\ --
UI["b"] = Instance.new("LocalScript", UI["a"])


-- // StarterGui.FrostWareUI.EditorFrame.Frame.ScrollingFrame.SyntaxEditor \\ --
UI["c"] = Instance.new("TextBox", UI["8"])
UI["c"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["c"]["BorderSizePixel"] = 0
UI["c"]["TextXAlignment"] = Enum.TextXAlignment.Left
UI["c"]["TextWrapped"] = true
UI["c"]["TextSize"] = 14
UI["c"]["Name"] = [[SyntaxEditor]]
UI["c"]["TextYAlignment"] = Enum.TextYAlignment.Top
UI["c"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8)
UI["c"]["FontFace"] = Font.new([[rbxasset://fonts/families/RobotoMono.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["c"]["RichText"] = true
UI["c"]["MultiLine"] = true
UI["c"]["ClearTextOnFocus"] = false
UI["c"]["Size"] = UDim2.new(0.973, 0, 0.39953, 0)
UI["c"]["Position"] = UDim2.new(0.02746, 0, 0, 0)
UI["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["c"]["Text"] = [[print('Hello World')
-- FrostWare V3.7]]
UI["c"]["BackgroundTransparency"] = 1

-- // StarterGui.FrostWareUI.EditorFrame.Frame.ScrollingFrame.SyntaxEditor.SyntaxScript \\ --
UI["d"] = Instance.new("LocalScript", UI["c"])
UI["d"]["Name"] = [[SyntaxScript]]

-- // StarterGui.FrostWareUI.EditorFrame.Frame.ScrollingFrame.SyntaxEditor.UICorner \\ --
UI["e"] = Instance.new("UICorner", UI["c"])
UI["e"]["CornerRadius"] = UDim.new(0, 24)

-- // StarterGui.FrostWareUI.EditorFrame.Frame.ScrollingFrame.UICorner \\ --
UI["f"] = Instance.new("UICorner", UI["8"])
UI["f"]["CornerRadius"] = UDim.new(0, 15)

-- // StarterGui.FrostWareUI.EditorFrame.Frame.UIStroke \\ --
UI["10"] = Instance.new("UIStroke", UI["6"])
UI["10"]["Thickness"] = 2.5
UI["10"]["Color"] = Color3.fromRGB(44, 65, 88)

-- // StarterGui.FrostWareUI.EditorFrame.ExecuteButton \\ --
UI["11"] = Instance.new("TextButton", UI["2"])
UI["11"]["BorderSizePixel"] = 0
UI["11"]["TextSize"] = 14
UI["11"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
UI["11"]["BackgroundColor3"] = Color3.fromRGB(254, 255, 255)
UI["11"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["11"]["Size"] = UDim2.new(0.08535, 0, 0.10498, 0)
UI["11"]["Name"] = [[ExecuteButton]]
UI["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["11"]["Text"] = [[]]
UI["11"]["Position"] = UDim2.new(0.88397, 0, 0.85311, 0)

-- // StarterGui.FrostWareUI.EditorFrame.ExecuteButton.UICorner \\ --
UI["12"] = Instance.new("UICorner", UI["11"])
UI["12"]["CornerRadius"] = UDim.new(0, 16)

-- // StarterGui.FrostWareUI.EditorFrame.ExecuteButton.ImageLabel \\ --
UI["13"] = Instance.new("ImageLabel", UI["11"])
UI["13"]["BorderSizePixel"] = 0
UI["13"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["13"]["ScaleType"] = Enum.ScaleType.Fit
UI["13"]["Image"] = [[rbxasset://textures/LayeredClothingEditor/Icon_Play_Light.png]]
UI["13"]["Size"] = UDim2.new(0.61927, 0, 0.61927, 0)
UI["13"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["13"]["BackgroundTransparency"] = 1
UI["13"]["Position"] = UDim2.new(0.19036, 0, 0.19036, 0)

-- // StarterGui.FrostWareUI.EditorFrame.ExecuteButton.UIStroke \\ --
UI["14"] = Instance.new("UIStroke", UI["11"])
UI["14"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["14"]["Thickness"] = 2.5
UI["14"]["Color"] = Color3.fromRGB(44, 65, 88)

-- // StarterGui.FrostWareUI.EditorFrame.ExecuteButton.UIGradient \\ --
UI["15"] = Instance.new("UIGradient", UI["11"])
UI["15"]["Rotation"] = -50
UI["15"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0.2),NumberSequenceKeypoint.new(1.000, 0.2)}
UI["15"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(30, 60, 95)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(51, 82, 121))}

-- // StarterGui.FrostWareUI.EditorFrame.PasteButton \\ --
UI["16"] = Instance.new("TextButton", UI["2"])
UI["16"]["BorderSizePixel"] = 0
UI["16"]["TextSize"] = 14
UI["16"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
UI["16"]["BackgroundColor3"] = Color3.fromRGB(231, 233, 233)
UI["16"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["16"]["Size"] = UDim2.new(0.08535, 0, 0.10498, 0)
UI["16"]["Name"] = [[PasteButton]]
UI["16"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["16"]["Text"] = [[]]
UI["16"]["Position"] = UDim2.new(0.76553, 0, 0.85311, 0)

-- // StarterGui.FrostWareUI.EditorFrame.PasteButton.UICorner \\ --
UI["17"] = Instance.new("UICorner", UI["16"])
UI["17"]["CornerRadius"] = UDim.new(0, 16)

-- // StarterGui.FrostWareUI.EditorFrame.PasteButton.ImageLabel \\ --
UI["18"] = Instance.new("ImageLabel", UI["16"])
UI["18"]["BorderSizePixel"] = 0
UI["18"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["18"]["ScaleType"] = Enum.ScaleType.Fit
UI["18"]["Image"] = [[rbxasset://textures/TerrainTools/icon_regions_paste.png]]
UI["18"]["Size"] = UDim2.new(0.61927, 0, 0.61927, 0)
UI["18"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["18"]["BackgroundTransparency"] = 1
UI["18"]["Position"] = UDim2.new(0.19036, 0, 0.19036, 0)

-- // StarterGui.FrostWareUI.EditorFrame.PasteButton.UIStroke \\ --
UI["19"] = Instance.new("UIStroke", UI["16"])
UI["19"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["19"]["Thickness"] = 2.5
UI["19"]["Color"] = Color3.fromRGB(44, 65, 88)

-- // StarterGui.FrostWareUI.EditorFrame.PasteButton.UIGradient \\ --
UI["1a"] = Instance.new("UIGradient", UI["16"])
UI["1a"]["Rotation"] = -50
UI["1a"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0.2),NumberSequenceKeypoint.new(1.000, 0.2)}
UI["1a"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(30, 60, 95)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(51, 82, 121))}

-- // StarterGui.FrostWareUI.EditorFrame.ClearButton \\ --
UI["1b"] = Instance.new("TextButton", UI["2"])
UI["1b"]["BorderSizePixel"] = 0
UI["1b"]["TextSize"] = 14
UI["1b"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
UI["1b"]["BackgroundColor3"] = Color3.fromRGB(254, 255, 255)
UI["1b"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["1b"]["Size"] = UDim2.new(0.08535, 0, 0.10498, 0)
UI["1b"]["Name"] = [[ClearButton]]
UI["1b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["1b"]["Text"] = [[]]
UI["1b"]["Position"] = UDim2.new(0.64919, 0, 0.85311, 0)

-- // StarterGui.FrostWareUI.EditorFrame.ClearButton.UICorner \\ --
UI["1c"] = Instance.new("UICorner", UI["1b"])
UI["1c"]["CornerRadius"] = UDim.new(0, 18)

-- // StarterGui.FrostWareUI.EditorFrame.ClearButton.ImageLabel \\ --
UI["1d"] = Instance.new("ImageLabel", UI["1b"])
UI["1d"]["BorderSizePixel"] = 0
UI["1d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["1d"]["ScaleType"] = Enum.ScaleType.Fit
UI["1d"]["Image"] = [[rbxasset://textures/CompositorDebugger/clear.png]]
UI["1d"]["Size"] = UDim2.new(0.61927, 0, 0.61927, 0)
UI["1d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["1d"]["BackgroundTransparency"] = 1
UI["1d"]["Position"] = UDim2.new(0.19036, 0, 0.19036, 0)

-- // StarterGui.FrostWareUI.EditorFrame.ClearButton.UIGradient \\ --
UI["1e"] = Instance.new("UIGradient", UI["1b"])
UI["1e"]["Rotation"] = -50
UI["1e"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0.2),NumberSequenceKeypoint.new(1.000, 0.2)}
UI["1e"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(30, 60, 95)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(51, 82, 121))}

-- // StarterGui.FrostWareUI.EditorFrame.ClearButton.UIStroke \\ --
UI["1f"] = Instance.new("UIStroke", UI["1b"])
UI["1f"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["1f"]["Thickness"] = 2.5
UI["1f"]["Color"] = Color3.fromRGB(44, 65, 88)

-- // StarterGui.FrostWareUI.EditorFrame.SearchButton \\ --
UI["20"] = Instance.new("TextButton", UI["2"])
UI["20"]["BorderSizePixel"] = 0
UI["20"]["TextSize"] = 14
UI["20"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
UI["20"]["TextWrapped"] = true
UI["20"]["BackgroundColor3"] = Color3.fromRGB(254, 255, 255)
UI["20"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["20"]["Size"] = UDim2.new(0.08535, 0, 0.10498, 0)
UI["20"]["Name"] = [[SearchButton]]
UI["20"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["20"]["Text"] = [[]]
UI["20"]["Position"] = UDim2.new(0.032, 0, 0.853, 0)

-- // StarterGui.FrostWareUI.EditorFrame.SearchButton.UICorner \\ --
UI["21"] = Instance.new("UICorner", UI["20"])
UI["21"]["CornerRadius"] = UDim.new(0, 16)

-- // StarterGui.FrostWareUI.EditorFrame.SearchButton.ImageLabel \\ --
UI["22"] = Instance.new("ImageLabel", UI["20"])
UI["22"]["BorderSizePixel"] = 0
UI["22"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["22"]["ScaleType"] = Enum.ScaleType.Fit
UI["22"]["Image"] = [[rbxasset://textures/DevConsole/Search.png]]
UI["22"]["Size"] = UDim2.new(0.61927, 0, 0.61927, 0)
UI["22"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["22"]["BackgroundTransparency"] = 1
UI["22"]["Position"] = UDim2.new(0.19036, 0, 0.19036, 0)

-- // StarterGui.FrostWareUI.EditorFrame.SearchButton.UIStroke \\ --
UI["23"] = Instance.new("UIStroke", UI["20"])
UI["23"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["23"]["Thickness"] = 2.5
UI["23"]["Color"] = Color3.fromRGB(44, 65, 88)

-- // StarterGui.FrostWareUI.EditorFrame.SearchButton.UIGradient \\ --
UI["24"] = Instance.new("UIGradient", UI["20"])
UI["24"]["Rotation"] = -50
UI["24"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0.2),NumberSequenceKeypoint.new(1.000, 0.2)}
UI["24"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(30, 60, 95)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(51, 82, 121))}

-- // StarterGui.FrostWareUI.EditorFrame.SearchButton.LocalScript \\ --
UI["25"] = Instance.new("LocalScript", UI["20"])


-- // StarterGui.FrostWareUI.FWButton \\ --
UI["26"] = Instance.new("TextButton", UI["1"])
UI["26"]["BorderSizePixel"] = 0
UI["26"]["TextSize"] = 14
UI["26"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
UI["26"]["BackgroundColor3"] = Color3.fromRGB(254, 255, 255)
UI["26"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["26"]["Size"] = UDim2.new(0.04803, 0, 0.08402, 0)
UI["26"]["Name"] = [[FWButton]]
UI["26"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["26"]["Text"] = [[]]
UI["26"]["Position"] = UDim2.new(0.47533, 0, 0.06519, 0)

-- // StarterGui.FrostWareUI.FWButton.UICorner \\ --
UI["27"] = Instance.new("UICorner", UI["26"])
UI["27"]["CornerRadius"] = UDim.new(0, 24)

-- // StarterGui.FrostWareUI.FWButton.ImageLabel \\ --
UI["28"] = Instance.new("ImageLabel", UI["26"])
UI["28"]["BorderSizePixel"] = 0
UI["28"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["28"]["ScaleType"] = Enum.ScaleType.Fit
UI["28"]["ImageTransparency"] = 0.3
UI["28"]["Image"] = [[rbxassetid://126235623427509]]
UI["28"]["Size"] = UDim2.new(0.61927, 0, 0.61927, 0)
UI["28"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["28"]["BackgroundTransparency"] = 1
UI["28"]["Position"] = UDim2.new(0.19036, 0, 0.19036, 0)

-- // StarterGui.FrostWareUI.FWButton.UIStroke \\ --
UI["29"] = Instance.new("UIStroke", UI["26"])
UI["29"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["29"]["Thickness"] = 2.5
UI["29"]["Color"] = Color3.fromRGB(44, 65, 88)

-- // StarterGui.FrostWareUI.FWButton.UIGradient \\ --
UI["2a"] = Instance.new("UIGradient", UI["26"])
UI["2a"]["Rotation"] = -50
UI["2a"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0.6),NumberSequenceKeypoint.new(1.000, 0.6)}
UI["2a"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(30, 60, 95)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(51, 82, 121))}

-- // StarterGui.FrostWareUI.FWButton.LocalScript \\ --
UI["2b"] = Instance.new("LocalScript", UI["26"])


-- // StarterGui.FrostWareUI.FWButton.LocalScript \\ --
UI["2c"] = Instance.new("LocalScript", UI["26"])


-- // StarterGui.FrostWareUI.SearchFrame \\ --
UI["2d"] = Instance.new("Frame", UI["1"])
UI["2d"]["Visible"] = false
UI["2d"]["BorderSizePixel"] = 0
UI["2d"]["BackgroundColor3"] = Color3.fromRGB(57, 83, 117)
UI["2d"]["Size"] = UDim2.new(0.38726, 0, 0.56496, 0)
UI["2d"]["Position"] = UDim2.new(0.30594, 0, 0.21667, 0)
UI["2d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["2d"]["Name"] = [[SearchFrame]]
UI["2d"]["BackgroundTransparency"] = 1

-- // StarterGui.FrostWareUI.SearchFrame.UICorner \\ --
UI["2e"] = Instance.new("UICorner", UI["2d"])
UI["2e"]["CornerRadius"] = UDim.new(0, 28)

-- // StarterGui.FrostWareUI.SearchFrame.UIStroke \\ --
UI["2f"] = Instance.new("UIStroke", UI["2d"])
UI["2f"]["Transparency"] = 0.8
UI["2f"]["Thickness"] = 2.5
UI["2f"]["Color"] = Color3.fromRGB(44, 65, 88)

-- // StarterGui.FrostWareUI.SearchFrame.CloudAPI \\ --
UI["30"] = Instance.new("LocalScript", UI["2d"])
UI["30"]["Name"] = [[CloudAPI]]

-- // StarterGui.FrostWareUI.SearchFrame.ScrollingFrame \\ --
UI["31"] = Instance.new("ScrollingFrame", UI["2d"])
UI["31"]["Active"] = true
UI["31"]["BorderSizePixel"] = 0
UI["31"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["31"]["ScrollBarImageTransparency"] = 0.8
UI["31"]["Size"] = UDim2.new(0.93115, 0, 0.73127, 0)
UI["31"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0)
UI["31"]["Position"] = UDim2.new(0.03196, 0, 0.21174, 0)
UI["31"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["31"]["BackgroundTransparency"] = 1

-- // StarterGui.FrostWareUI.SearchFrame.ScrollingFrame.ScriptFrame \\ --
UI["32"] = Instance.new("Frame", UI["31"])
UI["32"]["Visible"] = false
UI["32"]["BorderSizePixel"] = 0
UI["32"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["32"]["Size"] = UDim2.new(0.33333, 0, 0.3911, 0)
UI["32"]["Position"] = UDim2.new(0.33333, 0, 0, 0)
UI["32"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["32"]["Name"] = [[ScriptFrame]]
UI["32"]["BackgroundTransparency"] = 1

-- // StarterGui.FrostWareUI.SearchFrame.ScrollingFrame.ScriptFrame.ImageButton \\ --
UI["33"] = Instance.new("ImageButton", UI["32"])
UI["33"]["BorderSizePixel"] = 0
UI["33"]["ScaleType"] = Enum.ScaleType.Crop
UI["33"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
UI["33"]["Image"] = [[rbxassetid://111973669155622]]
UI["33"]["Size"] = UDim2.new(0.84089, 0, 0.86062, 0)
UI["33"]["BackgroundTransparency"] = 1
UI["33"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["33"]["Position"] = UDim2.new(0.07786, 0, 0.06733, 0)

-- // StarterGui.FrostWareUI.SearchFrame.ScrollingFrame.ScriptFrame.ImageButton.UICorner \\ --
UI["34"] = Instance.new("UICorner", UI["33"])
UI["34"]["CornerRadius"] = UDim.new(0, 14)

-- // StarterGui.FrostWareUI.SearchFrame.ScrollingFrame.ScriptFrame.ImageButton.NameLabel \\ --
UI["35"] = Instance.new("TextLabel", UI["33"])
UI["35"]["TextWrapped"] = true
UI["35"]["BorderSizePixel"] = 0
UI["35"]["TextXAlignment"] = Enum.TextXAlignment.Left
UI["35"]["TextScaled"] = true
UI["35"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["35"]["TextSize"] = 14
UI["35"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
UI["35"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["35"]["BackgroundTransparency"] = 1
UI["35"]["Size"] = UDim2.new(0.35142, 0, 0.13579, 0)
UI["35"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["35"]["Name"] = [[NameLabel]]
UI["35"]["Position"] = UDim2.new(0.06825, 0, 0.08523, 0)

-- // StarterGui.FrostWareUI.SearchFrame.ScrollingFrame.ScriptFrame.ImageButton.NameLabel.LocalScript \\ --
UI["36"] = Instance.new("LocalScript", UI["35"])


-- // StarterGui.FrostWareUI.SearchFrame.ScrollingFrame.ScriptFrame.ImageButton.GameLabel \\ --
UI["37"] = Instance.new("TextLabel", UI["33"])
UI["37"]["TextWrapped"] = true
UI["37"]["BorderSizePixel"] = 0
UI["37"]["TextXAlignment"] = Enum.TextXAlignment.Left
UI["37"]["TextTransparency"] = 0.4
UI["37"]["TextScaled"] = true
UI["37"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["37"]["TextSize"] = 14
UI["37"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
UI["37"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["37"]["BackgroundTransparency"] = 1
UI["37"]["Size"] = UDim2.new(0.35142, 0, 0.13579, 0)
UI["37"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["37"]["Name"] = [[GameLabel]]
UI["37"]["Position"] = UDim2.new(0.06539, 0, 0.30967, 0)

-- // StarterGui.FrostWareUI.SearchFrame.ScrollingFrame.ScriptFrame.ImageButton.GameLabel.LocalScript \\ --
UI["38"] = Instance.new("LocalScript", UI["37"])


-- // StarterGui.FrostWareUI.SearchFrame.ScrollingFrame.UIGridLayout \\ --
UI["39"] = Instance.new("UIGridLayout", UI["31"])
UI["39"]["CellSize"] = UDim2.new(0.33, 0, 0.143, 0)
UI["39"]["SortOrder"] = Enum.SortOrder.LayoutOrder
UI["39"]["CellPadding"] = UDim2.new(0, 0, 0, 0)

-- // StarterGui.FrostWareUI.SearchFrame.SearchButton \\ --
UI["3a"] = Instance.new("ImageButton", UI["2d"])
UI["3a"]["BorderSizePixel"] = 0
UI["3a"]["ScaleType"] = Enum.ScaleType.Crop
UI["3a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["3a"]["ImageColor3"] = Color3.fromRGB(105, 108, 112)
UI["3a"]["Image"] = [[rbxassetid://87276827891567]]
UI["3a"]["Size"] = UDim2.new(0.0415, 0, 0.05088, 0)
UI["3a"]["BackgroundTransparency"] = 1
UI["3a"]["Name"] = [[SearchButton]]
UI["3a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["3a"]["Visible"] = false
UI["3a"]["Position"] = UDim2.new(0.09431, 0, 0.06834, 0)

-- // StarterGui.FrostWareUI.SearchFrame.SearchBar \\ --
UI["3b"] = Instance.new("TextBox", UI["2d"])
UI["3b"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["3b"]["PlaceholderColor3"] = Color3.fromRGB(255, 255, 255)
UI["3b"]["BorderSizePixel"] = 0
UI["3b"]["TextWrapped"] = true
UI["3b"]["TextSize"] = 14
UI["3b"]["Name"] = [[SearchBar]]
UI["3b"]["BackgroundColor3"] = Color3.fromRGB(51, 77, 110)
UI["3b"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["3b"]["ClearTextOnFocus"] = false
UI["3b"]["PlaceholderText"] = [[Search]]
UI["3b"]["Size"] = UDim2.new(0.93115, 0, 0.10899, 0)
UI["3b"]["Position"] = UDim2.new(0.03196, 0, 0.04162, 0)
UI["3b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["3b"]["Text"] = [[]]
UI["3b"]["BackgroundTransparency"] = 0.4

-- // StarterGui.FrostWareUI.SearchFrame.SearchBar.UICorner \\ --
UI["3c"] = Instance.new("UICorner", UI["3b"])
UI["3c"]["CornerRadius"] = UDim.new(0, 14)

-- // StarterGui.FrostWareUI.SearchFrame.SearchBar.FontScript \\ --
UI["3d"] = Instance.new("LocalScript", UI["3b"])
UI["3d"]["Name"] = [[FontScript]]

-- // StarterGui.FrostWareUI.SearchFrame.SearchBar.UIStroke \\ --
UI["3e"] = Instance.new("UIStroke", UI["3b"])
UI["3e"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["3e"]["Thickness"] = 2.5
UI["3e"]["Color"] = Color3.fromRGB(44, 65, 88)

-- // StarterGui.FrostWareUI.SearchFrame.ExecuteButton \\ --
UI["3f"] = Instance.new("TextButton", UI["2d"])
UI["3f"]["BorderSizePixel"] = 0
UI["3f"]["TextSize"] = 14
UI["3f"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
UI["3f"]["BackgroundColor3"] = Color3.fromRGB(254, 255, 255)
UI["3f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["3f"]["Size"] = UDim2.new(0.08535, 0, 0.10498, 0)
UI["3f"]["Name"] = [[ExecuteButton]]
UI["3f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["3f"]["Text"] = [[]]
UI["3f"]["Position"] = UDim2.new(0.03171, 0, 0.85311, 0)

-- // StarterGui.FrostWareUI.SearchFrame.ExecuteButton.UICorner \\ --
UI["40"] = Instance.new("UICorner", UI["3f"])
UI["40"]["CornerRadius"] = UDim.new(0, 16)

-- // StarterGui.FrostWareUI.SearchFrame.ExecuteButton.ImageLabel \\ --
UI["41"] = Instance.new("ImageLabel", UI["3f"])
UI["41"]["BorderSizePixel"] = 0
UI["41"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["41"]["ScaleType"] = Enum.ScaleType.Fit
UI["41"]["Image"] = [[rbxasset://textures/StudioToolbox/AssetPreview/play_button.png]]
UI["41"]["Size"] = UDim2.new(0.61927, 0, 0.61927, 0)
UI["41"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["41"]["BackgroundTransparency"] = 1
UI["41"]["Position"] = UDim2.new(0.19036, 0, 0.19036, 0)

-- // StarterGui.FrostWareUI.SearchFrame.ExecuteButton.UIStroke \\ --
UI["42"] = Instance.new("UIStroke", UI["3f"])
UI["42"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["42"]["Thickness"] = 2.5
UI["42"]["Color"] = Color3.fromRGB(44, 65, 88)

-- // StarterGui.FrostWareUI.SearchFrame.ExecuteButton.UIGradient \\ --
UI["43"] = Instance.new("UIGradient", UI["3f"])
UI["43"]["Rotation"] = -50
UI["43"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0.2),NumberSequenceKeypoint.new(1.000, 0.2)}
UI["43"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(30, 60, 95)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(51, 82, 121))}

-- // StarterGui.FrostWareUI.SearchFrame.ExecuteButton.LocalScript \\ --
UI["44"] = Instance.new("LocalScript", UI["3f"])

-------------------------------
-- NEW SECTION & BUTTON CODE --
-------------------------------

-- Calculate the gap (using the gap between Execute and Paste buttons)
local gap = 0.0275  -- approximately 0.11844

-- Get the SearchButton's position and size from UI["20"]
local searchButtonPos = UI["20"].Position
local searchButtonSize = UI["20"].Size

-- Create NewSectionButton, positioned to the right of the SearchButton using the same gap
UI["NewButton"] = Instance.new("TextButton", UI["2"])
UI["NewButton"]["Name"] = "NewSectionButton"
UI["NewButton"]["BorderSizePixel"] = 0
UI["NewButton"]["TextSize"] = 14
UI["NewButton"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
UI["NewButton"]["BackgroundColor3"] = Color3.fromRGB(254, 255, 255)
UI["NewButton"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["NewButton"]["Size"] = UDim2.new(0.08535, 0, 0.10498, 0)
-- New X position = SearchButton.X + SearchButton.Width + gap
UI["NewButton"]["Position"] = UDim2.new(searchButtonPos.X.Scale + searchButtonSize.X.Scale + gap, 0, searchButtonPos.Y.Scale, 0)
UI["NewButton"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["NewButton"]["Text"] = [[]]

UI["NewButtonLabel"] = Instance.new("ImageLabel", UI["NewButton"])
UI["NewButtonLabel"]["BorderSizePixel"] = 0
UI["NewButtonLabel"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["NewButtonLabel"]["ScaleType"] = Enum.ScaleType.Fit
UI["NewButtonLabel"]["Image"] = [[rbxassetid://4998267428]]
UI["NewButtonLabel"]["Size"] = UDim2.new(0.61927, 0, 0.61927, 0)
UI["NewButtonLabel"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["NewButtonLabel"]["BackgroundTransparency"] = 1
UI["NewButtonLabel"]["Position"] = UDim2.new(0.19036, 0, 0.19036, 0)

-- NewSectionButton UICorner (similar styling as other buttons)
UI["NewButtonCorner"] = Instance.new("UICorner", UI["NewButton"])
UI["NewButtonCorner"]["CornerRadius"] = UDim.new(0, 16)

-- NewSectionButton UIStroke
UI["NewButtonStroke"] = Instance.new("UIStroke", UI["NewButton"])
UI["NewButtonStroke"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["NewButtonStroke"]["Thickness"] = 2.5
UI["NewButtonStroke"]["Color"] = Color3.fromRGB(44, 65, 88)

-- NewSectionButton UIGradient
UI["NewButtonGradient"] = Instance.new("UIGradient", UI["NewButton"])
UI["NewButtonGradient"]["Rotation"] = -50
UI["NewButtonGradient"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0.2),NumberSequenceKeypoint.new(1.000, 0.2)}
UI["NewButtonGradient"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(30, 60, 95)), ColorSequenceKeypoint.new(1, Color3.fromRGB(51, 82, 121))}


-- Create NewSectionFrame (similar to SearchFrame)
UI["NewSectionFrame"] = Instance.new("Frame", UI["1"])
UI["NewSectionFrame"]["Name"] = "NewSectionFrame"
UI["NewSectionFrame"]["Visible"] = false  -- set to true if you want it visible by default
UI["NewSectionFrame"]["BorderSizePixel"] = 0
UI["NewSectionFrame"]["BackgroundColor3"] = Color3.fromRGB(57, 83, 117)
UI["NewSectionFrame"]["Size"] = UDim2.new(0.38726, 0, 0.56496, 0)
UI["NewSectionFrame"]["Position"] = UDim2.new(0.30594, 0, 0.21667, 0)
UI["NewSectionFrame"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["NewSectionFrame"]["BackgroundTransparency"] = 1

-- NewSectionFrame UICorner
UI["NewSectionFrameUICorner"] = Instance.new("UICorner", UI["NewSectionFrame"])
UI["NewSectionFrameUICorner"]["CornerRadius"] = UDim.new(0, 28)

-- NewSectionFrame UIStroke
UI["NewSectionFrameUIStroke"] = Instance.new("UIStroke", UI["NewSectionFrame"])
UI["NewSectionFrameUIStroke"]["Transparency"] = 0.8
UI["NewSectionFrameUIStroke"]["Thickness"] = 2.5
UI["NewSectionFrameUIStroke"]["Color"] = Color3.fromRGB(44, 65, 88)

UI["Back"] = UI["11"]:Clone()
UI["Back"]["Position"] = UDim2.new(0.03171, 0, 0.85311, 0)
UI["Back"]["Parent"] = UI["NewSectionFrame"]

-- (Optional) Add additional elements (such as a scrolling frame, inner content, etc.)
-- For example, you might duplicate your SearchFrame's scrolling frame here.
UI["BackScript"] = Instance.new("LocalScript", UI["Back"])

UI["stabb"] = UI["NewButton"]:Clone()
UI["stabb"]["Position"] = UDim2.new(searchButtonPos.X.Scale + searchButtonSize.X.Scale + gap * 5, 0, searchButtonPos.Y.Scale, 0)
UI["stabb"]["ImageLabel"]["Image"] = [[rbxasset://textures/ui/Settings/MenuBarIcons/GameSettingsTab@2x.png]]
UI["stabb"]["Parent"] = UI["NewButton"]["Parent"]

UI["stab"] = UI["NewSectionFrame"]:Clone()
UI["stab"]["Parent"] = UI["NewSectionFrame"]["Parent"]
UI["stab"]["ExecuteButton"]:Destroy()

UI["stabbb"] = UI["Back"]:Clone()
UI["stabbb"]["Parent"] = UI["stab"]


UI["sstabb"] = UI["NewButton"]:Clone()
UI["sstabb"]["Position"] = UDim2.new(searchButtonPos.X.Scale + searchButtonSize.X.Scale + gap * 9, 0, searchButtonPos.Y.Scale, 0)
UI["sstabb"]["ImageLabel"]["Image"] = [[rbxasset://textures/StudioSharedUI/scripts.png]]
UI["sstabb"]["Parent"] = UI["NewButton"]["Parent"]

UI["sstab"] = UI["NewSectionFrame"]:Clone()
UI["sstab"]["Parent"] = UI["NewSectionFrame"]["Parent"]
UI["sstab"]["ExecuteButton"]:Destroy()

UI["sstabbb"] = UI["Back"]:Clone()
UI["sstabbb"]["Parent"] = UI["sstab"]




local TweenService = game:GetService("TweenService")

local ScreenGui = UI["1"]

-- Main Frame with black background
UI["uibg"] = Instance.new("Frame")
UI["uibg"].Parent = ScreenGui
UI["uibg"].ZIndex = -69
UI["uibg"].Size = UDim2.new(1, 0, 1, 0)
UI["uibg"].Position = UDim2.new(0, 0, 0, 0)
UI["uibg"].BackgroundColor3 = Color3.new(0, 0, 0)
UI["uibg"].BorderSizePixel = 0
UI["uibg"].BackgroundTransparency = 1  -- Start fully transparent

-- (Optional) UICorner for rounded edges if desired
local UICorner = Instance.new("UICorner")
UICorner.Parent = UI["uibg"]

-- InnerGlow overlay using an ImageLabel with a radial gradient
UI["uibgg"] = Instance.new("ImageLabel")
UI["uibgg"].Parent = UI["uibg"]
UI["uibgg"].Size = UDim2.new(1, 0, 1, 0)
UI["uibgg"].Position = UDim2.new(0, 0, 0, 0)
UI["uibgg"].BackgroundTransparency = 1
UI["uibgg"].Image = "rbxassetid://8387197183"
UI["uibgg"].ImageColor3 = Color3.fromRGB(255, 255, 255)
UI["uibgg"].ScaleType = Enum.ScaleType.Stretch
UI["uibgg"].ImageTransparency = 1  -- Start fully transparent

-- If your gradient image is square and you want to match rounded corners:
local InnerUICorner = Instance.new("UICorner")
InnerUICorner.Parent = UI["uibgg"]

-- Function for fade-in animation
local function uibgfadeIn()
    local tweenInfo = TweenInfo.new(1.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    
    local frameTween = TweenService:Create(UI["uibg"], tweenInfo, {BackgroundTransparency = 0.75})
    local imageTween = TweenService:Create(UI["uibgg"], tweenInfo, {ImageTransparency = 0})
    
    frameTween:Play()
    imageTween:Play()
end

-- Function for fade-out animation
local function uibgfadeOut()
    local tweenInfo = TweenInfo.new(1.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    
    local frameTween = TweenService:Create(UI["uibg"], tweenInfo, {BackgroundTransparency = 1})
    local imageTween = TweenService:Create(UI["uibgg"], tweenInfo, {ImageTransparency = 1})
    
    frameTween:Play()
    imageTween:Play()
end

-----------------
-- RGB UI CODE --
-----------------

-- -- Place this LocalScript as a child of your ScreenGui (e.g. UI["1"])
-- local RunService = game:GetService("RunService")
-- local screenGui = UI["1"]

-- -- You can adjust these values to control the speed and gradient offset.
-- local speed = 0.2      -- speed multiplier for the hue cycle
-- local gradOffset = 0.1 -- hue offset for the second color in gradients

-- -- The animation function iterates through all descendants and updates their color properties.
-- local function animateUI()
    -- -- Calculate the current hue (from light blue to dark blue)
    -- local hue = 0.6 -- Blue hue in HSV (Fixed)
    -- local brightness = math.abs(math.sin(tick() * speed)) * 0.5 + 0.5 -- Oscillates between 0.5 and 1
    -- local baseColor = Color3.fromHSV(hue, 1, brightness)
    -- local secondColor = Color3.fromHSV(hue, 1, brightness * 0.6) -- Darker shade of blue
    
    -- for _, object in ipairs(screenGui:GetDescendants()) do
        -- -- For GuiObjects that have a BackgroundColor3 property
        -- if object:IsA("GuiObject") then
            -- -- If the object has a UIGradient child, update its Color sequence.
            -- local gradient = object:FindFirstChildWhichIsA("UIGradient")
            -- if gradient then
                -- gradient.Color = ColorSequence.new({
                    -- ColorSequenceKeypoint.new(0, baseColor),
                    -- ColorSequenceKeypoint.new(1, secondColor)
                -- })
            -- else
                -- -- If no gradient exists, update the background color directly.
                -- if object:IsA("Frame") or object:IsA("TextButton") or object:IsA("TextBox") or object:IsA("ScrollingFrame") then
                    -- object.BackgroundColor3 = baseColor
                -- end
            -- end
        -- end

        -- -- Update UIStroke color if the object is a UIStroke.
        -- if object:IsA("UIStroke") then
            -- object.Color = baseColor
        -- end
    -- end
-- end

-- -- Connect the function to the RenderStepped event
-- RunService.RenderStepped:Connect(animateUI)

----------------------------------
-- BUTTON FUNCTIONALITY EXAMPLE --
----------------------------------

-- // StarterGui.FrostWareUI.EditorFrame.EditorFunctions \\ --
local function SCRIPT_5()
    local script = UI["5"]
    local SyntaxEditor = script.Parent:WaitForChild("Frame"):WaitForChild("ScrollingFrame"):WaitForChild("SyntaxEditor")

    local function RemoveRichText(input)
        return input:gsub("<[^>]->", "")
    end

    local function RunExecute(v)
        if dtc and dtc.schedule then
            return clonefunction(dtc.schedule)(v)
        else
            return loadstring(v)()
        end
    end

    script.Parent:WaitForChild("ExecuteButton").MouseButton1Click:Connect(function()
        RunExecute(RemoveRichText(SyntaxEditor.Text))
    end)

    script.Parent:WaitForChild("ClearButton").MouseButton1Click:Connect(function()
        SyntaxEditor.Text = ""
    end)

    script.Parent:WaitForChild("PasteButton").MouseButton1Click:Connect(function()
        --[[SyntaxEditor.Text = (getclipboard or function() end)()]] local syntaxEditor = SyntaxEditor; local fullText = (getclipboard or function() return "" end)(); local lines = {}; for line in fullText:gmatch("([^\n]+)") do table.insert(lines, line); end; local function updateSyntaxEditor() local chunkSize = 500; for i = 1, #lines, chunkSize do local chunk = table.concat(lines, "\n", i, math.min(i + chunkSize - 1, #lines)); syntaxEditor.Text = syntaxEditor.Text .. chunk .. "\n"; task.wait(0.01); end; end; updateSyntaxEditor();
    end)
end
task.spawn(SCRIPT_5)

-- // StarterGui.FrostWareUI.EditorFrame.Frame.ScrollingFrame.Line.Line Number.LocalScript \\ --
local function SCRIPT_b()
    local script = UI["b"]
    script.Parent.Parent.Parent.SyntaxEditor:GetPropertyChangedSignal("Text"):Connect(function()
        local Lines = #script.Parent.Parent.Parent.SyntaxEditor.Text:split("\n")
        local Num = ""
        for i = 1, Lines do
            Num = Num .. tostring(i) .. "\n"
        end
        script.Parent.Text = Num
    end)
end
task.spawn(SCRIPT_b)

-- // StarterGui.FrostWareUI.EditorFrame.Frame.ScrollingFrame.SyntaxEditor.SyntaxScript \\ --
local function SCRIPT_d()
    local script = UI["d"]
    local SyntaxEditor = script.Parent 

    -- These functions are assumed to be defined already:
    isfile = isfile or function(...) end
    readfile = readfile or function(...) end
    writefile = writefile or function(...) end

    ListCode = {
        -- Core Lua keywords and symbols
        ["local"]       = "rgb(173, 216, 230)",
        ["function"]    = "rgb(70, 130, 180)",
        ["end"]         = "rgb(70, 130, 180)",
        ["if"]          = "rgb(100, 149, 237)",
        ["then"]        = "rgb(100, 149, 237)",
        ["else"]        = "rgb(100, 149, 237)",
        ["elseif"]      = "rgb(100, 149, 237)",
        ["return"]      = "rgb(65, 105, 225)",
        ["while"]       = "rgb(70, 130, 180)",
        ["for"]         = "rgb(70, 130, 180)",
        ["do"]          = "rgb(70, 130, 180)",
        ["break"]       = "rgb(65, 105, 225)",
        ["continue"]    = "rgb(65, 105, 225)",
        ["and"]         = "rgb(70, 130, 180)",
        ["or"]          = "rgb(70, 130, 180)",
        ["not"]         = "rgb(70, 130, 180)",
        ["repeat"]      = "rgb(135, 206, 235)",
        ["until"]       = "rgb(135, 206, 235)",
        ["nil"]         = "rgb(100, 149, 237)",
        ["true"]        = "rgb(100, 149, 237)",
        ["false"]       = "rgb(100, 149, 237)",
        ["in"]          = "rgb(70, 130, 180)",
        ["goto"]        = "rgb(100, 149, 237)",
        ["%d+%.?%d*"]   = "rgb(0, 0, 255)",
        ['"[^"]*"']    = "rgb(176, 224, 230)",
        ["'[^']*'"]    = "rgb(176, 224, 230)",
        ["[%+%-%*/%%%^#=<>~]"] = "rgb(70, 130, 180)",
        ["[%(%)]"]     = "rgb(70, 130, 180)",
        ["[%[%]]"]     = "rgb(70, 130, 180)",
        ["[%{%}]"]     = "rgb(70, 130, 180)",
        ["%."]         = "rgb(30, 144, 255)",
        [":"]          = "rgb(30, 144, 255)",

        -- Core Lua built-in functions and libraries
        ["print"]          = "rgb(0, 191, 255)",
        ["wait"]           = "rgb(0, 191, 255)",
        ["loadstring"]     = "rgb(0, 0, 139)",
        ["assert"]         = "rgb(0, 191, 255)",
        ["error"]          = "rgb(0, 191, 255)",
        ["pcall"]          = "rgb(0, 191, 255)",
        ["xpcall"]         = "rgb(0, 191, 255)",
        ["tonumber"]       = "rgb(0, 191, 255)",
        ["tostring"]       = "rgb(0, 191, 255)",
        ["type"]           = "rgb(0, 191, 255)",
        ["next"]           = "rgb(0, 191, 255)",
        ["getmetatable"]   = "rgb(0, 191, 255)",
        ["setmetatable"]   = "rgb(0, 191, 255)",
        ["rawget"]         = "rgb(0, 191, 255)",
        ["rawset"]         = "rgb(0, 191, 255)",
        ["select"]         = "rgb(0, 191, 255)",
        ["collectgarbage"] = "rgb(0, 191, 255)",
        ["rawequal"]       = "rgb(0, 191, 255)",
        ["unpack"]         = "rgb(0, 191, 255)",
        ["dofile"]         = "rgb(0, 191, 255)",
        ["loadfile"]       = "rgb(0, 191, 255)",
        ["require"]        = "rgb(0, 191, 255)",

        -- Roblox Lua specific globals and functions
        ["game"]       = "rgb(0, 191, 255)",
        ["workspace"]  = "rgb(0, 191, 255)",
        ["script"]     = "rgb(0, 191, 255)",
        ["spawn"]      = "rgb(255, 165, 0)",
        ["delay"]      = "rgb(255, 165, 0)",
        ["task"]       = "rgb(255, 165, 0)",
        ["tick"]       = "rgb(255, 165, 0)",
        ["time"]       = "rgb(255, 165, 0)",

        -- Roblox services (common names)
        ["Players"]             = "rgb(255, 140, 0)",
        ["Lighting"]            = "rgb(255, 140, 0)",
        ["ReplicatedStorage"]   = "rgb(255, 140, 0)",
        ["ServerStorage"]       = "rgb(255, 140, 0)",
        ["TweenService"]        = "rgb(255, 140, 0)",
        ["RunService"]          = "rgb(255, 140, 0)",
        ["UserInputService"]    = "rgb(255, 140, 0)",
        ["MarketplaceService"]  = "rgb(255, 140, 0)",
        ["GuiService"]          = "rgb(255, 140, 0)",
        ["CoreGui"]             = "rgb(255, 140, 0)",
        ["Stats"]               = "rgb(255, 140, 0)",

        -- Roblox classes and constructors
        ["Instance"]    = "rgb(148, 0, 211)",
        ["BrickColor"]  = "rgb(148, 0, 211)",
        ["Vector3"]     = "rgb(148, 0, 211)",
        ["CFrame"]      = "rgb(148, 0, 211)",
        ["Color3"]      = "rgb(148, 0, 211)",
        ["UDim2"]       = "rgb(148, 0, 211)",
        ["Rect"]        = "rgb(148, 0, 211)",
        ["Ray"]         = "rgb(148, 0, 211)",
        ["Region3"]     = "rgb(148, 0, 211)",
        ["Enum"]        = "rgb(148, 0, 211)"
    }    

    -- Helper to escape non-alphanumeric characters for simple keywords.
    local function escapePattern(text)
        return text:gsub("([^%w])", "%%%1")
    end

    function SetSyntax(Str)
        for keyword, color in pairs(ListCode) do
            -- If the keyword is only alphanumeric, escape it; otherwise assume it's a complex pattern.
            local pattern = ("%f[%a]" .. (keyword:match("^%w+$") and escapePattern(keyword) or keyword) .. "%f[%A]")
            Str = Str:gsub(pattern, '<font color="' .. color .. '">' .. keyword .. '</font>')
        end
        return Str
    end

    task.spawn(function()
        if isfile("Editor.txt") and readfile("Editor.txt") ~= "" and readfile("Editor.txt") ~= nil then
            SyntaxEditor.Text = SetSyntax(readfile("Editor.txt"):gsub("<[^>]+>", ""))
        end

        SyntaxEditor.Focused:Connect(function()
            SyntaxEditor.Text = SyntaxEditor.Text:gsub("<[^>]+>", "")
        end)

        SyntaxEditor.FocusLost:Connect(function()
            SyntaxEditor.Text = SetSyntax(SyntaxEditor.Text:gsub("<[^>]+>", ""))
        end)

        if SyntaxEditor.Text ~= "" then
            SyntaxEditor.Text = SetSyntax(SyntaxEditor.Text:gsub("<[^>]+>", ""))
        end

        SyntaxEditor:GetPropertyChangedSignal("Text"):Connect(function()
            if SyntaxEditor.Text ~= "" then
                writefile("Editor.txt", SyntaxEditor.Text)
            end
        end)
    end)
end
task.spawn(SCRIPT_d)

-- // StarterGui.FrostWareUI.FWButton.LocalScript \\ --
local function SCRIPT_2b()
    local scriptRef = UI["2b"]
    local button = scriptRef.Parent
    local screenGui = button.Parent
    local tweenService = game:GetService("TweenService")
    
    local toggle = true
    local originalProperties = {}

    -- Cache original properties of frames
    for _, frame in ipairs(screenGui:GetChildren()) do
        if frame:IsA("Frame") and frame ~= UI["uibg"] then
            originalProperties[frame] = {
                Position = frame.Position,
                Size = frame.Size,
                Visible = frame.Visible
            }
        end
    end

    button.MouseButton1Click:Connect(function()
        if toggle then
            -- Minimize all frames except FWButton
            for frame, props in pairs(originalProperties) do
                if frame:IsA("Frame") then
                    local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
                    local goal = {
                        Position = UDim2.new(0.5, 0, 0.5, 0),
                        Size = UDim2.new(0, 0, 0, 0)
                    }
                    local tween = tweenService:Create(frame, tweenInfo, goal)
                    tween:Play()
                    tween.Completed:Connect(function()
                        frame.Visible = false
                    end)
                end
            end
            uibgfadeOut()
            toggle = false
        else
            -- Restore all frames
            for frame, props in pairs(originalProperties) do
                if frame:IsA("Frame") then
                    frame.Visible = props.Visible
                    local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
                    local tween = tweenService:Create(frame, tweenInfo, {
                        Position = props.Position,
                        Size = props.Size
                    })
                    tween:Play()
                end
            end
            uibgfadeIn()
            toggle = true
        end
    end)
end
task.spawn(SCRIPT_2b)

-- // StarterGui.FrostWareUI.FWButton.LocalScript (2c) \\ --
local function SCRIPT_2c()
    local script = UI["2c"]
    local UserInputService = game:GetService("UserInputService")
    local runService = game:GetService("RunService")

    local gui = script.Parent
    local dragging = false
    local dragInput, dragStart, initialPos, lastMousePos, lastGoalPos
    local DRAG_SPEED = 8  -- The speed of the UI drag.

    local function Lerp(a, b, m)
        return a + (b - a) * m
    end

    local function Update(dt)
        if not initialPos then return end

        if not dragging and lastGoalPos then
            gui.Position = UDim2.new(
                initialPos.X.Scale, Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED),
                initialPos.Y.Scale, Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED)
            )
            return 
        end

        local currentMousePos = UserInputService:GetMouseLocation()
        local delta = lastMousePos - currentMousePos
        local newX = initialPos.X.Offset - delta.X
        local newY = initialPos.Y.Offset - delta.Y
        lastGoalPos = UDim2.new(initialPos.X.Scale, newX, initialPos.Y.Scale, newY)
        gui.Position = UDim2.new(
            initialPos.X.Scale, Lerp(gui.Position.X.Offset, newX, dt * DRAG_SPEED),
            initialPos.Y.Scale, Lerp(gui.Position.Y.Offset, newY, dt * DRAG_SPEED)
        )
    end

    gui.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            initialPos = gui.Position
            lastMousePos = UserInputService:GetMouseLocation()

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    gui.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)

    runService.Heartbeat:Connect(Update)
end
task.spawn(SCRIPT_2c)

-- // StarterGui.FrostWareUI.SearchFrame.CloudAPI \\ --
local function SCRIPT_30()
    local script = UI["30"]
    local Scripts = script.Parent
    local SearchButton = Scripts:WaitForChild("SearchButton")
    local SearchTextBox = Scripts:WaitForChild("SearchBar")
    local HttpService = game:GetService("HttpService")

    local function RunExecute(v)
        if dtc and dtc.schedule then
            return clonefunction(dtc.schedule)(v)
        else
            return loadstring(v)()
        end
    end

    local setclipboard = setclipboard or function(_) end

    local function Add_Tab(GameName, NameScript, ScriptCode, ImageCode)
        local ScriptFrame = Scripts:WaitForChild("ScrollingFrame"):FindFirstChild("ScriptFrame")
        local New = ScriptFrame:Clone()

        local Button = New:FindFirstChild("ImageButton")

        Button.Image = ImageCode or "rbxassetid://72797583317405"
        Button.GameLabel.Text = GameName or "Unknown Game"
        Button.NameLabel.Text = NameScript or "Unknown Script"

        New.Visible = true
        New.Parent = Scripts:WaitForChild("ScrollingFrame")

        Button.MouseButton1Click:Connect(function()
            RunExecute(ScriptCode)
        end)
    end

    local function StartAPI()
        for _, v in ipairs(Scripts:WaitForChild("ScrollingFrame"):GetChildren()) do
            if v:IsA("Frame") and v.Name == "ScriptFrame" and v.Visible then
                v:Destroy()
            end
        end

        local API = "https://scriptblox.com/api/script/search?q=" .. HttpService:UrlEncode(SearchTextBox.Text)
        local s, r = pcall(function()
            return HttpService:JSONDecode(game:HttpGetAsync(API))
        end)

        if s and r and r.result and r.result.scripts then
            for _, v in ipairs(r.result.scripts) do
                if not v.isPatched then
                    local gameName = (v.game and v.game.name) or "Unknown Game"
                    local scriptName = v.title or "Untitled"
                    local scriptCode = v.script or ""
                    local image
                    if v.isUniversal == true then
                        image = "rbxassetid://111973669155622"
                    elseif v.game and v.game.gameId then
                        image = "https://assetgame.roblox.com/Game/Tools/ThumbnailAsset.ashx?aid=" .. v.game.gameId .. "&fmt=png&wd=420&ht=420"
                    else
                        image = "rbxassetid://72797583317405"
                    end
                    Add_Tab(gameName, scriptName, scriptCode, image)
                    task.wait(0.3)
                end
            end
        end
    end

    SearchButton.MouseButton1Click:Connect(StartAPI)
    SearchTextBox.FocusLost:Connect(StartAPI)
end
task.spawn(SCRIPT_30)

-- // StarterGui.FrostWareUI.SearchFrame.ScrollingFrame.ScriptFrame.ImageButton.NameLabel.LocalScript \\ --
local function SCRIPT_36()
    local script = UI["36"]
    script.Parent.Font = Enum.Font.GothamBold
end
task.spawn(SCRIPT_36)

-- // StarterGui.FrostWareUI.SearchFrame.ScrollingFrame.ScriptFrame.ImageButton.GameLabel.LocalScript \\ --
local function SCRIPT_38()
    local script = UI["38"]
    script.Parent.Font = Enum.Font.GothamBold
end
task.spawn(SCRIPT_38)

-- // StarterGui.FrostWareUI.SearchFrame.SearchBar.FontScript \\ --
local function SCRIPT_3d()
    local script = UI["3d"]
    script.Parent.Font = Enum.Font.GothamBold
end
task.spawn(SCRIPT_3d)

-- First Script (Opening the SearchBar)
local TweenService = game:GetService("TweenService")
local button = UI["20"]
local editorFrame = UI["6"]
local screenGui = UI["1"]
local searchFrameContainer = screenGui:FindFirstChild("SearchFrame")
local searchBar = searchFrameContainer and searchFrameContainer:FindFirstChild("SearchBar")

-- Create a global flag if it doesn’t exist yet
if _G.EditorAnimating == nil then
    _G.EditorAnimating = false
end

if searchFrameContainer and searchBar then
    local editorOriginalSize = editorFrame.Size
    local searchBarOriginalSize = searchBar.Size

    button.MouseButton1Click:Connect(function()
        if _G.EditorAnimating then return end
        _G.EditorAnimating = true  -- start animating

        local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

        -- Tween the editorFrame’s Y-size to 0 (collapse vertically)
        local targetEditorSize = UDim2.new(editorOriginalSize.X.Scale, editorOriginalSize.X.Offset, 0, 0)
        local editorTween = TweenService:Create(editorFrame, tweenInfo, {Size = targetEditorSize})
        editorTween:Play()
        editorTween.Completed:Wait()

        editorFrame.Size = editorOriginalSize
        editorFrame.Parent.Visible = false

        -- Prepare and show the search frame container and search bar
        searchBar.Size = UDim2.new(0, 0, searchBarOriginalSize.Y.Scale, searchBarOriginalSize.Y.Offset)
        searchFrameContainer.Visible = true

        -- Tween the search bar back to its original size
        local searchTween = TweenService:Create(searchBar, tweenInfo, {Size = searchBarOriginalSize})
        searchTween:Play()
        searchTween.Completed:Wait()

        _G.EditorAnimating = false  -- animation finished
    end)
end
-----------------------------------------------------------
-- Second Script (Closing the SearchBar and Reopening Editor)

local TweenService = game:GetService("TweenService")
local button = UI["3f"]              -- Ensure this is the correct button for closing the search bar.
local searchFrameContainer = UI["2d"]  -- Ensure this is the correct container.
local screenGui = UI["1"]
local editorFrame = UI["6"]

-- Make sure the searchFrameContainer has a child named "SearchBar"
local searchBar = searchFrameContainer and searchFrameContainer:FindFirstChild("SearchBar")

-- Debug: Check that all elements exist.
if not button then
    warn("Script2: Button UI['3f'] not found.")
end
if not searchFrameContainer then
    warn("Script2: searchFrameContainer UI['3b'] not found.")
end
if not editorFrame then
    warn("Script2: editorFrame UI['6'] not found.")
end
if not searchBar then
    warn("Script2: searchBar not found under searchFrameContainer.")
end

if _G.EditorAnimating == nil then
    _G.EditorAnimating = false
end

if editorFrame and searchFrameContainer and searchBar then
    local editorOriginalSize = editorFrame.Size
    local searchBarOriginalSize = searchBar.Size

    button.MouseButton1Click:Connect(function()
        print("Script2: Button clicked.")
        if _G.EditorAnimating then 
            print("Script2: Animation already in progress, exiting.")
            return 
        end
        _G.EditorAnimating = true

        local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

        -- Tween the search bar's width to 0 (collapse horizontally)
        local targetSearchBarSize = UDim2.new(0, 0, searchBarOriginalSize.Y.Scale, searchBarOriginalSize.Y.Offset)
        print("Script2: Tweening searchBar to target size: ", targetSearchBarSize)
        local searchTween = TweenService:Create(searchBar, tweenInfo, {Size = targetSearchBarSize})
        searchTween:Play()
        searchTween.Completed:Wait()
        print("Script2: SearchBar tween completed.")

        -- Reset searchBar size and hide its container
        searchBar.Size = searchBarOriginalSize
        searchFrameContainer.Visible = false
        print("Script2: SearchFrameContainer hidden.")

        -- Prepare and show the editorFrame (start with 0 height)
        editorFrame.Size = UDim2.new(editorOriginalSize.X.Scale, editorOriginalSize.X.Offset, 0, 0)
        editorFrame.Parent.Visible = true
        print("Script2: Editor frame container shown. Tweening editorFrame back to original size: ", editorOriginalSize)

        -- Tween the editorFrame back to its original size
        local editorTween = TweenService:Create(editorFrame, tweenInfo, {Size = editorOriginalSize})
        editorTween:Play()
        editorTween.Completed:Wait()
        print("Script2: EditorFrame tween completed.")

        _G.EditorAnimating = false
        print("Script2: Animation complete, EditorAnimating reset.")
    end)
else
    warn("Script2: One or more required UI elements were not found. Check your UI references.")
end

------------------------- DEFUALT SCRIPT HUB SECTION STARTS HERE -------------------------


local TweenService = game:GetService("TweenService")
local newButton = UI["NewButton"]
local backButton = UI["Back"]
local editorFrame = UI["6"]
local sectionFrame = UI["NewSectionFrame"]

if _G.EditorAnimating == nil then
    _G.EditorAnimating = false
end

-- Table to store each button's original size
local originalSizes = {}

newButton.MouseButton1Click:Connect(function()
    if _G.EditorAnimating then return end
    _G.EditorAnimating = true

    local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local editorOriginalSize = editorFrame.Size
    local targetEditorSize = UDim2.new(editorOriginalSize.X.Scale, editorOriginalSize.X.Offset, 0, 0)
    local editorTween = TweenService:Create(editorFrame, tweenInfo, {Size = targetEditorSize})
    editorTween:Play()
    editorTween.Completed:Wait()

    editorFrame.Size = editorOriginalSize
    sectionFrame.Visible = true
    editorFrame.Parent.Visible = false

    for _, textButton in ipairs(sectionFrame:GetChildren()) do
        if textButton:IsA("TextButton") and textButton ~= backButton then
            if not originalSizes[textButton] then
                originalSizes[textButton] = textButton.Size
            end

            textButton.Size = UDim2.new(0, 0, originalSizes[textButton].Y.Scale, originalSizes[textButton].Y.Offset)
            textButton.Visible = true

            local btnTween = TweenService:Create(textButton, tweenInfo, {Size = originalSizes[textButton]})
            btnTween:Play()
        end
    end

    _G.EditorAnimating = false
end)

backButton.MouseButton1Click:Connect(function()
    if _G.EditorAnimating then return end
    _G.EditorAnimating = true

    local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local animatingButtons = {}
    for _, textButton in ipairs(sectionFrame:GetChildren()) do
        if textButton:IsA("TextButton") and textButton ~= backButton then
            table.insert(animatingButtons, textButton)
        end
    end

    local animationsComplete = 0
    local totalButtons = #animatingButtons

    local function checkAnimationsComplete()
        animationsComplete = animationsComplete + 1
        if animationsComplete >= totalButtons then
            sectionFrame.Visible = false

            editorFrame.Parent.Visible = true
            local targetEditorSize = editorFrame.Size
            editorFrame.Size = UDim2.new(targetEditorSize.X.Scale, targetEditorSize.X.Offset, 0, 0)
            local editorTween = TweenService:Create(editorFrame, tweenInfo, {Size = targetEditorSize})
            editorTween:Play()
            editorTween.Completed:Wait()

            _G.EditorAnimating = false
        end
    end

    if totalButtons == 0 then
        checkAnimationsComplete()
    else
        for _, textButton in ipairs(animatingButtons) do
            if not originalSizes[textButton] then
                originalSizes[textButton] = textButton.Size
            end

            local btnTween = TweenService:Create(textButton, tweenInfo, {
                Size = UDim2.new(0, 0, originalSizes[textButton].Y.Scale, originalSizes[textButton].Y.Offset)
            })
            btnTween:Play()
            btnTween.Completed:Connect(function()
                textButton.Visible = false
                checkAnimationsComplete()
            end)
        end
    end
end)



local TweenService = game:GetService("TweenService")
local newButton = UI["stabb"]
local backButton = UI["stabbb"]
local editorFrame = UI["6"]
local sectionFrame = UI["stab"]

if _G.EditorAnimating == nil then
    _G.EditorAnimating = false
end

-- Table to store each button's original size
local originalSizes = {}

newButton.MouseButton1Click:Connect(function()
    if _G.EditorAnimating then return end
    _G.EditorAnimating = true

    local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local editorOriginalSize = editorFrame.Size
    local targetEditorSize = UDim2.new(editorOriginalSize.X.Scale, editorOriginalSize.X.Offset, 0, 0)
    local editorTween = TweenService:Create(editorFrame, tweenInfo, {Size = targetEditorSize})
    editorTween:Play()
    editorTween.Completed:Wait()

    editorFrame.Size = editorOriginalSize
    sectionFrame.Visible = true
    editorFrame.Parent.Visible = false

    for _, textButton in ipairs(sectionFrame:GetChildren()) do
        if textButton:IsA("TextButton") and textButton ~= backButton then
            if not originalSizes[textButton] then
                originalSizes[textButton] = textButton.Size
            end

            textButton.Size = UDim2.new(0, 0, originalSizes[textButton].Y.Scale, originalSizes[textButton].Y.Offset)
            textButton.Visible = true

            local btnTween = TweenService:Create(textButton, tweenInfo, {Size = originalSizes[textButton]})
            btnTween:Play()
        end
    end

    _G.EditorAnimating = false
end)

backButton.MouseButton1Click:Connect(function()
    if _G.EditorAnimating then return end
    _G.EditorAnimating = true

    local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local animatingButtons = {}
    for _, textButton in ipairs(sectionFrame:GetChildren()) do
        if textButton:IsA("TextButton") and textButton ~= backButton then
            table.insert(animatingButtons, textButton)
        end
    end

    local animationsComplete = 0
    local totalButtons = #animatingButtons

    local function checkAnimationsComplete()
        animationsComplete = animationsComplete + 1
        if animationsComplete >= totalButtons then
            sectionFrame.Visible = false

            editorFrame.Parent.Visible = true
            local targetEditorSize = editorFrame.Size
            editorFrame.Size = UDim2.new(targetEditorSize.X.Scale, targetEditorSize.X.Offset, 0, 0)
            local editorTween = TweenService:Create(editorFrame, tweenInfo, {Size = targetEditorSize})
            editorTween:Play()
            editorTween.Completed:Wait()

            _G.EditorAnimating = false
        end
    end

    if totalButtons == 0 then
        checkAnimationsComplete()
    else
        for _, textButton in ipairs(animatingButtons) do
            if not originalSizes[textButton] then
                originalSizes[textButton] = textButton.Size
            end

            local btnTween = TweenService:Create(textButton, tweenInfo, {
                Size = UDim2.new(0, 0, originalSizes[textButton].Y.Scale, originalSizes[textButton].Y.Offset)
            })
            btnTween:Play()
            btnTween.Completed:Connect(function()
                textButton.Visible = false
                checkAnimationsComplete()
            end)
        end
    end
end)

local TweenService = game:GetService("TweenService")
local newButton = UI["sstabb"]
local backButton = UI["sstabbb"]
local editorFrame = UI["6"]
local sectionFrame = UI["sstab"]

if _G.EditorAnimating == nil then
    _G.EditorAnimating = false
end

-- Table to store each button's original size
local originalSizes = {}

newButton.MouseButton1Click:Connect(function()
    if _G.EditorAnimating then return end
    _G.EditorAnimating = true

    local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local editorOriginalSize = editorFrame.Size
    local targetEditorSize = UDim2.new(editorOriginalSize.X.Scale, editorOriginalSize.X.Offset, 0, 0)
    local editorTween = TweenService:Create(editorFrame, tweenInfo, {Size = targetEditorSize})
    editorTween:Play()
    editorTween.Completed:Wait()

    editorFrame.Size = editorOriginalSize
    sectionFrame.Visible = true
    editorFrame.Parent.Visible = false

    for _, textButton in ipairs(sectionFrame:GetChildren()) do
        if textButton:IsA("TextButton") and textButton ~= backButton then
            if not originalSizes[textButton] then
                originalSizes[textButton] = textButton.Size
            end

            textButton.Size = UDim2.new(0, 0, originalSizes[textButton].Y.Scale, originalSizes[textButton].Y.Offset)
            textButton.Visible = true

            local btnTween = TweenService:Create(textButton, tweenInfo, {Size = originalSizes[textButton]})
            btnTween:Play()
        end
    end

    _G.EditorAnimating = false
end)

backButton.MouseButton1Click:Connect(function()
    if _G.EditorAnimating then return end
    _G.EditorAnimating = true

    local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local animatingButtons = {}
    for _, textButton in ipairs(sectionFrame:GetChildren()) do
        if textButton:IsA("TextButton") and textButton ~= backButton then
            table.insert(animatingButtons, textButton)
        end
    end

    local animationsComplete = 0
    local totalButtons = #animatingButtons

    local function checkAnimationsComplete()
        animationsComplete = animationsComplete + 1
        if animationsComplete >= totalButtons then
            sectionFrame.Visible = false

            editorFrame.Parent.Visible = true
            local targetEditorSize = editorFrame.Size
            editorFrame.Size = UDim2.new(targetEditorSize.X.Scale, targetEditorSize.X.Offset, 0, 0)
            local editorTween = TweenService:Create(editorFrame, tweenInfo, {Size = targetEditorSize})
            editorTween:Play()
            editorTween.Completed:Wait()

            _G.EditorAnimating = false
        end
    end

    if totalButtons == 0 then
        checkAnimationsComplete()
    else
        for _, textButton in ipairs(animatingButtons) do
            if not originalSizes[textButton] then
                originalSizes[textButton] = textButton.Size
            end

            local btnTween = TweenService:Create(textButton, tweenInfo, {
                Size = UDim2.new(0, 0, originalSizes[textButton].Y.Scale, originalSizes[textButton].Y.Offset)
            })
            btnTween:Play()
            btnTween.Completed:Connect(function()
                textButton.Visible = false
                checkAnimationsComplete()
            end)
        end
    end
end)



------------------ SCRIPTS & BUTTONS -----------------

UI["IY_B"] = UI["20"]:Clone()           -- Clone UI["20"] and store it in UI["IY_B"]
UI["IY_B"].Parent = UI["NewSectionFrame"] -- Set the clone's parent to UI["NewSectionFrame"]
local originalSize = UI["20"].Size
UI["IY_B"].Size = UDim2.new(originalSize.X.Scale*4, originalSize.X.Offset, originalSize.Y.Scale, originalSize.Y.Offset)
local originalPos = UI["20"].Position
UI["IY_B"].Position = UDim2.new(originalPos.X.Scale, originalPos.X.Offset, 1 - originalPos.Y.Scale, originalPos.Y.Offset)
UI["IY_B"].ImageLabel:Destroy()
UI["IY_B"].Text = "Infinite Yield"
UI["IY_B"].MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)

UI["RJ_B"] = UI["IY_B"]:Clone()
UI["RJ_B"].Parent = UI["NewSectionFrame"]
UI["RJ_B"].Text = "Rejoin"
UI["RJ_B"].Position = UDim2.new(originalPos.X.Scale, originalPos.X.Offset, 1.3 - originalPos.Y.Scale, originalPos.Y.Offset)
UI["RJ_B"].MouseButton1Click:Connect(function()
    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game:GetService("Players").LocalPlayer)
end)

UI["ESP_B"] = UI["IY_B"]:Clone()
UI["ESP_B"].Parent = UI["NewSectionFrame"]
UI["ESP_B"].Text = "Observation Haki"
UI["ESP_B"].Position = UDim2.new(originalPos.X.Scale, originalPos.X.Offset, 1.15 - originalPos.Y.Scale, originalPos.Y.Offset)

-- Services  
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")

local localPlayer = Players.LocalPlayer
local camera = Workspace.CurrentCamera

-- Table to hold custom nametag GUIs for players  
local customNametags = {}

-- ESP Toggle Variable  
local ESP_Enabled = false

---------------------------------------------------------
-- Helper: Invert a Color  
---------------------------------------------------------
function invertColor(color)
    return Color3.new(1 - color.R, 1 - color.G, 1 - color.B)
end
---------------------------------------------------------
-- Cleanup Nametag for a Player  
---------------------------------------------------------
local function cleanupNametag(player)
    if customNametags[player] then
        customNametags[player]:Destroy()
        customNametags[player] = nil
    end
end

---------------------------------------------------------
-- Create Custom Nametag for a Player (using BillboardGui)
---------------------------------------------------------
local function createNametag(player)
    if not ESP_Enabled then return end  -- Check if ESP is enabled  
    if player == localPlayer then return end  
    cleanupNametag(player)

    if not player.Character or not player.Character:FindFirstChild("Head") then return end

    local character = player.Character
    local head = character:FindFirstChild("Head")

    -- Disable default nametag  
    local humanoid = character:FindFirstChildWhichIsA("Humanoid")
    if humanoid then
        humanoid.NameDisplayDistance = 0
    end

    -- Create a BillboardGui attached to the player's Head  
    local billboard = Instance.new("BillboardGui")
    billboard.Name = "CustomNametagBillboard"
    billboard.Adornee = head
    billboard.AlwaysOnTop = true
    billboard.Size = UDim2.new(0, 200, 0, 50)
    billboard.StudsOffset = Vector3.new(0, 2, 0)
    billboard.Parent = head

    -- Create a TextLabel inside the BillboardGui with your desired properties  
    local label = Instance.new("TextLabel", billboard)
    label.Size = UDim2.new(1, 0, 1, 0)
    label.BackgroundTransparency = 1
    label.Text = player.Name
    label.TextColor3 = Color3.new(1, 1, 1)
    label.TextStrokeTransparency = 0.5
    label.Font = Enum.Font.Code
    label.TextSize = 20
    -- Set AnchorPoint so that the label's bottom center aligns with the BillboardGui
    label.AnchorPoint = Vector2.new(0.5, 1)
    label.Position = UDim2.new(0.5, 0, 1, 0)

    -- Store the BillboardGui in our table using the player as the key  
    customNametags[player] = billboard
end

---------------------------------------------------------
-- Set Up Highlight on Character  
---------------------------------------------------------
local function applyHighlight(player)
    if not ESP_Enabled then return end  -- Check if ESP is enabled  
    if player == localPlayer then return end  
    local character = player.Character
    if not character then return end

    if character:FindFirstChild("ESP_Highlight") then
        character.ESP_Highlight:Destroy()
    end

    local highlight = Instance.new("Highlight")
    highlight.Name = "ESP_Highlight"
    highlight.Adornee = character
    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    highlight.FillColor = player.TeamColor.Color
    highlight.FillTransparency = 0.5
    highlight.OutlineColor = player.TeamColor.Color
    highlight.OutlineTransparency = 0
    highlight.Parent = character
end

---------------------------------------------------------
-- Handle Character Addition  
---------------------------------------------------------
local function onCharacterAdded(character, player)
    applyHighlight(player)
    local head = character:WaitForChild("Head", 5)
    if head then
        createNametag(player)
    end

    character.AncestryChanged:Connect(function(child, parent)
        if not parent then
            cleanupNametag(player)
        end
    end)
end

---------------------------------------------------------
-- Handle Player Addition  
---------------------------------------------------------
local function onPlayerAdded(player)
    player.AncestryChanged:Connect(function(child, parent)
        if not parent then
            cleanupNametag(player)
        end
    end)

    player.CharacterAdded:Connect(function(character)
        onCharacterAdded(character, player)
    end)

    if player.Character then
        onCharacterAdded(player.Character, player)
    end
end

-- Set up for existing players  
for _, player in ipairs(Players:GetPlayers()) do
    onPlayerAdded(player)
end

Players.PlayerAdded:Connect(onPlayerAdded)

---------------------------------------------------------
-- Update Routine  
-- We update the color of the label each RenderStep based on 
-- what object (if any) is occluding the player's head.
---------------------------------------------------------
RunService.RenderStepped:Connect(function()
    if not ESP_Enabled then return end  

    for player, billboard in pairs(customNametags) do  
        if player and player.Character then  
            local head = player.Character:FindFirstChild("Head")  
            if head then  
                local headPos = head.Position + Vector3.new(0, 1.5, 0)  
                local screenPos, onScreen = camera:WorldToViewportPoint(headPos)  

                local label = billboard:FindFirstChildOfClass("TextLabel")  
                if label then  
                    local origin = camera.CFrame.Position  
                    local direction = (headPos - origin).Unit * (headPos - origin).Magnitude  

                    local raycastParams = RaycastParams.new()  
                    raycastParams.FilterDescendantsInstances = {player.Character}  
                    raycastParams.FilterType = Enum.RaycastFilterType.Blacklist  

                    local rayResult = Workspace:Raycast(origin, direction, raycastParams)
                    if rayResult then  
                        print("Ray hit:", rayResult.Instance:GetFullName(), "Color:", rayResult.Instance.Color)
                        label.TextColor3 = invertColor(rayResult.Instance.Color)
                    else  
                        print("No object hit by ray.")
                        label.TextColor3 = Color3.new(1, 1, 1) -- Default white  
                    end  
                end  

                billboard.Enabled = onScreen  
            else  
                cleanupNametag(player)  
            end  
        end  
    end  
end)

---------------------------------------------------------
-- Button Click Event (Toggles ESP)
---------------------------------------------------------

UI["ESP_B"].MouseButton1Click:Connect(function()
    ESP_Enabled = not ESP_Enabled

    if ESP_Enabled then
        for _, player in ipairs(Players:GetPlayers()) do
            if player ~= localPlayer then
                applyHighlight(player)
                createNametag(player)
            end
        end
    else
        for player, _ in pairs(customNametags) do
            cleanupNametag(player)
        end

        for _, player in ipairs(Players:GetPlayers()) do
            if player.Character and player.Character:FindFirstChild("ESP_Highlight") then
                player.Character.ESP_Highlight:Destroy()
            end
        end
    end
end)

UI["NA_B"] = UI["IY_B"]:Clone()
UI["NA_B"].Parent = UI["NewSectionFrame"]
UI["NA_B"].Text = "Nameless Admin"
UI["NA_B"].Position = UDim2.new(originalPos.X.Scale, originalPos.X.Offset, 1.45 - originalPos.Y.Scale, originalPos.Y.Offset)
UI["NA_B"].MouseButton1Click:Connect(function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source'))()
end)

--------------------------------------------------
-- UI Setup
--------------------------------------------------

-- Clone the base button and set it up
UI["Dex_B"] = UI["IY_B"]:Clone()
UI["Dex_B"].Parent = UI["NewSectionFrame"]
UI["Dex_B"].Text = "Mobile Dex (Keyless)"

-- Example originalPos table; adjust these values as needed
local originalPos = {
    X = { Scale = 0.2, Offset = 0 },
    Y = { Scale = 0.2, Offset = 0 }
}
UI["Dex_B"].Position = UDim2.new(1 - originalPos.X.Scale, originalPos.X.Offset, 1 - originalPos.Y.Scale, originalPos.Y.Offset)

-- Toggle the walkfling effect when the button is clicked
UI["Dex_B"].MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Kaiso-666/Kaiso-666/refs/heads/main/MobileDex.lua"))()
end)


-- Helper function to extract the file name from a path and remove the .lua extension if present.
local function getFileName(filePath)
    local fileName = filePath:match("([^/]+)$")
    return fileName:gsub("%.lua$", "")
end

-- Create button for the first file.
UI["S1_B"] = UI["IY_B"]:Clone()
UI["S1_B"].Parent = UI["sstab"]
UI["S1_B"].Text = getFileName(selectedFiles[1])
UI["S1_B"].MouseButton1Click:Connect(function()
    ExecuteFile1()
end)

-- Create button for the second file.
UI["S2_B"] = UI["RJ_B"]:Clone()
UI["S2_B"].Parent = UI["sstab"]
UI["S2_B"].Text = getFileName(selectedFiles[2])
UI["S2_B"].MouseButton1Click:Connect(function()
    ExecuteFile2()
end)

-- Create button for the third file.
UI["S3_B"] = UI["ESP_B"]:Clone()
UI["S3_B"].Parent = UI["sstab"]
UI["S3_B"].Text = getFileName(selectedFiles[3])
UI["S3_B"].MouseButton1Click:Connect(function()
    ExecuteFile3()
end)

-- Create button for the fourth file.
UI["S4_B"] = UI["NA_B"]:Clone()
UI["S4_B"].Parent = UI["sstab"]
UI["S4_B"].Text = getFileName(selectedFiles[4])
UI["S4_B"].MouseButton1Click:Connect(function()
    ExecuteFile4()
end)

-- Create folder and settings file if they don't exist.
local settingsFolder = "FW_Data"
local settingsFile = settingsFolder .. "/settings.lua"

if not isfolder(settingsFolder) then
    makefolder(settingsFolder)
end

if not isfile(settingsFile) then
    local defaultSettings = "return {RGBToggle = false}"
    writefile(settingsFile, defaultSettings)
end

-- Load the settings table.
local settings = loadfile(settingsFile)()

-- Function to save settings to file.
local function saveSettings()
    local data = "return {RGBToggle = " .. tostring(settings.RGBToggle) .. "}"
    writefile(settingsFile, data)
end

-- Define services and variables for UI animation.
local RunService = game:GetService("RunService")
local screenGui = UI["1"]
local speed = 0.2      -- Speed multiplier for the hue cycle.
local gradOffset = 0.1 -- Hue offset for the second color in gradients.
local blueEffectRunning = false
local rgbEffectRunning = false
local blueConnection
local rgbConnection

-- RGB animation function.
local function animateRGB()
    local hue = (tick() * speed) % 1
    local baseColor = Color3.fromHSV(hue, 1, 1)
    local secondColor = Color3.fromHSV((hue + gradOffset) % 1, 1, 1)
    
    for _, object in ipairs(screenGui:GetDescendants()) do
        if object:IsA("GuiObject") then
            local gradient = object:FindFirstChildWhichIsA("UIGradient")
            if gradient then
                gradient.Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, baseColor),
                    ColorSequenceKeypoint.new(1, secondColor)
                })
            else
                if object:IsA("Frame") or object:IsA("TextButton") or object:IsA("TextBox") or object:IsA("ScrollingFrame") then
                    object.BackgroundColor3 = baseColor
                end
            end
        end
        
        if object:IsA("UIStroke") then
            object.Color = baseColor
        end
    end
end

-- Blue animation function.
local function animateBlue()
    local hue = 0.6 -- Fixed blue hue.
    local brightness = math.abs(math.sin(tick() * speed)) * 0.5 + 0.5
    local baseColor = Color3.fromHSV(hue, 1, brightness)
    local secondColor = Color3.fromHSV(hue, 1, brightness * 0.6)
    
    for _, object in ipairs(screenGui:GetDescendants()) do
        if object:IsA("GuiObject") then
            local gradient = object:FindFirstChildWhichIsA("UIGradient")
            if gradient then
                gradient.Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, baseColor),
                    ColorSequenceKeypoint.new(1, secondColor)
                })
            else
                if object:IsA("Frame") or object:IsA("TextButton") or object:IsA("TextBox") or object:IsA("ScrollingFrame") then
                    object.BackgroundColor3 = baseColor
                end
            end
        end
        
        if object:IsA("UIStroke") then
            object.Color = baseColor
        end
    end
end

-- Create the RGB button and set up its toggle functionality.
UI["RGB_B"] = UI["IY_B"]:Clone()
UI["RGB_B"].Parent = UI["stab"]
UI["RGB_B"].Text = "RGB Lights"

UI["RGB_B"].MouseButton1Click:Connect(function()
    if rgbEffectRunning then
        -- Turn off RGB effect.
        if rgbConnection then
            rgbConnection:Disconnect()
        end
        rgbEffectRunning = false
        settings.RGBToggle = false
        saveSettings()
        
        -- Resume blue effect.
        if not blueEffectRunning then
            blueConnection = RunService.RenderStepped:Connect(animateBlue)
            blueEffectRunning = true
        end
    else
        -- Turn off blue effect.
        if blueConnection then
            blueConnection:Disconnect()
        end
        blueEffectRunning = false
        
        -- Enable RGB effect.
        rgbConnection = RunService.RenderStepped:Connect(animateRGB)
        rgbEffectRunning = true
        settings.RGBToggle = true
        saveSettings()
    end
end)

-- Automatically start the appropriate effect based on saved settings.
if settings.RGBToggle then
    rgbConnection = RunService.RenderStepped:Connect(animateRGB)
    rgbEffectRunning = true
else
    blueConnection = RunService.RenderStepped:Connect(animateBlue)
    blueEffectRunning = true
end

print("Applied Settings")

return UI["1"], require;
