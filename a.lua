local Config = loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Main/refs/heads/main/Library/Key%20System/KeyGuardian_API.lua"))()



local KeySys = Config:Start({

  publicToken = "5fb61e4f17e4455eb2fb8065a44a7b96",

  privateToken = "81c3fe87f9ea4896845f585bbdb03ccb",

  trueData = "eaee370a5df94fe083b60c4cddcc9551",

  falseData = "ca6fd45c61e046248f1fde7c21afc4bd"

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



if isfile("FrostWare_Key.txt") and (KeySys:Verify_Default(readfile("FrostWare_Key.txt")) == true or KeySys:Verify_Premium(readfile("FrostWare_Key.txt")) == true) then

  _auto()

  loadstring(game:HttpGet("https://raw.githubusercontent.com/Jake-Brock/FrostWare-/main/FrostWare%20Main.lua"))()

else

  local KeyGui = Instance.new("ScreenGui")

  local Background = Instance.new("Frame")

  local Title = Instance.new("TextLabel")

  local UIGradient = Instance.new("UIGradient")

  local UICorner = Instance.new("UICorner")

  local discord = Instance.new("TextLabel")

  local GET = Instance.new("TextButton")

  local UICorner_2 = Instance.new("UICorner")

  local CHECK = Instance.new("TextButton")

  local UICorner_3 = Instance.new("UICorner")

  local TextBox = Instance.new("TextBox")

  local UICorner_4 = Instance.new("UICorner")

  local UICorner_5 = Instance.new("UICorner")

  local InfoBackground = Instance.new("Frame")

  local UICorner_6 = Instance.new("UICorner")

  local discord_2 = Instance.new("TextLabel")

  local TextLabel = Instance.new("TextLabel")

  

  -- Properties:

  KeyGui.Name = "KeyGui"

  KeyGui.Parent = gethui(); -- ARE YOU SERIOUS KeyGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

  KeyGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

  KeyGui.ResetOnSpawn = false

  

  local strokem = Instance.new("UIStroke")

  Background.Name = "Background"

  Background.Parent = KeyGui

  Background.BackgroundColor3 = Color3.fromRGB(22, 22, 22)

  Background.BorderColor3 = Color3.fromRGB(0, 0, 0)

  Background.BorderSizePixel = 0

  Background.Position = UDim2.new(0.165441185, 0, 0.338942319, 0)

  Background.Size = UDim2.new(0, 297, 0, 174)

  

  strokem.Parent = Background

  strokem.Thickness = 2.9

  

  local strokeme = Instance.new("UIStroke")

  Title.Name = "Title"

  Title.Parent = Background

  Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

  Title.BackgroundTransparency = 1.000

  Title.BorderColor3 = Color3.fromRGB(0, 0, 0)

  Title.BorderSizePixel = 0

  Title.Position = UDim2.new(0.0314960629, 0, 0.0489510484, 0)

  Title.Size = UDim2.new(0, 123, 0, 26)

  Title.Font = Enum.Font.FredokaOne

  Title.FontFace.Weight = Enum.FontWeight.Bold

  Title.Text = "Frostware"

  Title.TextColor3 = Color3.fromRGB(255, 255, 255)

  Title.TextSize = 29.000

  

  strokeme.Parent = Title

  strokeme.Thickness = 1.3

  

  UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 0, 255)), ColorSequenceKeypoint.new(0.15, Color3.fromRGB(0, 0, 147)), ColorSequenceKeypoint.new(0.30, Color3.fromRGB(0, 0, 127)), ColorSequenceKeypoint.new(0.59, Color3.fromRGB(0, 0, 127)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(17, 43, 127)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 255))}

  UIGradient.Parent = Title

  

  UICorner.Parent = Background

  

  local stroke = Instance.new("UIStroke")

  discord.Name = "discord"

  discord.Parent = Background

  discord.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

  discord.BackgroundTransparency = 1.000

  discord.BorderColor3 = Color3.fromRGB(0, 0, 0)

  discord.BorderSizePixel = 0

  discord.Position = UDim2.new(0.689530671, 0, 0.0443037972, 0)

  discord.Size = UDim2.new(0, 86, 0, 22)

  discord.Font = Enum.Font.FredokaOne

  discord.FontFace.Weight = Enum.FontWeight.Bold

  discord.Text = ".gg/getfrost"

  discord.TextColor3 = Color3.fromRGB(255, 255, 255)

  discord.TextSize = 14.000

  

  stroke.Parent = discord

  stroke.Thickness = 1.3

  

  local stoke2 = Instance.new("UIStroke")

  stoke2.Parent = GET

  stoke2.Thickness = 1.3

  stoke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

  

  local stoke = Instance.new("UIStroke")

  stoke.Parent = GET

  stoke.Thickness = 1.3

  

  UICorner_2.Parent = GET

  

  GET.Name = "GET"

  GET.Parent = Background

  GET.BackgroundColor3 = Color3.fromRGB(25, 25, 25)

  GET.BorderColor3 = Color3.fromRGB(0, 0, 0)

  GET.BorderSizePixel = 0

  GET.Position = UDim2.new(0.168459594, 0, 0.518987358, 0)

  GET.Size = UDim2.new(0, 89, 0, 44)

  GET.Font = Enum.Font.FredokaOne

  GET.FontFace.Weight = Enum.FontWeight.Bold

  GET.Text = "Get Key"

  GET.TextColor3 = Color3.fromRGB(255, 255, 255)

  GET.TextSize = 14.000

  

  GET.MouseButton1Click:Connect(function()

    local Succ = pcall(function()

      setclipboard(KeySys:GetKeyLink("1096"))

    end)



    if Succ then

      TextLabel.Text = "Key link copied to clipboard!"

    end

  end)

  

  local stoke2 = Instance.new("UIStroke")

  stoke2.Parent = GET

  stoke2.Thickness = 1.3

  stoke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

  

  UICorner_2.Parent = GET

  

  CHECK.Name = "CHECK"

  CHECK.Parent = Background

  CHECK.BackgroundColor3 = Color3.fromRGB(25, 25, 25)

  CHECK.BorderColor3 = Color3.fromRGB(0, 0, 0)

  CHECK.BorderSizePixel = 0

  CHECK.Position = UDim2.new(0.53790611, 0, 0.518987358, 0)

  CHECK.Size = UDim2.new(0, 89, 0, 44)

  CHECK.Font = Enum.Font.FredokaOne

  CHECK.FontFace.Weight = Enum.FontWeight.Bold

  CHECK.Text = "Check Key"

  CHECK.TextColor3 = Color3.fromRGB(255, 255, 255)

  CHECK.TextSize = 14.000

  

  CHECK.MouseButton1Click:Connect(function()

    local inputKey = TextBox.Text

      

    if (KeySys:Verify_Default(inputKey) == true or KeySys:Verify_Premium(inputKey) == true) then

      TextLabel.Text = "Status: Valid Key!"

      task.wait(1)

      KeyGui:Destroy()

      pcall(writefile, "FrostWare_Key.txt", tostring(inputKey))

      loadstring(game:HttpGet('https://raw.githubusercontent.com/Jake-Brock/FrostWare-/main/FrostWare%20Intro'))()

  

      _auto();

    else

      TextLabel.Text = "Status: Invalid Key!"

    end

  end)

  

  local spoke = Instance.new("UIStroke")

  spoke.Parent = CHECK

  spoke.Thickness = 1.3

  

  local spoke2 = Instance.new("UIStroke")

  spoke2.Parent = CHECK

  spoke2.Thickness = 1.3

  spoke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

  

  UICorner_3.Parent = CHECK

  

  TextBox.Parent = Background

  TextBox.BackgroundColor3 = Color3.fromRGB(59, 59, 59)

  TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)

  TextBox.BorderSizePixel = 0

  TextBox.Position = UDim2.new(0.137184113, 0, 0.291139275, 0)

  TextBox.Size = UDim2.new(0, 220, 0, 26)

  TextBox.Font = Enum.Font.FredokaOne

  TextBox.PlaceholderText = "Key Here"

  TextBox.Text = ""

  TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)

  TextBox.TextSize = 14.000

  TextBox.TextWrapped = true

  

  local soke = Instance.new("UIStroke")

  soke.Parent = TextBox

  soke.Thickness = 1.3

  soke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

  

  local soke2 = Instance.new("UIStroke")

  soke2.Parent = TextBox

  soke2.Thickness = 1.3

  soke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual

  

  UICorner_4.Parent = TextBox

  

  InfoBackground.Name = "InfoBackground"

  InfoBackground.Parent = Background

  InfoBackground.BackgroundColor3 = Color3.fromRGB(22, 22, 22)

  InfoBackground.BorderColor3 = Color3.fromRGB(0, 0, 0)

  InfoBackground.BorderSizePixel = 0

  InfoBackground.Position = UDim2.new(1.06453013, 0, -0.000138206044, 0)

  InfoBackground.Size = UDim2.new(0, 170, 0, 174)

  

  local ffid = Instance.new("UIStroke")

  ffid.Parent = InfoBackground

  ffid.Thickness = 2.9

  

  UICorner_6.Parent = InfoBackground

  

  discord_2.Name = "discord"

  discord_2.Parent = InfoBackground

  discord_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

  discord_2.BackgroundTransparency = 1.000

  discord_2.BorderColor3 = Color3.fromRGB(0, 0, 0)

  discord_2.BorderSizePixel = 0

  discord_2.Position = UDim2.new(0.242471859, 0, 0.0443038046, 0)

  discord_2.Size = UDim2.new(0, 86, 0, 22)

  discord_2.Font = Enum.Font.FredokaOne

  discord_2.FontFace.Weight = Enum.FontWeight.Bold

  discord_2.Text = ".gg/getfrost"

  discord_2.TextColor3 = Color3.fromRGB(255, 255, 255)

  discord_2.TextSize = 14.000

  

  local poke = Instance.new("UIStroke")

  poke.Parent = discord_2

  poke.Thickness = 1.3

  poke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual

  

  TextLabel.Parent = InfoBackground

  TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

  TextLabel.BackgroundTransparency = 1.000

  TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)

  TextLabel.BorderSizePixel = 0

  TextLabel.Position = UDim2.new(0.0411764719, 0, 0.195402294, 0)

  TextLabel.Size = UDim2.new(0, 156, 0, 132)

  TextLabel.Font = Enum.Font.Montserrat

  TextLabel.Text = "Status: "

  TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)

  TextLabel.TextScaled = true

  TextLabel.TextSize = 10.000

  TextLabel.TextWrapped = true

  TextLabel.TextXAlignment = Enum.TextXAlignment.Left

  TextLabel.TextYAlignment = Enum.TextYAlignment.Top

  

  local function SJMOOZN_fake_script() -- Background.LocalScript 

      local script = Instance.new('LocalScript', Background)

  

      function dragify(b)

          dragToggle=nil 

          dragSpeed=.5 

          dragInput=nil 

          dragStart=nil 

          dragPos=nil 

          function updateInput(a)

              Delta=a.Position-dragStart 

              Position=UDim2.new(startPos.X.Scale,startPos.X.Offset+Delta.X,startPos.Y.Scale,startPos.Y.Offset+Delta.Y)

              game:GetService("TweenService"):Create(b,TweenInfo.new(.25),{Position=Position}):Play()

          end 

          b.InputBegan:Connect(function(a)

              if(a.UserInputType==Enum.UserInputType.MouseButton1 or a.UserInputType==Enum.UserInputType.Touch)then 

                  dragToggle=true 

                  dragStart=a.Position 

                  startPos=b.Position 

                  a.Changed:Connect(function()

                      if(a.UserInputState==Enum.UserInputState.End)then 

                          dragToggle=false 

                      end 

                  end)

              end 

          end)

          b.InputChanged:Connect(function(a)

              if(a.UserInputType==Enum.UserInputType.MouseMovement or a.UserInputType==Enum.UserInputType.Touch)then 

                  dragInput=a 

              end 

          end)

          game:GetService("UserInputService").InputChanged:Connect(function(a)

              if(a==dragInput and dragToggle)then 

                  updateInput(a)

              end 

          end)

      end 

      dragify(script.Parent)

  end

  coroutine.wrap(SJMOOZN_fake_script)()

end
