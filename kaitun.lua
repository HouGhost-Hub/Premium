
repeat task.wait() until game:IsLoaded() --ditme syns 
if not game:IsLoaded() then game.Loaded:Wait() end
_G.KAITAN1CLICK = true
_G.Mics = {
    ["Remove Terrain"] = true,
    ["White Screen"] = false,
    ["Disabled Notify"] = false,
    ["Auto Rejoin"] = true,
    ["Delay Per Rejoin"] = 3600,
    ["Max-Distance Bypass TP"] = 1500
}
_G.Settings = {
    ["Team"] = "Pirates",
    ["Enabled Skip Farm"] = true,
    ["Auto Do Level Stuff"] = true,
    ["Auto Collect Fruit"] = true,
    ["Auto Store Fruit"] = true,
    ["Auto Mastery Melee"] = true,
    ["Auto Saber"] = true,
    ["Auto Pole"] = true,
    ["Auto New World 2"] = true,
    ["Auto Bartilo Quest"] = true,
    ["Auto Rengoku"] = true,
    ["Auto Flamingo Access"] = true,
    ["Auto Midnight Blade"] = true,
    ["Auto Buy 3 Legendary Sword"] = true,
    ["Auto Buy Legendary Haki"] = true,
    ["Auto Buy All When Level More Than 350"] = true,
    ["Auto New World 3"] = true,
    ["Auto Yama"] = true,
    ["Auto Tushita"] = true,
    ["Auto Soul Guitar"] = true
}
jackhub_key = "Mascara-Cat-Hub"

if jackhub_key == "Mascara-Cat-Hub" then
    if _G.KAITAN1CLICK then
        print "bro got secret WL"
        require(game.ReplicatedStorage:WaitForChild("Notification")).new(
            " <Color=Blue> ❤️ no way VanMascara Cat Hub Kaitan | Beta is updated ❤️ <Color=/> "
        ):Display()
        if _G.Settings["Auto Soul Guitar"] then
            _G.Auto_Soul_Guitar = true
        end
        if _G.Mics["Remove Terrain"] then
            _G.Boost = true
        end
        if _G.Mics["Auto Rejoin"] then
            _G.Rejoin = true
        end
        if _G.Settings["Auto Farm Level"] then
            _G.StartFarm = true
        end
        if _G.Settings["Auto Saber"] then
            _G.Start_Saber = true
        end
        if _G.Settings["Auto Pole"] then
            _G.Start_Pole = true
        end
        if _G.Settings["Auto New World 2"] then
            _G.Auto_New_World = true
        end
        if _G.Settings["Auto Bartilo Quest"] then
            _G.Auto_Bartilo_Quest = true
        end
        if _G.Settings["Auto Rengoku"] then
            _G.AutoRengoku = true
        end
        if _G.Settings["Auto Collect Fruit"] then
            _G.Grab_Fruit = true
        end
        if _G.Settings["Auto Store Fruit"] then
            _G.StoreFruit = true
        end
        if _G.Settings["Auto Flamingo Access"] then
            _G.Open_Flamingo_Access = true
        end
        if _G.Settings["Auto Midnight Blade"] then
            _G.Midnight_Blade = true
        end
        if _G.Settings["Auto New World 3"] then
            _G.Auto_World_3 = true
        end
        if _G.Settings["Auto Yama"] then
            _G.Auto_Yama = true
        end
        if _G.Settings["Auto Tushita"] then
            _G.Auto_Tushita = true
        end
        if _G.Settings["Enabled Skip Farm"] then
            _G.FastFarm = true
        end
        if _G.Settings["Auto Mastery Melee"] then
            _G.ChangeMelee = true
        end
        if _G.Settings["Auto Buy All When Level More Than 350"] then
            _G.BuyAll = true
        end
        task.wait(1)
        if game.PlaceId == 2753915549 then
            W1 = true
        elseif game.PlaceId == 4442272183 then
            W2 = true
        elseif game.PlaceId == 7449423635 then
            W3 = true
        end
        local function c(d)
            game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("SetTeam", d)
            local e = {
                "RaceEnergy",
                "Compass",
                "Energy",
                "AlliesButton",
                "Code",
                "CrewButton",
                "HomeButton",
                "Mute",
                "Settings",
                "MenuButton",
                "Beli",
                "Fragments",
                "Level",
                "HP"
            }
            if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
                game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam"):Destroy()
            end
            for f, g in pairs(e) do
                if g == "RaceEnergy" then
                    if
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Awakening") or
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Awakening")
                     then
                        game:GetService("Players").LocalPlayer.PlayerGui.Main[g].Visible = true
                    end
                else
                    game:GetService("Players").LocalPlayer.PlayerGui.Main[g].Visible = true
                end
            end
            game:GetService("Workspace").CurrentCamera.CameraType = Enum.CameraType.Custom
            game:GetService("Workspace").CurrentCamera.CameraSubject =
                game:GetService("Players").LocalPlayer.Character.Humanoid
            game:GetService("Workspace").CurrentCamera.CFrame =
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
        end
        c(_G.Settings["Team"])
        game:GetService("RunService"):Set3dRenderingEnabled(not _G.Mics["White Screen"])
        game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = not _G.Mics["Disabled Notify"]
        game:GetService("ReplicatedStorage").Effect.Container.Respawn:Destroy()
        game:GetService("ReplicatedStorage").Effect.Container.Death:Destroy()
        local h = game:GetService("Players").LocalPlayer.Data.Level.Value
        local function i()
            if h >= 1 and h <= 9 then
                if tostring(game.Players.LocalPlayer.Team) == "Marines" then
                    MobName = "Trainee"
                    QuestName = "MarineQuest"
                    QuestLevel = 1
                    Mon = "Trainee"
                    NPCPosition =
                        CFrame.new(
                        -2709.67944,
                        24.5206585,
                        2104.24585,
                        -0.744724929,
                        -3.97967455e-08,
                        -0.667371571,
                        4.32403588e-08,
                        1,
                        -1.07884304e-07,
                        0.667371571,
                        -1.09201515e-07,
                        -0.744724929
                    )
                elseif tostring(game.Players.LocalPlayer.Team) == "Pirates" then
                    MobName = "Bandit"
                    Mon = "Bandit"
                    QuestName = "BanditQuest1"
                    QuestLevel = 1
                    NPCPosition =
                        CFrame.new(
                        1059.99731,
                        16.9222069,
                        1549.28162,
                        -0.95466274,
                        7.29721794e-09,
                        0.297689587,
                        1.05190106e-08,
                        1,
                        9.22064114e-09,
                        -0.297689587,
                        1.19340022e-08,
                        -0.95466274
                    )
                end
                return {
                    [1] = QuestLevel,
                    [2] = NPCPosition,
                    [3] = MobName,
                    [4] = QuestName,
                    [5] = LevelRequire,
                    [6] = Mon,
                    [7] = MobCFrame
                }
            end
            if h >= 375 and h <= 399 then
                MobName = "Fishman Warrior"
                QuestName = "FishmanQuest"
                QuestLevel = 1
                Mon = "Fishman Warrior"
                NPCPosition =
                    CFrame.new(
                    61122.5625,
                    18.4716396,
                    1568.16504,
                    0.893533468,
                    3.95251609e-09,
                    0.448996574,
                    -2.34327455e-08,
                    1,
                    3.78297464e-08,
                    -0.448996574,
                    -4.43233645e-08,
                    0.893533468
                )
                MobCFrame =
                    CFrame.new(
                    60955.0625,
                    48.7988472,
                    1543.7168,
                    -0.831178129,
                    6.20639318e-09,
                    -0.556006253,
                    7.20035302e-08,
                    1,
                    -9.64761853e-08,
                    0.556006253,
                    -1.20223305e-07,
                    -0.831178129
                )
                if
                    _G.KAITAN1CLICK and
                        (NPCPosition.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                            3000
                 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "requestEntrance",
                        Vector3.new(61163.8515625, 11.6796875, 1819.7841796875)
                    )
                end
                return {
                    [1] = QuestLevel,
                    [2] = NPCPosition,
                    [3] = MobName,
                    [4] = QuestName,
                    [5] = LevelRequire,
                    [6] = Mon,
                    [7] = MobCFrame
                }
            end
            if h >= 15 and h <= 29 then
                MobName = "Gorilla"
                QuestName = "JungleQuest"
                QuestLevel = 2
                Mon = "Gorilla"
                NPCPosition =
                    CFrame.new(
                    -1604.12012,
                    36.8521118,
                    154.23732,
                    0.0648873374,
                    -4.70858913e-06,
                    -0.997892559,
                    1.41431883e-07,
                    1,
                    -4.70933674e-06,
                    0.997892559,
                    1.64442184e-07,
                    0.0648873374
                )
                MobCFrame =
                    CFrame.new(
                    -1142.0293,
                    40.5877495,
                    -516.118103,
                    0.55559355,
                    7.58965513e-08,
                    0.831454039,
                    1.24594361e-08,
                    1,
                    -9.96073553e-08,
                    -0.831454039,
                    6.57006538e-08,
                    0.55559355
                )
                return {
                    [1] = QuestLevel,
                    [2] = NPCPosition,
                    [3] = MobName,
                    [4] = QuestName,
                    [5] = LevelRequire,
                    [6] = Mon,
                    [7] = MobCFrame
                }
            end
            if h >= 400 and h <= 449 then
                MobName = "Fishman Commando"
                QuestName = "FishmanQuest"
                QuestLevel = 2
                Mon = "Fishman Commando"
                NPCPosition =
                    CFrame.new(
                    61122.5625,
                    18.4716396,
                    1568.16504,
                    0.893533468,
                    3.95251609e-09,
                    0.448996574,
                    -2.34327455e-08,
                    1,
                    3.78297464e-08,
                    -0.448996574,
                    -4.43233645e-08,
                    0.893533468
                )
                MobCFrame =
                    CFrame.new(
                    61872.3008,
                    75.5976562,
                    1394.83484,
                    -0.922134459,
                    4.36911973e-09,
                    -0.38686946,
                    -2.54707899e-08,
                    1,
                    7.20052e-08,
                    0.38686946,
                    7.62523484e-08,
                    -0.922134459
                )
                if
                    _G.KAITAN1CLICK and
                        (NPCPosition.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                            3000
                 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "requestEntrance",
                        Vector3.new(61163.8515625, 11.6796875, 1819.7841796875)
                    )
                end
                return {
                    [1] = QuestLevel,
                    [2] = NPCPosition,
                    [3] = MobName,
                    [4] = QuestName,
                    [5] = LevelRequire,
                    [6] = Mon,
                    [7] = MobCFrame
                }
            end
            local j = require(game:GetService("ReplicatedStorage").GuideModule)
            local k = require(game:GetService("ReplicatedStorage").Quests)
            for f, g in pairs(j["Data"]["NPCList"]) do
                for l, m in pairs(g["Levels"]) do
                    if h >= m then
                        if not LevelRequire then
                            LevelRequire = 0
                        end
                        if m > LevelRequire then
                            NPCPosition = f["CFrame"]
                            QuestLevel = l
                            LevelRequire = m
                        end
                        if #g["Levels"] == 3 and QuestLevel == 3 then
                            NPCPosition = f["CFrame"]
                            QuestLevel = 2
                            LevelRequire = g["Levels"][2]
                        end
                    end
                end
            end
            for f, g in pairs(k) do
                for l, m in pairs(g) do
                    if m["LevelReq"] == LevelRequire and f ~= "CitizenQuest" then
                        QuestName = f
                        for n, o in pairs(m["Task"]) do
                            MobName = n
                            Mon = string.split(n, " [Lv. " .. m["LevelReq"] .. "]")[1]
                        end
                    end
                end
            end
            if QuestName == "MarineQuest2" then
                QuestName = "MarineQuest2"
                QuestLevel = 1
                MobName = "Chief Petty Officer"
                Mon = "Chief Petty Officer"
                LevelRequire = 120
            elseif QuestName == "ImpelQuest" then
                QuestName = "PrisonerQuest"
                QuestLevel = 2
                MobName = "Dangerous Prisoner"
                Mon = "Dangerous Prisoner"
                LevelRequire = 210
                NPCPosition =
                    CFrame.new(
                    5310.60547,
                    0.350014925,
                    474.946594,
                    0.0175017118,
                    0,
                    0.999846935,
                    0,
                    1,
                    0,
                    -0.999846935,
                    0,
                    0.0175017118
                )
            elseif QuestName == "SkyExp1Quest" then
                if QuestLevel == 1 then
                    NPCPosition =
                        CFrame.new(
                        -4721.88867,
                        843.874695,
                        -1949.96643,
                        0.996191859,
                        -0,
                        -0.0871884301,
                        0,
                        1,
                        -0,
                        0.0871884301,
                        0,
                        0.996191859
                    )
                elseif QuestLevel == 2 then
                    NPCPosition =
                        CFrame.new(
                        -7859.09814,
                        5544.19043,
                        -381.476196,
                        -0.422592998,
                        0,
                        0.906319618,
                        0,
                        1,
                        0,
                        -0.906319618,
                        0,
                        -0.422592998
                    )
                end
            elseif QuestName == "Area2Quest" and QuestLevel == 2 then
                QuestName = "Area2Quest"
                QuestLevel = 1
                MobName = "Swan Pirate"
                Mon = "Swan Pirate"
                LevelRequire = 775
            end
            MobName = MobName:sub(1, #MobName)
            if not MobName:find("Lv") then
                for f, g in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    MonLV = string.match(g.Name, "%d+")
                    if g.Name:find(MobName) and #g.Name > #MobName and tonumber(MonLV) <= h + 50 then
                        MobName = g.Name
                    end
                end
            end
            if not MobName:find("Lv") then
                for f, g in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                    MonLV = string.match(g.Name, "%d+")
                    if g.Name:find(MobName) and #g.Name > #MobName and tonumber(MonLV) <= h + 50 then
                        MobName = g.Name
                        Mon = a
                    end
                end
            end
            for p, g in pairs(workspace._WorldOrigin.EnemySpawns:GetChildren()) do
                if g.Name == MobName then
                    MobCFrame = g.CFrame * CFrame.new(0, 30, 5)
                end
            end
            return {
                [1] = QuestLevel,
                [2] = NPCPosition,
                [3] = MobName,
                [4] = QuestName,
                [5] = LevelRequire,
                [6] = Mon,
                [7] = MobCFrame
            }
        end
        function EquipWeapon(q)
            if game.Players.LocalPlayer.Backpack:FindFirstChild(q) then
                local r = game.Players.LocalPlayer.Backpack:FindFirstChild(q)
                wait(.4)
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(r)
            end
        end
        function UnEquipWeapon(s)
            if game.Players.LocalPlayer.Character:FindFirstChild(s) then
                _G.NotAutoEquip = true
                task.wait(.5)
                game.Players.LocalPlayer.Character:FindFirstChild(s).Parent = game.Players.LocalPlayer.Backpack
                task.wait(.1)
                _G.NotAutoEquip = false
            end
        end
        function toposition(t)
            TweeSpeed = 349
            local u = game.Players.LocalPlayer
            TweenPlay = (t.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            pcall(
                function()
                    tot =
                        game:GetService("TweenService"):Create(
                        u.Character.HumanoidRootPart,
                        TweenInfo.new(TweenPlay / TweeSpeed, Enum.EasingStyle.Linear),
                        {CFrame = t}
                    )
                end
            )
            tot:Play()
            if TweenPlay <= 1000 then
                TweeSpeed = 100
            end
            if TweenPlay <= 500 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = t
            end
            if u.Character.Humanoid.Sit == true then
                u.Character.Humanoid.Sit = false
            end
            if _G.StopTween == true then
                tot:Cancel()
                _G.Clip = false
            end
            if _G.StopTween then
                tot:Cancel()
                BringMobFarm = false
                UseSkillGun = false
                UseSkill = false
            elseif game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                tot:Play()
            elseif game.Players.LocalPlayer.Character.Humanoid.Health <= 0 then
                tot:Cancel()
                BringMobFarm = false
                UseSkillGun = false
                UseSkill = false
                wait(0.5)
            end
        end
        function StopTween(v)
            if not v then
                _G.StopTween = true
                _G.StartScript = false
                task.wait()
                toposition(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                task.wait()
                BringMobFarm = false
                UseSkillGun = false
                UseSkill = false
                toposition(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                _G.StopTween = false
                _G.Clip = false
                if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy(

                    )
                end
            end
        end
        function TPPlayer(t)
            TweeSpeed = 200
            local u = game.Players.LocalPlayer
            TweenPlay = (t.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            local w = (t.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            pcall(
                function()
                    tot =
                        game:GetService("TweenService"):Create(
                        u.Character.HumanoidRootPart,
                        TweenInfo.new(TweenPlay / TweeSpeed, Enum.EasingStyle.Linear),
                        {CFrame = t}
                    )
                end
            )
            tot:Play()
            if TweenPlay >= 1200 then
                _G.StopTween = true
                game.Players.LocalPlayer.Character.Head:Destroy()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = t * CFrame.new(0, 50, 0)
                wait(.2)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = t
                wait(.1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = t * CFrame.new(0, 50, 0)
                game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
                wait(.1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = t
                wait(0.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
                _G.Clip = false
                _G.StopTween = false
            elseif TweenPlay <= 300 then
                tot:Cancel()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = t
                wait(0.2)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = t * CFrame.new(0, 30, 0)
            end
            if w <= 350 then
                tot:Cancel()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = t
                wait(0.2)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = t * CFrame.new(0, 30, 0)
            end
            if _G.StopTween then
                tot:Cancel()
                _G.Clip = false
            end
            if _G.StopTween then
                tot:Cancel()
                BringMobFarm = false
                UseSkillGun = false
                UseSkill = false
            elseif game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                tot:Play()
            elseif game.Players.LocalPlayer.Character.Humanoid.Health <= 0 then
                tot:Cancel()
                BringMobFarm = false
                UseSkillGun = false
                UseSkill = false
            end
        end
        function Bypass(x)
            _G.StopTween = true
            _G.StartScript = false
            _G.Clip = false
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = x
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
            game.Players.LocalPlayer.Character.Humanoid.Health = 0
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = x
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetLastSpawnPoint")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                "SetLastSpawnPoint",
                tostring(game:GetService("Players").LocalPlayer.Data.SpawnPoint.Value)
            )
            _G.StopTween = false
            if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
            end
        end
        function Check_Sword(y)
            for f, g in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventory")) do
                if g.Type == "Sword" then
                    if g.Name == y then
                        return true
                    end
                end
            end
        end
        function GetIsLand(...)
            local z = {...}
            local A = z[1]
            local B
            if type(A) == "vector" then
                B = A
            elseif type(A) == "userdata" then
                B = A.Position
            elseif type(A) == "number" then
                B = CFrame.new(unpack(z))
                B = B.p
            end
            local C
            local D = math.huge
            if game.Players.LocalPlayer.Team then
                for f, g in pairs(
                    game.Workspace._WorldOrigin.PlayerSpawns:FindFirstChild(tostring(game.Players.LocalPlayer.Team)):GetChildren(

                    )
                ) do
                    local E = (B - g:GetModelCFrame().p).Magnitude
                    if E < D then
                        D = E
                        C = g.Name
                    end
                end
                if C then
                    return C
                end
            end
        end
        local F = 1
        local G = 1
        local H = {
            ["Mon"] = {"Reborn Skeleton", "Demonic Soul", "Living Zombie", "Posessed Mummy"},
            ["Boss"] = {"Soul Reaper"},
            ["Item"] = "Hallow Essence"
        }
        function GetBone_CFrame_Mon()
            local I = {}
            for p, Mon in ipairs(H["Mon"]) do
                local J = Mon:gsub("Lv. ", ""):gsub("[%[%]]", ""):gsub("%d+", ""):gsub("%s+", "")
                for p, g in ipairs(game.workspace.EnemySpawns:GetChildren()) do
                    if g.Name == J then
                        table.insert(I, g.CFrame)
                    end
                end
            end
            return I
        end
        function getTrophies(K)
            for f, g in pairs(game:GetService("Workspace").Map["Haunted Castle"].Trophies.Quest:GetChildren()) do
                if g.Handle.Orientation then
                    local L = tonumber(tostring(g.Name:match("%d+")))
                    if tonumber(K) == tonumber(L) then
                        if tonumber(g.Handle.Orientation.Y) == 90 or tonumber(g.Handle.Orientation.Y) == -90 then
                            return {"A", 180, -180}
                        elseif tonumber(g.Handle.Orientation.Y) == 0 or tonumber(g.Handle.Orientation.Y) == 180 then
                            return {"B", -90, 90}
                        end
                    end
                end
            end
        end
        local function M(N)
            for f, g in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventory")) do
                if g.Type == "Material" then
                    if g.Name == N then
                        return g.Count
                    end
                end
            end
            return 0
        end
        local O = Instance.new("ScreenGui")
        local P = Instance.new("Frame")
        local Q = Instance.new("UIStroke")
        local R = Instance.new("UIGradient")
        local S = Instance.new("UICorner")
        local T = Instance.new("TextLabel")
        local U = Instance.new("UIGradient")
        local V = Instance.new("TextLabel")
        local W = Instance.new("UIGradient")
        local X = Instance.new("ImageLabel")
        local Y = Instance.new("TextLabel")
        O.Name = "Nexus.xyz"
        O.Parent = game:GetService("CoreGui")
        O.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        P.Name = "Main"
        P.Parent = O
        P.AnchorPoint = Vector2.new(0.5, 0.5)
        P.BackgroundColor3 = Color3.fromRGB(0, 15, 0)
        P.BorderColor3 = Color3.fromRGB(27, 42, 53)
        P.Position = UDim2.new(0.5, 0, 0.150000006, 0)
        P.Size = UDim2.new(0, 525, 0, 115)
        Q.Color = Color3.fromRGB(255, 255, 255)
        Q.Thickness = 3.5
        Q.Name = "MainStroke"
        Q.Parent = P
        R.Color =
            ColorSequence.new {
            ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 0)),
            ColorSequenceKeypoint.new(0.06, Color3.fromRGB(255, 85, 0)),
            ColorSequenceKeypoint.new(0.11, Color3.fromRGB(255, 170, 0)),
            ColorSequenceKeypoint.new(0.17, Color3.fromRGB(254, 255, 0)),
            ColorSequenceKeypoint.new(0.22, Color3.fromRGB(169, 255, 0)),
            ColorSequenceKeypoint.new(0.28, Color3.fromRGB(83, 255, 0)),
            ColorSequenceKeypoint.new(0.33, Color3.fromRGB(0, 255, 1)),
            ColorSequenceKeypoint.new(0.39, Color3.fromRGB(0, 255, 86)),
            ColorSequenceKeypoint.new(0.45, Color3.fromRGB(0, 255, 171)),
            ColorSequenceKeypoint.new(0.50, Color3.fromRGB(0, 252, 255)),
            ColorSequenceKeypoint.new(0.56, Color3.fromRGB(0, 167, 255)),
            ColorSequenceKeypoint.new(0.61, Color3.fromRGB(0, 82, 255)),
            ColorSequenceKeypoint.new(0.67, Color3.fromRGB(2, 0, 255)),
            ColorSequenceKeypoint.new(0.72, Color3.fromRGB(88, 0, 255)),
            ColorSequenceKeypoint.new(0.78, Color3.fromRGB(173, 0, 255)),
            ColorSequenceKeypoint.new(0.84, Color3.fromRGB(255, 0, 251)),
            ColorSequenceKeypoint.new(0.89, Color3.fromRGB(255, 0, 166)),
            ColorSequenceKeypoint.new(0.95, Color3.fromRGB(255, 0, 80)),
            ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 0))
        }
        R.Name = "StrokeGradient"
        R.Parent = Q
        S.CornerRadius = UDim.new(0, 10)
        S.Name = "MainCorner"
        S.Parent = P
        T.Name = "Status_1"
        T.Parent = P
        T.BackgroundColor3 = Color3.fromRGB(64, 64, 64)
        T.BackgroundTransparency = 1.000
        T.BorderColor3 = Color3.fromRGB(27, 42, 53)
        T.BorderSizePixel = 0
        T.Position = UDim2.new(0.0857142881, 0, 0.247135594, 0)
        T.Size = UDim2.new(0, 435, 0, 36)
        T.Font = Enum.Font.Unknown
        T.Text = "Auto Farm:"
        T.TextColor3 = Color3.fromRGB(255, 255, 255)
        T.TextSize = 18.000
        U.Color =
            ColorSequence.new {
            ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 0)),
            ColorSequenceKeypoint.new(0.06, Color3.fromRGB(255, 85, 0)),
            ColorSequenceKeypoint.new(0.11, Color3.fromRGB(255, 170, 0)),
            ColorSequenceKeypoint.new(0.17, Color3.fromRGB(254, 255, 0)),
            ColorSequenceKeypoint.new(0.22, Color3.fromRGB(169, 255, 0)),
            ColorSequenceKeypoint.new(0.28, Color3.fromRGB(83, 255, 0)),
            ColorSequenceKeypoint.new(0.33, Color3.fromRGB(0, 255, 1)),
            ColorSequenceKeypoint.new(0.39, Color3.fromRGB(0, 255, 86)),
            ColorSequenceKeypoint.new(0.45, Color3.fromRGB(0, 255, 171)),
            ColorSequenceKeypoint.new(0.50, Color3.fromRGB(0, 252, 255)),
            ColorSequenceKeypoint.new(0.56, Color3.fromRGB(0, 167, 255)),
            ColorSequenceKeypoint.new(0.61, Color3.fromRGB(0, 82, 255)),
            ColorSequenceKeypoint.new(0.67, Color3.fromRGB(2, 0, 255)),
            ColorSequenceKeypoint.new(0.72, Color3.fromRGB(88, 0, 255)),
            ColorSequenceKeypoint.new(0.78, Color3.fromRGB(173, 0, 255)),
            ColorSequenceKeypoint.new(0.84, Color3.fromRGB(255, 0, 251)),
            ColorSequenceKeypoint.new(0.89, Color3.fromRGB(255, 0, 166)),
            ColorSequenceKeypoint.new(0.95, Color3.fromRGB(255, 0, 80)),
            ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 0))
        }
        U.Name = "Status_1Gradient"
        U.Parent = T
        V.Name = "Status_2"
        V.Parent = P
        V.BackgroundColor3 = Color3.fromRGB(64, 64, 64)
        V.BackgroundTransparency = 1.000
        V.BorderColor3 = Color3.fromRGB(27, 42, 53)
        V.BorderSizePixel = 0
        V.Position = UDim2.new(0, 0, 0.500353038, 0)
        V.Size = UDim2.new(0, 525, 0, 36)
        V.Font = Enum.Font.Unknown
        V.Text = "Auto Items"
        V.TextColor3 = Color3.fromRGB(255, 255, 255)
        V.TextSize = 18.000
        W.Color =
            ColorSequence.new {
            ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 0)),
            ColorSequenceKeypoint.new(0.06, Color3.fromRGB(255, 85, 0)),
            ColorSequenceKeypoint.new(0.11, Color3.fromRGB(255, 170, 0)),
            ColorSequenceKeypoint.new(0.17, Color3.fromRGB(254, 255, 0)),
            ColorSequenceKeypoint.new(0.22, Color3.fromRGB(169, 255, 0)),
            ColorSequenceKeypoint.new(0.28, Color3.fromRGB(83, 255, 0)),
            ColorSequenceKeypoint.new(0.33, Color3.fromRGB(0, 255, 1)),
            ColorSequenceKeypoint.new(0.39, Color3.fromRGB(0, 255, 86)),
            ColorSequenceKeypoint.new(0.45, Color3.fromRGB(0, 255, 171)),
            ColorSequenceKeypoint.new(0.50, Color3.fromRGB(0, 252, 255)),
            ColorSequenceKeypoint.new(0.56, Color3.fromRGB(0, 167, 255)),
            ColorSequenceKeypoint.new(0.61, Color3.fromRGB(0, 82, 255)),
            ColorSequenceKeypoint.new(0.67, Color3.fromRGB(2, 0, 255)),
            ColorSequenceKeypoint.new(0.72, Color3.fromRGB(88, 0, 255)),
            ColorSequenceKeypoint.new(0.78, Color3.fromRGB(173, 0, 255)),
            ColorSequenceKeypoint.new(0.84, Color3.fromRGB(255, 0, 251)),
            ColorSequenceKeypoint.new(0.89, Color3.fromRGB(255, 0, 166)),
            ColorSequenceKeypoint.new(0.95, Color3.fromRGB(255, 0, 80)),
            ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 0))
        }
        W.Name = "Status_2Gradient"
        W.Parent = V
        X.Name = "Logo"
        X.Parent = P
        X.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        X.BackgroundTransparency = 1.000
        X.BorderColor3 = Color3.fromRGB(0, 0, 0)
        X.BorderSizePixel = 0
        X.Position = UDim2.new(0.438095242, 0, -0.321739137, 0)
        X.Size = UDim2.new(0, 65, 0, 65)
        X.Image = "rbxassetid://16173596986"
        Y.Name = "Credits"
        Y.Parent = P
        Y.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Y.BackgroundTransparency = 1.000
        Y.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Y.BorderSizePixel = 0
        Y.Position = UDim2.new(0, 0, 0.813396335, 0)
        Y.Size = UDim2.new(0, 515, 0, 25)
        Y.Font = Enum.Font.GothamBold
        Y.Text = "Script By : Văn Nguyên Hub"
        Y.TextColor3 = Color3.fromRGB(210, 210, 210)
        Y.TextSize = 16.000
        Y.TextXAlignment = Enum.TextXAlignment.Right
        local function Z()
            local _ = Instance.new("LocalScript", R)
            local a0 = _.parent
            while true do
                a0.Rotation = a0.Rotation + 2
                wait()
            end
        end
        coroutine.wrap(Z)()
        spawn(
            function()
                game:GetService("RunService").Stepped:Connect(
                    function()
                        if _G.KAITAN1CLICK then
                            for p, g in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                                if g:IsA("BasePart") then
                                    g.CanCollide = false
                                end
                            end
                            game:GetService "VirtualUser":CaptureController()
                            game:GetService "VirtualUser":Button1Down(Vector2.new(1280, 672))
                            game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken", true)
                        end
                    end
                )
            end
        )
        spawn(
            function()
                while task.wait() do
                    pcall(
                        function()
                            if _G.KAITAN1CLICK then
                                if
                                    not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild(
                                        "BodyClip"
                                    )
                                 then
                                    local a1 = Instance.new("BodyVelocity")
                                    a1.Name = "BodyClip"
                                    a1.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                                    a1.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                                    a1.Velocity = Vector3.new(0, 0, 0)
                                end
                                local a2 = Instance.new("Highlight")
                                a2.FillColor = Color3.new(0, 255, 0)
                                a2.OutlineColor = Color3.new(0, 255, 0)
                                a2.Parent = game.Players.LocalPlayer.Character
                            else
                                if
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild(
                                        "BodyClip"
                                    ) or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Highlight")
                                 then
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Highlight"):Destroy(

                                    )
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild(
                                        "BodyClip"
                                    ):Destroy()
                                end
                            end
                        end
                    )
                end
            end
        )
        spawn(
            function()
                pcall(
                    function()
                        while wait() do
                            if _G.KAITAN1CLICK and _G.Grab_Fruit then
                                for f, g in pairs(game:GetService("Workspace"):GetChildren()) do
                                    if string.find(g.Name, "Fruit") then
                                        if g:IsA("Tool") then
                                            _G.StartFarm = false
                                            if
                                                (g.Handle.CFrame.Position -
                                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >=
                                                    _G.Mics["Max-Distance Bypass TP"]
                                             then
                                                T.Text = "Collecting Fruits"
                                                Bypass(g.Handle.CFrame * CFrame.new(0, 50, 0))
                                                repeat
                                                    wait()
                                                    Bypass(g.Handle.CFrame * CFrame.new(0, 50, 0))
                                                until (g.Handle.CFrame.Position -
                                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                                    _G.Mics["Max-Distance Bypass TP"] or not _G.KAITAN1CLICK
                                                repeat
                                                    wait()
                                                    toposition(g.Handle.CFrame)
                                                until (g.Handle.CFrame.Position -
                                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                                    _G.Mics["Max-Distance Bypass TP"] or not _G.KAITAN1CLICK
                                            else
                                                repeat
                                                    wait()
                                                    toposition(g.Handle.CFrame)
                                                until (g.Handle.CFrame.Position -
                                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                                    1 or not _G.KAITAN1CLICK
                                            end
                                            toposition(g.Handle.CFrame)
                                            firetouchinterest(
                                                game.Players.LocalPlayer.Character.HumanoidRootPart,
                                                g.Handle,
                                                0
                                            )
                                        end
                                    elseif not string.find(g.Name, "Fruit") then
                                        _G.StartFarm = true
                                    end
                                end
                            end
                        end
                    end
                )
            end
        )
        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman", true) == 1 then
            V.Text = "Bought Superhuman"
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
            print "Superhuman | ✅"
        end
        wait()
        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep", true) == 1 then
            V.Text = "Bought DeathStep"
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
            print "DeathStep | ✅"
        end
        wait()
        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true) == 1 then
            V.Text = "Bought Sharkman Karate"
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
            print "Sharkman Karate| ✅"
        end
        wait()
        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", true) == 1 then
            V.Text = "Bought Elictric Claw"
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
            print "Electric Claw | ✅"
        end
        wait()
        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1 then
            V.Text = "Bought Dragon Talon"
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2")
            print "Dragon Talon | ✅"
        end
        wait()
        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman", true) == 1 then
            V.Text = "Bought GodHuman"
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
            print "God Human | ✅"
        end
        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 3 then
            print "Bartilo Quest | ✅"
        end
        if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "Check") == 1 then
            print "Kill Swan | ✅"
        end
        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist", "Heal") == 1 then
            print "Awakening Phoenix | ✅"
        end
        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen") == 3 then
            print "Observition Haki V2 | ✅"
        end
        if Check_Sword("Shisui") then
            print("✅ | Shisui")
        end
        if Check_Sword("Saddi") then
            print("✅ |: Saddi")
        end
        if Check_Sword("Wando") then
            print("✅ | Wando")
        end
        if Check_Sword("True Triple Katana") then
            print("✅ | True Triple Katana")
        end
        if Check_Sword("Saber") then
            print("✅ | Saber")
        end
        if Check_Sword("Rengoku") then
            print("✅ | Rengoku")
        end
        if Check_Sword("Midnight Blade") then
            print("✅ | Midnight Blade")
        end
        if Check_Sword("Dragon Trident") then
            print("✅ | Dragon Trident")
        end
        if Check_Sword("Yama") then
            print("✅ | Yama")
        end
        if Check_Sword("Buddy Sword") then
            print("✅ | Buddy Sword")
        end
        if Check_Sword("Canvander") then
            print("✅ | Canvander")
        end
        if Check_Sword("Spikey Trident") then
            print("✅ | Spikey Trident")
        end
        if Check_Sword("Hallow Scythe") then
            print("✅ | Hallow Scythe")
        end
        if Check_Sword("Dark Dagger") then
            print("✅ | Dark Dagger")
        end
        if Check_Sword("Tushita") then
            print("✅ | Tushita")
        end
        if Check_Sword("Cursed Dual Katana") then
            print("✅ | Cursed Dual Katana")
        end
        for f, g in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")) do
            if g.Name == "Kabucha" then
                print("✅ | Kabucha Gun")
            end
            if g.Name == "Acidum Rifle" then
                print("✅ | Acidum Rifle")
            end
            if g.Name == "Bizarre Rifle" then
                print("✅ | Bizarre Rifle")
            end
            if g.Name == "Soul Guitar" then
                print("✅ | Soul Guitar")
            end
            if g.Name == "Serpent Bow" then
                print("✅ | Serpent Bow")
            end
            if g.Name == "Ghoul Mask" then
                print("✅ | Ghoul Mask")
            end
            if g.Name == "Swan Glasses" then
                print("✅ | Swan Glass")
            end
            if g.Name == "Pale Scarf" then
                print("✅ | Pale Scarf")
            end
            if g.Name == "Valkyrie Helmet" then
                print("✅ | Valkyrie Helmet")
            end
            if g.Name == "Usoap's Hat" then
                print("✅ | Usoap's Hat")
            end
            if g.Name == "Warrior Helmet" then
                print("✅ | Warrior Helmet")
            end
        end
        Code = {
            "EXP_5B",
            "RESET_5B",
            "CONTROL",
            "UPDATE11",
            "XMASEXP",
            "1BILLION",
            "ShutDownFix2",
            "UPD14",
            "STRAWHATMAINE",
            "TantaiGaming",
            "Colosseum",
            "Axiore",
            "Sub2Daigrock",
            "Sky Island 3",
            "Sub2OfficialNoobie",
            "SUB2NOOBMASTER123",
            "THEGREATACE",
            "Fountain City",
            "BIGNEWS",
            "FUDD10",
            "SUB2GAMERROBOT_EXP1",
            "UPD15",
            "2BILLION",
            "UPD16",
            "3BVISITS",
            "fudd10_v2",
            "Starcodeheo",
            "Magicbus",
            "JCWK",
            "Bluxxy",
            "Sub2Fer999",
            "Enyu_is_Pro",
            "NEWTROLL",
            "SECRET_ADMIN",
            "KITT_RESET",
            "JULYUPDATE_RESET",
            "staffbattle",
            "Sub2CaptainMaui",
            "SUB2GAMERROBOT_RESET1",
            "KittGaming",
            "GAMER_ROBOT_1M",
            "TY_FOR_WATCHING",
            "SUBGAMERROBOT",
            "NOOB_REFUND"
        }
        spawn(
            function()
                while wait() do
                    if _G.KAITAN1CLICK then
                        MyLevel = game.Players.localPlayer.Data.Level.value
                        if MyLevel >= 1 then
                            V.Text = "Status: Redeem Code"
                            for f, g in pairs(Code) do
                                pcall(
                                    function()
                                        local args = {[1] = g}
                                        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(unpack(args))
                                    end
                                )
                            end
                            break
                        end
                    end
                end
            end
        )
        function dithetae()
            if _G.DitFruits then
                if
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rocket Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rocket Fruit")
                 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "StoreFruit",
                        "Rocket-Rocket",
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rocket Fruit") or
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rocket Fruit")
                    )
                    wait(0.3)
                    game.Players.LocalPlayer.Character.Head:Destroy()
                elseif
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit")
                 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "StoreFruit",
                        "Spin-Spin",
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit")
                    )
                    wait(0.3)
                    game.Players.LocalPlayer.Character.Head:Destroy()
                elseif
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Blade Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Blade Fruit")
                 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "StoreFruit",
                        "Blade-Blade",
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Blade Fruit") or
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Blade Fruit")
                    )
                    wait(0.3)
                    game.Players.LocalPlayer.Character.Head:Destroy()
                elseif
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit")
                 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "StoreFruit",
                        "Spring-Spring",
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit")
                    )
                    wait(0.3)
                    game.Players.LocalPlayer.Character.Head:Destroy()
                elseif
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit")
                 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "StoreFruit",
                        "Bomb-Bomb",
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit")
                    )
                    wait(0.3)
                    game.Players.LocalPlayer.Character.Head:Destroy()
                elseif
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit")
                 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "StoreFruit",
                        "Smoke-Smoke",
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit")
                    )
                    wait(0.3)
                    game.Players.LocalPlayer.Character.Head:Destroy()
                elseif
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit")
                 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "StoreFruit",
                        "Spike-Spike",
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit")
                    )
                    wait(0.3)
                    game.Players.LocalPlayer.Character.Head:Destroy()
                elseif
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit")
                 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "StoreFruit",
                        "Flame-Flame",
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit")
                    )
                    wait(0.3)
                    game.Players.LocalPlayer.Character.Head:Destroy()
                elseif
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Eagle Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Eagle Fruit")
                 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "StoreFruit",
                        "Bird-Bird: Eagle",
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Eagle Fruit") or
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Eagle Fruit")
                    )
                    wait(0.3)
                    game.Players.LocalPlayer.Character.Head:Destroy()
                elseif
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit")
                 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "StoreFruit",
                        "Ice-Ice",
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit")
                    )
                    wait(0.3)
                    game.Players.LocalPlayer.Character.Head:Destroy()
                elseif
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit")
                 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "StoreFruit",
                        "Sand-Sand",
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit")
                    )
                    wait(0.3)
                    game.Players.LocalPlayer.Character.Head:Destroy()
                elseif
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit")
                 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "StoreFruit",
                        "Dark-Dark",
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit")
                    )
                    wait(0.3)
                    game.Players.LocalPlayer.Character.Head:Destroy()
                elseif
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit")
                 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "StoreFruit",
                        "Diamond-Diamond",
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit")
                    )
                    wait(0.3)
                    game.Players.LocalPlayer.Character.Head:Destroy()
                elseif
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit")
                 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "StoreFruit",
                        "Light-Light",
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit")
                    )
                    wait(0.3)
                    game.Players.LocalPlayer.Character.Head:Destroy()
                elseif
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit")
                 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "StoreFruit",
                        "Rubber-Rubber",
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit")
                    )
                    wait(0.3)
                    game.Players.LocalPlayer.Character.Head:Destroy()
                elseif
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Creation Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Creation Fruit")
                 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "StoreFruit",
                        "Creation-Creation",
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Creation Fruit") or
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Creation Fruit")
                    )
                    wait(0.3)
                    game.Players.LocalPlayer.Character.Head:Destroy()
                elseif
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ghost Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ghost Fruit")
                 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "StoreFruit",
                        "Ghost-Ghost",
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ghost Fruit") or
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ghost Fruit")
                    )
                    wait(0.3)
                    game.Players.LocalPlayer.Character.Head:Destroy()
                elseif
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit")
                 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "StoreFruit",
                        "Magma-Magma",
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit")
                    )
                    wait(0.3)
                    game.Players.LocalPlayer.Character.Head:Destroy()
                elseif
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit")
                 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "StoreFruit",
                        "Love-Love",
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit")
                    )
                    wait(0.3)
                    game.Players.LocalPlayer.Character.Head:Destroy()
                elseif
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit")
                 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "StoreFruit",
                        "Quake-Quake",
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit")
                    )
                    wait(0.3)
                    game.Players.LocalPlayer.Character.Head:Destroy()
                elseif
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit")
                 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "StoreFruit",
                        "Human-Human: Buddha",
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit")
                    )
                    wait(0.3)
                    game.Players.LocalPlayer.Character.Head:Destroy()
                elseif
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spider Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spider Fruit")
                 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "StoreFruit",
                        "Spider-Spider",
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spider Fruit") or
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spider Fruit")
                    )
                    wait(0.3)
                    game.Players.LocalPlayer.Character.Head:Destroy()
                elseif
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit")
                 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "StoreFruit",
                        "Bird-Bird: Phoenix",
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit")
                    )
                    wait(0.3)
                    game.Players.LocalPlayer.Character.Head:Destroy()
                elseif
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Lightning Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Lightning Fruit")
                 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "StoreFruit",
                        "Lightning-Lightning",
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Lightning Fruit") or
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Lightning Fruit")
                    )
                    wait(0.3)
                    game.Players.LocalPlayer.Character.Head:Destroy()
                elseif
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Pain Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Pain Fruit")
                 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "StoreFruit",
                        "Pain-Pain",
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Pain Fruit") or
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Pain Fruit")
                    )
                    wait(0.3)
                    game.Players.LocalPlayer.Character.Head:Destroy()
                elseif
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit")
                 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "StoreFruit",
                        "Gravity-Gravity",
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit")
                    )
                    wait(0.3)
                    game.Players.LocalPlayer.Character.Head:Destroy()
                elseif
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit")
                 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "StoreFruit",
                        "Dough-Dough",
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit")
                    )
                    wait(0.3)
                    game.Players.LocalPlayer.Character.Head:Destroy()
                elseif
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit")
                 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "StoreFruit",
                        "Shadow-Shadow",
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit")
                    )
                    wait(0.3)
                    game.Players.LocalPlayer.Character.Head:Destroy()
                elseif
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit")
                 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "StoreFruit",
                        "Venom-Venom",
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit")
                    )
                    wait(0.3)
                    game.Players.LocalPlayer.Character.Head:Destroy()
                elseif
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit")
                 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "StoreFruit",
                        "Control-Control",
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit")
                    )
                    wait(0.3)
                    game.Players.LocalPlayer.Character.Head:Destroy()
                elseif
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit")
                 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "StoreFruit",
                        "Dragon-Dragon",
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit")
                    )
                    wait(0.3)
                    game.Players.LocalPlayer.Character.Head:Destroy()
                elseif
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leopard Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit")
                 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "StoreFruit",
                        "Leopard-Leopard",
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leopard Fruit") or
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit")
                    )
                    wait(0.3)
                    game.Players.LocalPlayer.Character.Head:Destroy()
                elseif
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kitsune Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kitsune Fruit")
                 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "StoreFruit",
                        "Kitsune-Kitsune",
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kitsune Fruit") or
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kitsune Fruit")
                    )                    
                    wait(0.3)
                    game.Players.LocalPlayer.Character.Head:Destroy()
                elseif
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gas Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gas Fruit")
                 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "StoreFruit",
                        "Gas-Gas",
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gas Fruit") or
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gas Fruit")
                    )                    
                    wait(0.3)
                    game.Players.LocalPlayer.Character.Head:Destroy()
                elseif
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Yeti Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Yeti Fruit")
                 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "StoreFruit",
                        "Yeti-Yeti",
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Yeti Fruit") or
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Yeti Fruit")
                    )                    
                    wait(0.3)
                    game.Players.LocalPlayer.Character.Head:Destroy()
                elseif
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sound Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sound Fruit")
                 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "StoreFruit",
                        "Sound-Sound",
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sound Fruit") or
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sound Fruit")
                    )                    
                    wait(0.3)
                    game.Players.LocalPlayer.Character.Head:Destroy()
                elseif
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Blizzard Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Blizzard Fruit")
                 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "StoreFruit",
                        "Blizzard-Blizzard",
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Blizzard Fruit") or
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Blizzard Fruit")
                    )                    
                    wait(0.3)
                    game.Players.LocalPlayer.Character.Head:Destroy()
                elseif
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("T-Rex Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("T-Rex Fruit")
                 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "StoreFruit",
                        "T-Rex-T-Rex",
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("T-Rex Fruit") or
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("T-Rex Fruit")
                    )                    
                    wait(0.3)
                    game.Players.LocalPlayer.Character.Head:Destroy()
                elseif
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spirit Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spirit Fruit")
                 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "StoreFruit",
                        "Spirit-Spirit",
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spirit Fruit") or
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spirit Fruit")
                    )                    
                    wait(0.3)
                    game.Players.LocalPlayer.Character.Head:Destroy()
                elseif
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Portal Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Portal Fruit")
                 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "StoreFruit",
                        "Portal-Portal",
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Portal Fruit") or
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Portal Fruit")
                    )                    
                    wait(0.3)
                    game.Players.LocalPlayer.Character.Head:Destroy()
                end
            end
        end
        spawn(
            function()
                while wait(30) do
                    if _G.KAITAN1CLICK and _G.StoreFruit and _G.Auto_Dungeon_Superhuman == nil then
                        _G.DitFruits = true
                        dithetae()
                    end
                end
            end
        )
        spawn(
            function()
                while wait() do
                    local MyLevel = game.Players.localPlayer.Data.Level.value
                    if _G.KAITAN1CLICK and _G.Midnight_Blade then
                        pcall(
                            function()
                                if MyLevel >= 1349 and Check_Sword("Midnight Blade") == nil then
                                    _G.Grab_Fruit = false
                                    if
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                            "Ectoplasm",
                                            "Check"
                                        ) <= 100
                                     then
                                        if
                                            game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand") or
                                                game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer") or
                                                game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward") or
                                                game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer")
                                         then
                                            if
                                                (CFrame.new(911.35827636719, 125.95812988281, 33159.5390625).Position -
                                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >=
                                                    _G.Mics["Max-Distance Bypass TP"]
                                             then
                                                Bypass(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625))
                                                repeat
                                                    wait()
                                                    Bypass(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625))
                                                until (CFrame.new(911.35827636719, 125.95812988281, 33159.5390625).Position -
                                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                                    _G.Mics["Max-Distance Bypass TP"] or not _G.KAITAN1CLICK
                                            end
                                            for f, g in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                if string.find(g.Name, "Ship") then
                                                    repeat
                                                        task.wait()
                                                        if string.find(g.Name, "Ship") then
                                                            T.Text = "Auto Farm: Ship"
                                                            EquipWeapon(_G.Select_Weapon)
                                                            g.HumanoidRootPart.CanCollide = false
                                                            g.Head.CanCollide = false
                                                            g.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                                            toposition(g.HumanoidRootPart.CFrame * CFrame.new(0, 30, 5))
                                                            wait()
                                                            toposition(
                                                                g.HumanoidRootPart.CFrame * CFrame.new(40, 30, 0)
                                                            )
                                                            wait()
                                                            toposition(
                                                                g.HumanoidRootPart.CFrame * CFrame.new(0, 30, -40)
                                                            )
                                                            wait()
                                                            toposition(g.HumanoidRootPart.CFrame * CFrame.new(0, 30, 5))
                                                            PosMon = g.HumanoidRootPart.CFrame
                                                            BringMobFarm565 = true
                                                        else
                                                            BringMobFarm565 = false
                                                            toposition(
                                                                CFrame.new(
                                                                    911.35827636719,
                                                                    125.95812988281,
                                                                    33159.5390625
                                                                )
                                                            )
                                                        end
                                                    until _G.Midnight_Blade == false or not g.Parent or
                                                        g.Humanoid.Health <= 0
                                                end
                                            end
                                        else
                                            BringMobFarm565 = false
                                            if
                                                (CFrame.new(911.35827636719, 125.95812988281, 33159.5390625).Position -
                                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >=
                                                    _G.Mics["Max-Distance Bypass TP"]
                                             then
                                                Bypass(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625))
                                                repeat
                                                    wait()
                                                    Bypass(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625))
                                                until (CFrame.new(911.35827636719, 125.95812988281, 33159.5390625).Position -
                                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                                    1 or not _G.KAITAN1CLICK
                                            else
                                                repeat
                                                    wait()
                                                    toposition(
                                                        CFrame.new(911.35827636719, 125.95812988281, 33159.5390625)
                                                    )
                                                until (CFrame.new(911.35827636719, 125.95812988281, 33159.5390625).Position -
                                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                                    1 or not _G.KAITAN1CLICK
                                            end
                                        end
                                    elseif
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                            "Ectoplasm",
                                            "Check"
                                        ) >= 100
                                     then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                            "Ectoplasm",
                                            "BuyCheck",
                                            3
                                        )
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                            "Ectoplasm",
                                            "Buy",
                                            3
                                        )
                                        _G.Grab_Fruit = true
                                        wait(1.5)
                                        _G.Midnight_Blade = false
                                        wait(2.5)
                                        _G.StartFarm = true
                                    end
                                elseif Check_Sword("Midnight Blade") == true then
                                    _G.Midnight_Blade = false
                                    _G.StartFarm = true
                                else
                                    if
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                            "Ectoplasm",
                                            "Check"
                                        ) >= 100
                                     then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                            "Ectoplasm",
                                            "BuyCheck",
                                            3
                                        )
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                            "Ectoplasm",
                                            "Buy",
                                            3
                                        )
                                    end
                                end
                            end
                        )
                    end
                end
            end
        )
        spawn(
            function()
                while wait() do
                    if _G.KAITAN1CLICK and game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
                        pcall(
                            function()
                                if
                                    game:GetService("Players").LocalPlayer.Data.Beli.Value >= 500000 and
                                        (game.Players.LocalPlayer.Character:FindFirstChild("Combat") or
                                            game.Players.LocalPlayer.Backpack:FindFirstChild("Combat"))
                                 then
                                    _G.Select_Weapon = "Combat"
                                    local args = {[1] = "BuyElectro"}
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                end
                                if
                                    game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or
                                        game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman")
                                 then
                                    _G.Select_Weapon = "Superhuman"
                                end
                                if
                                    game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and
                                        game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 299
                                 then
                                    _G.Select_Weapon = "Black Leg"
                                end
                                if
                                    game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and
                                        game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 299
                                 then
                                    _G.Select_Weapon = "Electro"
                                end
                                if
                                    game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and
                                        game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <=
                                            299
                                 then
                                    _G.Select_Weapon = "Fishman Karate"
                                end
                                if
                                    game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and
                                        game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <=
                                            299
                                 then
                                    _G.Select_Weapon = "Dragon Claw"
                                elseif
                                    game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 299
                                 then
                                    if game:GetService("Players").LocalPlayer.Data.Beli.Value <= 3000000 then
                                    else
                                    end
                                end
                                if
                                    game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and
                                        game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300
                                 then
                                    local args = {[1] = "BuyFishmanKarate"}
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                    V.Text = "Bought Fishman Karate"
                                end
                                if
                                    game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and
                                        game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >=
                                            300
                                 then
                                    local args = {[1] = "BuyFishmanKarate"}
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                    V.Text = "Bought Fishman Karate"
                                end
                                if
                                    game.Players.LocalPlayer.Character:FindFirstChild("Electro") and
                                        game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300
                                 then
                                    local args = {[1] = "BuyBlackLeg"}
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                    V.Text = "Bought Black Leg"
                                end
                                if
                                    game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and
                                        game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >=
                                            300
                                 then
                                    if game.Players.LocalPlayer.Data.Fragments.Value < 1500 then
                                        if game.Players.LocalPlayer.Data.Level.Value > 1100 then
                                            _G.StartFarm = false
                                            _G.JoinD = true
                                            wait(1.5)
                                            _G.Auto_Dungeon_Superhuman = true
                                        end
                                    else
                                        _G.JoinD = false
                                        _G.StartFarm = true
                                        _G.Auto_Dungeon_Superhuman = false
                                        local args = {[1] = "BlackbeardReward", [2] = "DragonClaw", [3] = "2"}
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                            "BlackbeardReward",
                                            "DragonClaw",
                                            "1"
                                        )
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                            "BlackbeardReward",
                                            "DragonClaw",
                                            "2"
                                        )
                                    end
                                end
                                if
                                    game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and
                                        game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >=
                                            300
                                 then
                                    if game.Players.LocalPlayer.Data.Fragments.Value < 1500 then
                                        if game.Players.LocalPlayer.Data.Level.Value > 1100 then
                                            _G.StartFarm = false
                                            _G.JoinD = true
                                            wait(1.5)
                                            _G.Auto_Dungeon_Superhuman = true
                                        end
                                    else
                                        _G.JoinD = false
                                        _G.StartFarm = true
                                        _G.Auto_Dungeon_Superhuman = false
                                        local args = {[1] = "BlackbeardReward", [2] = "DragonClaw", [3] = "2"}
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                            "BlackbeardReward",
                                            "DragonClaw",
                                            "1"
                                        )
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                            "BlackbeardReward",
                                            "DragonClaw",
                                            "2"
                                        )
                                        V.Text = "Bought Dragon Claw"
                                    end
                                end
                                if
                                    game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and
                                        game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >=
                                            300
                                 then
                                    local args = {[1] = "BuySuperhuman"}
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                    V.Text = "Bought Super Human"
                                end
                                if
                                    game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and
                                        game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >=
                                            300
                                 then
                                    local args = {[1] = "BuySuperhuman"}
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                    V.Text = "Bought Super Human"
                                end
                            end
                        )
                    end
                end
            end
        )
        spawn(
            function()
                while wait() do
                    if _G.KAITAN1CLICK and _G.Auto_Dungeon_Superhuman and _G.StartFarm == false then
                        for f, g in pairs(game.Workspace.Enemies:GetDescendants()) do
                            if
                                g:FindFirstChild("Humanoid") and g:FindFirstChild("HumanoidRootPart") and
                                    g.Humanoid.Health > 0
                             then
                                pcall(
                                    function()
                                        repeat
                                            wait()
                                            T.Text = "Kill Aura Raid"
                                            g.Humanoid.Health = 0
                                            g.HumanoidRootPart.CanCollide = false
                                            g.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                            g.HumanoidRootPart.Transparency = 1
                                        until not _G.Auto_Dungeon_Superhuman or not g.Parent or g.Humanoid.Health <= 0
                                    end
                                )
                            end
                        end
                    else
                    end
                end
            end
        )
        spawn(
            function()
                while wait() do
                    local h = game:GetService("Players").LocalPlayer.Data.Level.Value
                    if _G.KAITAN1CLICK and _G.Start_Saber and Check_Sword("Saber") == nil and h >= 250 and h <= 300 then
                        pcall(
                            function()
                                T.Text = "Auto Saber and Auto Pole maybe doesn't work"
                                _G.StartFarm = false
                                if game:GetService("Workspace").Map.Jungle.Final.Part.Transparency == 0 then
                                    if game:GetService("Workspace").Map.Jungle.QuestPlates.Door.Transparency == 0 then
                                        if
                                            (CFrame.new(
                                                -1612.55884,
                                                36.9774132,
                                                148.719543,
                                                0.37091279,
                                                3.0717151e-09,
                                                -0.928667724,
                                                3.97099491e-08,
                                                1,
                                                1.91679348e-08,
                                                0.928667724,
                                                -4.39869794e-08,
                                                0.37091279
                                            ).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                                100
                                         then
                                            toposition(
                                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
                                            )
                                            wait(1)
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                                game:GetService("Workspace").Map.Jungle.QuestPlates.Plate1.Button.CFrame
                                            wait(1)
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                                game:GetService("Workspace").Map.Jungle.QuestPlates.Plate2.Button.CFrame
                                            wait(1)
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                                game:GetService("Workspace").Map.Jungle.QuestPlates.Plate3.Button.CFrame
                                            wait(1)
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                                game:GetService("Workspace").Map.Jungle.QuestPlates.Plate4.Button.CFrame
                                            wait(1)
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                                game:GetService("Workspace").Map.Jungle.QuestPlates.Plate5.Button.CFrame
                                            wait(1)
                                        else
                                            toposition(
                                                CFrame.new(
                                                    -1612.55884,
                                                    36.9774132,
                                                    148.719543,
                                                    0.37091279,
                                                    3.0717151e-09,
                                                    -0.928667724,
                                                    3.97099491e-08,
                                                    1,
                                                    1.91679348e-08,
                                                    0.928667724,
                                                    -4.39869794e-08,
                                                    0.37091279
                                                )
                                            )
                                        end
                                    else
                                        if game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 0 then
                                            if
                                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch") or
                                                    game.Players.LocalPlayer.Character:FindFirstChild("Torch")
                                             then
                                                EquipWeapon("Torch")
                                                toposition(
                                                    CFrame.new(
                                                        1114.61475,
                                                        5.04679728,
                                                        4350.22803,
                                                        -0.648466587,
                                                        -1.28799094e-09,
                                                        0.761243105,
                                                        -5.70652914e-10,
                                                        1,
                                                        1.20584542e-09,
                                                        -0.761243105,
                                                        3.47544882e-10,
                                                        -0.648466587
                                                    )
                                                )
                                            else
                                                toposition(
                                                    CFrame.new(
                                                        -1610.00757,
                                                        11.5049858,
                                                        164.001587,
                                                        0.984807551,
                                                        -0.167722285,
                                                        -0.0449818149,
                                                        0.17364943,
                                                        0.951244235,
                                                        0.254912198,
                                                        3.42372805e-05,
                                                        -0.258850515,
                                                        0.965917408
                                                    )
                                                )
                                            end
                                        else
                                            if
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                    "ProQuestProgress",
                                                    "SickMan"
                                                ) ~= 0
                                             then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                    "ProQuestProgress",
                                                    "GetCup"
                                                )
                                                wait(0.5)
                                                EquipWeapon("Cup")
                                                wait(0.5)
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                    "ProQuestProgress",
                                                    "FillCup",
                                                    game:GetService("Players").LocalPlayer.Character.Cup
                                                )
                                                wait(0)
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                    "ProQuestProgress",
                                                    "SickMan"
                                                )
                                            else
                                                if
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                        "ProQuestProgress",
                                                        "RichSon"
                                                    ) == nil
                                                 then
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                        "ProQuestProgress",
                                                        "RichSon"
                                                    )
                                                elseif
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                        "ProQuestProgress",
                                                        "RichSon"
                                                    ) == 0
                                                 then
                                                    if
                                                        game:GetService("Workspace").Enemies:FindFirstChild(
                                                            "Mob Leader"
                                                        ) or
                                                            game:GetService("ReplicatedStorage"):FindFirstChild(
                                                                "Mob Leader"
                                                            )
                                                     then
                                                        toposition(
                                                            CFrame.new(
                                                                -2967.59521,
                                                                -4.91089821,
                                                                5328.70703,
                                                                0.342208564,
                                                                -0.0227849055,
                                                                0.939347804,
                                                                0.0251603816,
                                                                0.999569714,
                                                                0.0150796166,
                                                                -0.939287126,
                                                                0.0184739735,
                                                                0.342634559
                                                            )
                                                        )
                                                        for f, g in pairs(
                                                            game:GetService("Workspace").Enemies:GetChildren()
                                                        ) do
                                                            if g.Name == "Mob Leader" then
                                                                if
                                                                    game:GetService("Workspace").Enemies:FindFirstChild(
                                                                        "Mob Leader"
                                                                    )
                                                                 then
                                                                    if
                                                                        g:FindFirstChild("Humanoid") and
                                                                            g:FindFirstChild("HumanoidRootPart") and
                                                                            g.Humanoid.Health > 0
                                                                     then
                                                                        repeat
                                                                            task.wait()
                                                                            AutoHaki()
                                                                            EquipWeapon(_G.Select_Weapon)
                                                                            g.HumanoidRootPart.CanCollide = false
                                                                            g.Humanoid.WalkSpeed = 0
                                                                            g.HumanoidRootPart.Size =
                                                                                Vector3.new(80, 80, 80)
                                                                            toposition(
                                                                                g.HumanoidRootPart.CFrame *
                                                                                    CFrame.new(0, 5, 5)
                                                                            )
                                                                            wait()
                                                                            toposition(
                                                                                g.HumanoidRootPart.CFrame *
                                                                                    CFrame.new(0, 10, 5)
                                                                            )
                                                                            wait()
                                                                            toposition(
                                                                                g.HumanoidRootPart.CFrame *
                                                                                    CFrame.new(0, 10, 10)
                                                                            )
                                                                            game:GetService("VirtualUser"):CaptureController(

                                                                            )
                                                                            game:GetService("VirtualUser"):Button1Down(
                                                                                Vector2.new(1280, 672)
                                                                            )
                                                                            sethiddenproperty(
                                                                                game:GetService("Players").LocalPlayer,
                                                                                "SimulationRadius",
                                                                                math.huge
                                                                            )
                                                                        until g.Humanoid.Health <= 0 or
                                                                            not _G.Start_Saber
                                                                    end
                                                                end
                                                                if
                                                                    game:GetService("ReplicatedStorage"):FindFirstChild(
                                                                        "Mob Leader"
                                                                    )
                                                                 then
                                                                    topostoposition(
                                                                        game:GetService("ReplicatedStorage"):FindFirstChild(
                                                                            "Mob Leader"
                                                                        ).HumanoidRootPart.CFrame * Cframe.new(0, 5, 5)
                                                                    )
                                                                end
                                                            end
                                                        end
                                                    end
                                                elseif
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                        "ProQuestProgress",
                                                        "RichSon"
                                                    ) == 1
                                                 then
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                        "ProQuestProgress",
                                                        "RichSon"
                                                    )
                                                    wait(0.5)
                                                    EquipWeapon("Relic")
                                                    wait(0.5)
                                                    toposition(
                                                        CFrame.new(
                                                            -1404.91504,
                                                            29.9773273,
                                                            3.80598116,
                                                            0.876514494,
                                                            5.66906877e-09,
                                                            0.481375456,
                                                            2.53851997e-08,
                                                            1,
                                                            -5.79995607e-08,
                                                            -0.481375456,
                                                            6.30572643e-08,
                                                            0.876514494
                                                        )
                                                    )
                                                end
                                            end
                                        end
                                    end
                                else
                                    if
                                        game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert") or
                                            game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert ")
                                     then
                                        for f, g in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if
                                                g:FindFirstChild("Humanoid") and g:FindFirstChild("HumanoidRootPart") and
                                                    g.Humanoid.Health > 0
                                             then
                                                if g.Name == "Saber Expert" then
                                                    repeat
                                                        task.wait()
                                                        EquipWeapon(_G.Select_Weapon)
                                                        toposition(g.HumanoidRootPart.CFrame * CFrame.new(0, 5, 5))
                                                        wait()
                                                        toposition(g.HumanoidRootPart.CFrame * CFrame.new(0, 10, 5))
                                                        wait()
                                                        toposition(g.HumanoidRootPart.CFrame * CFrame.new(0, 10, 10))
                                                        g.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                        g.HumanoidRootPart.Transparency = 1
                                                        g.Humanoid.JumpPower = 0
                                                        g.Humanoid.WalkSpeed = 0
                                                        g.HumanoidRootPart.CanCollide = false
                                                        g.Humanoid:ChangeState(11)
                                                        g.Humanoid:ChangeState(14)
                                                        FarmPos = g.HumanoidRootPart.CFrame
                                                        MonFarm = g.Name
                                                        game:GetService "VirtualUser":CaptureController()
                                                        game:GetService "VirtualUser":Button1Down(
                                                            Vector2.new(1280, 672),
                                                            workspace.CurrentCamera.CFrame
                                                        )
                                                    until g.Humanoid.Health <= 0 or not _G.Start_Saber or
                                                        not _G.StartFarm
                                                    if g.Humanoid.Health <= 0 then
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                            "ProQuestProgress",
                                                            "PlaceRelic"
                                                        )
                                                    end
                                                elseif
                                                    _G.KAITAN1CLICK and _G.Start_Saber and Check_Sword("Saber") == true and
                                                        h <= 700
                                                 then
                                                    _G.StartFarm = true
                                                    _G.Start_Saber = false
                                                else
                                                    _G.Start_Saber = false
                                                    _G.StartFarm = true
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        )
                    end
                end
            end
        )
        spawn(
            function()
                while wait() do
                    if _G.KAITAN1CLICK and _G.Auto_Dungeon_Superhuman and _G.StartFarm == false then
                        for f, g in pairs(game.Workspace.Enemies:GetDescendants()) do
                            if
                                g:FindFirstChild("Humanoid") and g:FindFirstChild("HumanoidRootPart") and
                                    g.Humanoid.Health > 0
                             then
                                pcall(
                                    function()
                                        repeat
                                            wait()
                                            T.Text = "Kill Aura Raid"
                                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                            g.Humanoid.Health = 0
                                            g.HumanoidRootPart.CanCollide = false
                                            g.HumanoidRootPart.Size = Vector3.new(500, 500, 500)
                                            g.HumanoidRootPart.Transparency = 1
                                        until not _G.Auto_Dungeon_Superhuman or not g.Parent or g.Humanoid.Health <= 0
                                    end
                                )
                            end
                        end
                    else
                    end
                end
            end
        )
        spawn(
            function()
                while wait() do
                    if _G.KAITAN1CLICK and _G.Auto_Dungeon_Superhuman and _G.StartFarm == false then
                        if not game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false then
                            T.Text = "Auto Raid"
                            if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
                                toposition(
                                    game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame *
                                        CFrame.new(0, 70, 100)
                                )
                            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
                                toposition(
                                    game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame *
                                        CFrame.new(0, 70, 100)
                                )
                            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
                                toposition(
                                    game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame *
                                        CFrame.new(0, 70, 100)
                                )
                            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
                                toposition(
                                    game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame *
                                        CFrame.new(0, 70, 100)
                                )
                            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                                toposition(
                                    game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame *
                                        CFrame.new(0, 70, 100)
                                )
                            end
                        end
                    else
                    end
                end
            end
        )
        spawn(
            function()
                while wait(2) do
                    if _G.KAITAN1CLICK and _G.Auto_Dungeon_Superhuman and _G.JoinD then
                        if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
                            if W2 then
                                fireclickdetector(
                                    game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector
                                )
                            elseif W3 then
                                fireclickdetector(
                                    game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector
                                )
                            end
                        end
                    end
                end
            end
        )
        spawn(
            function()
                while wait() do
                    pcall(
                        function()
                            if _G.KAITAN1CLICK and _G.Auto_Dungeon_Superhuman then
                                if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
                                    local a3 = game:GetService("Players")["Localplayer"].Data.Fragments.Value
                                    if a3 >= 1499 then
                                        _G.Auto_Dungeon_Superhuman = false
                                        _G.StartFarm = true
                                    else
                                    end
                                end
                            end
                        end
                    )
                end
            end
        )
        FruitList = {
            "Rocket-Rocket",
            "Spin-Spin",
            "Blade-Blade",
            "Bomb-Bomb",
            "Spring-Spring",
            "Bird: Eagle",
            "Smoke-Smoke",
            "Flame-Flame",
            "Ice-Ice",
            "Sand-Sand",
            "Dark-Dark",
            "Love-Love",
            "Diamond-Diamond",
            "Light-Light",
            "Gas-Gas",
            "Rubber-Rubber",
            "Creation-Creation",
            "Magma-Magma",
            "Ghost-Ghost",
            "Quake-Quake",
            "Human-Human: Buddha",
            "Spider-Spider",
            "Bird-Bird: Phoenix",
            "Lightning-Lightning",
            "Pain-Pain",
            "Gravity-Gravity",
            "Dough-Dough",
            "Venom-Venom",
            "Shadow-Shadow",
            "Control-Control",
            "Sound-Sound",
            "Dragon-Dragon",
            "Mammoth-Mammoth",
            "Kitsune-Kitsune",
            "Yeti-Yeti",
            "Spirit-Spirit",
            "T-Rex-T-Rex",
            "Blizzard-Blizzard",
            "Portal-Portal",
        }
        spawn(
            function()
                while wait() do
                    pcall(
                        function()
                            if _G.KAITAN1CLICK and _G.Auto_Dungeon_Superhuman then
                                _G.Grab_Fruit = false
                                for f, g in pairs(FruitList) do
                                    if
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChild(g) or
                                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(g)
                                     then
                                        local args = {[1] = "RaidsNpc", [2] = "Select", [3] = tostring("Light")}
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                    else
                                        if
                                            not game:GetService("Players").LocalPlayer.Character:FindFirstChild(g) or
                                                not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(g)
                                         then
                                            FruitPrice = {}
                                            FruitStore = {}
                                            for f, g in next, game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer(
                                                "GetFruits"
                                            ) do
                                                if g.Price <= 500000 then
                                                    table.insert(FruitPrice, g.Name)
                                                    _G.JoinD = true
                                                else
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                        "Cousin",
                                                        "Buy"
                                                    )
                                                    for f, g in pairs(game:GetService("Workspace"):GetChildren()) do
                                                        if string.find(g.Name, "Fruit") then
                                                            if g:IsA("Tool") then
                                                                _G.StartFarm = false
                                                                wait(1.5)
                                                                if
                                                                    (g.Handle.CFrame.Position -
                                                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >=
                                                                        math.huge
                                                                 then
                                                                    Bypass(g.Handle.CFrame * CFrame.new(0, 50, 0))
                                                                    wait(2)
                                                                    repeat
                                                                        wait()
                                                                        toposition(g.Handle.CFrame)
                                                                    until (g.Handle.CFrame.Position -
                                                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                                                        20 or not _G.KAITAN1CLICK
                                                                else
                                                                    repeat
                                                                        wait()
                                                                        toposition(g.Handle.CFrame)
                                                                    until (g.Handle.CFrame.Position -
                                                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                                                        20 or not _G.KAITAN1CLICK
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                            for f, g in pairs(
                                                game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(
                                                    "getInventoryFruits"
                                                )
                                            ) do
                                                for p, a4 in pairs(g) do
                                                    if p == "Name" then
                                                        table.insert(FruitStore, a4)
                                                    end
                                                end
                                            end
                                            for p, a5 in pairs(FruitPrice) do
                                                for p, a6 in pairs(FruitStore) do
                                                    if a5 == a6 then
                                                        local args = {[1] = "LoadFruit", [2] = tostring(a5)}
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                            unpack(args)
                                                        )
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    )
                end
            end
        )
        spawn(
            function()
                while wait() do
                    pcall(
                        function()
                            if
                                _G.KAITAN1CLICK and W2 and _G.Open_Flamingo_Access and
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess ==
                                        nil and
                                    game.Players.LocalPlayer.Data.Level.Value >= 1135
                             then
                                FruitPrice = {}
                                FruitStore = {}
                                for f, g in next, game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer(
                                    "GetFruits"
                                ) do
                                    if g.Price >= 1000000 then
                                        table.insert(FruitPrice, g.Name)
                                    else
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                            "Cousin",
                                            "Buy"
                                        )
                                        for f, g in pairs(game:GetService("Workspace"):GetChildren()) do
                                            if string.find(g.Name, "Fruit") then
                                                if g:IsA("Tool") then
                                                    _G.StartFarm = false
                                                    wait(1.5)
                                                    repeat
                                                        wait()
                                                        toposition(g.Handle.CFrame)
                                                    until (g.Handle.CFrame.Position -
                                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                                        20 or not _G.KAITAN1CLICK
                                                end
                                            end
                                        end
                                    end
                                end
                                for f, g in pairs(
                                    game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(
                                        "getInventoryFruits"
                                    )
                                ) do
                                    for p, a4 in pairs(g) do
                                        if p == "Name" then
                                            table.insert(FruitStore, a4)
                                        end
                                    end
                                end
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin", "Buy")
                                for p, a5 in pairs(FruitPrice) do
                                    for p, a6 in pairs(FruitStore) do
                                        if
                                            a5 == a6 and
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                    "GetUnlockables"
                                                ).FlamingoAccess == nil
                                         then
                                            if not game.Players.LocalPlayer.Backpack:FindFirstChild(FruitStore) then
                                                local args = {[1] = "LoadFruit", [2] = tostring(a5)}
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                    unpack(args)
                                                )
                                            else
                                                local args = {[1] = "TalkTrevor", [2] = "1"}
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                    unpack(args)
                                                )
                                                local args = {[1] = "TalkTrevor", [2] = "2"}
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                    unpack(args)
                                                )
                                                local args = {[1] = "TalkTrevor", [2] = "3"}
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                    unpack(args)
                                                )
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    )
                end
            end
        )
        spawn(
            function()
                while wait() do
                    local MyLevel = game.Players.LocalPlayer.Data.Level.Value
                    local a7 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
                    pcall(
                        function()
                            if _G.KAITAN1CLICK and _G.StartFarm then
                                if _G.FastFarm and (MyLevel >= 15 and MyLevel <= 300) then
                                    if MyLevel >= 15 and MyLevel <= 300 then
                                        dithetmob()
                                    end
                                else
                                    if a7.Visible == true then
                                        if
                                            (i()[2].Position -
                                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >=
                                                _G.Mics["Max-Distance Bypass TP"]
                                         then
                                            Bypass(i()[2])
                                        end
                                        if game:GetService("Workspace").Enemies:FindFirstChild(i()[3]) then
                                            for f, g in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                if g.Name == i()[3] then
                                                    if
                                                        g:FindFirstChild("Humanoid") and
                                                            g:FindFirstChild("HumanoidRootPart") and
                                                            g.Humanoid.Health > 0
                                                     then
                                                        repeat
                                                            task.wait()
                                                            if
                                                                not string.find(
                                                                    game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                                                    i()[6]
                                                                )
                                                             then
                                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                                    "AbandonQuest"
                                                                )
                                                            else
                                                                T.Text = "Auto Farm: Normal Farming"
                                                                PosMon = g.HumanoidRootPart.CFrame
                                                                g.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                                g.HumanoidRootPart.CanCollide = false
                                                                g.Humanoid.WalkSpeed = 0
                                                                g.Head.CanCollide = false
                                                                BringMobFarm = true
                                                                EquipWeapon(_G.Select_Weapon)
                                                                g.HumanoidRootPart.Transparency = 1
                                                                toposition(
                                                                    g.HumanoidRootPart.CFrame * CFrame.new(0, 20, 10)
                                                                )
                                                            end
                                                        until not _G.StartFarm or not g.Parent or g.Humanoid.Health <= 0 or
                                                            a7.Visible == false or
                                                            not g:FindFirstChild("HumanoidRootPart")
                                                    else
                                                        toposition(i()[7])
                                                    end
                                                else
                                                    toposition(i()[7])
                                                end
                                            end
                                        else
                                            for f, g in pairs(workspace._WorldOrigin.EnemySpawns:GetChildren()) do
                                                if not _G.FastFarm and g.Name == i()[6] then
                                                    local a8 = g.CFrame or g.HumanoidRootPart.Cframe
                                                    wait(0.5)
                                                    toposition(a8 * CFrame.new(0, 20, 5))
                                                end
                                            end
                                        end
                                    else
                                        if
                                            (i()[2].Position -
                                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >=
                                                _G.Mics["Max-Distance Bypass TP"]
                                         then
                                            Bypass(i()[2])
                                        else
                                            repeat
                                                wait()
                                                toposition(i()[2])
                                            until (i()[2].Position -
                                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                                20 or not _G.StartFarm
                                        end
                                        repeat
                                            wait()
                                            toposition(i()[2])
                                        until (i()[2].Position -
                                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                            20 or not _G.StartFarm
                                        if
                                            (i()[2].Position -
                                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                                1
                                         then
                                            BringMobFarm = false
                                            wait(0.2)
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                "StartQuest",
                                                i()[4],
                                                i()[1]
                                            )
                                            wait(0.5)
                                        end
                                        toposition(i()[7])
                                    end
                                end
                            end
                        end
                    )
                end
            end
        )
        _G.ChackPlayer = 0
        _G.ChackPlayer2 = _G.ChackPlayer
        function dithetmob()
            local a9 = game.Players:GetPlayers()
            local aa = game.Players.LocalPlayer.Data.Level.Value
            local ab = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
            local ac = string.split(ab, " ")[2]
            getgenv().SelectPly = string.split(ab, " ")[2]
            pcall(
                function()
                    local MyLevel = game.Players.LocalPlayer.Data.Level.Value
                    local a7 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
                    CFrameMon = CFrame.new(-7685.1474609375, 5601.0751953125, -441.38876342773)
                    if MyLevel >= 15 and MyLevel <= 69 then
                        BringMobFarm55 = false
                        for f, g in pairs(game.Workspace.Enemies:GetChildren()) do
                            if g.Name == "Shanda" then
                                if
                                    g:FindFirstChild("Humanoid") and g:FindFirstChild("HumanoidRootPart") and
                                        g.Humanoid.Health > 0
                                 then
                                    repeat
                                        task.wait()
                                        T.Text = "Auto Farm: Fast / aka Skip Farming"
                                        EquipWeapon(_G.Select_Weapon)
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                        g.HumanoidRootPart.CanCollide = false
                                        g.Humanoid.WalkSpeed = 0
                                        g.Head.CanCollide = false
                                        BringMobFarm55 = true
                                        PosMon = g.HumanoidRootPart.CFrame
                                        g.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        g.HumanoidRootPart.Transparency = 1
                                        toposition(g.HumanoidRootPart.CFrame * CFrame.new(1, 30, 10))
                                    until not g.Parent or not _G.KAITAN1CLICK or g.Humanoid.Health < 0
                                end
                            else
                                BringMobFarm55 = false
                                if
                                    _G.KAITAN1CLICK and
                                        (CFrameMon.Position -
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                                            _G.Mics["Max-Distance Bypass TP"]
                                 then
                                    wait(1)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                        "requestEntrance",
                                        Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047)
                                    )
                                end
                                toposition(CFrameMon)
                            end
                        end
                    elseif MyLevel >= 70 and MyLevel <= 309 then
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
                        end
                        if a7.Visible == false then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
                        elseif a7.Visible == true then
                            if string.find(ab, "Defeat") then
                                if
                                    game.Players[getgenv().SelectPly].Data.Level.Value >= 20 and
                                        game.Players[getgenv().SelectPly].Data.Level.Value <= MyLevel + 50
                                 then
                                    repeat
                                        task.wait()
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                        end
                                        if
                                            game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible ==
                                                true
                                         then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                "EnablePvp"
                                            )
                                        end
                                        EquipWeapon(_G.Select_Weapon)
                                        TPPlayer(
                                            game:GetService("Players")[getgenv().SelectPly].Character.HumanoidRootPart.CFrame
                                        )
                                        T.Text = "Hunter Players"
                                        game:GetService("Players")[getgenv().SelectPly].Character.HumanoidRootPart.Size =
                                            Vector3.new(120, 120, 120)
                                        pcall(
                                            function()
                                                game:service("VirtualInputManager"):SendKeyEvent(true, "X", false, game)
                                                game:service("VirtualInputManager"):SendKeyEvent(
                                                    false,
                                                    "X",
                                                    false,
                                                    game
                                                )
                                                task.wait()
                                                game:service("VirtualInputManager"):SendKeyEvent(true, "Z", false, game)
                                                game:service("VirtualInputManager"):SendKeyEvent(
                                                    false,
                                                    "Z",
                                                    false,
                                                    game
                                                )
                                            end
                                        )
                                    until game.Players[getgenv().SelectPly].Character.Humanoid.Health <= 0 or
                                        not game.Players[getgenv().SelectPly].Character.Humanoid.Health or
                                        not dithetmob()
                                    _G.FastFarm = false
                                    _G.KillPlayerQ = true
                                    if not game.Players:FindFirstChild(ac) then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
                                    end
                                else
                                    for f, g in pairs(a9) do
                                        if g.Data.Level.Value >= 20 and g.Data.Level.Value <= aa + 2 then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                "PlayerHunter"
                                            )
                                            print(g)
                                        else
                                            _G.ChackPlayer = _G.ChackPlayer + 1
                                            if _G.ChackPlayer >= 12 then
                                                _G.FastFarm = false
                                            else
                                                if _G.ChackPlayer2 >= 13 then
                                                    _G.FastFarm = false
                                                end
                                                print("Check Player " .. _G.ChackPlayer)
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            )
        end
        spawn(
            function()
                while wait() do
                    for f, g in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if g.ToolTip == "Melee" then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(g.Name)) then
                                _G.Select_Weapon = g.Name
                            end
                        end
                    end
                end
            end
        )
        _G.Bring_Mob = true
        _G.FastAttack = true
        spawn(
            function()
                while wait() do
                    if _G.KAITAN1CLICK then
                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                        end
                        local args = {[1] = "AddPoint", [2] = "Melee", [3] = 3}
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        wait()
                        local args = {[1] = "AddPoint", [2] = "Defense", [3] = 1}
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    end
                end
            end
        )
        spawn(
            function()
                while wait() do
                    if _G.KAITAN1CLICK then
                        pcall(
                            function()
                                StopTween(_G.KAITAN1CLICK)
                                require(game.ReplicatedStorage.Util.CameraShaker):Stop()
                            end
                        )
                    end
                end
            end
        )
        local ad = game:GetService("UserInputService")
        ad.WindowFocused:Connect(
            function()
                game:GetService("RunService"):Set3dRenderingEnabled(true)
            end
        )
        ad.WindowFocusReleased:Connect(
            function()
                game:GetService("RunService"):Set3dRenderingEnabled(false)
            end
        )
        spawn(
            function()
                while wait() do
                    if
                        _G.KAITAN1CLICK and game.Players.LocalPlayer.Data.Level.Value >= 350 and
                            _G.Auto_Dungeon_Superhuman == nil and
                            _G.BuyAll
                     then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Katana")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Cutlass")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Duel Katana")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Iron Mace")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Pipe")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Triple Katana")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Dual-Headed Blade")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Bisento")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Soul Cane")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Slingshot")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Musket")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Flintlock")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Refined Flintlock")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Cannon")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "BlackbeardReward",
                            "Slingshot",
                            "1"
                        )
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "BlackbeardReward",
                            "Slingshot",
                            "2"
                        )
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Black Cape")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Tomoe Ring")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Swordsman Hat")
                    end
                end
            end
        )
        spawn(
            function()
                while wait() do
                    function buynum2(ae)
                        local args = {[1] = "ColorsDealer", [2] = ae}
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    end
                    function buynum(af)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer", af)
                    end
                    if
                        _G.KAITAN1CLICK and W2 and game:GetService("Players").LocalPlayer.Data.Beli.Value >= 1000000 and
                            _G.Settings["Auto Buy 3 Legendary Sword"]
                     then
                        luahubbecomingtop = {1, 2, 3}
                        buynum(tostring(luahubbecomingtop[1]))
                        wait()
                        buynum(tostring(luahubbecomingtop[2]))
                        wait()
                        buynum(tostring(luahubbecomingtop[3]))
                        wait()
                    end
                    if
                        _G.KAITAN1CLICK and game:GetService("Players")["Localplayer"].Data.Fragments.Value >= 2500 and
                            _G.Settings["Auto Buy Legendary Haki"]
                     then
                        luahubisbest = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
                        buynum2(tostring(luahubisbest[1]))
                        wait()
                        buynum2(tostring(luahubisbest[2]))
                        wait()
                        buynum2(tostring(luahubisbest[3]))
                        wait()
                        buynum2(tostring(luahubisbest[4]))
                        wait()
                        buynum2(tostring(luahubisbest[5]))
                        wait()
                        buynum2(tostring(luahubisbest[6]))
                        wait()
                        buynum2(tostring(luahubisbest[7]))
                        wait()
                        buynum2(tostring(luahubisbest[8]))
                        wait()
                        buynum2(tostring(luahubisbest[9]))
                        wait()
                        buynum2(tostring(luahubisbest[10]))
                        wait()
                    end
                end
            end
        )
        spawn(
            function()
                game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(10000, 115, 10000)
            end
        )
        spawn(
            function()
                while wait() do
                    if _G.KAITAN1CLICK then
                        getgenv().rejoin =
                            game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(
                            function(ag)
                                if
                                    ag.Name == "ErrorPrompt" and ag:FindFirstChild("MessageArea") and
                                        ag.MessageArea:FindFirstChild("ErrorFrame")
                                 then
                                    game:GetService("TeleportService"):Teleport(game.PlaceId)
                                end
                            end
                        )
                    end
                end
            end
        )
        spawn(
            function()
                while wait() do
                    pcall(
                        function()
                            if _G.KAITAN1CLICK and _G.Auto_New_World and W1 then
                                if game.Players.LocalPlayer.Data.Level.Value >= 700 then
                                    _G.StartFarm = false
                                    T.Text = "Going To Second Sea"
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                    if
                                        game.Workspace.Map.Ice.Door.CanCollide == true and
                                            game.Workspace.Map.Ice.Door.Transparency == 0
                                     then
                                        wait(.5)
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                            "DressrosaQuestProgress",
                                            "Detective"
                                        )
                                        EquipWeapon("Key")
                                        repeat
                                            wait()
                                            toposition(CFrame.new(1347.7124, 37.3751602, -1325.6488))
                                        until (CFrame.new(1347.7124, 37.3751602, -1325.6488).Position -
                                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                            3 or not _G.Settings.Main["Auto New World"]
                                    elseif
                                        game.Workspace.Map.Ice.Door.CanCollide == false and
                                            game.Workspace.Map.Ice.Door.Transparency == 1
                                     then
                                        if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral") then
                                            for f, g in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                if g.Name == "Ice Admiral" and g.Humanoid.Health > 0 then
                                                    repeat
                                                        wait()
                                                        if
                                                            not game.Players.LocalPlayer.Character:FindFirstChild(
                                                                "HasBuso"
                                                            )
                                                         then
                                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                                "Buso"
                                                            )
                                                        end
                                                        g.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                        g.HumanoidRootPart.Transparency = 1
                                                        g.Humanoid.JumpPower = 0
                                                        g.Humanoid.WalkSpeed = 0
                                                        g.HumanoidRootPart.CanCollide = false
                                                        g.Humanoid:ChangeState(11)
                                                        EquipWeapon(_G.Select_Weapon)
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                            "TravelDressrosa"
                                                        )
                                                        toposition(g.HumanoidRootPart.CFrame * CFrame.new(0, 30, 5))
                                                    until g.Humanoid.Health <= 0 or not g.Parent
                                                    game:GetService("ReplicatedStorage"):InvokeServer("TravelDressrosa")
                                                end
                                            end
                                        else
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                "TravelDressrosa"
                                            )
                                            toposition(CFrame.new(1347.7124, 37.3751602, -1325.6488))
                                        end
                                    else
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                            "TravelDressrosa"
                                        )
                                    end
                                else
                                    _G.Auto_New_World = false
                                    _G.StartFarm = true
                                end
                            end
                        end
                    )
                end
            end
        )
        spawn(
            function()
                while wait() do
                    if _G.Auto_World_3 then
                        pcall(
                            function()
                                if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1500 and W2 then
                                    _G.StartFarm = false
                                    T.Text = "Going To Third Sea"
                                    if
                                        game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(
                                            "ZQuestProgress",
                                            "General"
                                        ) == 0
                                     then
                                        toposition(CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016))
                                        if
                                            (CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016).Position -
                                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                                10
                                         then
                                            wait(1.5)
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                "ZQuestProgress",
                                                "Begin"
                                            )
                                        end
                                        wait(1.8)
                                        if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") then
                                            for f, g in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                if g.Name == "rip_indra" then
                                                    PosMon = g.HumanoidRootPart.CFrame
                                                    repeat
                                                        task.wait()
                                                        AutoHaki()
                                                        EquipWeapon(_G.Select_Weapon)
                                                        toposition(g.HumanoidRootPart.CFrame * CFrame.new(1, 10, 1))
                                                        g.HumanoidRootPart.CFrame = PosMon
                                                        g.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                                        g.HumanoidRootPart.CanCollide = false
                                                        g.Humanoid.WalkSpeed = 0
                                                        game:GetService "VirtualUser":CaptureController()
                                                        game:GetService "VirtualUser":Button1Down(
                                                            Vector2.new(1280, 672)
                                                        )
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                            "TravelZou"
                                                        )
                                                        sethiddenproperty(
                                                            game:GetService("Players").LocalPlayer,
                                                            "SimulationRadius",
                                                            math.huge
                                                        )
                                                    until _G.Auto_World_3 == false or g.Humanoid.Health <= 0 or
                                                        not g.Parent
                                                end
                                            end
                                        elseif
                                            not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") and
                                                (CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016).Position -
                                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                                    1000
                                         then
                                            toposition(CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016))
                                        end
                                    end
                                else
                                    _G.Auto_World_3 = false
                                    _G.StartFarm = true
                                end
                            end
                        )
                    end
                end
            end
        )
        spawn(
            function()
                while wait() do
                    local MyLevel = game.Players.LocalPlayer.Data.Level.Value
                    local a7 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
                    pcall(
                        function()
                            if _G.KAITAN1CLICK and _G.Auto_Bartilo_Quest and MyLevel >= 850 then
                                if
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                        "BartiloQuestProgress",
                                        "Bartilo"
                                    ) == 0
                                 then
                                    T.Text = "Auto Bartilo Quest"
                                    _G.StartFarm = false
                                    _G.Grab_Fruit = false
                                    if a7.Visible == true then
                                        if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate") then
                                            for f, g in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                if g.Name == "Swan Pirate" then
                                                    if
                                                        g:FindFirstChild("Humanoid") and
                                                            g:FindFirstChild("HumanoidRootPart")
                                                     then
                                                        repeat
                                                            task.wait()
                                                            if
                                                                not string.find(
                                                                    game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                                                    "Swan Pirate"
                                                                )
                                                             then
                                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                                    "AbandonQuest"
                                                                )
                                                            else
                                                                PosMon = g.HumanoidRootPart.CFrame
                                                                g.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                                g.HumanoidRootPart.CanCollide = false
                                                                g.Humanoid.WalkSpeed = 0
                                                                g.Head.CanCollide = false
                                                                BringMobFarm = true
                                                                EquipWeapon(_G.Select_Weapon)
                                                                g.HumanoidRootPart.Transparency = 1
                                                                toposition(
                                                                    g.HumanoidRootPart.CFrame * CFrame.new(0, 30, 5)
                                                                )
                                                            end
                                                        until not _G.Auto_Bartilo_Quest or not g.Parent or
                                                            g.Humanoid.Health <= 0 or
                                                            a7.Visible == false or
                                                            not g:FindFirstChild("HumanoidRootPart")
                                                    end
                                                end
                                            end
                                        else
                                            for f, g in pairs(workspace._WorldOrigin.EnemySpawns:GetChildren()) do
                                                if g.Name == "Swan Pirate" then
                                                    local a8 = g.CFrame or g.HumanoidRootPart.Cframe
                                                    wait(0.5)
                                                    toposition(a8 * CFrame.new(0, 30, 5))
                                                end
                                            end
                                        end
                                    else
                                        repeat
                                            wait()
                                            toposition(
                                                CFrame.new(
                                                    -461.533203,
                                                    72.3478546,
                                                    300.311096,
                                                    0.050853312,
                                                    -0,
                                                    -0.998706102,
                                                    0,
                                                    1,
                                                    -0,
                                                    0.998706102,
                                                    0,
                                                    0.050853312
                                                )
                                            )
                                        until (CFrame.new(
                                            -461.533203,
                                            72.3478546,
                                            300.311096,
                                            0.050853312,
                                            -0,
                                            -0.998706102,
                                            0,
                                            1,
                                            -0,
                                            0.998706102,
                                            0,
                                            0.050853312
                                        ).Position -
                                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                            20 or not _G.Auto_Bartilo_Quest
                                        if
                                            (CFrame.new(
                                                -461.533203,
                                                72.3478546,
                                                300.311096,
                                                0.050853312,
                                                -0,
                                                -0.998706102,
                                                0,
                                                1,
                                                -0,
                                                0.998706102,
                                                0,
                                                0.050853312
                                            ).Position -
                                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                                1
                                         then
                                            BringMobFarm = false
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                "StartQuest",
                                                "BartiloQuest",
                                                1
                                            )
                                        end
                                    end
                                elseif
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                        "BartiloQuestProgress",
                                        "Bartilo"
                                    ) == 1
                                 then
                                    _G.StartFarm = false
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Jeremy") then
                                        for f, g in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if g.Name == "Jeremy" then
                                                if g:FindFirstChild("Humanoid") and g:FindFirstChild("HumanoidRootPart") then
                                                    repeat
                                                        task.wait()
                                                        PosMon = g.HumanoidRootPart.CFrame
                                                        g.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                        g.HumanoidRootPart.CanCollide = false
                                                        g.Humanoid.WalkSpeed = 0
                                                        g.Head.CanCollide = false
                                                        BringMobFarm = true
                                                        EquipWeapon(_G.Select_Weapon)
                                                        g.HumanoidRootPart.Transparency = 1
                                                        toposition(g.HumanoidRootPart.CFrame * CFrame.new(0, 30, 5))
                                                    until not _G.Auto_Bartilo_Quest or not g.Parent or
                                                        g.Humanoid.Health <= 0 or
                                                        a7.Visible == false or
                                                        not g:FindFirstChild("HumanoidRootPart")
                                                end
                                            end
                                        end
                                    else
                                        toposition(
                                            CFrame.new(
                                                2158.97412,
                                                449.056244,
                                                705.411682,
                                                -0.754199564,
                                                -4.17389057e-09,
                                                -0.656645238,
                                                -4.47752875e-08,
                                                1,
                                                4.50709301e-08,
                                                0.656645238,
                                                6.3393955e-08,
                                                -0.754199564
                                            )
                                        )
                                        if
                                            not game:GetService("Workspace").Enemies:FindFirstChild("Jeremy") and
                                                (CFrame.new(
                                                    2158.97412,
                                                    449.056244,
                                                    705.411682,
                                                    -0.754199564,
                                                    -4.17389057e-09,
                                                    -0.656645238,
                                                    -4.47752875e-08,
                                                    1,
                                                    4.50709301e-08,
                                                    0.656645238,
                                                    6.3393955e-08,
                                                    -0.754199564
                                                ).Position -
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                                    20
                                         then
                                            if not game:GetService("Workspace").Enemies:FindFirstChild("Jeremy") then
                                                _G.StartFarm = true
                                                _G.Auto_Bartilo_Quest = false
                                            end
                                        end
                                    end
                                elseif
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                        "BartiloQuestProgress",
                                        "Bartilo"
                                    ) == 2
                                 then
                                    _G.StartFarm = false
                                    repeat
                                        wait()
                                        toposition(
                                            CFrame.new(
                                                -1830.83972,
                                                10.5578213,
                                                1680.60229,
                                                0.979988456,
                                                -2.02152783e-08,
                                                -0.199054286,
                                                2.20792113e-08,
                                                1,
                                                7.1442483e-09,
                                                0.199054286,
                                                -1.13962431e-08,
                                                0.979988456
                                            )
                                        )
                                    until (CFrame.new(
                                        -1830.83972,
                                        10.5578213,
                                        1680.60229,
                                        0.979988456,
                                        -2.02152783e-08,
                                        -0.199054286,
                                        2.20792113e-08,
                                        1,
                                        7.1442483e-09,
                                        0.199054286,
                                        -1.13962431e-08,
                                        0.979988456
                                    ).Position -
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                        1 or _G.Auto_Bartilo_Quest == false
                                    wait(0.7)
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                        workspace.Map.Dressrosa.BartiloPlates.Plate1.CFrame
                                    wait(0.7)
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                        workspace.Map.Dressrosa.BartiloPlates.Plate2.CFrame
                                    wait(0.7)
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                        workspace.Map.Dressrosa.BartiloPlates.Plate3.CFrame
                                    wait(0.7)
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                        workspace.Map.Dressrosa.BartiloPlates.Plate4.CFrame
                                    wait(0.7)
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                        workspace.Map.Dressrosa.BartiloPlates.Plate5.CFrame
                                    wait(0.7)
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                        workspace.Map.Dressrosa.BartiloPlates.Plate6.CFrame
                                    wait(0.7)
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                        workspace.Map.Dressrosa.BartiloPlates.Plate7.CFrame
                                    wait(0.7)
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                        workspace.Map.Dressrosa.BartiloPlates.Plate8.CFrame
                                    wait(0.7)
                                    _G.StartFarm = true
                                    wait(2.5)
                                    _G.Auto_Bartilo_Quest = false
                                    wait()
                                    _G.Grab_Fruit = true
                                end
                            end
                        end
                    )
                end
            end
        )
        spawn(
            function()
                pcall(
                    function()
                        local MyLevel = game.Players.LocalPlayer.Data.Level.Value
                        while wait() do
                            if _G.KAITAN1CLICK and _G.AutoRengoku and Check_Sword("Rengoku") == nil then
                                if MyLevel >= 958 then
                                    _G.StartFarm = false
                                    _G.Grab_Fruit = false
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                    T.Text = "Auto Farm: Rengoku"
                                    if
                                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or
                                            game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                                                "Hidden Key"
                                            )
                                     then
                                        EquipWeapon("Hidden Key")
                                        toposition(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
                                        wait(5)
                                        _G.StartFarm = true
                                        _G.Grab_Fruit = true
                                        _G.AutoRengoku = false
                                    elseif
                                        game:GetService("Workspace").Enemies:FindFirstChild("Snow Lurker") or
                                            game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior")
                                     then
                                        for f, g in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if
                                                (g.Name == "Snow Lurker" or g.Name == "Arctic Warrior") and
                                                    g.Humanoid.Health > 0
                                             then
                                                repeat
                                                    task.wait()
                                                    _G.Grab_Fruit = false
                                                    EquipWeapon(_G.Select_Weapon)
                                                    g.HumanoidRootPart.CanCollide = false
                                                    g.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                                    PosMon = g.HumanoidRootPart.CFrame
                                                    toposition(g.HumanoidRootPart.CFrame * CFrame.new(0, 30, 7))
                                                    BringMobFarm556 = true
                                                until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                                    "Hidden Key"
                                                ) or
                                                    _G.AutoRengoku == false or
                                                    not g.Parent or
                                                    g.Humanoid.Health <= 0
                                                BringMobFarm556 = false
                                            end
                                        end
                                    else
                                        BringMobFarm556 = false
                                        if
                                            (CFrame.new(5439.716796875, 84.420944213867, -6715.1635742188).Position -
                                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >=
                                                _G.Mics["Max-Distance Bypass TP"]
                                         then
                                            Bypass(CFrame.new(5439.716796875, 84.420944213867, -6715.1635742188))
                                        else
                                            toposition(CFrame.new(5439.716796875, 84.420944213867, -6715.1635742188))
                                        end
                                    end
                                end
                            elseif _G.KAITAN1CLICK and _G.AutoRengoku and Check_Sword("Rengoku") == true then
                                _G.AutoRengoku = false
                                _G.KAITAN1CLICK = true
                            end
                        end
                    end
                )
            end
        )
        spawn(
            function()
                while wait() do
                    pcall(
                        function()
                            if _G.ChangeMelee then
                                if
                                    game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and
                                        game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >=
                                            400 or
                                        game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and
                                            game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >=
                                                400
                                 then
                                    wait(1)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                                elseif
                                    game.Players.LocalPlayer.Character:FindFirstChild("Electro") and
                                        game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 or
                                        game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and
                                            game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >=
                                                400
                                 then
                                    wait(1)
                                    local args = {[1] = "BuyFishmanKarate"}
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                elseif
                                    game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and
                                        game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >=
                                            400 or
                                        game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and
                                            game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >=
                                                400
                                 then
                                    wait(1)
                                    local args = {[1] = "BlackbeardReward", [2] = "DragonClaw", [3] = "2"}
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                elseif
                                    game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and
                                        game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >=
                                            400 or
                                        game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and
                                            game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >=
                                                400
                                 then
                                    wait(1)
                                    local args = {[1] = "BuySuperhuman"}
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                elseif
                                    game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") and
                                        game.Players.LocalPlayer.Character:FindFirstChild("Superhuman").Level.Value >=
                                            600 or
                                        game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") and
                                            game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman").Level.Value >=
                                                600
                                 then
                                    wait(1)
                                    local ah = "BuyElectricClaw"
                                    local ai = game:GetService("ReplicatedStorage").Remotes.CommF_
                                    ai:InvokeServer(ah)
                                elseif
                                    game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") and
                                        game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw").Level.Value >=
                                            600 or
                                        game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") and
                                            game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw").Level.Value >=
                                                600
                                 then
                                    wait(1)
                                    local args = {[1] = "BuySharkmanKarate"}
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                elseif
                                    game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate") and
                                        game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate").Level.Value >=
                                            600 or
                                        game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") and
                                            game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate").Level.Value >=
                                                600
                                 then
                                    wait(1)
                                    local args = {[1] = "BuyDeathStep"}
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                elseif
                                    game.Players.LocalPlayer.Character:FindFirstChild("Death Step") and
                                        game.Players.LocalPlayer.Character:FindFirstChild("Death Step").Level.Value >=
                                            600 or
                                        game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") and
                                            game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step").Level.Value >=
                                                600
                                 then
                                    wait(1)
                                    local args = {[1] = "BuyDragonTalon"}
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                elseif
                                    game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon") and
                                        game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon").Level.Value >=
                                            600 or
                                        game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") and
                                            game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon").Level.Value >=
                                                600
                                 then
                                    wait(1)
                                    local args = {[1] = "BuyGodhuman"}
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                elseif
                                    game.Players.LocalPlayer.Character:FindFirstChild("God Human") and
                                        game.Players.LocalPlayer.Character:FindFirstChild("God Human").Level.Value >=
                                            600 or
                                        game.Players.LocalPlayer.Backpack:FindFirstChild("God Human") and
                                            game.Players.LocalPlayer.Backpack:FindFirstChild("God Human").Level.Value >=
                                                600
                                 then
                                    wait(1)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt")
                                end
                            end
                        end
                    )
                end
            end
        )
        spawn(
            function()
                while task.wait() do
                    if
                        _G.KAITAN1CLICK and _G.Start_Pole and game.Players.LocalPlayer.Data.Level.Value >= 20 and
                            Check_Sword("Pole") == nil
                     then
                        pcall(
                            function()
                                for f, g in pairs(game.Workspace.Enemies:GetChildren()) do
                                    if g.Name == "Thunder God" then
                                        if
                                            g:FindFirstChild("Humanoid") and g:FindFirstChild("HumanoidRootPart") and
                                                g.Humanoid.Health > 0
                                         then
                                            _G.StartFarm = false
                                            _G.Grab_Fruit = false
                                            repeat
                                                task.wait()
                                                T.Text = "Auto Farm: Pole V1.0"
                                                g.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                g.HumanoidRootPart.Transparency = 1
                                                g.Humanoid.JumpPower = 0
                                                g.Humanoid.WalkSpeed = 0
                                                g.HumanoidRootPart.CanCollide = false
                                                g.Humanoid:ChangeState(11)
                                                EquipWeapon(_G.Select_Weapon)
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                    "TravelDressrosa"
                                                )
                                                toposition(g.HumanoidRootPart.CFrame * CFrame.new(0, 30, 5))
                                                wait()
                                                toposition(g.HumanoidRootPart.CFrame * CFrame.new(0, 30, 10))
                                                wait()
                                                toposition(g.HumanoidRootPart.CFrame * CFrame.new(10, 30, 10))
                                                wait()
                                                toposition(g.HumanoidRootPart.CFrame * CFrame.new(5, 30, 5))
                                            until not _G.AutoPole or not g.Parent or g.Humanoid.Health <= 0
                                            _G.Start_Pole = false
                                            _G.StartFarm = true
                                            _G.Grab_Fruit = true
                                        end
                                    end
                                end
                            end
                        )
                    elseif _G.Start_Pole and Check_Sword("Pole") == true then
                        _G.Start_Pole = false
                        _G.StartFarm = true
                    end
                end
            end
        )
        local aj = {
            ["Mon Quest"] = {"Diablo", "Deandre", "Urban"},
            ["Mon"] = {"Diablo", "Deandre", "Urban"},
            ["Item"] = "God's Chalice"
        }
        spawn(
            function()
                while wait() do
                    if _G.Start_Kaitun and _G.Auto_Yama then
                        pcall(
                            function()
                                if
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                        "EliteHunter",
                                        "Progress"
                                    ) >= 30
                                 then
                                    fireclickdetector(
                                        game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector
                                    )
                                    T.Text = "Auto Farm: Yama"
                                else
                                    local ak = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
                                    for p, al in ipairs(aj["Mon Quest"]) do
                                        for p, am in ipairs(aj["Mon"]) do
                                            if ak.Visible == true and _G.StartFarm ~= true then
                                                if
                                                    game:GetService("Workspace").Enemies:FindFirstChild(al) or
                                                        game:GetService("ReplicatedStorage"):FindFirstChild(al)
                                                 then
                                                    for p, an in pairs(
                                                        game:GetService("Workspace").Enemies:GetChildren()
                                                    ) do
                                                        if an.Name == al then
                                                            if
                                                                an:FindFirstChild("Humanoid") and
                                                                    an:FindFirstChild("HumanoidRootPart") and
                                                                    an.Humanoid.Health > 0
                                                             then
                                                                repeat
                                                                    wait()
                                                                    T.Text = "Auto Farm: Yama"
                                                                    an.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                                    an.HumanoidRootPart.CanCollide = false
                                                                    an.Head.CanCollide = false
                                                                    BringMobFarm = true
                                                                    EquipWeapon(_G.Select_Weapon)
                                                                    an.HumanoidRootPart.Transparency = 1
                                                                    toposition(
                                                                        an.HumanoidRootPart.CFrame *
                                                                            CFrame.new(0, 30, 5)
                                                                    )
                                                                    AutoHaki()
                                                                until not _G.Auto_Yama or an.Humanoid.Health <= 0 or
                                                                    not an.Parent
                                                            end
                                                        else
                                                            if
                                                                (game:GetService("ReplicatedStorage"):FindFirstChild(al).HumanoidRootPart.CFrame.Position -
                                                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                                                                    _G.Mics["Max-Distance Bypass TP"]
                                                             then
                                                                Bypass(
                                                                    game:GetService("ReplicatedStorage"):FindFirstChild(
                                                                        al
                                                                    ).HumanoidRootPart.CFrame
                                                                )
                                                                return
                                                            end
                                                            toposition(
                                                                game:GetService("ReplicatedStorage"):FindFirstChild(al).HumanoidRootPart.CFrame *
                                                                    CFrame.new(0, 30, 5)
                                                            )
                                                        end
                                                    end
                                                end
                                            else
                                                if
                                                    game.Players.LocalPlayer.Backpack:FindFirstChild(aj["Item"]) or
                                                        game.Players.LocalPlayer.Character:FindFirstChild(aj["Item"])
                                                 then
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                        "requestEntrance",
                                                        Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375)
                                                    )
                                                    _G.Auto_Yama = false
                                                    return
                                                else
                                                    if
                                                        game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(
                                                            "EliteHunter"
                                                        ) == "I don't have anything for you right now. Come back later." and
                                                            not (game:GetService("Workspace").Enemies:FindFirstChild(al) or
                                                                game:GetService("ReplicatedStorage"):FindFirstChild(al))
                                                     then
                                                        _G.StartFarm = true
                                                    else
                                                        _G.StartFarm = false
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                            "EliteHunter"
                                                        )
                                                        if
                                                            (game:GetService("ReplicatedStorage"):FindFirstChild(al).HumanoidRootPart.CFrame.Position -
                                                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                                                                _G.Mics["Max-Distance Bypass TP"]
                                                         then
                                                            Bypass(
                                                                game:GetService("ReplicatedStorage"):FindFirstChild(al).HumanoidRootPart.CFrame
                                                            )
                                                            return
                                                        end
                                                        toposition(
                                                            game:GetService("ReplicatedStorage"):FindFirstChild(al).HumanoidRootPart.CFrame *
                                                                CFrame.new(0, 30, 5)
                                                        )
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        )
                    end
                end
            end
        )
        spawn(
            function()
                while wait() do
                    pcall(
                        function()
                            if _G.Auto_Tushita and _G.Start_Kaitun and Check_Sword("Tushita") == nil then
                                if
                                    game:GetService("Workspace").Map.Turtle.TushitaGate:GetChildren()[2].Transparency ==
                                        1 or
                                        game:GetService("Workspace").Map.Turtle.TushitaGate:GetChildren()[1].Transparency ==
                                            1
                                 then
                                    _G.StartFarm = false
                                    _G.Auto_Yama = false
                                    if #game:GetService("Workspace").Enemies:GetChildren() > 0 then
                                        if
                                            game:GetService("Workspace").Enemies:FindFirstChild("Longma") or
                                                game:GetService("ReplicatedStorage"):FindFirstChild("Longma")
                                         then
                                            for p, g in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                if
                                                    g.Name == "Longma" and g:FindFirstChild("Humanoid") and
                                                        g:FindFirstChild("HumanoidRootPart") and
                                                        g.Humanoid.Health > 0
                                                 then
                                                    repeat
                                                        wait()
                                                        T.Text = "Auto Farm: Tushita"
                                                        g.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                        g.HumanoidRootPart.CanCollide = false
                                                        g.Head.CanCollide = false
                                                        BringMobFarm = true
                                                        EquipWeapon(_G.Select_Weapon)
                                                        g.HumanoidRootPart.Transparency = 1
                                                        toposition(g.HumanoidRootPart.CFrame * CFrame.new(0, 30, 5))
                                                    until not _G.Auto_Tushita or not g.Humanoid.Health <= 0 or
                                                        not g.Parent
                                                else
                                                    if
                                                        (game:GetService("ReplicatedStorage"):FindFirstChild("Longma").HumanoidRootPart.CFrame.Position -
                                                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                                                            _G.Mics["Max-Distance Bypass TP"]
                                                     then
                                                        Bypass(
                                                            game:GetService("ReplicatedStorage"):FindFirstChild(
                                                                "Longma"
                                                            ).HumanoidRootPart.CFrame * CFrame.new(0, 30, 5)
                                                        )
                                                        return
                                                    end
                                                    toposition(
                                                        game:GetService("ReplicatedStorage"):FindFirstChild("Longma").HumanoidRootPart.CFrame *
                                                            CFrame.new(0, 30, 5)
                                                    )
                                                end
                                            end
                                        end
                                    end
                                else
                                    if
                                        game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") or
                                            game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form")
                                     then
                                        _G.StartFarm = false
                                        _G.Auto_Yama = false
                                        if
                                            game:GetService("Players").LocalPlayer.Data.LastSpawnPoint.Value ==
                                                tostring(
                                                    GetIsLand(
                                                        CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625)
                                                    )
                                                )
                                         then
                                            wait(1)
                                            repeat
                                                toposition(CFrame.new(-10752, 417, -9366))
                                                wait()
                                            until not _G.Auto_Tushita or
                                                (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                                                    Vector3.new(-10752, 417, -9366)).Magnitude <= 1
                                            wait(1)
                                            repeat
                                                toposition(CFrame.new(-11672, 334, -9474))
                                                wait()
                                            until not _G.Auto_Tushita or
                                                (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                                                    Vector3.new(-11672, 334, -9474)).Magnitude <= 1
                                            wait(1)
                                            repeat
                                                toposition(CFrame.new(-12132, 521, -10655))
                                                wait()
                                            until not _G.Auto_Tushita or
                                                (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                                                    Vector3.new(-12132, 521, -10655)).Magnitude <= 1
                                            wait(1)
                                            repeat
                                                toposition(CFrame.new(-13336, 486, -6985))
                                                wait()
                                            until not _G.Auto_Tushita or
                                                (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                                                    Vector3.new(-13336, 486, -6985)).Magnitude <= 1
                                            wait(1)
                                            repeat
                                                toposition(CFrame.new(-13489, 332, -7925))
                                                wait()
                                            until not _G.Auto_Tushita or
                                                (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                                                    Vector3.new(-13489, 332, -7925)).Magnitude <= 1
                                        else
                                            if
                                                (CFrame.new(
                                                    5148.03613,
                                                    162.352493,
                                                    910.548218,
                                                    0,
                                                    0,
                                                    -1,
                                                    0,
                                                    1,
                                                    0,
                                                    1,
                                                    0,
                                                    0
                                                ).Position -
                                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                                                    _G.Mics["Max-Distance Bypass TP"]
                                             then
                                                Bypass(
                                                    CFrame.new(
                                                        5148.03613,
                                                        162.352493,
                                                        910.548218,
                                                        0,
                                                        0,
                                                        -1,
                                                        0,
                                                        1,
                                                        0,
                                                        1,
                                                        0,
                                                        0
                                                    )
                                                )
                                                return
                                            end
                                            toposition(
                                                CFrame.new(
                                                    5148.03613,
                                                    162.352493,
                                                    910.548218,
                                                    0,
                                                    0,
                                                    -1,
                                                    0,
                                                    1,
                                                    0,
                                                    1,
                                                    0,
                                                    0
                                                )
                                            )
                                            wait(2.5)
                                            return
                                        end
                                    end
                                end
                            else
                                if not _G.Auto_Yama or not _G.Tushita then
                                    _G.StartFarm = true
                                end
                                _G.Auto_Tushita = false
                            end
                        end
                    )
                end
            end
        )
        _G.Poo = 1500
        spawn(
            function()
                while wait() do
                    pcall(
                        function()
                            if
                                _G.Auto_Soul_Guitar and _G.Start_Kaitun and
                                    game.Players.localPlayer.Data.Level.value >= 2300 and
                                    Check_Gun("Soul Guitar") == nil
                             then
                                T.Text = "Auto Farm: Soul Guitar"
                                local ao =
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "GuitarPuzzleProgress",
                                    "Check"
                                )
                                if ao == nil then
                                    if
                                        game:GetService("Lighting").Sky.MoonTextureId ==
                                            "http://www.roblox.com/asset/?id=9709149431"
                                     then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                            "gravestoneEvent",
                                            2
                                        )
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                            "gravestoneEvent",
                                            2,
                                            true
                                        )
                                        _G.StartFarm = false
                                    elseif ao == nil then
                                        return
                                    end
                                end
                                for f, g in pairs(ao) do
                                    if f == "Swamp" then
                                        if g == false then
                                            _G.StartFarm = false
                                            if game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") then
                                                for f, g in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                    if g.Name == "Living Zombie" then
                                                        if
                                                            g:FindFirstChild("Humanoid") and
                                                                g:FindFirstChild("HumanoidRootPart") and
                                                                g.Humanoid.Health > 0
                                                         then
                                                            repeat
                                                                wait()
                                                                PosMon =
                                                                    CFrame.new(
                                                                    -10164.7588,
                                                                    138.652451,
                                                                    5935.78418,
                                                                    -0.999782741,
                                                                    -8.01260214e-08,
                                                                    -0.0208426975,
                                                                    -7.95026338e-08,
                                                                    1,
                                                                    -3.07377839e-08,
                                                                    0.0208426975,
                                                                    -2.90740569e-08,
                                                                    -0.999782741
                                                                )
                                                                EquipWeapon(_G.Select_Weapon)
                                                                g.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                                BringMobFarmGuitar = true
                                                                toposition(
                                                                    CFrame.new(
                                                                        -10164.7588,
                                                                        138.652451,
                                                                        5935.78418,
                                                                        -0.999782741,
                                                                        -8.01260214e-08,
                                                                        -0.0208426975,
                                                                        -7.95026338e-08,
                                                                        1,
                                                                        -3.07377839e-08,
                                                                        0.0208426975,
                                                                        -2.90740569e-08,
                                                                        -0.999782741
                                                                    ) * CFrame.new(0, 30, 5)
                                                                )
                                                            until not _G.Auto_Soul_Guitar or g.Humanoid.Health <= 0 or
                                                                not g.Parent or
                                                                g.Humanoid.Health <= 0
                                                        end
                                                    end
                                                end
                                            else
                                                toposition(
                                                    CFrame.new(
                                                        -10164.7588,
                                                        138.652451,
                                                        5935.78418,
                                                        -0.999782741,
                                                        -8.01260214e-08,
                                                        -0.0208426975,
                                                        -7.95026338e-08,
                                                        1,
                                                        -3.07377839e-08,
                                                        0.0208426975,
                                                        -2.90740569e-08,
                                                        -0.999782741
                                                    )
                                                )
                                            end
                                        else
                                            for ap, aq in pairs(ao) do
                                                if ap == "Gravestones" then
                                                    if aq == false then
                                                        _G.StartFarm = false
                                                        wait(0.2)
                                                        fireclickdetector(
                                                            game:GetService("Workspace").Map["Haunted Castle"].Placard7.Left.ClickDetector
                                                        )
                                                        wait(0.2)
                                                        fireclickdetector(
                                                            game:GetService("Workspace").Map["Haunted Castle"].Placard6.Left.ClickDetector
                                                        )
                                                        wait(0.2)
                                                        fireclickdetector(
                                                            game:GetService("Workspace").Map["Haunted Castle"].Placard5.Left.ClickDetector
                                                        )
                                                        wait(0.2)
                                                        fireclickdetector(
                                                            game:GetService("Workspace").Map["Haunted Castle"].Placard4.Right.ClickDetector
                                                        )
                                                        wait(0.2)
                                                        fireclickdetector(
                                                            game:GetService("Workspace").Map["Haunted Castle"].Placard3.Left.ClickDetector
                                                        )
                                                        wait(0.2)
                                                        fireclickdetector(
                                                            game:GetService("Workspace").Map["Haunted Castle"].Placard2.Right.ClickDetector
                                                        )
                                                        wait(0.2)
                                                        fireclickdetector(
                                                            game:GetService("Workspace").Map["Haunted Castle"].Placard1.Right.ClickDetector
                                                        )
                                                    else
                                                        for ar, an in pairs(ao) do
                                                            if ar == "Ghost" then
                                                                if an == false then
                                                                    _G.StartFarm = false
                                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                                        "GuitarPuzzleProgress",
                                                                        "Ghost"
                                                                    )
                                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                                        "GuitarPuzzleProgress",
                                                                        "Ghost",
                                                                        true
                                                                    )
                                                                else
                                                                    for as, at in pairs(ao) do
                                                                        if as == "Trophies" then
                                                                            if at == false then
                                                                                _G.StartFarm = false
                                                                                repeat
                                                                                    wait()
                                                                                    fireclickdetector(
                                                                                        game:GetService("Workspace").Map[
                                                                                            "Haunted Castle"
                                                                                        ].Tablet.Segment2:FindFirstChild(
                                                                                            "ClickDetector"
                                                                                        )
                                                                                    )
                                                                                until game:GetService("Workspace").Map[
                                                                                    "Haunted Castle"
                                                                                ].Tablet.Segment2.Line.Position.Y ==
                                                                                    -1000 or not _G.Auto_Soul_Guitar
                                                                                repeat
                                                                                    wait()
                                                                                    fireclickdetector(
                                                                                        game:GetService("Workspace").Map[
                                                                                            "Haunted Castle"
                                                                                        ].Tablet.Segment5:FindFirstChild(
                                                                                            "ClickDetector"
                                                                                        )
                                                                                    )
                                                                                until game:GetService("Workspace").Map[
                                                                                    "Haunted Castle"
                                                                                ].Tablet.Segment5.Line.Position.Y ==
                                                                                    -1000 or not _G.Auto_Soul_Guitar
                                                                                repeat
                                                                                    wait()
                                                                                    fireclickdetector(
                                                                                        game:GetService("Workspace").Map[
                                                                                            "Haunted Castle"
                                                                                        ].Tablet.Segment6:FindFirstChild(
                                                                                            "ClickDetector"
                                                                                        )
                                                                                    )
                                                                                until game:GetService("Workspace").Map[
                                                                                    "Haunted Castle"
                                                                                ].Tablet.Segment6.Line.Position.Y ==
                                                                                    -1000 or not _G.Auto_Soul_Guitar
                                                                                repeat
                                                                                    wait()
                                                                                    fireclickdetector(
                                                                                        game:GetService("Workspace").Map[
                                                                                            "Haunted Castle"
                                                                                        ].Tablet.Segment8:FindFirstChild(
                                                                                            "ClickDetector"
                                                                                        )
                                                                                    )
                                                                                until game:GetService("Workspace").Map[
                                                                                    "Haunted Castle"
                                                                                ].Tablet.Segment8.Line.Position.Y ==
                                                                                    -1000 or not _G.Auto_Soul_Guitar
                                                                                repeat
                                                                                    wait()
                                                                                    fireclickdetector(
                                                                                        game:GetService("Workspace").Map[
                                                                                            "Haunted Castle"
                                                                                        ].Tablet.Segment9:FindFirstChild(
                                                                                            "ClickDetector"
                                                                                        )
                                                                                    )
                                                                                until game:GetService("Workspace").Map[
                                                                                    "Haunted Castle"
                                                                                ].Tablet.Segment9.Line.Position.Y ==
                                                                                    -1000 or not _G.Auto_Soul_Guitar
                                                                                if getTrophies(1)[1] then
                                                                                    repeat
                                                                                        wait()
                                                                                        fireclickdetector(
                                                                                            game:GetService("Workspace").Map[
                                                                                                "Haunted Castle"
                                                                                            ].Tablet.Segment1:FindFirstChild(
                                                                                                "ClickDetector"
                                                                                            )
                                                                                        )
                                                                                    until game:GetService("Workspace").Map[
                                                                                        "Haunted Castle"
                                                                                    ].Tablet.Segment1.Line.Rotation.Z ==
                                                                                        getTrophies(1)[2] or
                                                                                        game:GetService("Workspace").Map[
                                                                                            "Haunted Castle"
                                                                                        ].Tablet.Segment1.Line.Rotation.Z ==
                                                                                            getTrophies(1)[3] or
                                                                                        not _G.Auto_Soul_Guitar or
                                                                                        game:GetService(
                                                                                            "ReplicatedStorage"
                                                                                        ).Remotes.CommF_:InvokeServer(
                                                                                            "GuitarPuzzleProgress",
                                                                                            "Check"
                                                                                        ).Trophies == true
                                                                                end
                                                                                if getTrophies(2)[1] then
                                                                                    repeat
                                                                                        wait()
                                                                                        fireclickdetector(
                                                                                            game:GetService("Workspace").Map[
                                                                                                "Haunted Castle"
                                                                                            ].Tablet.Segment3:FindFirstChild(
                                                                                                "ClickDetector"
                                                                                            )
                                                                                        )
                                                                                    until game:GetService("Workspace").Map[
                                                                                        "Haunted Castle"
                                                                                    ].Tablet.Segment3.Line.Rotation.Z ==
                                                                                        getTrophies(2)[2] or
                                                                                        game:GetService("Workspace").Map[
                                                                                            "Haunted Castle"
                                                                                        ].Tablet.Segment3.Line.Rotation.Z ==
                                                                                            getTrophies(1)[3] or
                                                                                        not _G.Auto_Soul_Guitar or
                                                                                        game:GetService(
                                                                                            "ReplicatedStorage"
                                                                                        ).Remotes.CommF_:InvokeServer(
                                                                                            "GuitarPuzzleProgress",
                                                                                            "Check"
                                                                                        ).Trophies == true
                                                                                end
                                                                                if getTrophies(3)[1] then
                                                                                    repeat
                                                                                        wait()
                                                                                        fireclickdetector(
                                                                                            game:GetService("Workspace").Map[
                                                                                                "Haunted Castle"
                                                                                            ].Tablet.Segment4:FindFirstChild(
                                                                                                "ClickDetector"
                                                                                            )
                                                                                        )
                                                                                    until game:GetService("Workspace").Map[
                                                                                        "Haunted Castle"
                                                                                    ].Tablet.Segment4.Line.Rotation.Z ==
                                                                                        getTrophies(3)[2] or
                                                                                        game:GetService("Workspace").Map[
                                                                                            "Haunted Castle"
                                                                                        ].Tablet.Segment4.Line.Rotation.Z ==
                                                                                            getTrophies(1)[3] or
                                                                                        not _G.Auto_Soul_Guitar or
                                                                                        game:GetService(
                                                                                            "ReplicatedStorage"
                                                                                        ).Remotes.CommF_:InvokeServer(
                                                                                            "GuitarPuzzleProgress",
                                                                                            "Check"
                                                                                        ).Trophies == true
                                                                                end
                                                                                if getTrophies(4)[1] then
                                                                                    repeat
                                                                                        wait()
                                                                                        fireclickdetector(
                                                                                            game:GetService("Workspace").Map[
                                                                                                "Haunted Castle"
                                                                                            ].Tablet.Segment7:FindFirstChild(
                                                                                                "ClickDetector"
                                                                                            )
                                                                                        )
                                                                                    until game:GetService("Workspace").Map[
                                                                                        "Haunted Castle"
                                                                                    ].Tablet.Segment7.Line.Rotation.Z ==
                                                                                        getTrophies(4)[2] or
                                                                                        game:GetService("Workspace").Map[
                                                                                            "Haunted Castle"
                                                                                        ].Tablet.Segment7.Line.Rotation.Z ==
                                                                                            getTrophies(1)[3] or
                                                                                        not _G.Auto_Soul_Guitar or
                                                                                        game:GetService(
                                                                                            "ReplicatedStorage"
                                                                                        ).Remotes.CommF_:InvokeServer(
                                                                                            "GuitarPuzzleProgress",
                                                                                            "Check"
                                                                                        ).Trophies == true
                                                                                end
                                                                                if getTrophies(5)[1] then
                                                                                    repeat
                                                                                        wait()
                                                                                        fireclickdetector(
                                                                                            game:GetService("Workspace").Map[
                                                                                                "Haunted Castle"
                                                                                            ].Tablet.Segment10:FindFirstChild(
                                                                                                "ClickDetector"
                                                                                            )
                                                                                        )
                                                                                    until game:GetService("Workspace").Map[
                                                                                        "Haunted Castle"
                                                                                    ].Tablet.Segment10.Line.Rotation.Z ==
                                                                                        getTrophies(5)[2] or
                                                                                        game:GetService("Workspace").Map[
                                                                                            "Haunted Castle"
                                                                                        ].Tablet.Segment10.Line.Rotation.Z ==
                                                                                            getTrophies(1)[3] or
                                                                                        not _G.Auto_Soul_Guitar or
                                                                                        game:GetService(
                                                                                            "ReplicatedStorage"
                                                                                        ).Remotes.CommF_:InvokeServer(
                                                                                            "GuitarPuzzleProgress",
                                                                                            "Check"
                                                                                        ).Trophies == true
                                                                                end
                                                                            else
                                                                                for au, av in pairs(ao) do
                                                                                    if au == "Pipes" then
                                                                                        if av == false then
                                                                                            _G.StartFarm = false
                                                                                            repeat
                                                                                                task.wait()
                                                                                                toposition(
                                                                                                    CFrame.new(
                                                                                                        -9628.02734375,
                                                                                                        6.13064432144165,
                                                                                                        6157.47802734375
                                                                                                    )
                                                                                                )
                                                                                            until not _G.Auto_Soul_Guitar or
                                                                                                (CFrame.new(
                                                                                                    -9628.02734375,
                                                                                                    6.13064432144165,
                                                                                                    6157.47802734375
                                                                                                ).Position -
                                                                                                    game:GetService(
                                                                                                        "Players"
                                                                                                    ).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                                                                                    10
                                                                                            fireclickdetector(
                                                                                                game:GetService(
                                                                                                    "Workspace"
                                                                                                ).Map["Haunted Castle"][
                                                                                                    "Lab Puzzle"
                                                                                                ].ColorFloor.Model.Part10.ClickDetector
                                                                                            )
                                                                                            wait()
                                                                                            fireclickdetector(
                                                                                                game:GetService(
                                                                                                    "Workspace"
                                                                                                ).Map["Haunted Castle"][
                                                                                                    "Lab Puzzle"
                                                                                                ].ColorFloor.Model.Part10.ClickDetector
                                                                                            )
                                                                                            wait()
                                                                                            fireclickdetector(
                                                                                                game:GetService(
                                                                                                    "Workspace"
                                                                                                ).Map["Haunted Castle"][
                                                                                                    "Lab Puzzle"
                                                                                                ].ColorFloor.Model.Part10.ClickDetector
                                                                                            )
                                                                                            wait()
                                                                                            fireclickdetector(
                                                                                                game:GetService(
                                                                                                    "Workspace"
                                                                                                ).Map["Haunted Castle"][
                                                                                                    "Lab Puzzle"
                                                                                                ].ColorFloor.Model.Part8.ClickDetector
                                                                                            )
                                                                                            wait()
                                                                                            fireclickdetector(
                                                                                                game:GetService(
                                                                                                    "Workspace"
                                                                                                ).Map["Haunted Castle"][
                                                                                                    "Lab Puzzle"
                                                                                                ].ColorFloor.Model.Part6.ClickDetector
                                                                                            )
                                                                                            wait()
                                                                                            fireclickdetector(
                                                                                                game:GetService(
                                                                                                    "Workspace"
                                                                                                ).Map["Haunted Castle"][
                                                                                                    "Lab Puzzle"
                                                                                                ].ColorFloor.Model.Part6.ClickDetector
                                                                                            )
                                                                                            wait()
                                                                                            fireclickdetector(
                                                                                                game:GetService(
                                                                                                    "Workspace"
                                                                                                ).Map["Haunted Castle"][
                                                                                                    "Lab Puzzle"
                                                                                                ].ColorFloor.Model.Part4.ClickDetector
                                                                                            )
                                                                                            wait()
                                                                                            fireclickdetector(
                                                                                                game:GetService(
                                                                                                    "Workspace"
                                                                                                ).Map["Haunted Castle"][
                                                                                                    "Lab Puzzle"
                                                                                                ].ColorFloor.Model.Part4.ClickDetector
                                                                                            )
                                                                                            wait()
                                                                                            fireclickdetector(
                                                                                                game:GetService(
                                                                                                    "Workspace"
                                                                                                ).Map["Haunted Castle"][
                                                                                                    "Lab Puzzle"
                                                                                                ].ColorFloor.Model.Part4.ClickDetector
                                                                                            )
                                                                                            wait()
                                                                                            fireclickdetector(
                                                                                                game:GetService(
                                                                                                    "Workspace"
                                                                                                ).Map["Haunted Castle"][
                                                                                                    "Lab Puzzle"
                                                                                                ].ColorFloor.Model.Part3.ClickDetector
                                                                                            )
                                                                                        else
                                                                                            for aw, ax in pairs(ao) do
                                                                                                if aw == "CraftedOnce" then
                                                                                                    if ax == false then
                                                                                                        _G.StartFarm =
                                                                                                            false
                                                                                                        if
                                                                                                            M("Bones") <
                                                                                                                500 and
                                                                                                                W3
                                                                                                         then
                                                                                                            for p, ay in ipairs(
                                                                                                                H["Boss"]
                                                                                                            ) do
                                                                                                                local az =
                                                                                                                    H[
                                                                                                                    "Item"
                                                                                                                ]
                                                                                                                if
                                                                                                                    game:GetService(
                                                                                                                        "Workspace"
                                                                                                                    ).Enemies:FindFirstChild(
                                                                                                                        ay
                                                                                                                    ) or
                                                                                                                        game:GetService(
                                                                                                                            "ReplicatedStorage"
                                                                                                                        ):FindFirstChild(
                                                                                                                            ay
                                                                                                                        )
                                                                                                                 then
                                                                                                                    for p, an in pairs(
                                                                                                                        game:GetService(
                                                                                                                            "Workspace"
                                                                                                                        ).Enemies:GetChildren(

                                                                                                                        )
                                                                                                                    ) do
                                                                                                                        if
                                                                                                                            an.Name ==
                                                                                                                                ay
                                                                                                                         then
                                                                                                                            if
                                                                                                                                an:FindFirstChild(
                                                                                                                                    "Humanoid"
                                                                                                                                ) and
                                                                                                                                    an:FindFirstChild(
                                                                                                                                        "HumanoidRootPart"
                                                                                                                                    ) and
                                                                                                                                    an.Humanoid.Health >
                                                                                                                                        0
                                                                                                                             then
                                                                                                                                repeat
                                                                                                                                    wait(

                                                                                                                                    )
                                                                                                                                    EquipWeapon(
                                                                                                                                        _G.Select_Weapon
                                                                                                                                    )
                                                                                                                                    an.HumanoidRootPart.Size =
                                                                                                                                        Vector3.new(
                                                                                                                                        60,
                                                                                                                                        60,
                                                                                                                                        60
                                                                                                                                    )
                                                                                                                                    BringMobFarm =
                                                                                                                                        true
                                                                                                                                    toposition(
                                                                                                                                        an.HumanoidRootPart.CFrame *
                                                                                                                                            CFrame.new(
                                                                                                                                                0,
                                                                                                                                                30,
                                                                                                                                                5
                                                                                                                                            )
                                                                                                                                    )
                                                                                                                                    if
                                                                                                                                        (an.HumanoidRootPart.CFrame.Position -
                                                                                                                                            game:GetService(
                                                                                                                                                "Players"
                                                                                                                                            ).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                                                                                                                            50
                                                                                                                                     then
                                                                                                                                        game:GetService(
                                                                                                                                            "VirtualUser"
                                                                                                                                        ):CaptureController(

                                                                                                                                        )
                                                                                                                                        game:GetService(
                                                                                                                                            "VirtualUser"
                                                                                                                                        ):Button1Down(
                                                                                                                                            Vector2.new(
                                                                                                                                                1280,
                                                                                                                                                672
                                                                                                                                            )
                                                                                                                                        )
                                                                                                                                    end
                                                                                                                                until not _G.Auto_Soul_Guitar or
                                                                                                                                    g.Humanoid.Health <=
                                                                                                                                        0 or
                                                                                                                                    not g.Parent or
                                                                                                                                    g.Humanoid.Health <=
                                                                                                                                        0
                                                                                                                                BringMobFarm =
                                                                                                                                    false
                                                                                                                            end
                                                                                                                        end
                                                                                                                    end
                                                                                                                else
                                                                                                                    if
                                                                                                                        game:GetService(
                                                                                                                            "Players"
                                                                                                                        ).LocalPlayer.Backpack:FindFirstChild(
                                                                                                                            az
                                                                                                                        ) or
                                                                                                                            game:GetService(
                                                                                                                                "Players"
                                                                                                                            ).LocalPlayer.Character:FindFirstChild(
                                                                                                                                az
                                                                                                                            )
                                                                                                                     then
                                                                                                                        EquipWeapon(
                                                                                                                            az
                                                                                                                        )
                                                                                                                        toposition(
                                                                                                                            workspace.Map[
                                                                                                                                "Haunted Castle"
                                                                                                                            ].Summoner.Detection.CFrame
                                                                                                                        )
                                                                                                                    else
                                                                                                                        for p, aA in next, H[
                                                                                                                            "Mon"
                                                                                                                        ] do
                                                                                                                            if
                                                                                                                                game:GetService(
                                                                                                                                    "Workspace"
                                                                                                                                ).Enemies:FindFirstChild(
                                                                                                                                    "Reborn Skeleton [Lv. 1975]"
                                                                                                                                ) or
                                                                                                                                    game:GetService(
                                                                                                                                        "Workspace"
                                                                                                                                    ).Enemies:FindFirstChild(
                                                                                                                                        "Living Zombie [Lv. 2000]"
                                                                                                                                    ) or
                                                                                                                                    game:GetService(
                                                                                                                                        "Workspace"
                                                                                                                                    ).Enemies:FindFirstChild(
                                                                                                                                        "Demonic Soul [Lv. 2025]"
                                                                                                                                    ) or
                                                                                                                                    game:GetService(
                                                                                                                                        "Workspace"
                                                                                                                                    ).Enemies:FindFirstChild(
                                                                                                                                        "Posessed Mummy [Lv. 2050]"
                                                                                                                                    )
                                                                                                                             then
                                                                                                                                print(
                                                                                                                                    aA
                                                                                                                                )
                                                                                                                                for f, g in pairs(
                                                                                                                                    game:GetService(
                                                                                                                                        "Workspace"
                                                                                                                                    ).Enemies:GetChildren(

                                                                                                                                    )
                                                                                                                                ) do
                                                                                                                                    if
                                                                                                                                        g.Name ==
                                                                                                                                            aA
                                                                                                                                     then
                                                                                                                                        if
                                                                                                                                            g:FindFirstChild(
                                                                                                                                                "Humanoid"
                                                                                                                                            ) and
                                                                                                                                                g:FindFirstChild(
                                                                                                                                                    "HumanoidRootPart"
                                                                                                                                                ) and
                                                                                                                                                g.Humanoid.Health >
                                                                                                                                                    0
                                                                                                                                         then
                                                                                                                                            repeat
                                                                                                                                                wait(

                                                                                                                                                )
                                                                                                                                                PosMon =
                                                                                                                                                    g.HumanoidRootPart.CFrame
                                                                                                                                                EquipWeapon(
                                                                                                                                                    _G.Select_Weapon
                                                                                                                                                )
                                                                                                                                                g.HumanoidRootPart.Size =
                                                                                                                                                    Vector3.new(
                                                                                                                                                    60,
                                                                                                                                                    60,
                                                                                                                                                    60
                                                                                                                                                )
                                                                                                                                                BringMobFarm =
                                                                                                                                                    true
                                                                                                                                                toposition(
                                                                                                                                                    g.HumanoidRootPart.CFrame *
                                                                                                                                                        CFrame.new(
                                                                                                                                                            0,
                                                                                                                                                            30,
                                                                                                                                                            5
                                                                                                                                                        )
                                                                                                                                                )
                                                                                                                                                if
                                                                                                                                                    (g.HumanoidRootPart.CFrame.Position -
                                                                                                                                                        game:GetService(
                                                                                                                                                            "Players"
                                                                                                                                                        ).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                                                                                                                                        50
                                                                                                                                                 then
                                                                                                                                                    game:GetService(
                                                                                                                                                        "VirtualUser"
                                                                                                                                                    ):CaptureController(

                                                                                                                                                    )
                                                                                                                                                    game:GetService(
                                                                                                                                                        "VirtualUser"
                                                                                                                                                    ):Button1Down(
                                                                                                                                                        Vector2.new(
                                                                                                                                                            1280,
                                                                                                                                                            672
                                                                                                                                                        )
                                                                                                                                                    )
                                                                                                                                                end
                                                                                                                                            until not _G.Auto_Soul_Guitar or
                                                                                                                                                g.Humanoid.Health <=
                                                                                                                                                    0 or
                                                                                                                                                not g.Parent or
                                                                                                                                                g.Humanoid.Health <=
                                                                                                                                                    0
                                                                                                                                        else
                                                                                                                                            toposition(
                                                                                                                                                GetBone_CFrame_Mon(

                                                                                                                                                )[
                                                                                                                                                    G
                                                                                                                                                ] *
                                                                                                                                                    CFrame.new(
                                                                                                                                                        0,
                                                                                                                                                        30,
                                                                                                                                                        5
                                                                                                                                                    )
                                                                                                                                            )
                                                                                                                                            if
                                                                                                                                                (GetBone_CFrame_Mon(

                                                                                                                                                )[
                                                                                                                                                    G
                                                                                                                                                ].Position -
                                                                                                                                                    game:GetService(
                                                                                                                                                        "Players"
                                                                                                                                                    ).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                                                                                                                                    50
                                                                                                                                             then
                                                                                                                                                if
                                                                                                                                                    G ==
                                                                                                                                                        nil or
                                                                                                                                                        G ==
                                                                                                                                                            ""
                                                                                                                                                 then
                                                                                                                                                    G =
                                                                                                                                                        1
                                                                                                                                                elseif
                                                                                                                                                    G >=
                                                                                                                                                        #GetBone_CFrame_Mon(

                                                                                                                                                        )
                                                                                                                                                 then
                                                                                                                                                    G =
                                                                                                                                                        1
                                                                                                                                                end
                                                                                                                                                G =
                                                                                                                                                    G +
                                                                                                                                                    1
                                                                                                                                                print(
                                                                                                                                                    G
                                                                                                                                                )
                                                                                                                                                wait(
                                                                                                                                                    0.5
                                                                                                                                                )
                                                                                                                                            end
                                                                                                                                        end
                                                                                                                                    end
                                                                                                                                end
                                                                                                                            else
                                                                                                                                toposition(
                                                                                                                                    GetBone_CFrame_Mon(

                                                                                                                                    )[
                                                                                                                                        G
                                                                                                                                    ] *
                                                                                                                                        CFrame.new(
                                                                                                                                            0,
                                                                                                                                            30,
                                                                                                                                            5
                                                                                                                                        )
                                                                                                                                )
                                                                                                                                if
                                                                                                                                    (GetBone_CFrame_Mon(

                                                                                                                                    )[
                                                                                                                                        G
                                                                                                                                    ].Position -
                                                                                                                                        game:GetService(
                                                                                                                                            "Players"
                                                                                                                                        ).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                                                                                                                        50
                                                                                                                                 then
                                                                                                                                    if
                                                                                                                                        G ==
                                                                                                                                            nil or
                                                                                                                                            G ==
                                                                                                                                                ""
                                                                                                                                     then
                                                                                                                                        G =
                                                                                                                                            1
                                                                                                                                    elseif
                                                                                                                                        G >=
                                                                                                                                            #GetBone_CFrame_Mon(

                                                                                                                                            )
                                                                                                                                     then
                                                                                                                                        G =
                                                                                                                                            1
                                                                                                                                    end
                                                                                                                                    G =
                                                                                                                                        G +
                                                                                                                                        1
                                                                                                                                    print(
                                                                                                                                        G
                                                                                                                                    )
                                                                                                                                    wait(
                                                                                                                                        0.5
                                                                                                                                    )
                                                                                                                                end
                                                                                                                            end
                                                                                                                        end
                                                                                                                    end
                                                                                                                end
                                                                                                            end
                                                                                                        else
                                                                                                            if
                                                                                                                M(
                                                                                                                    "Bones"
                                                                                                                ) > 500
                                                                                                             then
                                                                                                                if
                                                                                                                    game:GetService(
                                                                                                                        "ReplicatedStorage"
                                                                                                                    ).Remotes.CommF_:InvokeServer(
                                                                                                                        "Ectoplasm",
                                                                                                                        "Check"
                                                                                                                    ) <
                                                                                                                        250
                                                                                                                 then
                                                                                                                    if
                                                                                                                        not W2
                                                                                                                     then
                                                                                                                        game:GetService(
                                                                                                                            "ReplicatedStorage"
                                                                                                                        ).Remotes.CommF_:InvokeServer(
                                                                                                                            "TravelDressrosa"
                                                                                                                        )
                                                                                                                    else
                                                                                                                        if
                                                                                                                            game:GetService(
                                                                                                                                "Workspace"
                                                                                                                            ).Enemies:FindFirstChild(
                                                                                                                                "Ship Deckhand"
                                                                                                                            ) or
                                                                                                                                game:GetService(
                                                                                                                                    "Workspace"
                                                                                                                                ).Enemies:FindFirstChild(
                                                                                                                                    "Ship Engineer"
                                                                                                                                ) or
                                                                                                                                game:GetService(
                                                                                                                                    "Workspace"
                                                                                                                                ).Enemies:FindFirstChild(
                                                                                                                                    "Ship Steward"
                                                                                                                                ) or
                                                                                                                                game:GetService(
                                                                                                                                    "Workspace"
                                                                                                                                ).Enemies:FindFirstChild(
                                                                                                                                    "Ship Officer"
                                                                                                                                )
                                                                                                                         then
                                                                                                                            for f, g in pairs(
                                                                                                                                game:GetService(
                                                                                                                                    "Workspace"
                                                                                                                                ).Enemies:GetChildren(

                                                                                                                                )
                                                                                                                            ) do
                                                                                                                                if
                                                                                                                                    string.find(
                                                                                                                                        g.Name,
                                                                                                                                        "Ship"
                                                                                                                                    )
                                                                                                                                 then
                                                                                                                                    repeat
                                                                                                                                        wait(

                                                                                                                                        )
                                                                                                                                        EquipWeapon(
                                                                                                                                            _G.Select_Weapon
                                                                                                                                        )
                                                                                                                                        PosMonEctoplasm =
                                                                                                                                            g.HumanoidRootPart.CFrame
                                                                                                                                        g.HumanoidRootPart.CanCollide =
                                                                                                                                            false
                                                                                                                                        g.HumanoidRootPart.Size =
                                                                                                                                            Vector3.new(
                                                                                                                                            50,
                                                                                                                                            50,
                                                                                                                                            50
                                                                                                                                        )
                                                                                                                                        toposition(
                                                                                                                                            g.HumanoidRootPart.CFrame *
                                                                                                                                                CFrame.new(
                                                                                                                                                    0,
                                                                                                                                                    30,
                                                                                                                                                    5
                                                                                                                                                )
                                                                                                                                        )
                                                                                                                                        MagnetEctoplasm =
                                                                                                                                            true
                                                                                                                                        game:GetService "VirtualUser":CaptureController(

                                                                                                                                        )
                                                                                                                                        game:GetService "VirtualUser":Button1Down(
                                                                                                                                            Vector2.new(
                                                                                                                                                1280,
                                                                                                                                                672
                                                                                                                                            )
                                                                                                                                        )
                                                                                                                                    until _G.Auto_Soul_Guitar ==
                                                                                                                                        false or
                                                                                                                                        not g.Parent or
                                                                                                                                        g.Humanoid.Health <=
                                                                                                                                            0
                                                                                                                                    MagnetEctoplasm =
                                                                                                                                        false
                                                                                                                                else
                                                                                                                                    MagnetEctoplasm =
                                                                                                                                        false
                                                                                                                                    toposition(
                                                                                                                                        CFrame.new(
                                                                                                                                            904.4072265625,
                                                                                                                                            181.05767822266,
                                                                                                                                            33341.38671875
                                                                                                                                        )
                                                                                                                                    )
                                                                                                                                end
                                                                                                                            end
                                                                                                                        else
                                                                                                                            MagnetEctoplasm =
                                                                                                                                false
                                                                                                                            local aB =
                                                                                                                                (Vector3.new(
                                                                                                                                904.4072265625,
                                                                                                                                181.05767822266,
                                                                                                                                33341.38671875
                                                                                                                            ) -
                                                                                                                                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                                                                                                                            if
                                                                                                                                aB >
                                                                                                                                    _G.Mics[
                                                                                                                                        "Max-Distance Bypass TP"
                                                                                                                                    ]
                                                                                                                             then
                                                                                                                                game:GetService(
                                                                                                                                    "ReplicatedStorage"
                                                                                                                                ).Remotes.CommF_:InvokeServer(
                                                                                                                                    "requestEntrance",
                                                                                                                                    Vector3.new(
                                                                                                                                        923.21252441406,
                                                                                                                                        126.9760055542,
                                                                                                                                        32852.83203125
                                                                                                                                    )
                                                                                                                                )
                                                                                                                            end
                                                                                                                            toposition(
                                                                                                                                CFrame.new(
                                                                                                                                    904.4072265625,
                                                                                                                                    181.05767822266,
                                                                                                                                    33341.38671875
                                                                                                                                )
                                                                                                                            )
                                                                                                                        end
                                                                                                                    end
                                                                                                                elseif
                                                                                                                    M(
                                                                                                                        "Dark Fragment"
                                                                                                                    ) <
                                                                                                                        1
                                                                                                                 then
                                                                                                                    if
                                                                                                                        not W2
                                                                                                                     then
                                                                                                                        game:GetService(
                                                                                                                            "ReplicatedStorage"
                                                                                                                        ).Remotes.CommF_:InvokeServer(
                                                                                                                            "TravelDressrosa"
                                                                                                                        )
                                                                                                                    end
                                                                                                                    if
                                                                                                                        game.ReplicatedStorage:FindFirstChild(
                                                                                                                            "Darkbeard"
                                                                                                                        ) or
                                                                                                                            game.Workspace.Enemies:FindFirstChild(
                                                                                                                                "Darkbeard"
                                                                                                                            )
                                                                                                                     then
                                                                                                                        toposition(
                                                                                                                            CFrame.new(
                                                                                                                                3780.0302734375,
                                                                                                                                22.652164459229,
                                                                                                                                -3498.5859375
                                                                                                                            )
                                                                                                                        )
                                                                                                                        for f, g in pairs(
                                                                                                                            game.Workspace.Enemies:GetChildren(

                                                                                                                            )
                                                                                                                        ) do
                                                                                                                            if
                                                                                                                                g.Name ==
                                                                                                                                    "Darkbeard" and
                                                                                                                                    g:FindFirstChild(
                                                                                                                                        "HumanoidRootPart"
                                                                                                                                    ) and
                                                                                                                                    g:FindFirstChild(
                                                                                                                                        "Humanoid"
                                                                                                                                    ) and
                                                                                                                                    g.Humanoid.Health >
                                                                                                                                        0
                                                                                                                             then
                                                                                                                                repeat
                                                                                                                                    wait(

                                                                                                                                    )
                                                                                                                                    EquipWeapon(
                                                                                                                                        _G.Select_Weapon
                                                                                                                                    )
                                                                                                                                    g.HumanoidRootPart.Size =
                                                                                                                                        Vector3.new(
                                                                                                                                        60,
                                                                                                                                        60,
                                                                                                                                        60
                                                                                                                                    )
                                                                                                                                    toposition(
                                                                                                                                        g.HumanoidRootPart.CFrame *
                                                                                                                                            CFrame.new(
                                                                                                                                                0,
                                                                                                                                                30,
                                                                                                                                                5
                                                                                                                                            )
                                                                                                                                    )
                                                                                                                                    if
                                                                                                                                        (g.HumanoidRootPart.CFrame.Position -
                                                                                                                                            game:GetService(
                                                                                                                                                "Players"
                                                                                                                                            ).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                                                                                                                            50
                                                                                                                                     then
                                                                                                                                        game:GetService(
                                                                                                                                            "VirtualUser"
                                                                                                                                        ):CaptureController(

                                                                                                                                        )
                                                                                                                                        game:GetService(
                                                                                                                                            "VirtualUser"
                                                                                                                                        ):Button1Down(
                                                                                                                                            Vector2.new(
                                                                                                                                                1280,
                                                                                                                                                672
                                                                                                                                            )
                                                                                                                                        )
                                                                                                                                    end
                                                                                                                                until not _G.Auto_Soul_Guitar or
                                                                                                                                    g.Humanoid.Health <=
                                                                                                                                        0 or
                                                                                                                                    not g.Parent
                                                                                                                            end
                                                                                                                        end
                                                                                                                    else
                                                                                                                        if
                                                                                                                            game.Players.LocalPlayer.Backpack:FindFirstChild(
                                                                                                                                "Fist of Darkness"
                                                                                                                            ) or
                                                                                                                                game.Players.LocalPlayer.Character:FindFirstChild(
                                                                                                                                    "Fist of Darkness"
                                                                                                                                )
                                                                                                                         then
                                                                                                                            EquipWeapon(
                                                                                                                                "Fist of Darkness"
                                                                                                                            )
                                                                                                                            toposition(
                                                                                                                                CFrame.new(
                                                                                                                                    3780.0302734375,
                                                                                                                                    22.652164459229,
                                                                                                                                    -3498.5859375
                                                                                                                                ) *
                                                                                                                                    CFrame.new(
                                                                                                                                        0,
                                                                                                                                        -10,
                                                                                                                                        0
                                                                                                                                    )
                                                                                                                            )
                                                                                                                        else
                                                                                                                            if
                                                                                                                                not W2
                                                                                                                             then
                                                                                                                                game:GetService(
                                                                                                                                    "ReplicatedStorage"
                                                                                                                                ).Remotes.CommF_:InvokeServer(
                                                                                                                                    "TravelDressrosa"
                                                                                                                                )
                                                                                                                            end
                                                                                                                            for f, g in pairs(
                                                                                                                                game:GetService(
                                                                                                                                    "Workspace"
                                                                                                                                ):GetChildren(

                                                                                                                                )
                                                                                                                            ) do
                                                                                                                                if
                                                                                                                                    g.Name:find(
                                                                                                                                        "Chest"
                                                                                                                                    )
                                                                                                                                 then
                                                                                                                                    if
                                                                                                                                        game:GetService(
                                                                                                                                            "Workspace"
                                                                                                                                        ):FindFirstChild(
                                                                                                                                            g.Name
                                                                                                                                        )
                                                                                                                                     then
                                                                                                                                        if
                                                                                                                                            (g.Position -
                                                                                                                                                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                                                                                                                                5000 +
                                                                                                                                                    _G.Poo
                                                                                                                                         then
                                                                                                                                            repeat
                                                                                                                                                task.wait(

                                                                                                                                                )
                                                                                                                                                if
                                                                                                                                                    game:GetService(
                                                                                                                                                        "Workspace"
                                                                                                                                                    ):FindFirstChild(
                                                                                                                                                        g.Name
                                                                                                                                                    )
                                                                                                                                                 then
                                                                                                                                                    toposition(
                                                                                                                                                        g.CFrame
                                                                                                                                                    )
                                                                                                                                                    if
                                                                                                                                                        (g.CFrame.Position -
                                                                                                                                                            game:GetService(
                                                                                                                                                                "Players"
                                                                                                                                                            ).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                                                                                                                                            10
                                                                                                                                                     then
                                                                                                                                                        UnEquipWeapon(
                                                                                                                                                            _G.Select_Weapon
                                                                                                                                                        )
                                                                                                                                                    else
                                                                                                                                                        EquipWeapon(
                                                                                                                                                            _G.Select_Weapon
                                                                                                                                                        )
                                                                                                                                                    end
                                                                                                                                                else
                                                                                                                                                    _G.Poo =
                                                                                                                                                        _G.Poo +
                                                                                                                                                        1000
                                                                                                                                                end
                                                                                                                                            until _G.Auto_Soul_Guitar ==
                                                                                                                                                false or
                                                                                                                                                not g.Parent
                                                                                                                                            _G.Poo =
                                                                                                                                                _G.Poo +
                                                                                                                                                1000
                                                                                                                                            break
                                                                                                                                        else
                                                                                                                                            _G.Poo =
                                                                                                                                                _G.Poo +
                                                                                                                                                1000
                                                                                                                                        end
                                                                                                                                    end
                                                                                                                                end
                                                                                                                            end
                                                                                                                        end
                                                                                                                    end
                                                                                                                else
                                                                                                                    if
                                                                                                                        game:GetService(
                                                                                                                            "ReplicatedStorage"
                                                                                                                        ).Remotes.CommF_:InvokeServer(
                                                                                                                            "Ectoplasm",
                                                                                                                            "Check"
                                                                                                                        ) >
                                                                                                                            250 and
                                                                                                                            M(
                                                                                                                                "Dark Fragment"
                                                                                                                            ) >
                                                                                                                                1
                                                                                                                     then
                                                                                                                        if
                                                                                                                            W3
                                                                                                                         then
                                                                                                                            print(
                                                                                                                                "Buy"
                                                                                                                            )
                                                                                                                            _G.Auto_Soul_Guitar =
                                                                                                                                false
                                                                                                                            _G.StartFarm =
                                                                                                                                true
                                                                                                                        else
                                                                                                                            game:GetService(
                                                                                                                                "ReplicatedStorage"
                                                                                                                            ).Remotes.CommF_:InvokeServer(
                                                                                                                                "TravelZou"
                                                                                                                            )
                                                                                                                        end
                                                                                                                    end
                                                                                                                end
                                                                                                            end
                                                                                                        end
                                                                                                    end
                                                                                                end
                                                                                            end
                                                                                        end
                                                                                    end
                                                                                end
                                                                            end
                                                                        end
                                                                    end
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    )
                end
            end
        )
        spawn(
            function()
                game:GetService("RunService").Heartbeat:Connect(
                    function()
                        pcall(
                            function()
                                for f, g in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if
                                        _G.Auto_Soul_Guitar and MagnetEctoplasm and string.find(g.Name, "Ship") and
                                            (g.HumanoidRootPart.Position - PosMonEctoplasm.Position).magnitude <= 350
                                     then
                                        g.HumanoidRootPart.CFrame = PosMonEctoplasm
                                        g.HumanoidRootPart.CanCollide = false
                                        g.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                        if g.Humanoid:FindFirstChild("Animator") then
                                            g.Humanoid.Animator:Destroy()
                                        end
                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                    end
                                end
                            end
                        )
                    end
                )
            end
        )
        task.spawn(
            function()
                while task.wait() do
                    pcall(
                        function()
                            if _G.KAITAN1CLICK and _G.Bring_Mob then
                                for f, g in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if
                                        g.Name == i()[3] and
                                            (g.HumanoidRootPart.Position - PosMon.Position).magnitude <= 300
                                     then
                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                        g.HumanoidRootPart.CFrame = PosMon
                                        g.Humanoid.JumpPower = 0
                                        g.Humanoid.WalkSpeed = 0
                                        g.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        g.HumanoidRootPart.Transparency = 1
                                        g.HumanoidRootPart.CanCollide = false
                                        g.Head.CanCollide = false
                                        g.Humanoid:ChangeState(11)
                                        g.Humanoid:ChangeState(14)
                                        if g.Humanoid:FindFirstChild("Animator") then
                                            g.Humanoid.Animator:Destroy()
                                        end
                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                        setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
                                    end
                                end
                            end
                        end
                    )
                end
            end
        )
        task.spawn(
            function()
                while task.wait() do
                    pcall(
                        function()
                            if _G.KAITAN1CLICK and _G.Bring_Mob and BringMobFarm55 then
                                for f, g in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if
                                        g.Name == "Shanda" and
                                            (g.HumanoidRootPart.Position - PosMon.Position).magnitude <= 300
                                     then
                                        g.HumanoidRootPart.CFrame = PosMon
                                        g.Humanoid.JumpPower = 0
                                        g.Humanoid.WalkSpeed = 0
                                        g.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        g.HumanoidRootPart.Transparency = 1
                                        g.HumanoidRootPart.CanCollide = false
                                        g.Head.CanCollide = false
                                        g.Humanoid:ChangeState(11)
                                        g.Humanoid:ChangeState(14)
                                        if g.Humanoid:FindFirstChild("Animator") then
                                            g.Humanoid.Animator:Destroy()
                                        end
                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                        setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
                                    end
                                end
                            end
                        end
                    )
                end
            end
        )
        task.spawn(
            function()
                while task.wait() do
                    pcall(
                        function()
                            if _G.KAITAN1CLICK and _G.Bring_Mob or BringMobFarm556 then
                                for f, g in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if
                                        (g.Name == "Snow Lurker" or g.Name == "Arctic Warrior") and
                                            (g.HumanoidRootPart.Position - PosMon.Position).magnitude <= 300
                                     then
                                        g.HumanoidRootPart.CFrame = PosMon
                                        g.Humanoid.JumpPower = 0
                                        g.Humanoid.WalkSpeed = 0
                                        g.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        g.HumanoidRootPart.Transparency = 1
                                        g.HumanoidRootPart.CanCollide = false
                                        g.Head.CanCollide = false
                                        g.Humanoid:ChangeState(11)
                                        g.Humanoid:ChangeState(14)
                                        if g.Humanoid:FindFirstChild("Animator") then
                                            g.Humanoid.Animator:Destroy()
                                        end
                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                        setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
                                    end
                                end
                            end
                        end
                    )
                end
            end
        )
        spawn(
            function()
                while wait() do
                    pcall(
                        function()
                            if _G.KAITAN1CLICK and _G.Bring_Mob and BringMobFarm565 then
                                for f, g in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if
                                        (g.Name == "Ship Deckhand" or g.Name == "Ship Engineer" or
                                            g.Name == "Ship Steward" or
                                            g.Name == "Ship Officer") and
                                            (g.HumanoidRootPart.Position - PosMon.Position).magnitude <= 300
                                     then
                                        g.HumanoidRootPart.CFrame = PosMon
                                        g.Humanoid.JumpPower = 0
                                        g.Humanoid.WalkSpeed = 0
                                        g.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        g.HumanoidRootPart.Transparency = 1
                                        g.HumanoidRootPart.CanCollide = false
                                        g.Head.CanCollide = false
                                        if g.Humanoid:FindFirstChild("Animator") then
                                            g.Humanoid.Animator:Destroy()
                                        end
                                        g.Humanoid:ChangeState(11)
                                        g.Humanoid:ChangeState(14)
                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                        setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
                                    end
                                end
                            end
                        end
                    )
                end
            end
        )
        if _G.Boost then
            game.Players.LocalPlayer.Character.Pants:Destroy()
            game.Players.LocalPlayer.Character.Animate.Disabled = true
            wait()
            loadstring(
                Game:HttpGet("https://raw.githubusercontent.com/JewhisKids/NewFreeScript/main/Misc/SuperFpsBoost.lua")
            )()
            while wait() do
                setfpscap(60)
                wait()
                setfpscap(59)
            end
        end
        spawn(
            function()
                while task.wait() do
                    if _G.Rejoin then
                        wait(_G.Mics["Delay Per Rejoin"])
                        game:GetService("TeleportService"):Teleport(
                            game.PlaceId,
                            game:GetService("Players").LocalPlayer
                        )
                    end
                end
            end
        )
        spawn(
            function()
                while wait() do
                    if _G.KAITAN1CLICK then
                        pcall(
                            function()
                                local args = {[1] = "AddPoint", [2] = "Melee", [3] = 3}
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                wait()
                                local aC = {[1] = "AddPoint", [2] = "Defense", [3] = 1}
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(aC))
                            end
                        )
                    end
                end
            end
        )
        spawn(
            function()
                for f, g in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                    for f, a4 in pairs(game:GetService("Players").LocalPlayer.PlayerScripts:GetDescendants()) do
                        if g:IsA("LocalScript") or a4:IsA("LocalScript") then
                            if
                                g.Name == "General" or g.Name == "Shiftlock" or g.Name == "FallDamage" or
                                    g.Name == "4444" or
                                    g.Name == "CamBob" or
                                    g.Name == "JumpCD" or
                                    g.Name == "Looking" or
                                    g.Name == "Run"
                             then
                                g:Destroy()
                            end
                            if
                                a4.Name == "RobloxMotor6DBugFix" or a4.Name == "Clans" or a4.Name == "Codes" or
                                    a4.Name == "CustomForceField" or
                                    a4.Name == "MenuBloodSp" or
                                    a4.Name == "PlayerList"
                             then
                                a4.Destroy()
                            end
                        end
                    end
                end
            end
        )
        local aD = require(game.ReplicatedStorage.Util.CameraShaker)
        local aE = game.Players.LocalPlayer
        local aF = debug.getupvalues(require(aE.PlayerScripts.CombatFramework))
        local aG = aF[2]
        aD:Stop()
        function SeraphFuckWeapon()
            local aH = aG.activeController
            local aI = aH.blades[1]
            if not aI then
                return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
            end
            pcall(
                function()
                    while aI.Parent ~= game.Players.LocalPlayer.Character do
                        aI = aI.Parent
                    end
                end
            )
            return aI
        end
        function getHits(aJ)
            local aK = {}
            local aL = workspace.Enemies:GetChildren()
            local aM = workspace.Characters:GetChildren()
            for f = 1, #aL do
                local g = aL[f]
                local aN = g:FindFirstChildOfClass("Humanoid")
                if
                    aN and aN.RootPart and aN.Health > 0 and
                        game.Players.LocalPlayer:DistanceFromCharacter(aN.RootPart.Position) < aJ + 100
                 then
                    table.insert(aK, aN.RootPart)
                end
            end
            for f = 1, #aM do
                local g = aM[f]
                if g ~= game.Players.LocalPlayer.Character then
                    local aN = g:FindFirstChildOfClass("Humanoid")
                    if
                        aN and aN.RootPart and aN.Health > 0 and
                            game.Players.LocalPlayer:DistanceFromCharacter(aN.RootPart.Position) < aJ + 100
                     then
                        table.insert(aK, aN.RootPart)
                    end
                end
            end
            return aK
        end
        function Boost()
            spawn(
                function()
                    game:GetService("ReplicatedStorage").RigControllerEvent:FireServer(
                        "weaponChange",
                        tostring(SeraphFuckWeapon())
                    )
                end
            )
        end
        function Unboost()
            spawn(
                function()
                    game:GetService("ReplicatedStorage").RigControllerEvent:FireServer(
                        "unequipWeapon",
                        tostring(SeraphFuckWeapon())
                    )
                end
            )
        end
        function dAnim()
            a = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib).wrapAttackAnimationAsync
            b = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework.Particle).play
            require(game:GetService("ReplicatedStorage").CombatFramework.RigLib).wrapAttackAnimationAsync = function(
                aO,
                aP,
                aQ,
                aR,
                aS)
                local aT = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib).getBladeHits(aP, aQ, aR)
                if aT then
                    require(game:GetService("ReplicatedStorage").CombatFramework.RigLib).play = function()
                    end
                    aO:Play(0.2, 0.2, 0.2)
                    aS(aT)
                    require(game:GetService("ReplicatedStorage").CombatFramework.RigLib).play = b
                    wait()
                    aO:Stop()
                end
            end
        end
        function Attack()
            local aU = aG.activeController
            task.spawn(
                function()
                    if aU and aU.equipped then
                        aU.activeController.focusStart = 0
                        aU.activeController.hitSound = 0
                        aU.activeController.hitboxMagnitude = 2480
                        game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", getHits(200), 2, "")
                        game:GetService("ReplicatedStorage").RigControllerEvent:FireServer(
                            "weaponChange",
                            tostring(SeraphFuckWeapon())
                        )
                        aD:Stop()
                    end
                end
            )
        end
        function ditmeae(aV)
            local aW = require(game:GetService("ReplicatedStorage").Effect.Container.Misc.Damage)
            local aX = aW.Run
            aW.Run = function(...)
                args = {...}
                if aV then
                    args[1]["Value"] = aV
                end
                return aX(unpack(args))
            end
        end
        function AttackNoCD()
            local aY = aG.activeController
            for f = 1, 1 do
                local aZ =
                    require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
                    aE.Character,
                    {aE.Character.HumanoidRootPart},
                    200
                )
                local a_ = {}
                local b0 = {}
                for b1, g in pairs(aZ) do
                    if g.Parent:FindFirstChild("HumanoidRootPart") and not b0[g.Parent] then
                        table.insert(a_, g.Parent.HumanoidRootPart)
                        b0[g.Parent] = true
                    end
                end
                aZ = a_
                if #aZ > 0 then
                    local b2 = debug.getupvalue(aY.attack, 5)
                    local b3 = debug.getupvalue(aY.attack, 6)
                    local b4 = debug.getupvalue(aY.attack, 4)
                    local b5 = debug.getupvalue(aY.attack, 7)
                    local b6 = (b2 * 798405 + b4 * 727595) % b3
                    local b7 = b4 * 798405
                    (function()
                        b6 = (b6 * b3 + b7) % 1099511627776
                        b2 = math.floor(b6 / b3)
                        b4 = b6 - b2 * b3
                    end)()
                    b5 = b5 + 1
                    debug.setupvalue(aY.attack, 5, b2)
                    debug.setupvalue(aY.attack, 6, b3)
                    debug.setupvalue(aY.attack, 4, b4)
                    debug.setupvalue(aY.attack, 7, b5)
                    if aE.Character:FindFirstChildOfClass("Tool") and aY.blades and aY.blades[1] then
                        game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", aZ, f, "")
                        game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", getHits(120), 2, "")
                        game:GetService("ReplicatedStorage").RigControllerEvent:FireServer(
                            "weaponChange",
                            tostring(SeraphFuckWeapon())
                        )
                        game.ReplicatedStorage.Remotes.Validator:FireServer(
                            math.floor(b6 / 1099511627776 * 16777215),
                            b5
                        )
                    end
                end
            end
        end
        task.spawn(
            function()
                while task.wait() do
                    if _G.FastAttack then
                        pcall(
                            function()
                                for f, g in pairs(game.Workspace.Enemies:GetChildren()) do
                                    if g.Humanoid.Health > 0 and g:FindFirstChild("HumanoidRootPart") then
                                        if
                                            (g.HumanoidRootPart.Position -
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                                300
                                         then
                                            ditmeae("Mascara Cat Hub")
                                            Boost()
                                            task.wait()
                                            Attack()
                                            task.wait()
                                            AttackNoCD()
                                            task.wait()
                                            Unboost()
                                            task.wait()
                                            dAnim()
                                            task.wait()
                                        end
                                    end
                                end
                            end
                        )
                    end
                end
            end
        )
    end
end
