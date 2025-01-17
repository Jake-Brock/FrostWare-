local Config = loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Main/refs/heads/main/Library/Key%20System/KeyGuardian_API.lua"))()

local trueData = "eaee370a5df94fe083b60c4cddcc9551"
local falseData = "ca6fd45c61e046248f1fde7c21afc4bd"

Config:SetTable({
  publicToken = "5fb61e4f17e4455eb2fb8065a44a7b96",
  privateToken = "81c3fe87f9ea4896845f585bbdb03ccb",
  trueData = trueData,
  falseData = falseData
})

local _auto = clonefunction(dtc.pushautoexec);

setreadonly(dtc, false);
dtc.auth = nil;
dtc.flow = nil;
dtc.pushautoexec = nil;
setreadonly(dtc, true);

getgenv().gethui = function()
	return game.CoreGui
end

if isfile("FrostWare_Key.txt") and (Config:Verify_Key(readfile("FrostWare_Key.txt")) == trueData or Config:Verify_PremiumKey(readfile("FrostWare_Key.txt")) == trueData) then
  _auto()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Jake-Brock/FrostWare-/main/FrostWare%20Intro"))()
else
  local screenGui = Instance.new("ScreenGui")
  screenGui.Parent = cloneref(gethui());
  
  local frame = Instance.new("Frame")
  frame.Size = UDim2.new(0, 500, 0, 250)
  frame.Position = UDim2.new(0.5, -250, 0.5, -125)
  frame.BackgroundColor3 = Color3.fromRGB(0, 0, 50)
  frame.BackgroundTransparency = 0.4
  frame.Parent = screenGui
  frame.ClipsDescendants = true
  
  local frameCorner = Instance.new("UICorner")
  frameCorner.CornerRadius = UDim.new(0, 20)
  frameCorner.Parent = frame
  
  local title = Instance.new("TextLabel")
  title.Text = "FrostWare Key System"
  title.Size = UDim2.new(1, 0, 0, 50)
  title.Position = UDim2.new(0, 0, 0, 0)
  title.BackgroundTransparency = 1
  title.TextColor3 = Color3.fromRGB(255, 255, 255)
  title.TextSize = 24
  title.TextXAlignment = Enum.TextXAlignment.Center
  title.TextYAlignment = Enum.TextYAlignment.Center
  title.Font = Enum.Font.GothamBold
  title.Parent = frame
  
  local subtext = Instance.new("TextLabel")
  subtext.Text = "Complete this simple 2 step keysystem and enjoy exploiting ;)"
  subtext.Size = UDim2.new(1, 0, 0, 40)
  subtext.Position = UDim2.new(0, 0, 0.25, 0)
  subtext.BackgroundTransparency = 1
  subtext.TextColor3 = Color3.fromRGB(255, 255, 255)
  subtext.TextSize = 18
  subtext.TextXAlignment = Enum.TextXAlignment.Center
  subtext.TextYAlignment = Enum.TextYAlignment.Center
  subtext.Font = Enum.Font.Gotham
  subtext.Parent = frame
  
  local keyTextBox = Instance.new("TextBox")
  keyTextBox.Size = UDim2.new(0.8, 0, 0, 40)
  keyTextBox.Position = UDim2.new(0.1, 0, 0.5, 0)
  keyTextBox.ClearTextOnFocus = true
  keyTextBox.BackgroundTransparency = 0.6
  keyTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
  keyTextBox.TextSize = 18
  keyTextBox.PlaceholderText = "Enter key here"
  keyTextBox.PlaceholderColor3 = Color3.fromRGB(200, 200, 200)
  keyTextBox.Font = Enum.Font.Gotham
  keyTextBox.Parent = frame
  
  local buttonFrame = Instance.new("Frame")
  buttonFrame.Size = UDim2.new(1, 0, 0, 60)
  buttonFrame.Position = UDim2.new(0, 0, 0.75, 0)
  buttonFrame.BackgroundTransparency = 1
  buttonFrame.Parent = frame
  
  local function createRectangleButton(text, position)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0, 150, 0, 50)
    button.Position = position
    button.Text = text
    button.BackgroundColor3 = Color3.fromRGB(0, 0, 50)
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.TextSize = 18
    button.TextXAlignment = Enum.TextXAlignment.Center
    button.TextYAlignment = Enum.TextYAlignment.Center
    button.Font = Enum.Font.Gotham
    button.Parent = buttonFrame
    button.ClipsDescendants = true

    local buttonCorner = Instance.new("UICorner")
    buttonCorner.CornerRadius = UDim.new(0, 25)
    buttonCorner.Parent = button

    button.MouseEnter:Connect(function()
      button.BackgroundColor3 = Color3.fromRGB(100, 100, 255)
    end)

    button.MouseLeave:Connect(function()
      button.BackgroundColor3 = Color3.fromRGB(0, 0, 50)
    end)

    button.MouseButton1Down:Connect(function()
        button.Size = UDim2.new(0, 140, 0, 45)
    end)

    button.MouseButton1Up:Connect(function()
      button.Size = UDim2.new(0, 150, 0, 50)
    end)

    return button
  end
  
  local getKeyButton = createRectangleButton("Get Key", UDim2.new(0.1, 0, 0, 0))
  local checkKeyButton = createRectangleButton("Check Key", UDim2.new(0.6, 0, 0, 0))
  
  local resultLabel = Instance.new("TextLabel")
  resultLabel.Size = UDim2.new(1, 0, 0, 30)
  resultLabel.Position = UDim2.new(0, 0, 0.9, 0)
  resultLabel.BackgroundTransparency = 1
  resultLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
  resultLabel.TextSize = 16
  resultLabel.Text = ""
  resultLabel.Font = Enum.Font.Gotham
  resultLabel.Parent = frame
  
  local closeButton = Instance.new("TextButton")
  closeButton.Size = UDim2.new(0, 30, 0, 30)
  closeButton.Position = UDim2.new(1, -35, 0, 5)
  closeButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
  closeButton.Text = "X"
  closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
  closeButton.Font = Enum.Font.GothamBold
  closeButton.TextSize = 14
  closeButton.Parent = frame
  
  local closeButtonCorner = Instance.new("UICorner")
  closeButtonCorner.CornerRadius = UDim.new(0, 15)
  closeButtonCorner.Parent = closeButton
  
  closeButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
  end)

  getKeyButton.MouseButton1Click:Connect(function()
    local Succ = pcall(function()
      setclipboard(Config:GetLinkKey())
    end)

    if Succ then
      resultLabel.Text = "Key link copied to clipboard!"
      resultLabel.BackgroundColor3 = Color3.fromRGB(0, 255, 0)  
    end
  end)

  checkKeyButton.MouseButton1Click:Connect(function()
    local enteredKey = keyTextBox.Text
    
    if (Config:Verify_Key(enteredKey) == trueData or Config:Verify_PremiumKey(enteredKey) == trueData) then
      resultLabel.Text = "Key is valid!"
      resultLabel.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
      keyTextBox.Text = ""
      screenGui:Destroy()
      pcall(writefile, "FrostWare_Key.txt", tostring(enteredKey))
      loadstring(game:HttpGet('https://raw.githubusercontent.com/Jake-Brock/FrostWare-/main/FrostWare%20Intro'))()

      _auto();
    else
      resultLabel.Text = "Invalid Key!"
      resultLabel.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
      keyTextBox.Text = "Invalid Key"
    end
  end)
end
