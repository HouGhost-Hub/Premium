getgenv().Setting = {
    ["Hunt"] = {
        ["Team"] = "Pirates"
    },
    ["Webhook"] = {
        ["Enable"] = true,
        ["Url"] = "https://discord.com/api/webhooks/1173059368447655996/V118UZx4nJ0bCfgKHzFfxtsPav8JT9IA18iPT9iv49CNvinGtqJqhvNOjm7jifHRsGbY"
    },
    ["Skip"] = {
        ["V4"] = false,
        ["Fruit"] = {
            "Portal-Portal",
            "Mammoth-Mammoth",
            "Buddha-Buddha"
        },
        ["Near-Island Max Distance"] = 7000
    },
    ["Chat"] = {
        ["Enable"] = true,
        ["Content"] = "I Got Night Hub Bounty Hunting Script"
    },
    ["Misc"] = {
        ["Hold Until Max Skill Preserve"] = false,
        ["Tweening On HoldTime"] = false,
        ["Silent Mode"] = true,
        ["Hide If Low Health"] = true,
        ["Low Health | Max Health"] = {3000, 4000},
        ["V4"] = true,
        ["LockCamera"] = true,
        ["FPSBoost"] = false,
        ["WhiteScreen"] = false,
        ["BypassTP"] = true,
        ["TweenSpeed"] = 350,
        ["HopRegion"] = "Singapore"
    },
    ["Items"] = {
        ["Melee"] = {
            ["Enable"] = true,
            ["Delay"] = 4,
            ["Skills"] = {
                ["Z"] = {["Enable"] = true, ["HoldTime"] = 0},
                ["X"] = {["Enable"] = true, ["HoldTime"] = 0},
                ["C"] = {["Enable"] = true, ["HoldTime"] = 0}
                --   ["V"] = {["Enable"] = false, ["HoldTime"] = 0}
            }
        },
        ["Blox Fruit"] = {
            ["Enable"] = false,
            ["Delay"] = 6,
            ["Skills"] = {
                ["Z"] = {["Enable"] = true, ["HoldTime"] = 0},
                ["X"] = {["Enable"] = false, ["HoldTime"] = 0},
                ["C"] = {["Enable"] = false, ["HoldTime"] = 0},
                ["V"] = {["Enable"] = false, ["HoldTime"] = 0},
                ["F"] = {["Enable"] = false, ["HoldTime"] = 0}
            }
        },
        ["Sword"] = {
            ["Enable"] = true,
            ["Delay"] = 4,
            ["Skills"] = {
                ["Z"] = {["Enable"] = true, ["HoldTime"] = 0},
                ["X"] = {["Enable"] = true, ["HoldTime"] = 0}
            }
        },
        ["Gun"] = {
            ["Enable"] = true,
            ["Delay"] = .1,
            ["Skills"] = {
                ["Z"] = {["Enable"] = true, ["HoldTime"] = 0},
                ["X"] = {["Enable"] = true, ["HoldTime"] = 0}
            }
        }
    }
}
game:GetService("RunService"):Set3dRenderingEnabled(not Setting.Misc.WhiteScreen)

if Setting.Misc.FPSBoost then
    local decalsyeeted = true
    local g = game
    local w = g.Workspace
    local l = g.Lighting
    local t = w.Terrain
    t.WaterWaveSize = 0
    t.WaterWaveSpeed = 0
    t.WaterReflectance = 0
    t.WaterTransparency = 0
    l.GlobalShadows = false
    l.FogEnd = 9e9
    l.Brightness = 0
    settings().Rendering.QualityLevel = "Level01"
    for i, v in pairs(g:GetDescendants()) do
        if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
            v.Material = "Plastic"
            v.Reflectance = 0
        elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
            v.Transparency = 1
        elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
            v.Lifetime = NumberRange.new(0)
        elseif v:IsA("Explosion") then
            v.BlastPressure = 1
            v.BlastRadius = 1
        elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
            v.Enabled = false
        elseif v:IsA("MeshPart") then
            v.Material = "Plastic"
            v.Reflectance = 0
            v.TextureID = 10385902758728957
        end
    end
    for i, e in pairs(l:GetChildren()) do
        if
            e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or
                e:IsA("DepthOfFieldEffect")
         then
            e.Enabled = false
        end
    end
end

local plrs = game.Players
local lp = plrs.LocalPlayer

local char = lp.Character

local humanoid = char:WaitForChild("Humanoid")
local humanoidrootpart = char:WaitForChild("HumanoidRootPart")

local uwu

local hmt = hookmetamethod
local cs = newcclosure

HttpService = game:GetService("HttpService")
--local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/memaybeohub/Function-Scripts/main/OrionLib.lua"))()
-----Gui--By--Me------------------------------------
-- Generated using RoadToGlory's Converter v1.1 (RoadToGlory#9879)

-- Instances:
local NightHubAB = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local MainCorner = Instance.new("UICorner")
local NightLogo = Instance.new("Frame")
local NightLogoStroke = Instance.new("UIStroke")
local NightLogoCorner = Instance.new("UICorner")
local NightLogoImage = Instance.new("ImageLabel")
local ClientTime = Instance.new("Frame")
local ClientTimeStroke = Instance.new("UIStroke")
local ClientTimeCorner = Instance.new("UICorner")
local ClientTimeLabel_1 = Instance.new("TextLabel")
local ClientTimeLabel_2 = Instance.new("TextLabel")
local SkipPlayer = Instance.new("Frame")
local SkipPlayerStroke = Instance.new("UIStroke")
local SkipPlayerCorner = Instance.new("UICorner")
local SkipPlayerButton = Instance.new("TextButton")
local TargetNameEarnedTimeElapsed = Instance.new("Frame")
local EarnedTimeElapsedStroke = Instance.new("UIStroke")
local EarnedTimeElapsedCorner = Instance.new("UICorner")
local EarnedLabel = Instance.new("TextLabel")
local TimeElapsedLabel = Instance.new("TextLabel")
local TargetNameLabel = Instance.new("TextLabel")
local MainSection = Instance.new("Frame")
local MainSectionCorner = Instance.new("UICorner")
local MainSectionStroke = Instance.new("UIStroke")
local MainSectionLabel_1 = Instance.new("TextLabel")
local MainSectionLabel_2 = Instance.new("TextLabel")
local MainStroke = Instance.new("UIStroke")

NightHubAB.Name = "NightHubAB"
NightHubAB.Parent = game.CoreGui
NightHubAB.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = NightHubAB
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.5, 0, 0.5, 0)
Main.Size = UDim2.new(0, 300, 0, 230)
Main.Draggable = true


MainCorner.Name = "MainCorner"
MainCorner.Parent = Main

NightLogo.Name = "NightLogo"
NightLogo.Parent = Main
NightLogo.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
NightLogo.BorderColor3 = Color3.fromRGB(27, 42, 53)
NightLogo.BorderSizePixel = 0
NightLogo.Position = UDim2.new(0.0500000007, 0, 0.0394444428, 0)
NightLogo.Size = UDim2.new(0, 85, 0, 85)

NightLogoStroke.Color = Color3.fromRGB(255, 255, 255)
NightLogoStroke.Name = "NightLogoStroke"
NightLogoStroke.Parent = NightLogo

NightLogoCorner.Name = "NightLogoCorner"
NightLogoCorner.Parent = NightLogo

NightLogoImage.Name = "NightLogoImage"
NightLogoImage.Parent = NightLogo
NightLogoImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NightLogoImage.BackgroundTransparency = 1.000
NightLogoImage.BorderColor3 = Color3.fromRGB(27, 42, 53)
NightLogoImage.LayoutOrder = 2
NightLogoImage.Size = UDim2.new(0, 84, 0, 85)
NightLogoImage.Image = "rbxassetid://91521936822360"
NightLogoImage.ImageColor3 = Color3.fromRGB(1000, 1000, 1000)

ClientTime.Name = "ClientTime"
ClientTime.Parent = Main
ClientTime.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
ClientTime.BorderColor3 = Color3.fromRGB(27, 42, 53)
ClientTime.BorderSizePixel = 0
ClientTime.Position = UDim2.new(0.0500000007, 0, 0.495289803, 0)
ClientTime.Size = UDim2.new(0, 85, 0, 51)

ClientTimeStroke.Color = Color3.fromRGB(255, 255, 255)
ClientTimeStroke.Name = "ClientTimeStroke"
ClientTimeStroke.Parent = ClientTime

ClientTimeCorner.Name = "ClientTimeCorner"
ClientTimeCorner.Parent = ClientTime

ClientTimeLabel_1.Name = "ClientTimeLabel_1"
ClientTimeLabel_1.Parent = ClientTime
ClientTimeLabel_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ClientTimeLabel_1.BackgroundTransparency = 1.000
ClientTimeLabel_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
ClientTimeLabel_1.BorderSizePixel = 0
ClientTimeLabel_1.Position = UDim2.new(-0.0117647061, 0, -0.0143791651, 0)
ClientTimeLabel_1.Size = UDim2.new(0, 85, 0, 27)
ClientTimeLabel_1.Font = Enum.Font.ArialBold
ClientTimeLabel_1.Text = "Client Time:"
ClientTimeLabel_1.TextColor3 = Color3.fromRGB(255, 255, 255)
ClientTimeLabel_1.TextSize = 13.000

ClientTimeLabel_2.Name = "ClientTimeLabel_2"
ClientTimeLabel_2.Parent = ClientTime
ClientTimeLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ClientTimeLabel_2.BackgroundTransparency = 1.000
ClientTimeLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ClientTimeLabel_2.BorderSizePixel = 0
ClientTimeLabel_2.Position = UDim2.new(0.0117647061, 0, 0.444444448, 0)
ClientTimeLabel_2.Size = UDim2.new(0, 84, 0, 25)
ClientTimeLabel_2.Font = Enum.Font.ArialBold
ClientTimeLabel_2.Text = "0M / 0S"
ClientTimeLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
ClientTimeLabel_2.TextSize = 13.000

SkipPlayer.Name = "SkipPlayer"
SkipPlayer.Parent = Main
SkipPlayer.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
SkipPlayer.BorderColor3 = Color3.fromRGB(27, 42, 53)
SkipPlayer.BorderSizePixel = 0
SkipPlayer.Position = UDim2.new(0.356666654, 0, 0.508333325, 0)
SkipPlayer.Size = UDim2.new(0, 178, 0, 45)

SkipPlayerStroke.Color = Color3.fromRGB(255, 255, 255)
SkipPlayerStroke.Name = "SkipPlayerStroke"
SkipPlayerStroke.Parent = SkipPlayer

SkipPlayerCorner.Name = "SkipPlayerCorner"
SkipPlayerCorner.Parent = SkipPlayer

SkipPlayerButton.Name = "SkipPlayerButton"
SkipPlayerButton.Parent = SkipPlayer
SkipPlayerButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SkipPlayerButton.BackgroundTransparency = 1.000
SkipPlayerButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
SkipPlayerButton.BorderSizePixel = 0
SkipPlayerButton.Position = UDim2.new(0, 0, -0.0666666701, 0)
SkipPlayerButton.Size = UDim2.new(0, 178, 0, 51)
SkipPlayerButton.Font = Enum.Font.ArialBold
SkipPlayerButton.Text = "Skip Players"
SkipPlayerButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SkipPlayerButton.TextSize = 18.000
SkipPlayerButton.MouseButton1Click:Connect(
    function()
        NextPlayers = true
        wait(0.5)
        NextPlayers = false
    end
)

TargetNameEarnedTimeElapsed.Name = "TargetName/Earned/TimeElapsed"
TargetNameEarnedTimeElapsed.Parent = Main
TargetNameEarnedTimeElapsed.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
TargetNameEarnedTimeElapsed.BorderColor3 = Color3.fromRGB(27, 42, 53)
TargetNameEarnedTimeElapsed.BorderSizePixel = 0
TargetNameEarnedTimeElapsed.Position = UDim2.new(0.0533333346, 0, 0.753260851, 0)
TargetNameEarnedTimeElapsed.Size = UDim2.new(0, 270, 0, 50)

EarnedTimeElapsedStroke.Color = Color3.fromRGB(255, 255, 255)
EarnedTimeElapsedStroke.Name = "Earned/TimeElapsedStroke"
EarnedTimeElapsedStroke.Parent = TargetNameEarnedTimeElapsed

EarnedTimeElapsedCorner.Name = "Earned/TimeElapsedCorner"
EarnedTimeElapsedCorner.Parent = TargetNameEarnedTimeElapsed

EarnedLabel.Name = "EarnedLabel"
EarnedLabel.Parent = TargetNameEarnedTimeElapsed
EarnedLabel.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
EarnedLabel.BackgroundTransparency = 1.000
EarnedLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
EarnedLabel.Position = UDim2.new(0.0459771045, 0, 0.319999993, 0)
EarnedLabel.Size = UDim2.new(0, 79, 0, 17)
EarnedLabel.Font = Enum.Font.ArialBold
EarnedLabel.Text = "Earned : 0"
EarnedLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
EarnedLabel.TextSize = 15.000
EarnedLabel.TextXAlignment = Enum.TextXAlignment.Left

TimeElapsedLabel.Name = "TimeElapsedLabel"
TimeElapsedLabel.Parent = TargetNameEarnedTimeElapsed
TimeElapsedLabel.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
TimeElapsedLabel.BackgroundTransparency = 1.000
TimeElapsedLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
TimeElapsedLabel.Position = UDim2.new(0.0422734022, 0, 0.555555582, 0)
TimeElapsedLabel.Size = UDim2.new(0, 246, 0, 25)
TimeElapsedLabel.Font = Enum.Font.ArialBold
TimeElapsedLabel.Text = "Time Elapsed: 0H 0M 0S"
TimeElapsedLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TimeElapsedLabel.TextSize = 15.000
TimeElapsedLabel.TextXAlignment = Enum.TextXAlignment.Left

TargetNameLabel.Name = "TargetNameLabel"
TargetNameLabel.Parent = TargetNameEarnedTimeElapsed
TargetNameLabel.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
TargetNameLabel.BackgroundTransparency = 1.000
TargetNameLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
TargetNameLabel.Position = UDim2.new(0.0422734022, 0, 0, 0)
TargetNameLabel.Size = UDim2.new(0, 258, 0, 18)
TargetNameLabel.Font = Enum.Font.ArialBold
TargetNameLabel.Text = "Target Name : "
TargetNameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TargetNameLabel.TextSize = 15.000
TargetNameLabel.TextXAlignment = Enum.TextXAlignment.Left

MainSection.Name = "MainSection"
MainSection.Parent = Main
MainSection.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
MainSection.BorderColor3 = Color3.fromRGB(27, 42, 53)
MainSection.BorderSizePixel = 0
MainSection.Position = UDim2.new(0.376666665, 0, 0.0399999991, 0)
MainSection.Size = UDim2.new(0, 172, 0, 87)

MainSectionCorner.Name = "MainSectionCorner"
MainSectionCorner.Parent = MainSection

MainSectionStroke.Color = Color3.fromRGB(255, 255, 255)
MainSectionStroke.Name = "MainSectionStroke"
MainSectionStroke.Parent = MainSection

MainSectionLabel_1.Name = "MainSectionLabel_1"
MainSectionLabel_1.Parent = MainSection
MainSectionLabel_1.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
MainSectionLabel_1.BackgroundTransparency = 1.000
MainSectionLabel_1.BorderColor3 = Color3.fromRGB(27, 42, 53)
MainSectionLabel_1.BorderSizePixel = 0
MainSectionLabel_1.Position = UDim2.new(0.0813953504, 0, 0, 0)
MainSectionLabel_1.Size = UDim2.new(0, 158, 0, 50)
MainSectionLabel_1.Font = Enum.Font.Unknown
MainSectionLabel_1.Text = "Mascara Cat Hub"
MainSectionLabel_1.TextColor3 = Color3.fromRGB(210, 210, 210)
MainSectionLabel_1.TextSize = 25.000
MainSectionLabel_1.TextWrapped = true
MainSectionLabel_1.TextXAlignment = Enum.TextXAlignment.Left

MainSectionLabel_2.Name = "MainSectionLabel_2"
MainSectionLabel_2.Parent = MainSection
MainSectionLabel_2.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
MainSectionLabel_2.BackgroundTransparency = 1.000
MainSectionLabel_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
MainSectionLabel_2.BorderSizePixel = 0
MainSectionLabel_2.Position = UDim2.new(0.0813953504, 0, 0.338205963, 0)
MainSectionLabel_2.Size = UDim2.new(0, 158, 0, 50)
MainSectionLabel_2.Font = Enum.Font.Unknown
MainSectionLabel_2.Text = "Auto Bounty"
MainSectionLabel_2.TextColor3 = Color3.fromRGB(64, 64, 64)
MainSectionLabel_2.TextSize = 20.000
MainSectionLabel_2.TextWrapped = true
MainSectionLabel_2.TextXAlignment = Enum.TextXAlignment.Left

MainStroke.Color = Color3.fromRGB(210, 210, 210)
MainStroke.Name = "MainStroke"
MainStroke.Parent = Main

SkipPlayer.MouseButton1Down:Connect(find_target)
SkipPlayer.MouseButton1Down:Connect(
    function()
        while wait() and uwu and uwu.Character do
            find_target()
        end
    end
)

if lp.PlayerGui.Main:FindFirstChild("ChooseTeam") then
    for i, v in pairs(
        getconnections(
            game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container[Setting.Hunt.Team].Frame.TextButton.Activated
        )
    ) do
        for a, b in pairs(getconnections(game:GetService("UserInputService").TouchTapInWorld)) do
            b:Fire()
        end
        v.Function()
    end
end

-- // functions

function safe_cp(p)
    return p.Character:WaitForChild("HumanoidRootPart", 9)
    --p.Character:WaitForChild("Head")
end

pathfile = "Celestial/Blox Fruit/Auto Bounty"
pathfile2 = "Celestial/Blox Fruit/Auto Bounty/" .. lp.Name .. ".json"
pathfile3 = "Celestial/Blox Fruit/Auto Bounty/Themes"
function deploy()
    if not isfolder(pathfile) then
        makefolder(pathfile)
    end
    if not isfolder(pathfile3) then
        makefolder(pathfile3)
    end
    if not isfile(pathfile2) then
        writefile(pathfile2, "{}")
    end
    celes = HttpService:JSONDecode(readfile(pathfile2))
    celes2 = HttpService:JSONDecode(readfile(pathfile2))
end
deploy()

if not celes["Client_Eslaped"] then
    celes = {
        Client_Eslaped = 0,
        Total_Earned = 0
    }
end
celes2 = {
    Client_Eslaped = celes.Client_Eslaped,
    Total_Earned = celes.Total_Earned
}

function disp_time(time)
    time = tonumber(time)
    if not time then
        return "[err]"
    end
    local days = math.floor(time / 86400)
    local hours = math.floor(math.fmod(time, 86400) / 3600)
    local minutes = math.floor(math.fmod(time, 3600) / 60)
    local seconds = math.floor(math.fmod(time, 60))
    return (days .. "day, " .. hours .. "hrs, " .. minutes .. "min, " .. seconds .. "s")
end

function save()
    a999 = celes2.Total_Earned
    celes.Total_Earned = a999 + tonumber(lp.leaderstats["Bounty/Honor"].Value - oldbty2)
    celes.Client_Eslaped = celes2.Client_Eslaped + (os.time() - a000000009)

    EarnedLabel.Text = [[Total Earned: ]] .. celes.Total_Earned
    TimeElapsedLabel.Text = [[Client Time Eslaped: ]] .. disp_time(celes.Client_Eslaped)
    local a0 = HttpService:JSONEncode(celes)
    writefile(pathfile2, a0)
end

function noti(a, b, c)
    print("[System]", a, b)
end

local bM = {}

local HttpService = game:GetService("HttpService")
local bN = "ServerCache"
function SaveSettings2()
    local HttpService = game:GetService("HttpService")
    if not isfolder("Night Hub Bounty/Cache/") then
        makefolder("Night Hub Bounty/Cache/")
    end
    writefile("Night Hub Bounty/Cache/" .. bN, HttpService:JSONEncode(bM))
end
function ReadSetting2()
    local s, o =
        pcall(
        function()
            local HttpService = game:GetService("HttpService")
            Hub = game:GetService("HttpService")
            if not isfolder("Mascara Cat Hub Bounty/Cache/") then
                makefolder("Mascara Cat Hub Bounty/Cache/")
            end
            return HttpService:JSONDecode(readfile("Night Hub Bounty/Cache/" .. bN))
        end
    )
    if s then
        return o
    else
        SaveSettings2()
        return ReadSetting2()
    end
end
bM = ReadSetting2()

function Hop()
    local PlaceID = game.PlaceId
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    local Deleted = false
    function TPReturner()
        local Site;
        if foundAnything == "" then
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
        else
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
        end
        local ID = ""
        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
            foundAnything = Site.nextPageCursor
        end
        local num = 0;
        for i,v in pairs(Site.data) do
            local Possible = true
            ID = tostring(v.id)
            if tonumber(v.maxPlayers) > tonumber(v.playing) then
                for _,Existing in pairs(AllIDs) do
                    if num ~= 0 then
                        if ID == tostring(Existing) then
                            Possible = false
                        end
                    else
                        if tonumber(actualHour) ~= tonumber(Existing) then
                            local delFile = pcall(function()
                                AllIDs = {}
                                table.insert(AllIDs, actualHour)
                            end)
                        end
                    end
                    num = num + 1
                end
                if Possible == true then
                    table.insert(AllIDs, ID)
                    wait()
                    pcall(function()
                        wait()
                        game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                    end)
                    wait(4)
                end
            end
        end
    end
    function Teleport() 
        while wait() do
            pcall(function()
                TPReturner()
                if foundAnything ~= "" then
                    TPReturner()
                end
            end)
        end
    end
    Teleport()
end     

function m0()
    return lp.PlayerGui.Main.InCombat.Visible and lp.PlayerGui.Main.InCombat.Text and
        (string.find(string.lower(lp.PlayerGui.Main.InCombat.Text), "risk"))
end

function aw1()
    for a, b in pairs(char:GetDescendants()) do
        if b:IsA "BasePart" then
            b.CanCollide = false
        end
    end
    if not char:FindFirstChild "eltrul" then
        local ngu = Instance.new("BodyVelocity", char)
        ngu.Name = "eltrul"
        ngu.MaxForce = Vector3.new(0, math.huge, 0)
        ngu.Velocity = Vector3.new(0, 0, 0)
    end
end

function getPortal(check2)
    local check3 = check2.Position
    local w = game.PlaceId
    if w == 2753915549 then
        gQ = {
            Vector3.new(-7894.6201171875, 5545.49169921875, -380.246346191406),
            Vector3.new(-4607.82275390625, 872.5422973632812, -1667.556884765625),
            Vector3.new(61163.8515625, 11.759522438049316, 1819.7841796875),
            Vector3.new(3876.280517578125, 35.10614013671875, -1939.3201904296875)
        }
    elseif w == 4442272183 then
        gQ = {
            Vector3.new(-288.46246337890625, 306.130615234375, 597.9988403320312),
            Vector3.new(2284.912109375, 15.152046203613281, 905.48291015625),
            Vector3.new(923.21252441406, 126.9760055542, 32852.83203125),
            Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422)
        }
    elseif w == 7449423635 then
        gQ = {
            Vector3.new(-5058.77490234375, 314.5155029296875, -3155.88330078125),
            Vector3.new(5756.83740234375, 610.4240112304688, -253.9253692626953),
            Vector3.new(-12463.8740234375, 374.9144592285156, -7523.77392578125),
            Vector3.new(28282.5703125, 14896.8505859375, 105.1042709350586),
            Vector3.new(-11993.580078125, 334.7812805175781, -8844.1826171875),
            Vector3.new(5314.58203125, 25.419387817382812, -125.94227600097656)
        }
    end
    local aM, aN = Vector3.new(0, 0, 0), math.huge

    for _, aL in pairs(gQ) do
        if (aL - check3).Magnitude < aN and aM ~= aL then
            aM, aN = aL, (aL - check3).Magnitude
        end
    end
    return aM
end
function grgrgrgrg(is)
    --    local mq = safe_cp(lp).CFrame
    --       safe_cp(lp).CFrame = CFrame.new(mq.Z, 9999, mq.Z)
    
    repeat
        task.wait()
        lp.Character.HumanoidRootPart.CFrame = is
    until lp.Character.PrimaryPart.CFrame == is
    game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid", 9):ChangeState(15)
    lp.Character:SetPrimaryPartCFrame(is)
    wait(0.1)
    lp.Character.Head:Destroy()
    repeat
        task.wait()
    until lp.Character:FindFirstChild("Humanoid").Health <= 0
    repeat
        task.wait()
        lp.Character.PrimaryPart.CFrame = is
    until lp.Character:FindFirstChild("Head")
end

function getSpawn(wtf)
    local a, b = nil, math.huge
    for i, v in pairs(game.Workspace._WorldOrigin.PlayerSpawns:FindFirstChild(tostring(lp.Team)):GetChildren()) do
        if tostring(v) ~= "Leviathan" and (v:GetModelCFrame().Position - wtf.Position).Magnitude < b then
            a = v:GetModelCFrame()
            b = (v:GetModelCFrame().Position - wtf.Position).Magnitude
        end
    end
    return a
end

function request(check1)
    game.ReplicatedStorage.Remotes.CommF_:InvokeServer(unpack({"requestEntrance", check1}))
end

function q1(I, II)
    if not II then
        II = game.Players.LocalPlayer.Character.PrimaryPart.CFrame
    end

    return (Vector3.new(I.X, 0, I.Z) - Vector3.new(II.X, 0, II.Z)).Magnitude
end

function check11()
    return game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible and
        game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Text and
        (string.find(string.lower(game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Text), "risk"))
end

function to(Pos)
    pcall(function()
        if lp.Character:FindFirstChild("HumanoidRootPart") and lp.Character:FindFirstChild("Humanoid").Health > 0 then
            Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            if not game.Players.LocalPlayer.Character.PrimaryPart:FindFirstChild("Hold") then
                local Hold = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character.PrimaryPart)
                Hold.Name = "Hold"
                Hold.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                Hold.Velocity = Vector3.new(0, 0, 0)
            end
            for a, b in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                if b:IsA"BasePart" then
                    b.CanCollide = false
                end
            end
            if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
                game.Players.LocalPlayer.Character.Humanoid.Sit = false
            end
            if Distance < 250 then
                Speed = 400
            elseif Distance < 1000 then
                Speed = 375
            elseif Distance >= 1000 then
                Speed = 350
            end
            pcall(function()
                tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear),{CFrame = Pos})
                tween:Play()
            end)
            if not stopbypass  then
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible then
                    if not string.find(string.lower(game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Text), "risk") then
                        bypass(Pos)
                    else
                        dist = math.huge
                        is = nil
                        for i , v in pairs(island) do
                            if (Pos.Position-v.Position).magnitude < dist then
                                is = v 
                                dist = (Pos.Position-v.Position).magnitude 
                            end
                        end 
                        if is == nil then return; end
                        if (lp.Character.Head.Position-Pos.Position).magnitude > distbyp then 
                            if (lp.Character.Head.Position-Pos.Position).magnitude > (is.Position-Pos.Position).magnitude then
                                if tween then
                                    tween:Destroy()
                                end
                                if (is.X == 61163.8515625 and is.Y ==11.6796875 and is.Z == 1819.7841796875) or is == CFrame.new(-12471.169921875 + 50, 374.94024658203, -7551.677734375) or is == CFrame.new(-5085.23681640625 + 50, 316.5072021484375, -3156.202880859375) or is == CFrame.new(5749.7861328125 + 50, 611.9736938476562, -276.2497863769531) then
                                    if tween then
                                    tween:Cancel()
                                    end
                                    repeat task.wait()
                                        lp.Character.HumanoidRootPart.CFrame = is  
                                    until lp.Character.PrimaryPart.CFrame == is   
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                                end
                            end
                        end
                    end
                else
                    bypass(Pos)
                end
            end
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, Pos.Y, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
        end
    end)
end

function q1(I, II)
    if not II then
        II = am2(lp).CFrame
    end
    return (Vector3.new(I.X, 0, I.Z) - Vector3.new(II.X, 0, II.Z)).Magnitude
end

function am2(q0)
    if not q0 or not q0.Character then
        return {}
    end
    return q0.Character:WaitForChild("HumanoidRootPart", 9)
end

function CheckIsPositionAreRaiding(q0)
    for a = 1, 5, 1 do
        local a0 = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island" .. a)
        if a0 and am2(q0, a0:GetModelCFrame()) < 3000 then
            return true
        end
    end
end

niga = {}
function hasValue(array, targetString)
    for _, value in ipairs(array) do
        if tostring(value) == (targetString) then
            return true
        end
    end
    return false
end

function split(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t = {}
    for str in string.gmatch(inputstr, "([^" .. sep .. "]+)") do
        table.insert(t, str)
    end
    return t
end
function a991(p)
    for a, b in pairs(workspace._WorldOrigin.SafeZones:GetChildren()) do
        if q1(b.CFrame, p) < 120 then
            return false
        end
    end

    local c = {}
    for a, b in pairs(plrs:GetPlayers()) do
        if b and b.Character then
            if b:DistanceFromCharacter(p) < 300 then
                table.insert(c, b)
            end
        end
    end
    local ab = 0
    for i, v in pairs(c) do
        if v and v.Character and v.Backpack:FindFirstChild("Awakening") and v.Data.Level.Value > 2000 then
            ab = ab + 1
        end
    end 
    print(ab < 4)
    return (ab < 4)
end

function find_target()
    distaaaaaaaa, uwu = math.huge, nil
    for a, b in pairs(game.Players:GetPlayers()) do
        if
            b and b.Name ~= lp.Name and b.Character and not niga[b.Name] and b.Character:FindFirstChild "Head" and
                tonumber(b.Data.Level.Value) > 2000 and
                am2(b).CFrame.Y < 3500 and
                lp:DistanceFromCharacter(b.Character.Head.Position) < distaaaaaaaa and
                (not Setting.Skip.V4 or not b.Backpack:FindFirstChild("Awakening")) and
                not hasValue(Setting.Skip.Fruit, tostring(b.Data.DevilFruit.Value)) and
                a991(b.Character.Head.Position) and
                b.leaderstats["Bounty/Honor"].Value < 10000000 and
                q1(getSpawn(b.Character.HumanoidRootPart.CFrame), b.Character.HumanoidRootPart.CFrame) <
                    Setting.Skip["Near-Island Max Distance"]
         then
            distaaaaaaaa = lp:DistanceFromCharacter(b.Character.Head.Position)
            uwu = b
        end
    end
    if not uwu then
        return Hop()
    end
    noti("Auto Bounty", tostring(uwu))
    -- if not uwu then return end
    -- noti("Auto Bounty", uwu.Name)
    niga[uwu.Name] = true
    fromtime = os.time()
    Target.Text = "Target: " .. tostring(uwu)

    if Setting.Chat.Enable then
        porn = split(tostring(Setting.Chat.Content), ",")
        game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):FindFirstChild(
            "SayMessageRequest"
        ):FireServer(porn[math.random(1, #porn or 2)] or "", "All")
    end
end

function aaa0()
    for a0, a1 in pairs(Setting.Items) do
        if a1.Enable then
            coroutine.yield({a0, a1.Skills, a1.Delay})
        end
    end
end

function aaa2()
    for a, b in pairs(a002[2]) do
        if b.Enable then
            coroutine.yield({a, b})
        end
    end
    return false
end

wp = coroutine.create(aaa0)

function aaa1()
    if not wp or coroutine.status(wp) == "dead" then
        wp = coroutine.create(aaa0)
    end
    -- warn(a002, a004, a003)
    if not a002 or (os.time() - (a004 or 0)) > (a003 or 0) then
        a004 = os.time()
        a001, a002 = coroutine.resume(wp)
        a003 = a002 and a002[3]
        a004 = os.time()
    --  warn("____ ", a004, a002, a002[3])
    end

    if not a or coroutine.status(a) == "dead" then
        a = coroutine.create(aaa2)
    end

    local success, ret = coroutine.resume(a)
    if not success or not ret or not a002 then
        return false
    end

    return {a002[1], ret[1], ret[2]} --1: NameW 2: NameSkill 3: data
end

function checkNotify(msg)
    for r, k in pairs(game.Players.LocalPlayer.PlayerGui.Notifications:GetChildren()) do
        if k and k.Text and string.find(string.lower(k.Text), msg) then
            k:Destroy()

            return true
        end
    end
end

function n4(g1)
    if not og1 then
        return Vector3.new(0, 0, 0)
    end
    return (g1 - og1)
end

function PostWebhook(cm, cn)
    local co = http_request or request or HttpPost or syn.request
    local cp =
        co(
        {
            Url = cm,
            Method = "POST",
            Headers = {["Content-Type"] = "application/json"},
            Body = game:GetService("HttpService"):JSONEncode(cn)
        }
    )

    --setclipboard(game:GetService("HttpService"):JSONEncode(cp))
end
function PostWebhook2(data)
    return PostWebhook(Setting.Webhook.Url, data)
end

function shitpredict(plr)
    if not plr then
        return Vector3.new(0, 0, 0)
    end
    ai1 = n4(plr.Character.Head.Position)
    og1 = plr.Character.Head.Position
    qm1 = tick()
    return ai1
end

start_bounty = lp.leaderstats["Bounty/Honor"].Value
oldbty2 = lp.leaderstats["Bounty/Honor"].Value
LocalEarn = 0
function calculate_earn()
    earned = tonumber(lp.leaderstats["Bounty/Honor"].Value) - tonumber(start_bounty)
    start_bounty = lp.leaderstats["Bounty/Honor"].Value
    if earned > 0 then
        LocalEarn = LocalEarn + earned
        EarnedLabel.Text = "Server Earned: " .. LocalEarn
        if Setting.Webhook.Enable then
            PostWebhook2(
                {
                    content = "🥶",
                    tts = false,
                    embeds = {
                        {
                            id = 652627557,
                            title = "Auto Bounty",
                            description = "Player: " ..
                                tostring(game.Players.LocalPlayer.Name) .. "\n Total Bounty: " .. tostring(start_bounty),
                            color = 13858455,
                            fields = {
                                {
                                    id = 814454215,
                                    name = "Target",
                                    value = string.format("``` %s ```", tostring(uwu)),
                                    inline = false
                                },
                                {
                                    id = 762477139,
                                    name = "Earned",
                                    value = string.format("``` %s ```", tostring(earned)),
                                    inline = false
                                },
                                {
                                    id = 76247715,
                                    name = "Total Earned",
                                    value = string.format("``` %s ```", tostring(celes.Total_Earned)),
                                    inline = false
                                },
                                {
                                    id = 7624775,
                                    name = "Eslaped",
                                    value = string.format("``` %s ```", tostring(disp_time(celes.Client_Eslaped))),
                                    inline = false
                                },
                                {
                                    id = 238037337,
                                    name = "Job Id",
                                    value = "``` " .. tostring(game.JobId) .. " ```",
                                    inline = false
                                }
                            },
                            author = {
                                name = "Celestial Bounty"
                            }
                        }
                    }
                }
            )
        end
    end

    return tostring(earned)
end

function checktarget()
    safe_cp(lp)
    if not uwu then
        return find_target()
    end
    if not uwu.Character then
        return find_target()
    end

    if uwu.Character.Humanoid.Health <= 0 then
        noti("Auto Bounty", "Player: " .. (uwu.Name or "?") .. "/ Earned: " .. (calculate_earn() or "nil"))

        return find_target()
    end

    if checkNotify("ayer") then
        noti("Auto Bounty", "Skip Player Due target Is Not Enable PvP")
        return find_target()
    end

    if
        lp.PlayerGui.Main.SafeZone.Visible and
            uwu:DistanceFromCharacter(lp.Character:WaitForChild("Head", 9).Position) < 10
     then
        noti("Auto Bounty", "SafeZone Detected [Gui Detect]")
        return find_target()
    end
    if os.time() - fromtime > 250 then
        find_target()
    end
    if uwu:DistanceFromCharacter(lp.Character:WaitForChild("Head").Position) < 100 then
        if os.time() - fromtime > 15 and not game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible then
            noti("Auto Bounty", "Not Incombat")
            return find_target()
        end
    else
        fromtime = os.time()
    end
end
function down(used, hold, callback) -- Send key to client
    use = true
    game:service("VirtualInputManager"):SendKeyEvent(true, used, false, game)
    delayf = tick() / 1000

    repeat
        task.wait()
        if lp.Character.Busy.Value then
            repeat
                task.wait()
            until not lp.Character.Busy.Value
            callback()
            break
        end
        callback()
    until (not Setting.Misc["Hold Until Max Skill Preserve"] and (tick() / 1000) - delayf >= hold) or
        not lp.Character.Busy.Value
    task.wait(hold or 0)
    game:service("VirtualInputManager"):SendKeyEvent(false, used, false, game)
    use = false
end

function equip(tooltip)
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()

    for _, item in pairs(player.Backpack:GetChildren()) do
        if Setting.Misc.V4 and tostring(item) == "Awakening" then
            item.Parent = character
        end
        if tostring(item.ToolTip) == "" then
            item.Parent = character
        end

        if item:IsA("Tool") and item.ToolTip == tooltip then
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            if humanoid and not humanoid:IsDescendantOf(item) then
                if not game.Players.LocalPlayer.Character:FindFirstChild(item.Name) then
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(item)
                end
                return item
            end
        end
    end
end

function CheckSea(e)
    if sussea then
        if sussea == e then
            return true
        end
    else
        if game.PlaceId == 2753915549 then
            if e == 1 then
                sussea = 1
                return true
            end
        elseif game.PlaceId == 4442272183 then
            if e == 2 then
                sussea = 2
                return true
            end
        elseif game.PlaceId == 7449423635 then
            if e == 3 then
                sussea = 3
                return true
            end
        end
        return false
    end
end
local moonTextures = {
    ["http://www.roblox.com/asset/?id=9709149431"] = " [🌕] Full Moon",
    ["http://www.roblox.com/asset/?id=9709149052"] = "[🌔] 75",
    ["http://www.roblox.com/asset/?id=9709143733"] = "[🌗] 50",
    ["http://www.roblox.com/asset/?id=9709150401"] = "[🌒] 25",
    ["http://www.roblox.com/asset/?id=9709149680"] = "[🌑] 0"
}

function isMirageSpawn()
    return game:GetService("Workspace").Map:FindFirstChild("MysticIsland")
end

NowSea = "Main"
if CheckSea(2) then
    NowSea = "Second Sea"
elseif CheckSea(3) then
    NowSea = "Third Sea"
end

function to_base64(data)
    local b = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
    return ((data:gsub(
        ".",
        function(x)
            local r, b = "", x:byte()
            for i = 8, 1, -1 do
                r = r .. (b % 2 ^ i - b % 2 ^ (i - 1) > 0 and "1" or "0")
            end
            return r
        end
    ) .. "0000"):gsub(
        "%d%d%d?%d?%d?%d?",
        function(x)
            if (#x < 6) then
                return ""
            end
            local c = 0
            for i = 1, 6 do
                c = c + (x:sub(i, i) == "1" and 2 ^ (6 - i) or 0)
            end
            return b:sub(c + 1, c + 1)
        end
    ) .. ({"", "==", "="})[#data % 3 + 1])
end

function caesarCipher(text, key)
    local result = ""

    for i = 1, #text do
        local char = text:sub(i, i)
        if char >= "A" and char <= "Z" then
            local shift = key % 26
            local base = (char:byte() - ("A"):byte() + shift) % 26
            result = result .. string.char(base + ("A"):byte())
        elseif char >= "a" and char <= "z" then
            local shift = key % 26
            local base = (char:byte() - ("a"):byte() + shift) % 26
            result = result .. string.char(base + ("a"):byte())
        else
            result = result .. char
        end
    end

    return result
end

local hashdata = {
    156,
    5120,
    2511,
    90,
    15836184,
    91773838390187374109,
    25,
    199999999,
    15371728,
    92
}
--[[
  JS Hash: 
   
[
  156, 
  5120, 
  2511, 
  90, 
  15836184, 
  91773838390187374109, 
  25, 
  199999999, 
  15371728, 
  92, 
] -- secret 

]]
function hash(data)
    data = game:GetService("HttpService"):JSONEncode((data))
    -- print(data)
    data = to_base64(data)
    a0 = os.date("*t").min
    data =
        caesarCipher(
        data,
        (9 + 37 + 12522 * 155 * 18) + hashdata[1] + hashdata[2] + hashdata[3] + hashdata[4] + hashdata[9] + hashdata[10]
    )
    print("Hashed: " .. data)
    return data
end

api = ""

function hidetext(originalString)
    local preservedLength = 7
    local preservedPart = string.sub(originalString, 1, preservedLength)
    local maskedPart = string.rep("x", #originalString - preservedLength)
    local finalString = preservedPart .. maskedPart
    return finalString
end

print("Player Logged: ", hidetext(game.Players.LocalPlayer.Name), NowSea)

function post(name, typeh)
    print("[Celestial Socket] Waiting For Server Responsing...")
    timenow = game:HttpGet("http://burger.eltrul.repl.co/api/v1/time")
    print("[Celestial Socket] Ok Weird")
    if tonumber(timenow) - (os.time()) > 5 then
        print("[Celestial Socket] Time missmatch, resend in 5second")
        wait(5)

        return
     -- post(name, typeh)
    end

    outputing =
        game:HttpGet(
        "http://burger.eltrul.repl.co/api/v1/notify/" ..
            typeh ..
                "?data=" ..
                    hash(
                        {
                            Name = name,
                            ServerID = "game:GetService('TeleportService'):Teleport('" .. game.JobId .. "')",
                            Sender = hidetext(game.Players.LocalPlayer.Name),
                            Sea = NowSea
                        }
                    )
    )
    print("[Celestial Socket] Result: ", outputing)
    if not string.find(outputing, "Successfully Send") then
        print("[Celestial Socket] Failed to send, automatically retry...")
        wait(5)
        return
     --  post(name, typeh)
    end
end

posted = {}

function post2()
    if CheckSea(3) then
        if moonTextures[game:GetService("Lighting").Sky.MoonTextureId] == " [🌕] Full Moon" and not posted.Moon then
            posted.Moon = true
            post("Full Moon", "Moon")
            print("Post Moon")
        end
        if isMirageSpawn() and not posted.Mirage then
            posted.Mirage = true
            post("Mirage", "Mirage")
            print("Post Mirage")
        end
    end
end

function AB(M)
    for _, Q in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if Q.ToolTip == M then
            return Q
        end
    end
    for _, Q in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if Q:IsA("Tool") and Q.ToolTip == M then
            return Q
        end
    end
end

function Buso()
    if (not (game.Players.LocalPlayer.Character:FindFirstChild("HasBuso"))) then
        local rel = game.ReplicatedStorage

        rel.Remotes.CommF_:InvokeServer("Buso")
    end
end
-- post( "Full Moon", "Moon")
--   a983()
function UU(Q, L)
    if not Q or not L then
        return
    end
    O = AB(Q)

    V = game.Players.LocalPlayer.PlayerGui.Main.Skills
    if O and V:FindFirstChild(O.Name) then
        if V[O.Name]:FindFirstChild(L) then
            return V[O.Name][L].Cooldown.AbsoluteSize.X
        else
            return true
        end
    else
        return true
    end
    return false
end
function click()
    game:GetService("VirtualUser"):CaptureController()
    game:GetService("VirtualUser"):ClickButton1(Vector2.new(1000, 1000))
end

local old
old =
    hookmetamethod(
    game,
    "__index",
    function(self, ...)
        local a0 = {...}
        local a1 = getnamecallmethod()
        if
        --   (tostring(getcallingscript()) == "Mouse" or
         --  tostring(getcallingscript()) == "FruitClient" --or
        --   tostring(getcallingscript()) == "GunClient") and
                tostring(self) == "InputObject" and
                tostring(a0[1]) == "Position" and
                uwu and
                uwu.Character and
                uwu.Character:FindFirstChild("Head")
         then
           print("aim")
            local a2 = workspace.CurrentCamera:WorldToScreenPoint(uwu.Character.Head.Position)
            return a2
        end
        return old(self, unpack({...}))
    end
)

game:GetService"RunService".RenderStepped:Connect(function () 
  
    for _, anim in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
            anim:Stop()
    end
  end)
while task.wait() do
    if m10 then
        break
    end
    save()
    checktarget()
    post2()
    notpassed = false
    for i, v in pairs(game.Workspace.NPCs:GetChildren()) do
        if v:FindFirstChild("HumanoidRootPart") and q1(v.HumanoidRootPart.Position) < 20 then
            notpassed = true
        end
    end
    lp.Character:WaitForChild("Stun", 9e9).Value = 0
    if not notpassed then
        click()
    end
    ---  for _, anim in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
    --         anim:Stop()
    ---end

    health = tonumber(lp.Character.Humanoid.Health)
    Buso()
    if uwu then
        if uwu.Character then
            safe_cp(uwu)

            to(
                (am2(uwu).CFrame * CFrame.new(math.random(-6, 6), math.random(0, 3), math.random(-6, 6))) +
                    shitpredict(uwu)
            )

            am2(uwu).Size = Vector3.new(100, 100, 100)

            if
                Setting.Misc["Hide If Low Health"] and health > 0 and
                    (health < Setting.Misc["Low Health | Max Health"][1] or (hide and health < Setting.Misc["Low Health | Max Health"][2]))
             then
                hide = true
                to(am2(uwu).CFrame + Vector3.new(0, 9999, 0))
            else
                hide = false
                if lp:DistanceFromCharacter(am2(uwu).Position) < 150 then
                    local a0 = aaa1()
                    if a0 and UU(a0[1], a0[2]) then
                        equip(a0[1])
                        --  to(am2(uwu).CFrame+shitpredict(uwu))
                        down(
                            a0[2],
                            a0[3].HoldTime,
                            function()
                                if Setting.Misc["Tweening On HoldTime"] then
                                    to((am2(uwu).CFrame * CFrame.new(0, 3, -4)) + shitpredict(uwu))
                                end
                            end
                        ) 
                    if uwu.Character.Busy.Value then
                            to((am2(uwu).CFrame * CFrame.new(0, 20, -14)) + shitpredict(uwu))
                        else
                            to((am2(uwu).CFrame * CFrame.new(0, 3, -4)) + shitpredict(uwu))
                        end

                        if a0[1] == "Blox Fruit" or a0[1] == "Gun" then
                            equip("Melee")
                        end
                    end
                end
            end
        end
    end
end
