getgenv().GPO_Status = false 
getgenv().TOH_Status = true
getgenv().YBA_Status = false
getgenv().ASTD_Status = false
getgenv().MHM_Status = true
getgenv().DaHood_Status = false 

--------------------------------------------------------------------------------GRAND PIECE ONLINE-------------------------------------------------------------------
if game.PlaceId == 3978370137 and GPO_Status == true then
    local random = Random.new()
    local letters = {
        "a",
        "b",
        "c",
        "d",
        "e",
        "f",
        "g",
        "h",
        "i",
        "j",
        "k",
        "l",
        "m",
        "n",
        "o",
        "p",
        "q",
        "r",
        "s",
        "t",
        "u",
        "v",
        "w",
        "x",
        "y",
        "z"
    }

    function getRandomLetter()
        return letters[random:NextInteger(1, #letters)]
    end

    function getRandomString(length, includeCapitals)
        local length = length or 10
        local str = ""
        for i = 1, length do
            local randomLetter = getRandomLetter()
            if includeCapitals and random:NextNumber() > .5 then
                randomLetter = string.upper(randomLetter)
            end
            str = str .. randomLetter
        end
        return str
    end

    local randomTitleConfig = getRandomString(7, true)
    local randomTitle = "Straw Hub"

    local Material = loadstring(game:HttpGet("https://pastebin.com/raw/Sn6g02Em"))()
     --https://hastebin.com/raw/oyiqomehur

    local UI =
        Material.Load(
        {
            Title = randomTitle,
            Style = 2,
            SizeX = 600,
            SizeY = 350,
            -- Theme = "Dark"
            ColorOverrides = {
                MainFrame = Color3.fromRGB(15, 15, 15),
                Minimise = Color3.fromRGB(255, 68, 68),
                MinimiseAccent = Color3.fromRGB(147, 59, 0),
                Maximise = Color3.fromRGB(25, 255, 0),
                MaximiseAccent = Color3.fromRGB(0, 255, 110),
                NavBar = Color3.fromRGB(235, 235, 235),
                NavBarAccent = Color3.fromRGB(32, 32, 32),
                NavBarInvert = Color3.fromRGB(235, 235, 235),
                TitleBar = Color3.fromRGB(30, 30, 30),
                TitleBarAccent = Color3.fromRGB(255, 255, 255),
                Overlay = Color3.fromRGB(30, 30, 30),
                Banner = Color3.fromRGB(30, 30, 30),
                BannerAccent = Color3.fromRGB(255, 255, 255),
                Content = Color3.fromRGB(85, 85, 85),
                Button = Color3.fromRGB(40, 40, 40),
                ButtonAccent = Color3.fromRGB(235, 235, 235),
                ChipSet = Color3.fromRGB(45, 45, 45),
                ChipSetAccent = Color3.fromRGB(255, 255, 255),
                DataTable = Color3.fromRGB(160, 160, 160),
                DataTableAccent = Color3.fromRGB(45, 45, 45),
                Slider = Color3.fromRGB(45, 45, 45),
                SliderAccent = Color3.fromRGB(235, 235, 235),
                Toggle = Color3.fromRGB(230, 230, 230),
                ToggleAccent = Color3.fromRGB(235, 235, 235),
                Dropdown = Color3.fromRGB(45, 45, 45),
                DropdownAccent = Color3.fromRGB(235, 235, 235),
                ColorPicker = Color3.fromRGB(10, 10, 10),
                ColorPickerAccent = Color3.fromRGB(235, 235, 235),
                TextField = Color3.fromRGB(55, 55, 55),
                TextFieldAccent = Color3.fromRGB(235, 235, 235)
            }
        }
    )

    -----TOGGLE GUI----------------------------
    local UISS = game:GetService("UserInputService")
    getgenv().toggle = true

    UISS.InputBegan:Connect(
        function(Input)
            if Input.KeyCode == Enum.KeyCode.RightControl then
                getgenv().toggle = not getgenv().toggle
                if getgenv().toggle == true then
                    game:GetService("CoreGui")[randomTitle].MainFrame.Visible = true
                else
                    game:GetService("CoreGui")[randomTitle].MainFrame.Visible = false
                end
            end
        end
    )
    ----BYPASSES------------------------------------
    function antiafk()
        local vu = game:GetService("VirtualUser")
        game:GetService("Players").LocalPlayer.Idled:connect(
            function()
                vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
                wait(1)
                vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
            end
        )
    end

    function WSBypass()
        local gmt = getrawmetatable(game)
        setreadonly(gmt, false)
        local oldindex = gmt.__index

        gmt.__index =
            newcclosure(
            function(self, b)
                if b == "WalkSpeed" then
                    return 16
                end
                return oldindex(self, b)
            end
        )
    end

    function JPBypass()
        local gmt = getrawmetatable(game)
        setreadonly(gmt, false)
        local oldindex = gmt.__index

        gmt.__index =
            newcclosure(
            function(self, b)
                if b == "JumpPower" then
                    return 16
                end
                return oldindex(self, b)
            end
        )
    end

    function Antikick()
        local mt = getrawmetatable(game)
        local old = mt.namecall

        setreadonly(mt, false)
        mt.namecall = function(self, ...)
            local method = getnamecallmethod()
            if method == "Kick" then
                return
            end
            return old(self, ...)
        end
    end

    antiafk()
    print("Preset 1: Loaded!")
    WSBypass()
    print("Preset 2: Loaded!")
    JPBypass()
    print("Preset 3: Loaded!")
    Antikick()
    print("Preset 4: Loaded!")
    --##################################################################################################################################################################--

    local random = Random.new()
    local letters = {
        "a",
        "b",
        "c",
        "d",
        "e",
        "f",
        "g",
        "h",
        "i",
        "j",
        "k",
        "l",
        "m",
        "n",
        "o",
        "p",
        "q",
        "r",
        "s",
        "t",
        "u",
        "v",
        "w",
        "x",
        "y",
        "z"
    }

    function getRandomLetter()
        return letters[random:NextInteger(1, #letters)]
    end

    function getRandomString(length, includeCapitals)
        local length = length or 10
        local str = ""
        for i = 1, length do
            local randomLetter = getRandomLetter()
            if includeCapitals and random:NextNumber() > .5 then
                randomLetter = string.upper(randomLetter)
            end
            str = str .. randomLetter
        end
        return str
    end

    local player = game:GetService("Players").LocalPlayer
    local characterFolders = workspace.PlayerCharacters
    local backpack = player:WaitForChild("Backpack")
    local runService = game:GetService("RunService")
    local EventCombat = game:GetService("ReplicatedStorage").Events.CombatRegister
    local EventQuest = game:GetService("ReplicatedStorage").Events.Quest
    local sequence = 1
    local noClipButton
    local EventHaki = game:GetService("ReplicatedStorage").Events.Haki
    local styleSeletect = {
        ""
    }

    getgenv().web_url = ""
    getgenv().tpFuncSpeed = 15
    local fullCircle = 2 * math.pi
    local halfCircle = math.pi
    local autoFarmButton
    local radius = 3.2
    local radius2 = 5
    local tweenService = game:GetService("TweenService")
    local tweenGlobal = nil
    local speedMarineShip = 30
    local attempts = game.ReplicatedStorage["Stats" .. (game.Players.LocalPlayer.Name)].Stats.Attempts
    local hitCooldown = time()
    local actualCaptain = nil
    local respawnShip = nil
    local marineFarmDistance = 1000
    local speedIslandTp = 100
    local ships = workspace.Ships
    local shipsNpc = ships:WaitForChild("NPC")
    local tpIsland = false
    local water = workspace:WaitForChild("Effects"):WaitForChild("Water")
    local EventShip = game:GetService("ReplicatedStorage").Events.ShipEvents.Spawn
    local nextCaptian = true
    local speedAutoFarm = 30
    local MarketPlaceService = game:GetService("MarketplaceService")
    local player = game:GetService("Players").LocalPlayer
    local playerSize = player.Character:WaitForChild("Humanoid").HipHeight
    local Height = (0.5 * player.Character:WaitForChild("HumanoidRootPart").Size.Y) + playerSize
    local antiFallButton
    local NPC = workspace.NPCs
    local effects = workspace.Effects
    local shipsQueue = {}
    local captiansQueue = {}
    local vu = game:GetService("VirtualUser")
    local npcFocused = nil
    local fruitGot = false
    local partsNoClipped = {}
    local hitBox = Instance.new("Part", workspace)
    local weldBox = Instance.new("Weld", hitBox)
    hitBox.CanCollide = false
    hitBox.Name = "lololP2"
    hitBox.Anchored = false
    hitBox.Massless = true
    hitBox.Size = Vector3.new(5, 10, 5)
    hitBox.Transparency = 1
    hitBox.Position = player.Character:WaitForChild("HumanoidRootPart").Position
    weldBox.Part0 = hitBox
    weldBox.Part1 = player.Character:WaitForChild("HumanoidRootPart")

    local statsPlayer = game:GetService("ReplicatedStorage")["Stats" .. player.Name]
    local quests = statsPlayer.Quest
    local bossFocused = nil
    local bossHelpersFreezed = false

    local folder = Instance.new("Folder", workspace)
    folder.Name = "hitsbox"

    local fruits = {
        "Bomb",
        "Mera",
        "Hie",
        "Magu",
        "Pika",
        "Suke",
        "Bari",
        "Bomb",
        "Goro"
    }

    local inventoryItems =
        game:GetService("ReplicatedStorage"):WaitForChild("Stats" .. player.Name):WaitForChild("Inventory"):WaitForChild(
        "Inventory"
    )
    local EventStoreFruits = game:GetService("ReplicatedStorage").Events.FruitStorage

    local questList = {
        ["Bandits"] = {
            "Raphtalia",
            "Help Raphtalia"
        },
        ["Bandit Boss"] = {
            "Ronny",
            "Help Ronny"
        },
        ["Desert Bandits"] = {
            "Noah",
            "Help Noah"
        },
        ["Lucid"] = {
            "Tyrone",
            "Take down Lucid"
        },
        ["Krieg Pirates"] = {
            "Chef Rice",
            "Help Rice"
        },
        ["Zou Inhabitants"] = {
            "Zen",
            "Help Zen"
        },
        ["Corrupt Marines"] = {
            "Robert",
            "Help Robert"
        },
        ["Sky district bandits"] = {
            "Vego",
            "Help vego"
        },
        ["Castle Guards"] = {
            "Zhen",
            "Help zhen"
        },
        ["Sky Guardians"] = {
            "Raze",
            "Help raze"
        },
        ["Santa"] = {
            "Viva",
            "Help viva"
        }
    }

    local questDoing = {}

    local npcList = {
        "Bandit",
        "Bandit Boss",
        "Desert Bandit",
        "Lucid's Lad",
        "Lucid's Righthand",
        "Lucid",
        "Krieg Pirate",
        "Zou Inhabitant",
        "Corrupt Marine",
        "Monkey",
        "Sky District Bandit",
        "Castle Guard",
        "Sky Guardian"
    }

    local bossList = {
        ["Santa"] = {
            "Santa",
            "Santa's Elf",
            Vector3.new(10082, 1779.48, -9948.25),
            function(rp)
                if effects:FindFirstChild("Gift") then
                    sequence = 1
                    local distance =
                        (player.Character:WaitForChild("HumanoidRootPart").Position - rp.Position).magnitude
                    local timeTween = distance / speedAutoFarm
                    tweenGlobal =
                        tweenService:Create(
                        player.Character:WaitForChild("HumanoidRootPart"),
                        TweenInfo.new(timeTween, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                        {
                            CFrame = player.Character:WaitForChild("HumanoidRootPart").CFrame + Vector3.new(0, 1.5, 0)
                        }
                    )
                    tweenGlobal:Play()
                    radius = 3.2
                    sequence = 1
                    hitCooldown = time()
                    return true
                end
                return false
            end,
            traped = false,
            Vector3.new(10074, 1784, -10082)
        }
    }

    local listPartsTouch = {}

    local islands = {
        ["Shells"] = Vector3.new(-533, 13, -4548),
        ["Orange"] = Vector3.new(-7005, 5, -5339),
        ["Zou"] = Vector3.new(-4338, 7, -2546),
        ["Colosseum"] = Vector3.new(-2020, 7, -7634),
        ["Starter"] = Vector3.new(964, 9, 1000),
        ["Arlong"] = Vector3.new(506, 13, -12935),
        ["Sandora"] = Vector3.new(-1299, 10, 1156),
        ["Sphinx"] = Vector3.new(-6280, 5, -9832),
        ["Mysterius"] = Vector3.new(2197, 6, -8733),
        ["Sky island"] = Vector3.new(9259, 1703, -10846),
        ["Roka"] = Vector3.new(5186, 4, -5333),
        ["Kori"] = Vector3.new(-6668, 7, 1821),
        ["Marine"] = Vector3.new(2763, 6, -1044),
        ["Barratie"] = Vector3.new(-3912, 6, -5614)
    }

    local npcFarming = {}

    local bossFarming = ""

    local styles = {
        ["Melee"] = function(npc)
            local A_1 = {
                [1] = "damage",
                [2] = npc.HumanoidRootPart,
                [3] = "Melee",
                [4] = {
                    [1] = sequence,
                    [2] = "Ground",
                    [3] = "Melee"
                }
            }
            EventCombat:InvokeServer(A_1)
        end,
        ["Rokushiki"] = function(npc)
            local A_1 = {
                [1] = "damage",
                [2] = npc.HumanoidRootPart,
                [3] = "Melee",
                [4] = {
                    [1] = sequence,
                    [2] = "Ground",
                    [3] = "Melee"
                }
            }
            EventCombat:InvokeServer(A_1)
        end,
        ["BlackLeg"] = function(npc)
            local args = {
                [1] = {
                    [1] = "damage",
                    [2] = npc.HumanoidRootPart,
                    [3] = "BlackLeg",
                    [4] = {
                        [1] = sequence,
                        [2] = "Ground",
                        [3] = "BlackLeg"
                    }
                }
            }
            EventCombat:InvokeServer(unpack(args))
        end,
        ["Katana"] = function(npc)
            local A_1 = {
                [1] = "damage",
                [2] = npc.HumanoidRootPart,
                [3] = "Sword",
                [4] = {
                    [1] = sequence,
                    [2] = "Ground",
                    [3] = "Sword"
                }
            }
            EventCombat:InvokeServer(A_1)
        end,
        ["Electro"] = function(npc)
            local A_1 = {
                [1] = "damage",
                [2] = npc.HumanoidRootPart,
                [3] = "Melee",
                [4] = {
                    [1] = sequence,
                    [2] = "Ground",
                    [3] = "Melee"
                }
            }
            EventCombat:InvokeServer(A_1)
        end,
        ["Kiribachi"] = function(npc)
            local A_1 = {
                [1] = "damage",
                [2] = npc.HumanoidRootPart,
                [3] = "Sword",
                [4] = {
                    [1] = sequence,
                    [2] = "Ground",
                    [3] = "Sword"
                }
            }
            EventCombat:InvokeServer(A_1)
        end,
        ["Candy Cane"] = function(npc)
            local A_1 = {
                [1] = "damage",
                [2] = npc.HumanoidRootPart,
                [3] = "Sword",
                [4] = {
                    [1] = sequence,
                    [2] = "Ground",
                    [3] = "Sword"
                }
            }
            EventCombat:InvokeServer(A_1)
        end,
        ["Santa's Bells"] = function(npc)
            local A_1 = {
                [1] = "damage",
                [2] = npc.HumanoidRootPart,
                [3] = "Sword",
                [4] = {
                    [1] = sequence,
                    [2] = "Ground",
                    [3] = "Sword"
                }
            }

            EventCombat:InvokeServer(A_1)
        end,
        ["Golden Staff"] = function(npc)
            local A_1 = {
                [1] = "damage",
                [2] = npc.HumanoidRootPart,
                [3] = "Sword",
                [4] = {
                    [1] = sequence,
                    [2] = "Ground",
                    [3] = "Sword"
                }
            }

            EventCombat:InvokeServer(A_1)
        end
    }

    local function getStyle(name)
        for _, v in pairs(player.Backpack:GetChildren()) do
            if v:IsA("Tool") and v.Name == name then
                styleSeletect[1] = v.Name
                styleSeletect[2] = v
                return true
            end
        end
        for _, v in pairs(player.Character:GetChildren()) do
            if v:IsA("Tool") and v.Name == name then
                styleSeletect[1] = v.Name
                styleSeletect[2] = v
                return true
            end
        end
        styleSeletect[2] = nil
        return false
    end

    local function getStyleEquiped()
        for _, v in pairs(player.Character:GetChildren()) do
            if v:IsA("Tool") and styles[v.Name] then
                styleSeletect[1] = v.Name
                styleSeletect[2] = v
                return true
            end
        end
        styleSeletect[2] = nil
        return false
    end

    local function getClosestNpc()
        local distancenNow = nil
        for i, v in pairs(NPC:GetChildren()) do
            if npcFarming[v.Name] then
                local c =
                    (v.HumanoidRootPart.Position - player.Character:WaitForChild("HumanoidRootPart").Position).magnitude
                if distancenNow == nil then
                    distancenNow = c
                    npcFocused = v
                elseif c < distancenNow then
                    distancenNow = c
                    npcFocused = v
                end
            end
        end

        sequence = 1
        hitCooldown = time()
        radius = 13
    end

    local function checkTrigered()
        local amount = 0
        local npcGot = nil
        for i, v in pairs(NPC:GetChildren()) do
            if npcFarming[v.Name] then
                if
                    v:FindFirstChild("Info") and v.Info:FindFirstChild("Target") and v.Info.Target.Value and
                        v.Info.Target.Value == player.Character:WaitForChild("HumanoidRootPart")
                 then
                    amount = amount + 1
                    npcGot = v
                end
            end
        end
        if amount == 1 then
            npcFocused = npcGot
        end
    end

    local function getXAndZPositions(angle)
        local x = math.cos(angle) * radius
        local z = math.sin(angle) * radius
        return x, z
    end

    local function getNextCaptian()
        local s = ships:FindFirstChild(player.Name .. "Ship")
        if not s then
            return
        end
        local rp = s:FindFirstChild("HumanoidRootPart")
        if not rp then
            return
        end
        for _, v in pairs(captiansQueue) do
            local rpCap = v:FindFirstChild("HumanoidRootPart")
            if not rpCap then
                return
            end
            if (rp.Position - rpCap.Position).magnitude <= marineFarmDistance then
                actualCaptain = v
                sequence = 1
                nextCaptian = false
                break
            end
        end
    end

    local function foundChild(child)
        for i = 1, #captiansQueue do
            if captiansQueue[i] == child then
                return i
            end
        end
    end

    local function foundShip(child)
        for i = 1, #shipsQueue do
            if shipsQueue[i] == child then
                return i
            end
        end
    end

    local function backacpkFruits()
        for _, v in pairs(backpack:GetChildren()) do
            if v:IsA("Tool") and table.find(fruits, v.Name) and not string.find(inventoryItems.Value, v.Name) then
                return v
            end
        end
        return nil
    end

    local function removeTraps()
        local folder = workspace:FindFirstChild("hitsbox") or nil
        if folder then
            folder:Destroy()
        end
    end

    local function createTrap(rp, humanoid)
        local part1 = Instance.new("Part", folder)
        local part2 = Instance.new("Part", folder)
        local part3 = Instance.new("Part", folder)
        local part4 = Instance.new("Part", folder)

        part1.Name = "HITBOXNPCS"
        part1.Anchored = true
        part1.Size = Vector3.new(10, 20, 5)
        part1.Transparency = 0
        part1.CanCollide = true

        part2.Name = "HITBOXNPCS"
        part2.Anchored = true
        part2.Size = Vector3.new(10, 20, 5)
        part2.Transparency = 0
        part2.CanCollide = true

        part3.Name = "HITBOXNPCS"
        part3.Anchored = true
        part3.Size = Vector3.new(10, 20, 5)
        part3.Transparency = 0
        part3.CanCollide = true

        part4.Name = "HITBOXNPCS"
        part4.Anchored = true
        part4.Size = Vector3.new(10, 20, 5)
        part4.Transparency = 0
        part4.CanCollide = true

        local npcSize = humanoid.HipHeight
        local Heightnpc = (0.5 * rp.Size.Y) + npcSize

        local part5 = Instance.new("Part", folder)
        part5.Name = "HITBOXNPCS"
        part5.Anchored = true
        part5.Size = Vector3.new(20, 2, 20)
        part5.Transparency = 0
        part5.CanCollide = true

        local part6 = Instance.new("Part", folder)
        part6.Name = "HITBOXNPCS"
        part6.Anchored = true
        part6.Size = Vector3.new(20, 2, 20)
        part6.Transparency = 0
        part6.CanCollide = true

        part1.CFrame = CFrame.new(rp.CFrame.p - rp.CFrame.lookVector * 3, rp.Position)
        part2.CFrame = CFrame.new(rp.CFrame.p - (-rp.CFrame.lookVector * 3), rp.Position)
        part3.CFrame = CFrame.new(rp.CFrame.p - rp.CFrame.RightVector * 3, rp.Position)
        part4.CFrame = CFrame.new(rp.CFrame.p - (-rp.CFrame.RightVector * 3), rp.Position)
        part5.CFrame = CFrame.new(Vector3.new(rp.Position.X, (rp.Position.Y - Heightnpc) - 2, rp.Position.Z))
        part6.CFrame = CFrame.new(Vector3.new(rp.Position.X, (rp.Position.Y + Heightnpc) + 10, rp.Position.Z))
    end

    local function getBossHelpers()
        for i, v in pairs(NPC:GetChildren()) do
            if v.Name == bossList[bossFarming][2] then
                if v:FindFirstChild("HumanoidRootPart") then
                    v.Humanoid.PlatformStand = true
                    v:WaitForChild("HumanoidRootPart").Position = Vector3.new(10122, 1781, -9984)
                    if not bossList[bossFarming].traped then
                        v:WaitForChild("HumanoidRootPart").Anchored = true
                        v:WaitForChild("HumanoidRootPart").CFrame =
                            v:WaitForChild("HumanoidRootPart").CFrame * CFrame.Angles(180, 0, 0)
                    end
                    v:WaitForChild("HumanoidRootPart").Position = Vector3.new(10122, 1781, -9984)
                end
            end
        end
        bossList[bossFarming].traped = true
    end

    local scriptFunctions
    scriptFunctions = {
        ["Auto Style"] = {
            false,
            function()
                while runService.Heartbeat:Wait() and game.CoreGui[randomTitle] and scriptFunctions["Auto Style"][1] do
                    if styleSeletect[2] ~= nil then
                        if styleSeletect[2].Parent == nil and player.Character.Parent == characterFolders then
                            getStyle(styleSeletect[1])
                        end
                    elseif styleSeletect[2] == nil then
                        getStyle(styleSeletect[1])
                    end
                    if not fruitGot and styleSeletect[2] and styleSeletect[2].Parent ~= player.Character then
                        pcall(
                            function()
                                player.Character:WaitForChild("Humanoid"):EquipTool(styleSeletect[2])
                            end
                        )
                    end
                end
            end
        },
        ["Auto Npc"] = {
            false,
            function()
                while runService.Heartbeat:Wait() and game.CoreGui[randomTitle] and scriptFunctions["Auto Npc"][1] do
                    if
                        player.Character.Parent == characterFolders and
                            not player.Character:FindFirstChild("SafeForceField")
                     then
                        pcall(
                            function()
                                if not npcFocused or npcFocused.Parent ~= NPC then
                                    getClosestNpc()
                                end

                                if scriptFunctions["Auto Quest"][1] then
                                    scriptFunctions["Auto Quest"][2]()
                                end
                            end
                        )

                        if npcFocused and npcFocused.Parent == NPC then
                            pcall(
                                function()
                                    local npcRp = npcFocused:FindFirstChild("HumanoidRootPart")
                                    if npcRp then
                                        local distance =
                                            (npcRp.Position - player.Character:WaitForChild("HumanoidRootPart").Position).magnitude
                                        local timeTween = distance / speedAutoFarm
                                        local angle = 4 * (fullCircle / 4)
                                        local x, z = getXAndZPositions(angle)
                                        local position = (npcRp.CFrame * CFrame.new(x, 0, z)).p
                                        local lookAt = npcRp.Position
                                        tweenGlobal =
                                            tweenService:Create(
                                            player.Character:WaitForChild("HumanoidRootPart"),
                                            TweenInfo.new(
                                                timeTween,
                                                Enum.EasingStyle.Linear,
                                                Enum.EasingDirection.InOut
                                            ),
                                            {
                                                CFrame = CFrame.new(position, lookAt)
                                            }
                                        )
                                        tweenGlobal:Play()
                                        tweenGlobal.Completed:Wait()
                                        timeTween = nil
                                        angle = nil
                                        x, z = nil
                                        position = nil
                                        lookAt = nil
                                        npcRp = nil

                                        if time() - hitCooldown > 2 then
                                            radius = 3.2
                                            if distance <= 5 then
                                                checkTrigered()
                                                if styleSeletect[2] then
                                                    styles[styleSeletect[1]](npcFocused)
                                                else
                                                    if getStyleEquiped() then
                                                        styles[styleSeletect[1]](npcFocused)
                                                    end
                                                end
                                                sequence = sequence + 1
                                                if sequence == 5 then
                                                    sequence = 1
                                                    radius = 13
                                                    hitCooldown = time()
                                                end
                                            end
                                        end
                                        distance = nil
                                    end
                                end
                            )
                        end
                    else
                        if tweenGlobal then
                            tweenGlobal:Cancel()
                        end
                    end
                end
            end
        },
        ["Auto Quest"] = {
            false,
            function()
                if quests.CurrentQuest.Value == "None" and questDoing[1] then
                    if player.QuestCD.Value then
                        return
                    end

                    local questNpc
                    local s, e =
                        pcall(
                        function()
                            questNpc = NPC[questList[questDoing[1]][1]]
                        end
                    )
                    if not s then
                        return
                    end

                    local distance =
                        (questNpc.HumanoidRootPart.Position - player.Character:WaitForChild("HumanoidRootPart").Position).magnitude
                    local timeTween = distance / speedAutoFarm
                    tweenGlobal =
                        tweenService:Create(
                        player.Character:WaitForChild("HumanoidRootPart"),
                        TweenInfo.new(timeTween, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                        {
                            CFrame = questNpc.HumanoidRootPart.CFrame - Vector3.new(3, 0, 3)
                        }
                    )
                    tweenGlobal:Play()
                    tweenGlobal.Completed:Wait()
                    local A_1 = {
                        [1] = "takequest",
                        [2] = questList[questDoing[1]][2]
                    }
                    EventQuest:InvokeServer(A_1)
                    A_1 = nil
                    questNpc = nil
                    s, e = nil, nil
                    distance = nil
                    timeTween = nil
                end
            end
        },
        ["Marine Ships"] = {
            false,
            function()
                if not ships:FindFirstChild(player.Name .. "Ship") then
                    EventShip:InvokeServer()
                end

                while runService.Heartbeat:Wait() and game.CoreGui[randomTitle] and scriptFunctions["Marine Ships"][1] do
                    local s, e =
                        pcall(
                        function()
                            player.Character:WaitForChild("HumanoidRootPart").Velocity = Vector3.new(0, 0, 0)
                            player.Character:WaitForChild("Humanoid"):ChangeState(14)
                            if not actualCaptain then
                                getNextCaptian()
                            end

                            if actualCaptain and actualCaptain.Parent == nil then
                                if table.find(captiansQueue, actualCaptain) then
                                    table.remove(captiansQueue, foundChild(actualCaptain))
                                end
                                if tweenGlobal and tweenGlobal.PlaybackState == Enum.PlaybackState.Playing then
                                    tweenGlobal:Cancel()
                                end
                                actualCaptain = nil
                                sequence = 1
                                getNextCaptian()
                            end

                            if player.Character:WaitForChild("Humanoid").Sit then
                                player.Character:WaitForChild("Humanoid").Sit = false
                            end

                            if actualCaptain then
                                local captainRp = actualCaptain:FindFirstChild("HumanoidRootPart") or nil
                                if captainRp then
                                    local distance =
                                        (player.Character:WaitForChild("HumanoidRootPart").Position - captainRp.Position).magnitude
                                    local timeTween = distance / speedMarineShip
                                    tweenGlobal =
                                        tweenService:Create(
                                        player.Character:WaitForChild("HumanoidRootPart"),
                                        TweenInfo.new(timeTween, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                                        {
                                            CFrame = captainRp.CFrame * CFrame.new(0, 0, 3)
                                        }
                                    )
                                    tweenGlobal:Play()
                                    wait(0.01)
                                    if distance < 6 then
                                        if styleSeletect[2] then
                                            styles[styleSeletect[1]](actualCaptain)
                                        else
                                            if getStyleEquiped() then
                                                styles[styleSeletect[1]](actualCaptain)
                                            end
                                        end
                                        sequence = sequence + 1
                                        if sequence == 5 then
                                            sequence = 1
                                        end
                                    end
                                end
                            end
                        end
                    )

                    if not s then
                        warn(e)
                        sequence = 1
                        actualCaptain = nil
                        if tweenGlobal and tweenGlobal.PlaybackState == Enum.PlaybackState.Playing then
                            tweenGlobal:Cancel()
                        end
                        getNextCaptian()
                    end
                end
            end
        },
        ["Water walk"] = {
            false,
            function()
                local part = Instance.new("Part")
                part.Name = "walkWater"
                part.Size = water.Size + Vector3.new(0, 50, 0)
                part.Anchored = true
                part.CanCollide = true
                part.Transparency = 1
                part.Position = water.Position - Vector3.new(0, 25, 0)
                part.Parent = workspace
                while runService.Heartbeat:Wait() and game.CoreGui[randomTitle] and scriptFunctions["Water walk"][1] and
                    part do
                    part.Position = water.Position - Vector3.new(0, 25, 0)
                end
                part:Destroy()
            end
        },
        ["Auto store"] = {
            false,
            function()
                while runService.Heartbeat:Wait() and game.CoreGui[randomTitle] and scriptFunctions["Auto store"][1] do
                    local f = backacpkFruits()
                    if f then
                        local date_log = os.date("%x")
                        local time_log = os.date("%X")
                        msg = {
                            ["embeds"] = {
                                {
                                    ["color"] = 13708129,
                                    ["description"] = "__**A Fruit Has Been Stored!**__ " ..
                                        "__**\nDate:**__ " .. date_log .. "__**\nTime:**__ " .. time_log,
                                    ["author"] = {
                                        ["name"] = "- Fruit Notifier -"
                                    }
                                }
                            }
                        }

                        local response =
                            syn.request(
                            {
                                Url = getgenv().web_url,
                                Method = "POST",
                                Headers = {
                                    ["Content-Type"] = "application/json"
                                },
                                Body = game:GetService("HttpService"):JSONEncode(msg)
                            }
                        )
                        fruitGot = true
                        player.Character:WaitForChild("Humanoid"):EquipTool(f)
                        EventStoreFruits:InvokeServer()
                        repeat
                            runService.Heartbeat:Wait()
                        until not game.CoreGui[randomTitle] or not scriptFunctions["Auto store"][1] or f == nil or
                            f.Parent == nil
                        fruitGot = false
                    end
                    runService.Heartbeat:Wait()
                end
            end
        },
        ["Auto Buso"] = {
            false,
            function()
                while runService.Heartbeat:Wait() and game.CoreGui[randomTitle] and scriptFunctions["Auto Buso"][1] do
                    if statsPlayer:FindFirstChild("BusoBar") then
                        local maxHaki = statsPlayer:FindFirstChild("BusoBar")
                        if maxHaki and maxHaki.MaxValue > 0 then
                            if maxHaki.Value == maxHaki.MaxValue then
                                local A_1 = "Buso"
                                EventHaki:FireServer(A_1)
                            end
                        end
                    end
                end
            end
        },
        ["Anti fall Damage"] = {
            false,
            function()
                while runService.Heartbeat:Wait() and game.CoreGui[randomTitle] and
                    scriptFunctions["Anti fall Damage"][1] do
                    if
                        player.Character:FindFirstChild("FallDamage") and
                            not player.Character:FindFirstChild("FallDamage").Disabled
                     then
                        player.Character:FindFirstChild("FallDamage").Disabled = true
                    end
                end
                if
                    player.Character:FindFirstChild("FallDamage") and
                        not player.Character:FindFirstChild("FallDamage").Disabled
                 then
                    player.Character:FindFirstChild("FallDamage").Disabled = false
                end
            end
        },
        ["NoClip"] = {
            false,
            function()
                local partLol = Instance.new("Part", workspace)
                partLol.CanCollide = true
                partLol.Anchored = true
                partLol.Name = "TRAVEL BOYI"
                partLol.Size = Vector3.new(25, 2, 25)
                partLol.Transparency = 1
                partLol.CFrame =
                    CFrame.new(
                    Vector3.new(
                        player.Character:WaitForChild("HumanoidRootPart").Position.X,
                        (player.Character:WaitForChild("HumanoidRootPart").Position.Y - Height) - 1,
                        player.Character:WaitForChild("HumanoidRootPart").Position.Z
                    )
                )
                while runService.Heartbeat:Wait() and game.CoreGui[randomTitle] and scriptFunctions["NoClip"][1] and
                    getgenv().noclip == true do
                    partLol.CFrame =
                        CFrame.new(
                        Vector3.new(
                            player.Character:WaitForChild("HumanoidRootPart").Position.X,
                            (player.Character:WaitForChild("HumanoidRootPart").Position.Y - Height) - 1,
                            player.Character:WaitForChild("HumanoidRootPart").Position.Z
                        )
                    )
                end
                partLol:Destroy()
            end
        },
        ["Auto Boss"] = {
            false,
            function()
                local distance =
                    (player.Character:WaitForChild("HumanoidRootPart").Position - bossList[bossFarming][3]).magnitude
                local timeTween = distance / speedAutoFarm
                tweenGlobal =
                    tweenService:Create(
                    player.Character:WaitForChild("HumanoidRootPart"),
                    TweenInfo.new(timeTween, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                    {
                        CFrame = CFrame.new(bossList[bossFarming][3])
                    }
                )
                tweenGlobal:Play()
                tweenGlobal.Completed:Wait()
                while runService.Heartbeat:Wait() and game.CoreGui[randomTitle] and scriptFunctions["Auto Boss"][1] do
                    if
                        player.Character.Parent == characterFolders and
                            not player.Character:FindFirstChild("SafeForceField")
                     then
                        if not npcFocused or npcFocused.Name ~= bossFarming then
                            if NPC:FindFirstChild(bossFarming) then
                                npcFocused = NPC:FindFirstChild(bossFarming)
                            end
                        end

                        pcall(
                            function()
                                if scriptFunctions["Auto Quest"][1] then
                                    scriptFunctions["Auto Quest"][2]()
                                end
                            end
                        )
                        if npcFocused and npcFocused.Name == bossFarming then
                            local rp = npcFocused:FindFirstChild("HumanoidRootPart") or nil
                            if rp then
                                if not bossList[bossFarming].traped then
                                    npcFocused:FindFirstChild("Humanoid").PlatformStand = true
                                    rp.CFrame = rp.CFrame * CFrame.Angles(180, 0, 0)
                                end
                                getBossHelpers()
                                if not bossList[bossFarming][4](rp) then
                                    local distance =
                                        (player.Character:WaitForChild("HumanoidRootPart").Position - rp.Position).magnitude
                                    local timeTween = distance / speedAutoFarm
                                    tweenGlobal =
                                        tweenService:Create(
                                        player.Character:WaitForChild("HumanoidRootPart"),
                                        TweenInfo.new(timeTween, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                                        {
                                            CFrame = rp.CFrame * CFrame.new(0, 5, 0)
                                        }
                                    )
                                    tweenGlobal:Play()
                                    wait(0.01)
                                    if distance <= 5 then
                                        if styleSeletect[2] then
                                            styles[styleSeletect[1]](npcFocused)
                                        else
                                            if getStyleEquiped() then
                                                styles[styleSeletect[1]](npcFocused)
                                            end
                                        end
                                        sequence = sequence + 1
                                        if sequence == 5 then
                                            sequence = 1
                                        end
                                    end
                                end
                            end
                        else
                            local distance =
                                (player.Character:WaitForChild("HumanoidRootPart").Position - bossList[bossFarming][3]).magnitude
                            local timeTween = distance / speedAutoFarm
                            tweenGlobal =
                                tweenService:Create(
                                player.Character:WaitForChild("HumanoidRootPart"),
                                TweenInfo.new(timeTween, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                                {
                                    CFrame = CFrame.new(bossList[bossFarming][3])
                                }
                            )
                            tweenGlobal:Play()
                            tweenGlobal.Completed:Wait()
                        end
                    end
                end
                removeTraps()
            end
        }
    }

    local function teleportFunction(position) ---
        --[[
tpIsland = false
spawn(function()
    antiFallButton:SetState(true)
end)
local distance = (player.Character:WaitForChild("HumanoidRootPart").Position - position).magnitude
local timeTween = distance / speedIslandTp
tpIsland = true
spawn(function()
    while runService.Heartbeat:Wait() and game.CoreGui[randomTitle] and tpIsland do
        player.Character:WaitForChild("HumanoidRootPart").Velocity = Vector3.new(0,0,0)
    end
end)
tweenGlobal = tweenService:Create(player.Character:WaitForChild("HumanoidRootPart"),TweenInfo.new(timeTween,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),{
    CFrame = CFrame.new(position)
})
tweenGlobal:Play()	
tweenGlobal.Completed:Wait()
tpIsland = false
distance = nil
timeTween = nil	
]] tweenService,
            tweenInfo =
            game:GetService("TweenService"),
            TweenInfo.new(
                (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(position)).magnitude /
                    getgenv().tpFuncSpeed
            )
        tween =
            tweenService:Create(
            game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart,
            tweenInfo,
            {Position = Vector3.new(position)}
        )
        tween:Play()
    end

    local function foundCliped(child)
        for i = 1, #partsNoClipped do
            if partsNoClipped[i] == child then
                return i
            end
        end
    end

    local connections = {
        npcRemoved = NPC.ChildRemoved:Connect(
            function(child)
                if child == npcFocused then
                    npcFocused = nil
                end
                if table.find(captiansQueue, child) then
                    if child == actualCaptain then
                        actualCaptain = nil
                        nextCaptian = true
                    end
                    table.remove(captiansQueue, foundChild(child))
                end
            end
        ),
        npcAdded = NPC.ChildAdded:Connect(
            function(child)
                if
                    scriptFunctions["Marine Ships"][1] and not table.find(captiansQueue, child) and
                        (child.Name == "Pirate Captain" or child.Name == "Marine Captain") and
                        child:WaitForChild("Info"):WaitForChild("Hostile").Value
                 then
                    table.insert(captiansQueue, child)
                end
            end
        ),
        antiAfk = player.Idled:Connect(
            function()
                vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
                wait(1)
                vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
            end
        ),
        shipPlayer = ships.ChildRemoved:Connect(
            function(child)
                if child.Name == player.Name .. "Ship" and scriptFunctions["Marine Ships"][1] then
                    if respawnShip then
                        if tweenGlobal and tweenGlobal.PlaybackState == Enum.PlaybackState.Playing then
                            tweenGlobal:Cancel()
                        end
                        actualCaptain = nil
                        tweenGlobal =
                            tweenService:Create(
                            player.Character:WaitForChild("HumanoidRootPart"),
                            TweenInfo.new(
                                (player.Character:WaitForChild("HumanoidRootPart").Position - respawnShip.p).magnitude /
                                    35,
                                Enum.EasingStyle.Linear,
                                Enum.EasingDirection.InOut
                            ),
                            {
                                CFrame = respawnShip
                            }
                        )
                        tweenGlobal:Play()
                        tweenGlobal.Completed:Wait()
                        if scriptFunctions["Marine Ships"][1] then
                            EventShip:InvokeServer()
                        end
                    else
                        EventShip:InvokeServer()
                    end
                end
            end
        ),
        shipPlayerAdded = ships.ChildAdded:Connect(
            function(child)
                if child.Name == player.Name .. "Ship" and scriptFunctions["Marine Ships"][1] then
                    child:WaitForChild("HumanoidRootPart").Anchored = true
                end
            end
        ),
        died = player.CharacterAdded:Connect(
            function(character)
                if character.Parent == nil then
                    character.AncestryChanged:Wait()
                end
                weldBox.Part1 = character:WaitForChild("HumanoidRootPart")
            end
        ),
        noClip = hitBox.Touched:Connect(
            function(partTouched)
                if
                    scriptFunctions["NoClip"][1] and not partTouched:IsDescendantOf(player.Character) and
                        partTouched.Name ~= "TRAVEL BOYI" and
                        partTouched.Name ~= "walkWater" and
                        partTouched.CanCollide and
                        partTouched.Name ~= "HITBOXNPCS"
                 then
                    if not table.find(partsNoClipped, partTouched) then
                        table.insert(partsNoClipped, partTouched)
                        partTouched.CanCollide = false
                    end
                elseif table.find(partsNoClipped, partTouched) and not scriptFunctions["NoClip"][1] then
                    partTouched.CanCollide = true
                end
            end
        )
    }

    --UI STARTS-----------------------------------------------------------------------------------

    local Player_Tab =
        UI.New(
        {
            Title = "Player"
        }
    )

    local Misc_Tab =
        UI.New(
        {
            Title = "Misc"
        }
    )

    local Farm_Tab =
        UI.New(
        {
            Title = "Farm"
        }
    )

    local MFarm_Tab =
        UI.New(
        {
            Title = "Mob-Farm"
        }
    )

    local SFarm_Tab =
        UI.New(
        {
            Title = "Ship-Farm"
        }
    )

    local Fun_Tab =
        UI.New(
        {
            Title = "Fun"
        }
    )

    local Server_Tab =
        UI.New(
        {
            Title = "Server"
        }
    )

    local Settings_Tab =
        UI.New(
        {
            Title = "Settings"
        }
    )
    --PLAYERS TAB-----------------------------------------------------------------------
    Player_Tab.Dropdown(
        {
            Text = "Select Style",
            Callback = function(value)
                if not getStyle(value) then
                    UI.Banner(
                        {
                            Text = "You dont have " .. value
                        }
                    )
                    error("no")
                    return
                end
            end,
            Options = {
                "Melee",
                "Rokushiki",
                "BlackLeg",
                "Katana",
                "Electro",
                "Kiribachi",
                "Candy Cane",
                "Santa's Bells",
                "Golden Staff"
            }
        }
    )

    Player_Tab.Toggle(
        {
            Text = "Auto Equip",
            Callback = function(value)
                getgenv().autoEquip = false
                getgenv().autoEquip = value
                scriptFunctions["Auto Style"][1] = value
                if value then
                    scriptFunctions["Auto Style"][2]()
                end
            end,
            Enabled = false
        }
    )

    Player_Tab.Toggle(
        {
            Text = "Freeze Water",
            Callback = function(value)
                scriptFunctions["Water walk"][1] = value
                if value then
                    scriptFunctions["Water walk"][2]()
                end
            end,
            Enabled = false
        }
    )

    Player_Tab.Toggle(
        {
            Text = "Noclip",
            Callback = function(value)
                getgenv().noclip = false
                getgenv().noclip = value
                scriptFunctions["NoClip"][1] = value
                if value then
                    scriptFunctions["NoClip"][2]()
                else
                    for i, v in pairs(partsNoClipped) do
                        v.CanCollide = true
                        table.remove(partsNoClipped, i)
                    end
                end
            end,
            Enabled = getgenv().noclip
        }
    )

    Player_Tab.Toggle(
        {
            Text = "Prevent Drown",
            Callback = function(bool)
                getgenv().PD = false
                getgenv().PD = bool

                game.Workspace.Env.InvisSandd.Touched:Connect(
                    function()
                        if getgenv().PD == true then
                            local work = game:GetService("Workspace")
                            local waterss = work:WaitForChild("Effects"):WaitForChild("Water")
                            local waterplat = Instance.new("Part")
                            local waterplat2 = Instance.new("Part")
                            waterplat.Name = "walked"
                            waterplat.Size =
                                Vector3.new(
                                999999999999999999999999999999999999999999999999999999999999999999,
                                193.9,
                                999999999999999999999999999999999999999999999999999999999999999999
                            )
                            waterplat.Anchored = true
                            waterplat.CanCollide = true
                            waterplat.Position = game.Players.LocalPlayer.Character.LeftFoot.Position
                            waterplat.Parent = work
                            waterplat.Transparency = 1

                            waterplat2.Name = "walkedd"
                            waterplat2.Size =
                                Vector3.new(
                                999999999999999999999999999999999999999999999999999999999999999999,
                                193.9,
                                999999999999999999999999999999999999999999999999999999999999999999
                            )
                            waterplat2.Anchored = true
                            waterplat2.CanCollide = true
                            waterplat2.Position = game.Players.LocalPlayer.Character.RightFoot.Position
                            waterplat2.Parent = work
                            waterplat2.Transparency = 1
                            wait(10)
                            work.walked:Destroy()
                            work.walkedd:Destroy()
                        end
                    end
                )
            end,
            Enabled = getgenv().PD
        }
    )

    Player_Tab.Toggle(
        {
            Text = "Reduce Lag",
            Callback = function(bool)
                getgenv().RL = false
                getgenv().RL = bool
                spawn(
                    function()
                        while getgenv().RL == true do
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position =
                                game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 0, 0)
                        end
                    end
                )
            end,
            Enabled = true
        }
    )

    Player_Tab.Button(
        {
            Text = "Anti Knock",
            Callback = function()
                local metatable = getrawmetatable(game)
                local namecall = metatable.__namecall
                setreadonly(metatable, false)

                metatable.__namecall =
                    newcclosure(
                    function(self, ...)
                        if self.Name == "KnockedOut" then
                            return nil
                        end
                        return namecall(self, ...)
                    end
                )
            end
        }
    )

    Player_Tab.Button(
        {
            Text = "Check Attempts",
            Callback = function()
                local local_player_name = game:GetService("Players").LocalPlayer.Name
                local attempts_check =
                    game:GetService("ReplicatedStorage")["Stats" .. local_player_name].Stats.Attempts.Value
                UI.Banner(
                    {
                        Text = ("Attempt(s): " .. attempts_check)
                    }
                )
            end
        }
    )

    Player_Tab.Button(
        {
            Text = "Infinite Roll",
            Callback = function()
                local metatable = getrawmetatable(game)
                local namecall = metatable.__namecall
                setreadonly(metatable, false)

                metatable.__namecall =
                    newcclosure(
                    function(self, ...)
                        if self.Name == "takestam" then
                            return 0
                        end
                        return namecall(self, ...)
                    end
                )
            end
        }
    )

    Player_Tab.Button(
        {
            Text = "No Fall Damage",
            Callback = function()
                local game_metatable = getrawmetatable(game) -- the universal metatable used by all Instance userdata
                local namecall_original = game_metatable.__namecall -- the original __namecall method that we will be using inside our hook
                local remote_event = Instance.new("RemoteEvent") -- a guinea-pig remote we will be using for its access to the FireServer method
                local fireserver_original = game.ReplicatedStorage.Events.FallDmg
                setreadonly(game_metatable, false) -- allows us to modify the game's metatable
                game_metatable.__namecall =
                    newcclosure(
                    function(self, ...) -- the actual metatable hook
                        local method = self.Name -- gets the method name (as a string)
                        local script = getcallingscript() -- gets the script that fired the method (as an instance)
                        return namecall_original(self, ...) -- calls and returns the original namecall so roblox doesn't commit self die
                    end
                )
                fireserver_original =
                    hookfunction(
                    remote_event.FireServer,
                    newcclosure(
                        function(self, method, ...) -- hooks the FireServer method (to cover our asses when people do RemoteEvent.FireServer(RemoteEvent))
                            -- no need for a `getnamecallmethod()` as it is passed along as an argument above (still a string)
                            local script = getcallingscript() -- same as the namecall hook
                            return fireserver_original(self, ...) -- calls and returns the original method so roblox doesn't commit self die
                        end
                    )
                )
            end
        }
    )

    Player_Tab.Button(
        {
            Text = "No Drown",
            Callback = function()
                local metatable = getrawmetatable(game)
                local namecall = metatable.__namecall
                setreadonly(metatable, false)

                metatable.__namecall =
                    newcclosure(
                    function(self, ...)
                        if self.Name == "swim" then
                            return nil
                        end
                        return namecall(self, ...)
                    end
                )
            end
        }
    )

    Player_Tab.Slider(
        {
            Text = "Jump Power",
            Callback = function(value)
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
            end,
            Min = 10,
            Max = 650,
            Def = 50
        }
    )
    Player_Tab.Slider(
        {
            Text = "WalkSpeed",
            Callback = function(value)
                pcall(
                    function()
                        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
                    end
                )
            end,
            Min = 10,
            Max = 150,
            Def = 16
        }
    )

    --MISC TAB---------------------------------------------------------------------------

    Misc_Tab.Button(
        {
            Text = "Chest ESP",
            Callback = function()
                for i, v in pairs(game.Workspace.Env:GetDescendants()) do
                    if v.ClassName == "Model" then
                        if v.Parent.ClassName == "Folder" then
                            local BillboardGui = Instance.new("BillboardGui")
                            local TextLabel = Instance.new("TextLabel")

                            BillboardGui.Parent = v
                            BillboardGui.AlwaysOnTop = true
                            BillboardGui.LightInfluence = 1
                            BillboardGui.Size = UDim2.new(0, 50, 0, 50)
                            BillboardGui.StudsOffset = Vector3.new(0, 2, 0)

                            TextLabel.Parent = BillboardGui
                            TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
                            TextLabel.BackgroundTransparency = 1
                            TextLabel.Size = UDim2.new(1, 0, 1, 0)
                            TextLabel.Text = "X"
                            TextLabel.TextColor3 = Color3.new(1, 1, 0)
                            TextLabel.TextScaled = true
                        end
                    end
                end
            end
        }
    )

    Misc_Tab.Button(
        {
            Text = "No Ship Crash Damage",
            Callback = function()
                local game_metatable = getrawmetatable(game) -- the universal metatable used by all Instance userdata
                local namecall_original = game_metatable.__namecall -- the original __namecall method that we will be using inside our hook
                local remote_event = Instance.new("RemoteEvent") -- a guinea-pig remote we will be using for its access to the FireServer method
                local fireserver_original = game.ReplicatedStorage.Events.ShipEvents.Rough
                setreadonly(game_metatable, false) -- allows us to modify the game's metatable
                game_metatable.__namecall =
                    newcclosure(
                    function(self, ...) -- the actual metatable hook
                        local method = self.Name -- gets the method name (as a string)
                        local script = getcallingscript() -- gets the script that fired the method (as an instance)
                        return namecall_original(self, ...) -- calls and returns the original namecall so roblox doesn't commit self die
                    end
                )
                fireserver_original =
                    hookfunction(
                    remote_event.FireServer,
                    newcclosure(
                        function(self, method, ...) -- hooks the FireServer method (to cover our asses when people do RemoteEvent.FireServer(RemoteEvent))
                            -- no need for a `getnamecallmethod()` as it is passed along as an argument above (still a string)
                            local script = getcallingscript() -- same as the namecall hook
                            return fireserver_original(self, ...) -- calls and returns the original method so roblox doesn't commit self die
                        end
                    )
                )
            end
        }
    )

    --FARM TAB-------------------------------------------------------------------------
    --FARM FARM--
    Farm_Tab.Toggle(
        {
            Text = "Haki Farm",
            Callback = function(hakibool)
                getgenv().hakitoggle = false
                getgenv().hakitoggle = hakibool
                local stat = game.Players.LocalPlayer.Name
                local LP = game:GetService("Players").LocalPlayer
                local VirtualUser = game:GetService "VirtualUser"
                game:GetService "Players".LocalPlayer.Idled:Connect(
                    function()
                        VirtualUser:CaptureController()
                        VirtualUser:ClickButton2(Vector2.new())
                    end
                )

                spawn(
                    function()
                        if
                            game:GetService("Players").LocalPlayer.PlayerGui.HUD.Buso.BBar.Visible == true and
                                getgenv().hakitoggle == true
                         then
                            while wait(0.1) do
                                pcall(
                                    function()
                                        if
                                            LP.PlayerGui.HUD.Buso.BBar.bar.AbsoluteSize ==
                                                LP.PlayerGui.HUD.Buso.BBar.AbsoluteSize and getgenv().hakitoggle == true
                                         then
                                            local buso = game.ReplicatedStorage["Stats" .. stat].Stats.BusoMastery.Value
                                            if buso >= 70000 then
                                                getgenv().hakitoggle = false
                                                game.StarterGui:SetCore(
                                                    "SendNotification",
                                                    {
                                                        Title = "Info",
                                                        Text = "Haki Is Already Maxed",
                                                        --Icon = "rbxassetid://57254792";
                                                        Duration = 5
                                                    }
                                                )
                                            else
                                                game:GetService("ReplicatedStorage").Events.Haki:FireServer("Buso")
                                                wait(1)
                                            end
                                        end
                                    end
                                )
                            end
                        else
                            if hakitoggle == true then
                                game.StarterGui:SetCore(
                                    "SendNotification",
                                    {
                                        Title = "Info",
                                        Text = "You Must Have Haki",
                                        --Icon = "rbxassetid://57254792";
                                        Duration = 5
                                    }
                                )
                            end
                        end
                    end
                )
            end,
            Enabled = false
        }
    )
    --MOB FARM--
    MFarm_Tab.Slider(
        {
            Text = "Auto Farm Speed",
            Callback = function(value)
                speedAutoFarm = value
            end,
            Min = 100,
            Max = 100,
            Def = 100
        }
    )

    MFarm_Tab.Toggle(
        {
            Text = "Mob Farm",
            Callback = function(value)
                scriptFunctions["Auto Npc"][1] = value
                if value then
                    scriptFunctions["Auto Npc"][2]()
                end
            end,
            Enabled = false
        }
    )

    MFarm_Tab.DataTable(
        {
            Text = "NPC List",
            Callback = function(data)
                for i, v in pairs(data) do
                    npcFarming[i] = v
                end
            end,
            Options = {
                Bandit = false,
                ["Bandit Boss"] = false,
                ["Desert Bandit"] = false,
                ["Lucid's Lad"] = false,
                ["Lucid's Righthand"] = false,
                ["Clown Pirate"] = false,
                Lucid = false,
                ["Krieg Pirate"] = false,
                ["Zou Inhabitant"] = false,
                ["Corrupt Marine"] = false,
                ["Monkey"] = false,
                ["Sky District Bandit"] = false,
                ["Castle Guard"] = false,
                ["Sky Guardian"] = false
            }
        }
    )

    MFarm_Tab.Toggle(
        {
            Text = "Auto Quest",
            Callback = function(value)
                scriptFunctions["Auto Quest"][1] = value
            end,
            Enabled = false
        }
    )

    MFarm_Tab.Dropdown(
        {
            Text = "Choose your quest",
            Callback = function(value)
                questDoing[1] = value
            end,
            Options = {
                "Bandits",
                "Bandit Boss",
                "Desert Bandits",
                "Lucid",
                "Krieg Pirates",
                "Corrupt Marines",
                "Zou Inhabitants",
                "Clown Pirate",
                "Sky district bandits",
                "Castle Guards",
                "Sky Guardians"
            }
        }
    )

    --SHIPFARM FARM--
    SFarm_Tab.Slider(
        {
            Text = "Farm Speed",
            Callback = function(value)
                speedMarineShip = value
            end,
            Min = 30,
            Max = 150,
            Def = 30
        }
    )

    SFarm_Tab.Slider(
        {
            Text = "Kill Aura",
            Callback = function(value)
                marineFarmDistance = value
            end,
            Min = 1000,
            Max = 1500,
            Def = 1000
        }
    )

    SFarm_Tab.Toggle(
        {
            Text = "Marine Ship Farm",
            Callback = function(value)
                scriptFunctions["Marine Ships"][1] = value
                if value then
                    scriptFunctions["Marine Ships"][2]()
                else
                    respawnShip = nil
                    if autoFarmButton then
                        autoFarmButton:SetText("Respawn ship Position")
                    end
                end
            end,
            Enabled = false
        }
    )

    SFarm_Tab.Toggle(
        {
            Text = "Anti Sit",
            Callback = function(seatbool)
                getgenv().seatd = false
                getgenv().seatd = seatbool

                local lpname = game:GetService("Players").LocalPlayer.Name
                function antiSit()
                    if game.Players.LocalPlayer.Character.Humanoid:GetState() == Enum.HumanoidStateType.Seated then
                        game.Players.LocalPlayer.Character.Humanoid.Jump = true
                    end
                end

                pcall(
                    function()
                        for i, v in pairs(game:GetService("Workspace").Ships:GetChildren()) do
                            if
                                v.Name == lpname .. "Ship" and
                                    game:GetService("Workspace").Ships:FindFirstChild(lpname .. "Ship")
                             then
                                if getgenv().seatd == true then
                                    v.PassengerSeat.Disabled = true
                                    v.VehicleSeat.Disabled = true
                                else
                                    v.PassengerSeat.Disabled = false
                                    v.VehicleSeat.Disabled = false
                                end
                            end
                        end
                    end
                )

                spawn(
                    function()
                        pcall(
                            function()
                                while wait(0.1) do
                                    if seatd == true then
                                        antiSit()
                                    end
                                end
                            end
                        )
                    end
                )
            end,
            Enabled = false
        }
    )
    --[[
function storeF()
local good_fruits = {"Mera", "Magu", "Hie", "Pika", "Bari", "Bomb", "Goro"}
pcall(function()
    game.Players.LocalPlayer.Backpack.ChildAdded:Connect(function(p1)
        wait()
        if getgenv().Fnotif == true then
            for i,fr in pairs(good_fruits) do
                if p1.Name == fr then
                    repeat
                        wait(1)
                        getgenv().ultimate_wait = 14
                        wait(2.5)
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(p1)
                        wait(4)
                        game.ReplicatedStorage.Events.FruitStorage:InvokeServer()
                        wait(2)
                        getgenv().ultimate_wait = 1
                        wait(1)
                    until not game.Players.LocalPlayer.Backpack:FindFirstChild(p1.Name)
                end
            end
        end
    end)
end)
end--]]
    SFarm_Tab.Toggle(
        {
            Text = "Auto Store Fruit",
            Callback = function(value)
                local s, res =
                    pcall(MarketPlaceService.UserOwnsGamePassAsync, MarketPlaceService, player.UserId, 12776768)
                if value and not res then
                    UI.Banner(
                        {
                            Text = "You dont have the bag gamepass"
                        }
                    )
                    autoStoreButton:SetState(false)
                end
                scriptFunctions["Auto store"][1] = value
                if value then
                    scriptFunctions["Auto store"][2]()
                end
            end,
            Enabled = false
        }
    )

    SFarm_Tab.TextField(
        {
            Text = "Stored Fruit Notifier (Insert Webhook Url)",
            Type = "Default",
            Callback = function(value)
                getgenv().web_url = value
            end
        }
    )

    --Island TAB----------------------------------------------------------------------------
    --[[Island_Tab.Slider({
Text = "Tween Speed",
Callback = function(value)
    getgenv().tpFuncSpeed = value
end,
Min = 1,
Max = 100,
Def = 30
})

Island_Tab.Dropdown({
Text = "Tween To",
Callback = function(Value)

if Value == "Shells" and getgenv().noclip == true then
    repeat
        wait(1)
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-538.452271, 16.5120239, -4441.57568)).magnitude/getgenv().tpFuncSpeed)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {Position = Vector3.new(-538.452271, 16.5120239, -4441.57568)})
        tween:Play()
    until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-538.452271, 16.5120239, -4441.57568)).magnitude <= 5 
elseif Value == "Orange" then
repeat
    tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-7005.22803, 22.6686096, -5381.98242)).magnitude/getgenv().tpFuncSpeed)
    tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {Position = Vector3.new(-7005.22803, 22.6686096, -5381.98242)})
    tween:Play()
until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-7005.22803, 22.6686096, -5381.98242)).magnitude <= 5 
elseif Value == "Orange" then
elseif Value == "Zou" then
    repeat
        wait(1)
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-4345.17188, 21.2927761, -2548.62109)).magnitude/getgenv().tpFuncSpeed)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {Position = Vector3.new(-4345.17188, 21.2927761, -2548.62109)})
        tween:Play()
    until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-4345.17188, 21.2927761, -2548.62109)).magnitude <= 5 
elseif Value == "Colosseum" then
    teleportFunction(islands["Colosseum"])
elseif Value == "Starter" then
    teleportFunction(islands["Starter"])
elseif Value == "Arlong" then
    repeat
        wait(1)
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(674.581055, 24.2770424, -13093.2871)).magnitude/getgenv().tpFuncSpeed)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {Position = Vector3.new(674.581055, 24.2770424, -13093.2871)})
        tween:Play()
    until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(674.581055, 24.2770424, -13093.2871)).magnitude <= 5 
elseif Value == "Sandora" then
    repeat
        wait(1)
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-1249.07007, 15.2598667, 1169.698)).magnitude/getgenv().tpFuncSpeed)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {Position = Vector3.new(-1249.07007, 15.2598667, 1169.698)})
        tween:Play()
    until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-1249.07007, 15.2598667, 1169.698)).magnitude <= 5 
elseif Value == "Sphinx" then
    teleportFunction(islands["Sphinx"])
elseif Value == "Mysterious" then
    teleportFunction(islands["Mysterius"])
elseif Value == "Sky island" then
    teleportFunction(islands["Sky island"])
elseif Value == "Roka" then
    teleportFunction(islands["Roka"])
elseif Value == "Kori" then
    teleportFunction(islands["Kori"])
elseif Value == "Marine" then
    teleportFunction(islands["Marine"])
elseif Value == "Barratie" then
    repeat
        wait(1)
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-3909.02417, 55.2226295, -5601.65625)).magnitude/getgenv().tpFuncSpeed)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {Position = Vector3.new(-3909.02417, 55.2226295, -5601.65625)})
        tween:Play()
    until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-3909.02417, 55.2226295, -5601.65625)).magnitude <= 5 
end
end,
Options = {
    "Shells",
    "Orange",
    "Zou",
    "Colosseum",
    "Starter",
    "Arlong",
    "Sandora",
    "Sphinx",
    "Mysterious",
    "Sky island",
    "Roka",
    "Kori",
    "Marine",
    "Barratie",
},
})
--]]
    --FUN TAB----------------------------------------------------------------------------
    Fun_Tab.TextField(
        {
            -- "number" or "string"
            Text = "Spectate Player",
            Type = "Default",
            Callback = function(value)
                getgenv().specPlayer = value
            end
        }
    )

    Fun_Tab.Button(
        {
            Text = "Spectate",
            Callback = function()
                game.Workspace.CurrentCamera.CameraSubject = game.Players[getgenv().specPlayer].Character.Humanoid
            end
        }
    )

    Fun_Tab.Button(
        {
            Text = "Unspectate",
            Callback = function()
                game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
            end
        }
    )

    --SERVER TAB---------------------------------------------------------------------------
    Server_Tab.Button(
        {
            Text = "First Sea",
            Callback = function()
                local tpservice = game:GetService("TeleportService")
                local rejoinplayer = game:GetService("Players").LocalPlayer
                local first_sea = 3978370137
                wait(0.5)
                tpservice:Teleport(first_sea, rejoinplayer)
            end
        }
    )

    Server_Tab.Button(
        {
            Text = "Menu",
            Callback = function()
                local tpservice = game:GetService("TeleportService")
                local rejoinplayer = game:GetService("Players").LocalPlayer
                local GPO_lobby = 1730877806
                wait(0.5)
                tpservice:Teleport(GPO_lobby, rejoinplayer)
            end
        }
    )
     --

    --[[ c:Button("Private Server",function()
local args = {
    [1] = getgenv().PS_Code
}

game:GetService("ReplicatedStorage").Events.reserved:InvokeServer(unpack(args))
end)]] Server_Tab.Button(
        {
            Text = "Rejoin",
            Callback = function()
                local tpservice = game:GetService("TeleportService")
                local rejoinplayer = game:GetService("Players").LocalPlayer
                wait(0.5)
                pcall(
                    function()
                        tpservice:Teleport(game.PlaceId, rejoinplayer)
                    end
                )
            end
        }
    )

    --SETTINGS TAB---------------------------------------------------------------------------
    Settings_Tab.Button(
        {
            Text = "Destroy",
            Callback = function()
                for _, v in pairs(connections) do
                    v:Disconnect()
                end
                for _, v in pairs(partsNoClipped) do
                    v.CanCollide = true
                end
                removeTraps()
                game.CoreGui[randomTitle]:Destroy()
                if workspace:FindFirstChild("walkWater") then
                    workspace.walkWater:Destroy()
                end
                if workspace:FindFirstChild("lololP2") then
                    workspace.lololP2:Destroy()
                end
                if workspace:FindFirstChild("TRAVEL BOYI") then
                    workspace["TRAVEL BOYI"]:Destroy()
                end
            end,
            Menu = {
                Information = function(self)
                    UI.Banner(
                        {
                            Text = "This Will Delete The GUI"
                        }
                    )
                end
            }
        }
    )
end
--------------------------------------------------------------------------------TOWER OF HELL--------------------------------------------------------------------------------
if game.PlaceId == 1962086868 and getgenv().TOH_Status == true then
    local Player_Tab =
        UI.New(
        {
            Title = "Player"
        }
    )

    local Farm_Tab =
        UI.New(
        {
            Title = "Farm"
        }
    )

    local Settings =
        UI.New(
        {
            Title = "Settings"
        }
    )
    pcall(
        function()
            game:GetService("Players").LocalPlayer.PlayerScripts.LocalScript2:Remove()
            game:GetService("Players").LocalPlayer.PlayerScripts.LocalScript:Remove()
        end
    )

    --Player----------------------------------------------------------------------------------
    Player_Tab.Button(
        {
            Text = "God-Mode",
            Callback = function()
                function f()
                    pcall(
                        function()
                            game.Players.LocalPlayer.Character.KillScript:Destroy()
                        end
                    )
                end
                hookfunction(
                    f,
                    function()
                        pcall(
                            function()
                                game.Players.LocalPlayer.Character.KillScript:Destroy()
                            end
                        )
                    end
                )
                f()
            end
        }
    )

    Player_Tab.Slider(
        {
            Text = "Jump Power",
            Callback = function(value)
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
            end,
            Min = 10,
            Max = 1000,
            Def = 50
        }
    )
    Player_Tab.Slider(
        {
            Text = "WalkSpeed",
            Callback = function(value)
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
            end,
            Min = 10,
            Max = 1000,
            Def = 16
        }
    )

    --Farm---------------------------------------------------
    Farm_Tab.Toggle(
        {
            Text = "Auto Win",
            Callback = function(bool)
                getgenv().toggle = false
                getgenv().toggle = bool
                getgenv().win = false
                local Time = string.split(game:GetService("Players").LocalPlayer.PlayerGui.timer.timeLeft.Text, ":")
                local currentTimer = tonumber(Time[1])
                while getgenv().toggle == true do
                    wait(1)
                    if currentTimer <= 8 then
                        if game:GetService("Workspace").tower.finishes:FindFirstChild("Finish") then
                            if
                                game:GetService("Players").LocalPlayer.PlayerGui.timer.timeLeft.multiplier.Text == "" or
                                    game:GetService("Players").LocalPlayer.PlayerGui.timer.timeLeft.multiplier.Text ~=
                                        ""
                             then
                                repeat
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                                        game:GetService("Workspace").tower.finishes.Finish.CFrame
                                    wait(1)
                                until getgenv().toggle == false or
                                    (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                        game:GetService("Workspace").tower.finishes.Finish.Position).magnitude <= 20
                            end
                        end
                    else
                        wait(1)
                    end
                end
            end,
            Enabled = false
        }
    )
    --Settings---------------------------------------------------
    Settings_Tab.Button(
        {
            Text = "Destroy",
            Callback = function()
                game.CoreGui[randomTitle]:Destroy()
            end,
            Menu = {
                Information = function(self)
                    UI.Banner(
                        {
                            Text = "This Will Delete The GUI"
                        }
                    )
                end
            }
        }
    )
end
--------------------------------------------------------------------------------YBA--------------------------------------------------------------------------------
if game.PlaceId == 2809202155 and getgenv().YBA_Status == true then
    ---------------------------------------
    --Player Tab-----------------------------------------------------------------------
    Player_Tab.Slider(
        {
            Text = "Jump Power",
            Callback = function(value)
                while value do
                    wait()
                    game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
                end
            end,
            Min = 10,
            Max = 650,
            Def = 50
        }
    )
    Player_Tab.Slider(
        {
            Text = "WalkSpeed",
            Callback = function(value)
                while value do
                    wait()
                    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
                end
            end,
            Min = 10,
            Max = 150,
            Def = 16
        }
    )
    --Farm Tab-----------------------------------------------------------------------
    Farm_Tab.Toggle(
        {
            Text = "Auto Farm",
            Callback = function(value)
                getgenv().farm_Toggle = false
                getgenv().farm_Toggle = value
                for i, v in pairs(game:GetService("Workspace")["Mob_Spawns"]:GetChildren()) do
                    while getgenv().farm_Toggle == true do
                        wait()
                        if v:FindFirstChild("Part") and v.ClassName == "Part" then
                            tweenService, tweenInfo =
                                game:GetService("TweenService"),
                                TweenInfo.new(
                                    (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).magnitude /
                                        90,
                                    Enum.EasingStyle.Linear
                                )
                            tween =
                                tweenService:Create(
                                game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart,
                                tweenInfo,
                                {CFrame = v.CFrame}
                            )
                            tween:Play()
                        end
                    end
                end
            end,
            Enabled = false
        }
    )

    Farm_Tab.Toggle(
        {
            Text = "Item Farm",
            Callback = function(value)
                for i, v in pairs(game:GetService("Workspace")["Item_Spawns"].Items:GetChildren()) do
                    tweenService, tweenInfo =
                        game:GetService("TweenService"),
                        TweenInfo.new(
                            (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Base.Position).magnitude /
                                100,
                            Enum.EasingStyle.Linear
                        )
                    tween =
                        tweenService:Create(
                        game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart,
                        tweenInfo,
                        {CFrame = v.Base.CFrame}
                    )
                    tween:Play()
                end
            end,
            Enabled = false
        }
    )
    --Settings Tab-----------------------------------------------------------------------
    Settings_Tab.Button(
        {
            Text = "Destroy",
            Callback = function()
                game.CoreGui[randomTitle]:Destroy()
            end,
            Menu = {
                Information = function(self)
                    UI.Banner(
                        {
                            Text = "This Will Delete The GUI"
                        }
                    )
                end
            }
        }
    )
end -- END

---------------------------------------------------------------ASTD----------------------------------------------------------------------------------------------
if game.GameId == 1720936166 and getgenv().ASTD_Status == true then
    --Preset----------------------------------------------------------------------------------------
    pcall(
        function()
            --game:GetService("Players").LocalPlayer.PlayerGui.LoadingScreen:Destroy()
            game:GetService("Players").LocalPlayer.PlayerGui.HUD.Notification.ChildAdded:Connect(
                function()
                    for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.HUD:GetChildren()) do
                        if v:FindFirstChild("Notification") and v.Visible == true then
                            v.Visible = false
                        end
                    end
                end
            )

            for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.LoadingScreen:GetChildren()) do
                if v.Visible == true then
                    v.Visible = false
                end
            end
        end
    )
    ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    ---------------------------------------------------- TABS
    local Farm_Tab =
        UI.New(
        {
            Title = "Farm"
        }
    )
    local Config_Tab =
        UI.New(
        {
            Title = "Config"
        }
    )
    local Settings_Tab =
        UI.New(
        {
            Title = "Settings"
        }
    )
    -----------------------------------------------------------JSON FILE
    getgenv().Unit_1 = ""
    getgenv().Unit_2 = ""
    getgenv().Unit_3 = ""
    getgenv().Level = ""
    getgenv().AutoFarm_Toggle = false
    getgenv().Skip_Wave = false
    getgenv().Auto_Upgrade = false

    local Config
    Config = {
        Unit_3 = "",
        Unit_2 = "",
        Level = "",
        Unit_1 = "",
        AutoFarm_Toggle = false,
        Skip_Wave = false,
        Auto_Upgrade = false,
        Upgrade_To = 0
    }

    function save()
        local SSettings = game:GetService("HttpService"):JSONEncode(Config)
        writefile("Straw Hub-ASTD.json", SSettings)
    end

    if isfile("Straw Hub-ASTD.json") then
        --[[spawn(function()
            while wait(4) do
                getgenv().Settings = HttpService:JSONDecode(readfile("HydraHub-ASTD.json"))
            end
        end)]]
        wait()
     --
    else
        --[[wait(10)
        local tpservice = game:GetService("TeleportService")
        local rejoinplayer = game:GetService("Players").LocalPlayer
        wait(0.5)
        pcall(function()
            tpservice:Teleport(game.PlaceId, rejoinplayer)
        end)
        ]]
        UI.Banner(
            {
                Text = 'Created (File): "Straw Hub-ASTD.json"\nFile Location: "Synapse X Folder" -> "workspace" -> "HydraHub-ASTD.json"'
            }
        )
        save()
     --
    end

    local HttpService = game:GetService("HttpService")
    getgenv().Settings = HttpService:JSONDecode(readfile("Straw Hub-ASTD.json"))
    ---------------------------------------------------- Auto Farm
    spawn(
        function()
            pcall(
                function()
                    while wait(1) do
                        if getgenv().Settings.Skip_Wave == true then
                            wait(0.5)
                            for i, v in pairs(
                                getconnections(
                                    game:GetService("Players").LocalPlayer.PlayerGui.HUD.NextWaveVote.YesButton.MouseButton1Click
                                )
                            ) do
                                v:Fire()
                            end
                        end
                    end
                end
            )
        end
    )

    Farm_Tab.Toggle(
        {
            Text = "Auto Skip Wave",
            Callback = function(bool)
                getgenv().Skip_Wave = bool
                spawn(
                    function()
                        while wait(1) do
                            if getgenv().Skip_Wave == true then
                                Config.Skip_Wave = true
                            else
                                Config.Skip_Wave = false
                            end
                        end
                    end
                )
            end,
            Enabled = getgenv().Settings.Skip_Wave
        }
    )

    getgenv().switchCharactersNumber = 0
    getgenv().switchCharacters = getgenv().Settings.Unit_1
    game:GetService("Workspace").Unit.ChildAdded:Connect(
        function(unit)
            if
                unit.Name == getgenv().Settings.Unit_1 or unit.Name == getgenv().Settings.Unit_2 or
                    unit.Name == getgenv().Settings.Unit_3
             then
                getgenv().switchCharactersNumber = getgenv().switchCharactersNumber + 1
                if getgenv().switchCharactersNumber == 8 then
                    wait(0.2)
                    getgenv().switchCharacters = getgenv().Settings.Unit_2
                elseif getgenv().switchCharactersNumber == 16 then
                    wait(0.2)
                    getgenv().switchCharacters = getgenv().Settings.Unit_3
                end
            end
        end
    )
    getgenv().farm_wait = true
    spawn(
        function()
            while getgenv().farm_wait == true do
                wait()
                if getgenv().Settings.AutoFarm_Toggle == true then
                    if game:GetService("Workspace"):FindFirstChild("Queue") then
                        if getgenv().Settings.Level == "" then
                            getgenv().farm_wait = false
                            UI.Banner(
                                {
                                    Text = "You Must Select A Level\nRe-execute The Script And Try Again"
                                }
                            )
                        else
                            pcall(
                                function()
                                    repeat
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                                            game:GetService("Workspace").Queue.Story.Part.CFrame
                                        wait(2)
                                        local ohString1 = "Level"
                                        local ohString2 = getgenv().Settings.Level
                                        local ohBoolean3 = false

                                        game:GetService("ReplicatedStorage").Remotes.Input:FireServer(
                                            ohString1,
                                            ohString2,
                                            ohBoolean3
                                        )
                                        wait(2)

                                        local ohString4 = "Start"

                                        game:GetService("ReplicatedStorage").Remotes.Input:FireServer(ohString4)
                                        wait(10)
                                    until not game:GetService("Workspace").Queue
                                end
                            )
                        end
                    else
                        wait(2.9)
                        for i, v in pairs(game:GetService("ReplicatedStorage").Unit:GetChildren()) do
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v:FindFirstChild("HumanoidRootPart") then
                                    local ohString1 = "Summon"
                                    local ohTable2 = {
                                        ["Rotation"] = 0,
                                        ["cframe"] = CFrame.new(v.HumanoidRootPart.Position + Vector3.new(0, 0, 2.5)),
                                        ["Unit"] = getgenv().switchCharacters
                                    }

                                    game:GetService("ReplicatedStorage").Remotes.Input:FireServer(ohString1, ohTable2)

                                    local ohString3 = "Summon"
                                    local ohTable4 = {
                                        ["Rotation"] = 0,
                                        ["cframe"] = CFrame.new(v.HumanoidRootPart.Position + Vector3.new(2.5, 0, 0)),
                                        ["Unit"] = getgenv().switchCharacters
                                    }

                                    game:GetService("ReplicatedStorage").Remotes.Input:FireServer(ohString3, ohTable4)

                                    local ohString5 = "Summon"
                                    local ohTable6 = {
                                        ["Rotation"] = 0,
                                        ["cframe"] = CFrame.new(v.HumanoidRootPart.Position + Vector3.new(-2.5, 0, 0)),
                                        ["Unit"] = getgenv().switchCharacters
                                    }

                                    game:GetService("ReplicatedStorage").Remotes.Input:FireServer(ohString5, ohTable6)
                                end
                            end
                        end
                    end
                end
            end
        end
    )

    Farm_Tab.Toggle(
        {
            Text = "Auto Upgrade",
            Callback = function(bool)
                getgenv().Auto_Upgrade = bool
                spawn(
                    function()
                        while wait(1) do
                            if getgenv().Auto_Upgrade == true then
                                Config.Auto_Upgrade = true
                            else
                                Config.Auto_Upgrade = false
                            end
                        end
                    end
                )
            end,
            Enabled = getgenv().Settings.Auto_Upgrade
        }
    )

    Farm_Tab.Toggle(
        {
            Text = "Auto Farm",
            Callback = function(bool)
                getgenv().AutoFarm_Toggle = bool
                spawn(
                    function()
                        while wait(1) do
                            if getgenv().AutoFarm_Toggle == true then
                                Config.AutoFarm_Toggle = true
                            else
                                Config.AutoFarm_Toggle = false
                            end
                        end
                    end
                )
            end,
            Enabled = getgenv().Settings.AutoFarm_Toggle
        }
    )

    local Character_Table = {}

    pcall(
        function()
            for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.HUD.Unit:GetDescendants()) do
                if v:IsA("Model") then
                    table.insert(Character_Table, v.Name)
                end
            end
        end
    )

    Farm_Tab.Dropdown(
        {
            Text = "Upgrade Unit To... ",
            Callback = function(value0)
                Config.Upgrade_To = value0
            end,
            Options = {1, 2, 3, 4, 5, 6}
        }
    )

    spawn(
        function()
            while getgenv().Settings.Auto_Upgrade == true do
                wait(1)
                for i, v in pairs(game:GetService("Workspace").Unit:GetChildren()) do
                    if v:FindFirstChild("UpgradeTag") ~= getgenv().Settings.Upgrade_To then
                        if
                            getgenv().Settings.Auto_Upgrade == true and
                                v.UpgradeTag.Value ~= getgenv().Settings.Upgrade_To
                         then
                            wait(0.4)
                            print("")
                            game:GetService("ReplicatedStorage").Remotes.Server:InvokeServer("Upgradable", v)
                            game:GetService("ReplicatedStorage").Remotes.Input:FireServer("Upgrade", v)
                        end
                    end
                end
            end
        end
    )

    Farm_Tab.Dropdown(
        {
            Text = "Select Unit 1",
            Callback = function(value1)
                Config.Unit_1 = value1
            end,
            Options = Character_Table
        }
    )

    Farm_Tab.Dropdown(
        {
            Text = "Select Unit 2",
            Callback = function(value2)
                Config.Unit_2 = value2
            end,
            Options = Character_Table
        }
    )

    Farm_Tab.Dropdown(
        {
            Text = "Select Unit 3",
            Callback = function(value3)
                Config.Unit_3 = value3
            end,
            Options = Character_Table
        }
    )

    Farm_Tab.Dropdown(
        {
            Text = "Select Level",
            Callback = function(value4)
                Config.Level = value4
            end,
            Options = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16}
        }
    )

    --Config TAB---------------------------------------------------------------------------
    Config_Tab.Button(
        {
            Text = "Run File",
            Callback = function()
                --delfile("HydraHub-ASTD.json")
                wait(1)
                UI.Banner(
                    {
                        Text = 'Successfully Saved "Straw Hub-ASTD.json" File\nIf It Doesn\'t Automatically Run, Then Re-execute The Script'
                    }
                )
                local SSettings = game:GetService("HttpService"):JSONEncode(Config)
                delfile("Straw Hub-ASTD.json")
                wait(0.5)
                writefile("Straw Hub-ASTD.json", SSettings)
                 --
                --wait(10)
                --[[local tpservice = game:GetService("TeleportService")
        local rejoinplayer = game:GetService("Players").LocalPlayer
        wait(0.5)
        pcall(function()
            tpservice:Teleport(game.PlaceId, rejoinplayer)
        end)]] wait(
                    0.5
                )
                getgenv().Settings = HttpService:JSONDecode(readfile("Straw Hub-ASTD.json"))
            end,
            Menu = {
                Information = function(self)
                    UI.Banner(
                        {
                            Text = '(Overwrite The Current "Straw Hub-ASTD.json" File\nRe-execute The Script'
                        }
                    )
                end
            }
        }
    )
    Config_Tab.Button(
        {
            Text = "Reset File",
            Callback = function()
                --delfile("HydraHub-ASTD.json")
                wait(1)
                UI.Banner(
                    {
                        Text = 'Reset File "Straw Hub-ASTD.json" File Complete'
                    }
                )
                local SSettings = game:GetService("HttpService"):JSONEncode(Config)
                delfile("Straw Hub-ASTD.json")
                wait(0.5)
                writefile("Straw Hub-ASTD.json", SSettings)
                 --Unit_3 = "";
                --wait(10)
                --[[local tpservice = game:GetService("TeleportService")
        local rejoinplayer = game:GetService("Players").LocalPlayer
        wait(0.5)
        pcall(function()
            tpservice:Teleport(game.PlaceId, rejoinplayer)
        end)]] Config.Unit_2 =
                    ""
                Config.Level = ""
                Config.Unit_1 = ""
                Config.AutoFarm_Toggle = false
                Config.Skip_Wave = false
                Config.Auto_Upgrade = false
                Config.Upgrade_To = 0
                local SSettings = game:GetService("HttpService"):JSONEncode(Config)
                delfile("Straw Hub-ASTD.json")
                wait(0.5)
                writefile("Straw Hub-ASTD.json", SSettings)
                wait(0.5)
                getgenv().Settings = HttpService:JSONDecode(readfile("Straw Hub-ASTD.json"))
            end,
            Menu = {
                Information = function(self)
                    UI.Banner(
                        {
                            Text = '(Overwrite The Current "Straw Hub-ASTD.json" File'
                        }
                    )
                end
            }
        }
    )
    Config_Tab.Button(
        {
            Text = "Delete File",
            Callback = function()
                delfile("HydraHub-ASTD.json")
                wait(2)

                UI.Banner(
                    {
                        Text = '(DEV TOOL) Successfully Deleted "Straw Hub-ASTD.json" File'
                    }
                )
            end,
            Menu = {
                Information = function(self)
                    UI.Banner(
                        {
                            Text = '(DEV TOOL) Delete The Current "Straw Hub-ASTD.json" File'
                        }
                    )
                end
            }
        }
    )

    --SETTINGS TAB---------------------------------------------------------------------------
    Settings_Tab.Button(
        {
            Text = "Destroy GUI",
            Callback = function()
                game.CoreGui[randomTitle]:Destroy()
            end,
            Menu = {
                Information = function(self)
                    UI.Banner(
                        {
                            Text = "This Will Delete The GUI"
                        }
                    )
                end
            }
        }
    )
--[[if isfile("HydraHub-ASTD.json") then
spawn(function()
    while wait(4) do
        save()
    end
end)
end--]]
end
 ------ END
----------------------------------------------------------------------MY HERO MANIA-------------------------------------------------------------------
if getgenv().MHM_Status == true and game.GameId == 1691616425 then
    ------------------------------------------------------------------PRESETS

    local random = Random.new()
    local letters = {
        "a",
        "b",
        "c",
        "d",
        "e",
        "f",
        "g",
        "h",
        "i",
        "j",
        "k",
        "l",
        "m",
        "n",
        "o",
        "p",
        "q",
        "r",
        "s",
        "t",
        "u",
        "v",
        "w",
        "x",
        "y",
        "z"
    }

    function getRandomLetter()
        return letters[random:NextInteger(1, #letters)]
    end

    function getRandomString(length, includeCapitals)
        local length = length or 10
        local str = ""
        for i = 1, length do
            local randomLetter = getRandomLetter()
            if includeCapitals and random:NextNumber() > .5 then
                randomLetter = string.upper(randomLetter)
            end
            str = str .. randomLetter
        end
        return str
    end

    local randomTitleConfig = getRandomString(7, true)
    local randomTitle = "Straw Hub"

    local Material = loadstring(game:HttpGet("https://pastebin.com/raw/Sn6g02Em"))()
     --https://hastebin.com/raw/oyiqomehur

    local UI =
        Material.Load(
        {
            Title = randomTitle,
            Style = 2,
            SizeX = 600,
            SizeY = 350,
            -- Theme = "Dark"
            ColorOverrides = {
                MainFrame = Color3.fromRGB(15, 15, 15),
                Minimise = Color3.fromRGB(255, 68, 68),
                MinimiseAccent = Color3.fromRGB(147, 59, 0),
                Maximise = Color3.fromRGB(25, 255, 0),
                MaximiseAccent = Color3.fromRGB(0, 255, 110),
                NavBar = Color3.fromRGB(235, 235, 235),
                NavBarAccent = Color3.fromRGB(32, 32, 32),
                NavBarInvert = Color3.fromRGB(235, 235, 235),
                TitleBar = Color3.fromRGB(30, 30, 30),
                TitleBarAccent = Color3.fromRGB(255, 255, 255),
                Overlay = Color3.fromRGB(30, 30, 30),
                Banner = Color3.fromRGB(30, 30, 30),
                BannerAccent = Color3.fromRGB(255, 255, 255),
                Content = Color3.fromRGB(85, 85, 85),
                Button = Color3.fromRGB(40, 40, 40),
                ButtonAccent = Color3.fromRGB(235, 235, 235),
                ChipSet = Color3.fromRGB(45, 45, 45),
                ChipSetAccent = Color3.fromRGB(255, 255, 255),
                DataTable = Color3.fromRGB(160, 160, 160),
                DataTableAccent = Color3.fromRGB(45, 45, 45),
                Slider = Color3.fromRGB(45, 45, 45),
                SliderAccent = Color3.fromRGB(235, 235, 235),
                Toggle = Color3.fromRGB(230, 230, 230),
                ToggleAccent = Color3.fromRGB(235, 235, 235),
                Dropdown = Color3.fromRGB(45, 45, 45),
                DropdownAccent = Color3.fromRGB(235, 235, 235),
                ColorPicker = Color3.fromRGB(10, 10, 10),
                ColorPickerAccent = Color3.fromRGB(235, 235, 235),
                TextField = Color3.fromRGB(55, 55, 55),
                TextFieldAccent = Color3.fromRGB(235, 235, 235)
            }
        }
    )

    -----TOGGLE GUI----------------------------
    local UISS = game:GetService("UserInputService")
    getgenv().toggle = true

    UISS.InputBegan:Connect(
        function(Input)
            if Input.KeyCode == Enum.KeyCode.RightControl then
                getgenv().toggle = not getgenv().toggle
                if getgenv().toggle == true then
                    game:GetService("CoreGui")[randomTitle].MainFrame.Visible = true
                else
                    game:GetService("CoreGui")[randomTitle].MainFrame.Visible = false
                end
            end
        end
    )

    function bypasstp()
        pcall(
            function()
                game.Players.LocalPlayer.Character.Stats.Speed:Destroy()
            end
        )
        wait(0.5)
        local bypass = Instance.new("IntValue", game.Players.LocalPlayer.Character.Stats)
        bypass.Name = "Speed"
    end
    bypasstp()
    pcall(
        function()
            game:GetService("Workspace").Living.ChildAdded:Connect(
                function(bs)
                    if bs.Name == game:GetService("Players").LocalPlayer.Name then
                        wait(1)
                        bypasstp()
                    end
                end
            )
        end
    )

    ----Variables----------------------------------------------------------------------
    getgenv().attack_sequence = 1
    getgenv().mob = ""

    local work = game:GetService("Workspace")
    local mobs = work.Living
    local players = game:GetService("Players")
    local lplayer = players.LocalPlayer
    ----Functions---------------------------------------------------------------------------
    --attack
    function attack(cframe)
        if getgenv().attack_sequence ~= 5 then
            local ohNumber1 = getgenv().attack_sequence
            local ohCFrame2 = CFrame.new(cframe)

            game:GetService("ReplicatedStorage").Package.Events.Combat:FireServer(ohNumber1, ohCFrame2)
            getgenv().attack_sequence = getgenv().attack_sequence + 1
        else
            getgenv().attack_sequence = 1
        end
    end
    -- noclip
    game:getService("RunService"):BindToRenderStep(
        "",
        0,
        function()
            if getgenv().noclip == true then
                game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)
            end
        end
    )
    --hide name
    function hidename()
        for _, m in pairs(game:GetService("Workspace"):GetDescendants()) do
            if m.ClassName == "TextLabel" then
                if m.Text == game:GetService("Players").LocalPlayer.Name then
                    m:Destroy()
                    for j, m in pairs(game:GetService("Players").LocalPlayer:GetDescendants()) do
                        if m.ClassName == "TextLabel" then
                            if m.Text == game:GetService("Players").LocalPlayer.Name then
                                m:Destroy()
                                for h, v in pairs(workspace[game.Players.LocalPlayer.Name].Head:GetChildren()) do
                                    if v:IsA("BillboardGui") then
                                        v:Remove()
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end

        while true do
            for i, s in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if s:IsA("Accessory") then
                    s.Parent = workspace
                end
            end

            for i, f in pairs(game.Workspace[game.Players.LocalPlayer.Name].Head:GetChildren()) do
                if f:IsA("Decal") and f.Name == "face" then
                    f.Parent = nil
                end
            end

            if game.Players.LocalPlayer.Character.Shirt then
                game.Players.LocalPlayer.Character.Shirt:Remove()
            else
            end
            if game.Players.LocalPlayer.Character.Pants then
                game.Players.LocalPlayer.Character.Pants:Remove()
            else
            end
            if game.Players.LocalPlayer.Character["Shirt Graphic"] then
                game.Players.LocalPlayer.Character["Shirt Graphic"]:Remove()
            else
            end
            if game.Players.LocalPlayer.Character.Torso.roblox then
                game.Players.LocalPlayer.Character.Torso.roblox:Remove()
            else
            end
            game:GetService("RunService").Stepped:wait()
        end
    end
    -----TABS---------------------------------------------------------------------------------
    local Player_Tab =
        UI.New(
        {
            Title = "Player"
        }
    )
    local Teleport_Tab =
        UI.New(
        {
            Title = "Teleport"
        }
    )
    local Farm_Tab =
        UI.New(
        {
            Title = "Farm"
        }
    )

    local Server_Tab =
        UI.New(
        {
            Title = "Server"
        }
    )

    local Settings_Tab =
        UI.New(
        {
            Title = "Settings"
        }
    )
    --Player Tab---------------------------------------------------------------------------------------------------
    Player_Tab.Button(
        {
            Text = "Hide Name",
            Callback = function()
                hidename()
            end
        }
    )

    Player_Tab.Slider(
        {
            Text = "WalkSpeed",
            Callback = function(value)
                while wait() do
                    if game.Players.LocalPlayer.Character.Humanoid.WalkSpeed ~= value then
                        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
                    end
                end
            end,
            Min = 10,
            Max = 1000,
            Def = 16
        }
    )

    Player_Tab.Slider(
        {
            Text = "Jump Power",
            Callback = function(value)
                while wait() do
                    if game.Players.LocalPlayer.Character.Humanoid.JumpPower ~= value then
                        game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
                    end
                end
            end,
            Min = 10,
            Max = 100,
            Def = 50
        }
    )

    --Teleport Tab---------------------------------------------------------------------------------------------------
    local CharacterTP_Table = {}
    local SpawnTP_Table = {}

    for i, v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
        if v:IsA("Model") then
            table.insert(CharacterTP_Table, v.Name)
        end
    end

    for i, v in pairs(game:GetService("Workspace").Others.Spawns:GetChildren()) do
        if v:IsA("Part") then
            table.insert(SpawnTP_Table, v.Name)
        end
    end

    Teleport_Tab.Dropdown(
        {
            Text = "Teleport (NPC)",
            Callback = function(value)
                getgenv().npcTP = value
                for i, v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
                    if v.Name == getgenv().npcTP then
                        lplayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                    end
                end
            end,
            Options = CharacterTP_Table
        }
    )

    Teleport_Tab.Dropdown(
        {
            Text = "Teleport (Spawn Points)",
            Callback = function(value)
                getgenv().spawnTP = value
                for i, v in pairs(game:GetService("Workspace").Others.Spawns:GetChildren()) do
                    if v.Name == getgenv().spawnTP then
                        lplayer.Character.HumanoidRootPart.CFrame = v.CFrame
                    end
                end
            end,
            Options = SpawnTP_Table
        }
    )
    --Farm Tab---------------------------------------------------------------------------------------------------
    local mobs_Table = {}

    for i, v in pairs(game:GetService("Workspace").Others.NPCSpawns:GetChildren()) do
        if v:IsA("Folder") then
            table.insert(mobs_Table, v.Name)
        end
    end

    Farm_Tab.Dropdown(
        {
            Text = "Select Mob",
            Callback = function(value)
                getgenv().mob = value
            end,
            Options = mobs_Table
        }
    )

    local mobfarm =
        Farm_Tab.Toggle(
        {
            Text = "Farm Mobs",
            Callback = function(value)
                getgenv().mobFarm = false
                getgenv().mobFarm = value
                spawn(
                    function()
                        while wait() do
                            for i, v in pairs(game:GetService("Workspace").Living:GetChildren()) do
                                if getgenv().mob == "" then
                                    mobfarm:SetState(false)
                                    UI.Banner(
                                        {
                                            Text = "You Must Select A Mob"
                                        }
                                    )
                                else
                                    if
                                        getgenv().mobFarm == true and v.Name == getgenv().mob and
                                            v:FindFirstChild("HumanoidRootPart")
                                     then
                                        getgenv().noclip = true
                                        repeat
                                            wait()
                                            attack(v.HumanoidRootPart.Position)
                                            lplayer.Character.HumanoidRootPart.CFrame =
                                                v.HumanoidRootPart.CFrame + Vector3.new(0, -12, 0)
                                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                                                CFrame.new(
                                                game.Players.LocalPlayer.Character.Head.Position,
                                                v.HumanoidRootPart.Position
                                            )
                                        until v.Humanoid.Health < 1 or getgenv().mobFarm == false
                                    else
                                        getgenv().noclip = false
                                    end
                                end
                            end
                        end
                    end
                )
            end,
            Enabled = getgenv().noclip
        }
    )
    --Server Tab---------------------------------------------------------------------------------------------------
    Server_Tab.Button(
        {
            Text = "Rejoin",
            Callback = function()
                local tpservice = game:GetService("TeleportService")
                local rejoinplayer = game:GetService("Players").LocalPlayer
                wait(0.5)
                pcall(
                    function()
                        tpservice:Teleport(game.PlaceId, rejoinplayer)
                    end
                )
            end
        }
    )
    --Settings Tab---------------------------------------------------------------------------------------------------
    Settings_Tab.Button(
        {
            Text = "Destroy",
            Callback = function()
                game.CoreGui[randomTitle]:Destroy()
            end,
            Menu = {
                Information = function(self)
                    UI.Banner(
                        {
                            Text = "This Will Delete The GUI"
                        }
                    )
                end
            }
        }
    )
end



if game.PlaceId == 3956818381 then --NINJA LEGENDS
    local VLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/VL"))()

    local s = VLib:Window("Straw Hub", "Ninja Legends", "N")
    local ss = s:Tab("MAIN")
    local ssss = s:Tab("MISC")
    local sss = s:Tab("TELEPORTS")

    local Items_Table = {}

    local Items_Table = {}
    for i, v in pairs(game:GetService("Workspace").spawnedCoins.Valley:GetChildren()) do
        table.insert(Items_Table, v.Name)
    end

    getgenv().items = nil
    getgenv().autofarm = false

    ss:Dropdown(
        "Items",
        Items_Table,
        function(mb)
            getgenv().items = mb
        end
    )

    ss:Toggle(
        "Itemfarm Start",
        false,
        function(bool)
            getgenv().autofarm = bool

            while wait() do
                for i, v in pairs(game:GetService("Workspace").spawnedCoins.Valley:GetChildren()) do
                    if v.Name == getgenv().items and getgenv().autofarm == true then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                    end
                end
            end
        end
    )

    ss:Toggle(
        "Autofarm Swing",
        false,
        function(farm)
            getgenv().swing = farm
            while wait() do
                if getgenv().swing == true then
                    game:GetService("Players").LocalPlayer.ninjaEvent:FireServer("swingKatana")
                end
            end
        end
    )

    ss:Toggle(
        "Autofarm Sell",
        false,
        function(farm)
            getgenv().str = farm
            while wait() do
                if getgenv().str == true then
                    if game.Players.LocalPlayer.PlayerGui.gameGui.maxNinjitsuMenu.Visible == true then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            CFrame.new(75.3269806, 3, -46.103344)
                        wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            CFrame.new(75.3269806, 18.387558, -46.103344)
                    end
                end
            end
        end
    )

    ss:Toggle(
        "Autofarm Item",
        false,
        function(farm)
            getgenv().chi = farm
            while wait() do
                if getgenv().chi == true then
                    for i, v in pairs(game:GetService("Workspace").spawnedCoins.Valley:GetChildren()) do
                        if v.Name == "Chi" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                        end
                    end
                end
            end
        end
    )

    ssss:Slider(
        "WalkSpeed",
        16,
        1000,
        16,
        function(t)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = t
        end
    )

    ssss:Slider(
        "JumpPower",
        16,
        1000,
        16,
        function(a)
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = a
        end
    )

    sss:Dropdown(
        "Teleports",
        {
            "Enchanted Island",
            "Astral Island",
            "Mystical Island",
            "Space Island",
            "Tundra Island",
            "Eternal Island",
            "Sandstorm Island",
            "Acient Inferno Island",
            "Midnight Shadow Island",
            "Mythical Souls Island",
            "Winter Wonder Island",
            "Goldn Master Island",
            "Dragon Legend Island",
            "Cybernetic Legends Island",
            "Skystorm Ultraus Island",
            "Chaos Legends Island",
            "Soul Fusion Island",
            "Dark Elements Island",
            "Inner Peace Island"
        },
        function(value)
            if value == "Enchanted Island" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(51.2420082, 849.832031, -151.813995, -1, 0, 0, 0, 1, 0, 0, 0, -1)
            elseif value == "Astral Island" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(216.321625, 2095.47778, 256.276184, -1, 0, 0, 0, 1, 0, 0, 0, -1)
            elseif value == "Mystical Island" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(
                    184.796295,
                    4124.17773,
                    45.8520508,
                    0.499959469,
                    0,
                    0.866048813,
                    0,
                    1,
                    0,
                    -0.866048813,
                    0,
                    0.499959469
                )
            elseif value == "Space Island" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(
                    138.522156,
                    5847.19336,
                    123.56015,
                    0.573598742,
                    -0,
                    -0.81913656,
                    0,
                    1,
                    -0,
                    0.81913656,
                    0,
                    0.573598742
                )
            elseif value == "Tundra Island" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(
                    145.131607,
                    9372.39746,
                    90.3484344,
                    0.342042685,
                    -0,
                    -0.939684391,
                    0,
                    1,
                    -0,
                    0.939684391,
                    0,
                    0.342042685
                )
            elseif value == "Eternal Island" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(
                    145.131607,
                    13767.251,
                    90.3484344,
                    0.342042685,
                    -0,
                    -0.939684391,
                    0,
                    1,
                    -0,
                    0.939684391,
                    0,
                    0.342042685
                )
            elseif value == "Sandstorm Island" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(
                    145.131607,
                    17773.5469,
                    90.3484344,
                    0.342042685,
                    -0,
                    -0.939684391,
                    0,
                    1,
                    -0,
                    0.939684391,
                    0,
                    0.342042685
                )
            elseif value == "Thunderstorm Island" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(
                    145.131607,
                    24157.2402,
                    90.3484344,
                    0.342042685,
                    -0,
                    -0.939684391,
                    0,
                    1,
                    -0,
                    0.939684391,
                    0,
                    0.342042685
                )
            elseif value == "Acient Inferno Island" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(
                    144.021057,
                    28364.6953,
                    88.9619141,
                    0.342042685,
                    -0,
                    -0.939684391,
                    0,
                    1,
                    -0,
                    0.939684391,
                    0,
                    0.342042685
                )
            elseif value == "Midnight Shadow Island" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(
                    144.021057,
                    33315.3867,
                    88.9619141,
                    0.342042685,
                    -0,
                    -0.939684391,
                    0,
                    1,
                    -0,
                    0.939684391,
                    0,
                    0.342042685
                )
            elseif value == "Mythical Souls Island" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(
                    144.021057,
                    39425.9766,
                    88.9619141,
                    0.342042685,
                    -0,
                    -0.939684391,
                    0,
                    1,
                    -0,
                    0.939684391,
                    0,
                    0.342042685
                )
            elseif value == "Winter Wonder Island" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(
                    144.021057,
                    46118.9609,
                    88.9619141,
                    0.342042685,
                    -0,
                    -0.939684391,
                    0,
                    1,
                    -0,
                    0.939684391,
                    0,
                    0.342042685
                )
            elseif value == "Golden Master Island" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(
                    144.021057,
                    52716.168,
                    88.9619141,
                    0.342042685,
                    -0,
                    -0.939684391,
                    0,
                    1,
                    -0,
                    0.939684391,
                    0,
                    0.342042685
                )
            elseif value == "Dragon Legend Island" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(
                    144.021057,
                    59703.0859,
                    88.9619141,
                    0.342042685,
                    -0,
                    -0.939684391,
                    0,
                    1,
                    -0,
                    0.939684391,
                    0,
                    0.342042685
                )
            elseif value == "Cybernetic Legends Island" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(
                    144.021057,
                    66777.5781,
                    88.9619141,
                    0.342042685,
                    -0,
                    -0.939684391,
                    0,
                    1,
                    -0,
                    0.939684391,
                    0,
                    0.342042685
                )
            elseif value == "Skystorm Ultraus Island" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(
                    144.021057,
                    70379.5703,
                    88.9619141,
                    0.342042685,
                    -0,
                    -0.939684391,
                    0,
                    1,
                    -0,
                    0.939684391,
                    0,
                    0.342042685
                )
            elseif value == "Chaos Legends Island" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(
                    144.021057,
                    74551.2656,
                    88.9619141,
                    0.342042685,
                    -0,
                    -0.939684391,
                    0,
                    1,
                    -0,
                    0.939684391,
                    0,
                    0.342042685
                )
            elseif value == "Soul Fusion Island" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(
                    144.021057,
                    79855.3984,
                    88.9619141,
                    0.342042685,
                    -0,
                    -0.939684391,
                    0,
                    1,
                    -0,
                    0.939684391,
                    0,
                    0.342042685
                )
            elseif value == "Dark Elements Island" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(
                    144.021057,
                    83307.3984,
                    88.9619141,
                    0.342042685,
                    -0,
                    -0.939684391,
                    0,
                    1,
                    -0,
                    0.939684391,
                    0,
                    0.342042685
                )
            elseif value == "Inner Peace Island" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(
                    144.021057,
                    87159.4844,
                    88.9619141,
                    0.342042685,
                    -0,
                    -0.939684391,
                    0,
                    1,
                    -0,
                    0.939684391,
                    0,
                    0.342042685
                )
            end
        end
    )

    sss:Button(
        "All Islands",
        function()
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(51.2420082, 849.832031, -151.813995, -1, 0, 0, 0, 1, 0, 0, 0, -1)
            wait(1)
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(
                232.594055,
                2044.78235,
                266.41507,
                -0.258864403,
                0,
                0.965913713,
                0,
                -1,
                0,
                0.965913713,
                0,
                0.258864343
            )
            wait(1)
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(
                183.842133,
                4070.43237,
                44.2856903,
                0.939700544,
                0,
                -0.341998369,
                0,
                -1.00000048,
                -0,
                -0.341998369,
                0,
                -0.939700961
            )
            wait(1)
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(
                141.994003,
                5686.7334,
                72.4150009,
                0.939700544,
                0,
                -0.341998369,
                0,
                -1.00000048,
                -0,
                -0.341998369,
                0,
                -0.939700961
            )
            wait(1)
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(
                141.994003,
                13709.5869,
                72.4150009,
                0.939700544,
                0,
                -0.341998369,
                0,
                -1.00000048,
                -0,
                -0.341998369,
                0,
                -0.939700961
            )

            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(
                141.994003,
                17715.8828,
                72.4150009,
                0.939700544,
                0,
                -0.341998369,
                0,
                -1.00000048,
                -0,
                -0.341998369,
                0,
                -0.939700961
            )
            wait(1)
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(
                141.994003,
                24099.5762,
                72.4150009,
                0.939700544,
                0,
                -0.341998369,
                0,
                -1.00000048,
                -0,
                -0.341998369,
                0,
                -0.939700961
            )
            wait(1)
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(
                140.093933,
                28292.5195,
                66.5151367,
                0.939700544,
                0,
                -0.341998369,
                0,
                -1.00000048,
                -0,
                -0.341998369,
                0,
                -0.939700961
            )
            wait(1)
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(
                140.093933,
                33243.2109,
                66.5151367,
                0.939700544,
                0,
                -0.341998369,
                0,
                -1.00000048,
                -0,
                -0.341998369,
                0,
                -0.939700961
            )
            wait(1)
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(
                140.093933,
                39353.8047,
                66.5151367,
                0.939700544,
                0,
                -0.341998369,
                0,
                -1.00000048,
                -0,
                -0.341998369,
                0,
                -0.939700961
            )
            wait(1)
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(
                140.093933,
                46046.7891,
                66.5151367,
                0.939700544,
                0,
                -0.341998369,
                0,
                -1.00000048,
                -0,
                -0.341998369,
                0,
                -0.939700961
            )
            wait(1)
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(
                140.093933,
                52643.9961,
                66.5151367,
                0.939700544,
                0,
                -0.341998369,
                0,
                -1.00000048,
                -0,
                -0.341998369,
                0,
                -0.939700961
            )
            wait(1)
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(
                140.093933,
                59630.9141,
                66.5151367,
                0.939700544,
                0,
                -0.341998369,
                0,
                -1.00000048,
                -0,
                -0.341998369,
                0,
                -0.939700961
            )
            wait(1)
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(
                140.093933,
                66705.4063,
                66.5151367,
                0.939700544,
                0,
                -0.341998369,
                0,
                -1.00000048,
                -0,
                -0.341998369,
                0,
                -0.939700961
            )
            wait(1)
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(
                140.093933,
                70307.3984,
                66.5151367,
                0.939700544,
                0,
                -0.341998369,
                0,
                -1.00000048,
                -0,
                -0.341998369,
                0,
                -0.939700961
            )
            wait(1)
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(
                140.093933,
                74479.0938,
                66.5151367,
                0.939700544,
                0,
                -0.341998369,
                0,
                -1.00000048,
                -0,
                -0.341998369,
                0,
                -0.939700961
            )
            wait(1)
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(
                140.093933,
                79783.2266,
                66.5151367,
                0.939700544,
                0,
                -0.341998369,
                0,
                -1.00000048,
                -0,
                -0.341998369,
                0,
                -0.939700961
            )
            wait(1)
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(
                140.093933,
                83235.2266,
                66.5151367,
                0.939700544,
                0,
                -0.341998369,
                0,
                -1.00000048,
                -0,
                -0.341998369,
                0,
                -0.939700961
            )
            wait(1)
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(
                140.093933,
                87087.3125,
                66.5151367,
                0.939700544,
                0,
                -0.341998369,
                0,
                -1.00000048,
                -0,
                -0.341998369,
                0,
                -0.939700961
            )
        end
    )
end

if game.PlaceId == 2202352383 then ---Super Fighting Simulator
    local VLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/VL"))()

    local s = VLib:Window("Straw Hub", "Fighting Simulator", "S")
    local ss = s:Tab("MAIN")

    ss:Toggle(
        "Autofarm MovementSpeed",
        function(FarmQ)
            getgenv().farmer = FarmQ
            while wait() do
                if getgenv().farmer == true then
                    game:GetService("ReplicatedStorage").RemoteEvent:FireServer({"+MS1"})
                end
            end
        end
    )

    ss:Toggle(
        "Autofarm Strenght",
        function(FarmQ)
            getgenv().farmer = FarmQ
            while wait() do
                if getgenv().farmer == true then
                    game:GetService("ReplicatedStorage").RemoteEvent:FireServer({"+FS1"})
                end
            end
        end
    )

    ss:Toggle(
        "Autofarm BodyToughness",
        function(FarmQ)
            getgenv().farmer = FarmQ
            while wait() do
                if getgenv().farmer == true then
                    game:GetService("ReplicatedStorage").RemoteEvent:FireServer({"+BT1"})
                end
            end
        end
    )

    ss:Toggle(
        "Autofarm JumpForce",
        function(FarmQ)
            getgenv().farmer = FarmQ
            while wait() do
                if getgenv().farmer == true then
                    game:GetService("ReplicatedStorage").RemoteEvent:FireServer({"+JF1"})
                end
            end
        end
    )

    ss:Toggle(
        "Autofarm Psychic",
        function(FarmQ)
            getgenv().farmer = FarmQ
            while wait() do
                if getgenv().farmer == true then
                    game:GetService("ReplicatedStorage").RemoteEvent:FireServer({"+PP1"})
                end
            end
        end
    )

    local sss = s:Tab("MISC")

    sss:Slider(
        "WalkSpeed Changer",
        0,
        1000,
        16,
        function(t)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = t
        end
    )

    sss:Slider(
        "JumpPower Changer",
        0,
        1000,
        16,
        function(t)
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = t
        end
    )
end

if game.GameId == 111958650 then --ARSENAL
    local Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/VLi"))()

    local win = Lib:Window("Straw Hub V2")

    local serv = win:Server("Straw Hub", "")

    local btns = serv:Channel("Main")

    btns:Toggle(
        "Tp To All",
        function(Farmq)
            getgenv().farmer = Farmq
            while wait() do
                if getgenv().farmer == true then
                    for i, v in pairs(game.Players:GetChildren()) do
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
                    end
                end
            end
        end
    )

    btns:Toggle(
        "Kill All",
        false,
        function(t)
            getgenv().k = t
            while wait() do
                if getgenv().k == true then
                    local StrawGun =
                        game.ReplicatedStorage.Weapons:FindFirstChild(game.Players.LocalPlayer.NRPBS.EquippedTool.Value)
                    local CriticalHits = math.random() > .6 and true or false
                    for i, v in pairs(game.Players:GetPlayers()) do
                        if v and v.Character and v.Character:FindFirstChild("Head") then
                            local Distance =
                                (game.Players.LocalPlayer.Character.Head.Position - v.Character.Head.Position).magnitude
                            for i = 1, 10 do
                                game.ReplicatedStorage.Events.HitPart:FireServer(
                                    v.Character.Head,
                                    v.Character.Head.Position + Vector3.new(math.random(), math.random(), math.random()),
                                    StrawGun.Name,
                                    CriticalHits and 2 or 1,
                                    Distance,
                                    Backstab,
                                    Crit,
                                    false,
                                    1,
                                    false,
                                    StrawGun.FireRate.Value,
                                    StrawGun.ReloadTime.Value,
                                    StrawGun.Ammo.Value,
                                    StrawGun.StoredAmmo.Value,
                                    StrawGun.Bullets.Value,
                                    StrawGun.EquipTime.Value,
                                    StrawGun.RecoilControl.Value,
                                    StrawGun.Auto.Value,
                                    StrawGun["Speed%"].Value,
                                    game.ReplicatedStorage.wkspc.DistributedTime.Value
                                )
                            end
                        end
                    end
                end
            end
        end
    )

    btns:Button(
        "No Fall Damage",
        function()
            game:GetService("ReplicatedStorage").Events.FallDamage:Destroy()
        end
    )

    btns:Button(
        "HitBox Expander",
        function(thing)
            spawn(
                function()
                    while wait() do
                        for i, v in pairs(game.Players:GetChildren()) do
                            for i2, v2 in pairs(game.Workspace[v.Name]:GetChildren()) do
                                if v2.Name == "LowerTorso" then
                                    if
                                        v.Name ~= game.Players.LocalPlayer.Name and
                                            v.Team ~= game.Players.LocalPlayer.Team
                                     then
                                        if v2.CanCollide == true then
                                            v2.CanCollide = false
                                            v2.Size = Vector3.new(30, 30, 30)
                                            v2.Parent.HumanoidRootPart.Size = Vector3.new(30, 30, 30)
                                        end
                                    elseif
                                        v.Team == game.Players.LocalPlayer.Team and
                                            v.Name ~= game.Players.LocalPlayer.Name
                                     then
                                        if
                                            v2.Parent.HumanoidRootPart.Size ~= Vector3.new(1, 2, 1) and
                                                v2.Size ~= Vector3.new(2, 0.4, 1)
                                         then
                                            v2.CanCollide = true
                                            v2.Size = Vector3.new(2, 0.4, 1)
                                            v2.Parent.HumanoidRootPart.Size = Vector3.new(1, 2, 1)
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            )
        end
    )

    btns:Button(
        "Aimbot",
        function()
            local VUIS = game.UserInputService
            local camera = game.workspace.CurrentCamera

            function ClosePlayer()
                local closestDistance = math.huge
                local closestPlayer = nil

                for i, v in pairs(game.Players:GetChildren()) do
                    if v ~= game.Players.LocalPlayer and v.Team ~= game.Players.LocalPlayer.Team then
                        local distance =
                            (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                            v.Character.HumanoidRootPart.Position).magnitude
                        if distance < closestDistance then
                            closestDistance = distance
                            closestPlayer = v
                        end
                    end
                end
                return closestPlayer
            end

            VUIS.InputBegan:Connect(
                function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton2 then
                        getgenv().aim = true
                        while wait() do
                            if getgenv().aim == true then
                                camera.CFrame =
                                    CFrame.new(camera.CFrame.Position, ClosePlayer().Character.Head.Position)

                                if getgenv().aim == false then
                                    return
                                end
                            end
                        end
                    end
                end
            )

            VUIS.InputEnded:Connect(
                function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton2 then
                        getgenv().aim = false
                    end
                end
            )
        end
    )
end

if game.PlaceId == 5016324469 then --STREET STRIKERS
    local VLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/VL"))()

    local s = VLib:Window("Straw Hub", "Street Strikers", "S")
    local sss = s:Tab("How To Use")
    local ss = s:Tab("MAIN")
    local sss = s:Tab("STATS")

    sss:Label("Dont worry if quest does not complete")

    sss:Label("There is a cooldown keep waiting")

    sss:Label("It will complete")

    ss:Toggle(
        "Autofarm Money",
        function(FarmQ)
            getgenv().farmer1 = FarmQ
            while wait(5) do
                if getgenv().farmer1 == true then
                    game:GetService("ReplicatedStorage").jobs:FireServer("start", "cat")
                    wait(5)
                    game:GetService("ReplicatedStorage").jobs:FireServer("finish", "cat", false)
                end
            end
        end
    )

    ss:Toggle(
        "Autofarm Thug",
        function(FarmQ)
            game:GetService("RunService").Heartbeat:Connect(
                function()
                    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                end
            )

            getgenv().farmer2 = FarmQ
            while wait() do --THUG
                if getgenv().farmer2 == true then
                    if game.Workspace.Thug:FindFirstChild("HumanoidRootPart") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            CFrame.new(-689.052307, 3501.37354, 1131.03442)
                        game:GetService("Workspace").Thug.HumanoidRootPart.CFrame =
                            CFrame.new(-689.074097, 3501.37354, 1130.78516)
                    end
                end
            end
        end
    )

    ss:Toggle(
        "Autofarm Gorilla",
        function(FarmQ)
            game:GetService("RunService").Heartbeat:Connect(
                function()
                    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                end
            )

            getgenv().farmer2 = FarmQ
            while wait() do --Gorilla
                if getgenv().farmer2 == true then
                    if game.Workspace.Gorilla:FindFirstChild("HumanoidRootPart") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            CFrame.new(-689.052307, 3501.37354, 1131.03442)
                        game:GetService("Workspace").Gorilla.HumanoidRootPart.CFrame =
                            CFrame.new(-689.074097, 3501.37354, 1130.78516)
                    end
                end
            end
        end
    )

    ss:Toggle(
        "Mob KillAura",
        function(FarmQ)
            getgenv().farmer2 = FarmQ
            while wait(3) do
                if getgenv().farmer2 == true then
                    game:GetService("ReplicatedStorage").damage:FireServer(
                        {
                            {
                                workspace.Thug,
                                0,
                                {CFrame.new(-89.1664352, 3479.97827, 795.85791, 1, 0, 0, 0, 1, 0, 0, 0, 1)},
                                Vector3.new(38, 25, 23)
                            }
                        },
                        {38, 25, 0, 24},
                        "impact",
                        false,
                        false,
                        1,
                        0,
                        false
                    )
                    game:GetService("ReplicatedStorage").damage:FireServer(
                        {
                            {
                                workspace.Gorilla,
                                0,
                                {CFrame.new(-89.1664352, 3479.97827, 795.85791, 1, 0, 0, 0, 1, 0, 0, 0, 1)},
                                Vector3.new(38, 25, 23)
                            }
                        },
                        {38, 25, 0, 24},
                        "impact",
                        false,
                        false,
                        1,
                        0,
                        false
                    )
                end
            end
        end
    )

    ss:Button(
        "Inf Hunger",
        function()
            local metatable = getrawmetatable(game)
            local namecall = metatable.__namecall
            setreadonly(metatable, false)

            metatable.__namecall =
                newcclosure(
                function(self, ...)
                    if self.Name == "sethunger" then
                        return wait(9e9)
                    end
                    return namecall(self, ...)
                end
            )
        end
    )


    sss:Toggle(
        "Autofarm Agility",
        function(FarmQ)
            getgenv().farmer2 = FarmQ
            while wait(2) do
                if getgenv().farmer2 == true then
                    game:GetService("ReplicatedStorage").damage:FireServer(
                        {
                            {
                                workspace.bag,
                                0,
                                {CFrame.new(31.5520477, 3497.91162, 1152.96631, 1, 0, 0, 0, 1, 0, 0, 0, 1)},
                                Vector3.new(0.756046772, 1.23331571, 9.89481354)
                            }
                        },
                        {2, 0.35, 0, 0.2},
                        "impact",
                        false,
                        false,
                        1,
                        0,
                        false
                    )
                end
            end
        end
    )

    sss:Toggle(
        "Autofarm Mana",
        function(FarmQ)
            getgenv().farmer2 = FarmQ
            while wait(2) do
                if getgenv().farmer2 == true then
                    game:GetService("ReplicatedStorage").training:FireServer("meditation", 4, true, true)
                 --MANA
                end
            end
        end
    )

    sss:Toggle(
        "Autofarm Strenght",
        function(FarmQ)
            getgenv().farmer2 = FarmQ
            while wait(2) do
                if getgenv().farmer2 == true then
                    game:GetService("ReplicatedStorage").training:FireServer("dumbbell", 4, true, true)
                 --STR
                end
            end
        end
    )

    sss:Toggle(
        "Autofarm Endurance",
        function(FarmQ)
            getgenv().farmer2 = FarmQ
            while wait(2) do
                if getgenv().farmer2 == true then
                    game:GetService("ReplicatedStorage").training:FireServer("barbell", 4, true, true)
                 --ENDURANCE
                end
            end
        end
    )

    sss:Toggle(
        "Autofarm Speed",
        function(FarmQ)
            getgenv().farmer2 = FarmQ
            while wait(2) do
                if getgenv().farmer2 == true then
                    game:GetService("ReplicatedStorage").training:FireServer("weakconveyor", 4, true, true)
                 --SPEED
                end
            end
        end
    )

    sss:Toggle(
        "Autofarm All",
        function(FarmQ)
            getgenv().farmer2 = FarmQ
            while wait(2) do
                if getgenv().farmer2 == true then
                    game:GetService("ReplicatedStorage").training:FireServer("weakconveyor", 4, true, true)
                     --SPEED
                    game:GetService("ReplicatedStorage").training:FireServer("meditation", 4, true, true)
                     --MANA
                    game:GetService("ReplicatedStorage").training:FireServer("dumbbell", 4, true, true)
                     --STR
                    game:GetService("ReplicatedStorage").training:FireServer("barbell", 4, true, true)
                 --ENDURANCE
                end
            end
        end
    )
end
if game.PlaceId == 2788229376 then ---DA HOOD
    local VLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/VL"))()

    local s = VLib:Window("Straw Hub", "Da Hood", "D")
    local ss = s:Tab("MAIN")

    ss:Button(
        "Join Police",
        function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(-272.358582, 21.7979622, -109.027603)
            local clickdect = game:GetService("Workspace").Ignored["Join/Leave"].ClickDetector
            wait(1)
            fireclickdetector(clickdect)
            wait(2)
            nigganogga = game.StarterGui.MainScreenGui.AreYouSure.TextButton
            firesignal(nigganogga.MouseButton1Down)
        end
    )

    ss:Button(
        "UnJail",
        function()
            game.Players.LocalPlayer.character.HumanoidRootPart.CFrame =
                game:GetService("Workspace").Ignored.Shop["[Key] - $125"].Head.CFrame
            wait(1)
            local dextor = game:GetService("Workspace").Ignored.Shop["[Key] - $125"].ClickDetector
            fireclickdetector(dextor)
            wait(0.5)
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(
                game:GetService("Players").LocalPlayer.Backpack["[Key]"]
            )
        end
    )

    ss:Toggle(
        "Cashier Farm",
        function(bool)
            for i, v in pairs(game:GetService("Workspace").Cashiers:GetChildren()) do
                if v.Humanoid.Health > 0 then
                    repeat
                        wait()
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                            v.Head.CFrame * CFrame.new(Vector3.new(0, 2, 0), Vector3.new(0, 100, 0))
                    until v.Humanoid.Health < 0
                end
            end
        end
    )

    ss:Toggle(
        "Hospital Farm",
        function(value)
            _G.toggle = Value
            game:getService("RunService"):BindToRenderStep(
                "",
                0,
                function()
                    if not game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid") then
                        return
                    end
                    while wait() do
                        if _G.toggle == true then
                            game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)
                        end
                    end
                end
            )
            while wait(1) do
                if _G.toggle == true then
                    pcall(
                        function()
                            for i, v in pairs(game:GetService("Workspace").Ignored.HospitalJob:GetChildren()) do
                                if v:IsA("Model") then
                                    _G.patient = v.Name
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                                        game.Workspace.Ignored.HospitalJob[v.Name].HumanoidRootPart.CFrame *
                                        CFrame.new(Vector3.new(0, -6.5, 0), Vector3.new(0, 100, 0))
                                end
                            end
                            for i, v in pairs(game.Workspace.Ignored.HospitalJob:GetChildren()) do
                                if v.Name == "Can I get the Red bottle" then
                                    local clickdetector = game.Workspace.Ignored.HospitalJob.Red.ClickDetector
                                    fireclickdetector(clickdetector)
                                elseif v.Name == "Can I get the Blue bottle" then
                                    local clickdetector = game.Workspace.Ignored.HospitalJob.Blue.ClickDetector
                                    fireclickdetector(clickdetector)
                                elseif v.Name == "Can I get the Green bottle" then
                                    local clickdetector = game.Workspace.Ignored.HospitalJob.Green.ClickDetector
                                    fireclickdetector(clickdetector)
                                end
                            end
                            local clickdetector2 =
                                game:GetService("Workspace").Ignored.HospitalJob[_G.patient].ClickDetector
                            fireclickdetector(clickdetector2)
                        end
                    )
                elseif _G.toggle == false then
                    return
                end
            end
        end
    )

    ss:Toggle(
        "Tp To Money Drops",
        function(bool)
            if bool == true then
                game:GetService("RunService").Heartbeat:Connect(
                    function()
                        game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                    end
                )

                getgenv().farmer = true
                while wait() do
                    if getgenv().farmer == true then
                        local Players = game.Players
                        local Player = Players.LocalPlayer

                        local ToLocalP = game.Workspace.Ignored.Drop.MoneyDrop

                        function TPPLAYER()
                            Player.Character.HumanoidRootPart.CFrame = CFrame.new(ToLocalP.Position)
                        end

                        TPPLAYER()
                    elseif bool == false then
                        getgenv().farmer = false
                    end
                end
            end
        end
    )

    ss:Toggle(
        "Shoe Farm",
        function(bool)
            game:GetService("RunService").Heartbeat:Connect(
                function()
                    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                end
            )

            if bool == true then
                game:GetService("Workspace").MAP.Map["hood kicks"]:Destroy()
                getgenv().farmer2 = true
                while wait(.3) do
                    if getgenv().farmer2 == true then
                        local descendants = game.Workspace.Ignored.Drop:GetDescendants()
                        for index, descendant in pairs(descendants) do
                            if descendant.Name == "MeshPart" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                    CFrame.new(descendant.Position)
                                game.Players.LocalPlayer.Character.Humanoid.Jump = true
                                wait(1)
                                fireclickdetector(game.Workspace.Ignored.Drop.MeshPart.ClickDetector)
                                wait(1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                    game:GetService("Workspace").Ignored[
                                    "Clean the shoes on the floor and come to me for cash"
                                ].LowerTorso.CFrame
                                fireclickdetector(
                                    game:GetService("Workspace").Ignored[
                                        "Clean the shoes on the floor and come to me for cash"
                                    ].ClickDetector
                                )
                                wait(1)
                                game.Players.LocalPlayer.Character.Humanoid.Jump = true
                            elseif bool == false then
                                getgenv.farmer2 = false
                            end
                        end
                    end
                end
            end
        end
    )

    local sss = s:Tab("MISC")

    sss:Dropdown(
        "Teleports",
        {
            "Hood Kicks",
            "Tyrone's GunZ",
            "Jeff's",
            "Da Bank",
            "Park",
            "Hood Fitness",
            "Fast Food",
            "Metro",
            "Hospital",
            "Smartphone Shop",
            "Playground",
            "Gas Station",
            "Klips",
            "Fire Department"
        },
        function(value)
            if Value == "Tyrone's GunZ" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(494.215515, 48.0685081, -627.296021)
            elseif Value == "Jeff's" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(589.960876, 51.0594025, -480.269562)
            elseif Value == "Da Bank" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(-448.731537, 23.1599579, -283.728394)
            elseif Value == "Park" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(366.649475, 50.259285, -400.029114)
            elseif Value == "Smartphone Shop" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(-102.925934, 21.9069901, -871.030701)
            elseif Value == "Playground" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(-253.389999, 22.1478767, -753.881104)
            elseif Value == "Fast Food" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(298.963257, 49.2806702, -613.90332)
            elseif Value == "Hospital" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(102.07019, 22.7980003, -484.209991)
            elseif Value == "Hood Fitness" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(-76.4810944, 22.6982899, -630.165527)
            elseif Value == "Gas Station" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(591.441528, 48.9980507, -258.464783)
            elseif Value == "Klips" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(3.49468136, 21.7480049, -90.1149673)
            elseif Value == "Fire Department" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(-112.863419, 28.0461464, -112.854378)
            elseif Value == "Metro" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(-374.824921, -21.2519951, 113.759598)
            elseif Value == "Da Furniture" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(-486.35968, 21.8478584, -77.0458908)
            elseif Value == "Hood Kicks" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(-224.505508, 21.8438072, -412.016479)
            elseif Value == "Jail" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(310.851563, 24.0560493, -26.732172)
            elseif Value == "Da Casino" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(-870.768433, 21.7480049, -86.3993225)
            end
        end
    )
    sss:Slider(
        "WalkSpeed",
        0,
        250,
        16,
        function(t)
            local gmt = getrawmetatable(game)
            setreadonly(gmt, false)
            local oldindex = gmt.__index

            gmt.__index =
                newcclosure(
                function(self, b)
                    if b == "WalkSpeed" then
                        return 16
                    end
                    return oldindex(self, b)
                end
            )

            while wait() do
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = t
            end
        end
    )

    sss:Button(
        "Hide Character",
        function()
            for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v.ClassName == "Accessory" or v.Name == "Shirt" or v.Name == "Pants" then
                    v:Destroy()
                end
            end
        end
    )

 
end

if game.PlaceId == 2569625809 or game.PlaceId == 570158081 or game.PlaceId == 537600204 then
    local Abstract =
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AbstractPoo/Main/AbstractUI/AbstractUI"))()
    local UI = Abstract:Create("Straw Hub", UDim2.new(0, 420, 0, 450))
    UI:Divider("Automation")

    UI:Button(
        "Button",
        "AutoFarm Exp (Grass)",
        function()
            while wait() do
                game:GetService("ReplicatedStorage").Remotes.DoClientMagic:FireServer("Grass", "Spore Bombs")

                wait()

                game:GetService("ReplicatedStorage").Remotes.DoMagic:InvokeServer(
                    "Grass",
                    "Spore Bombs",
                    CFrame.new(
                        -1632.29602,
                        40.9587402,
                        921.052429,
                        0.94363457,
                        -0.0706476048,
                        -0.323361903,
                        -0,
                        0.976955473,
                        -0.213443667,
                        0.33098945,
                        0.201412827,
                        0.921888769
                    )
                )

                wait()

                game:GetService("ReplicatedStorage").Remotes.DoMagic:InvokeServer("Grass", "Poison Needles")

                wait()

                game:GetService("ReplicatedStorage").Remotes.DoMagic:InvokeServer("Grass", "Poison Needles")

                wait()

                game:GetService("ReplicatedStorage").Remotes.DoClientMagic:FireServer("Grass", "Poison Needles")
            end
        end
    )

    UI:Button(
        "Button",
        "Autofarm Exp (Fire)",
        function()
            while wait() do
                game:GetService("ReplicatedStorage").Remotes.DoMagic:InvokeServer(
                    "Fire",
                    "Consecutive Fire Bullets",
                    CFrame.new(
                        -1632.29602,
                        40.9587402,
                        921.052429,
                        0.94363457,
                        -0.0706476048,
                        -0.323361903,
                        -0,
                        0.976955473,
                        -0.213443667,
                        0.33098945,
                        0.201412827,
                        0.921888769
                    )
                )

                wait()

                game:GetService("ReplicatedStorage").Remotes.DoClientMagic:FireServer(
                    "Fire",
                    "Consecutive Fire Bullets"
                )

                wait()

                game:GetService("ReplicatedStorage").Remotes.DoMagic:InvokeServer("Fire", "Blaze Column")

                wait()

                game:GetService("ReplicatedStorage").Remotes.DoClientMagic:FireServer("Fire", "Blaze Column")

                wait()
            end
        end
    )

    UI:Button(
        "Button",
        "AutoFarm Exp (Water)",
        function()
            while wait() do
                game:GetService("ReplicatedStorage").Remotes.DoMagic:InvokeServer("Water", "Water Beam")

                wait()

                game:GetService("ReplicatedStorage").Remotes.DoClientMagic:FireServer("Water", "Water Beam")

                wait()

                game:GetService("ReplicatedStorage").Remotes.DoMagic:InvokeServer("Water", "Water Tornado")

                wait()

                game:GetService("ReplicatedStorage").Remotes.DoClientMagic:FireServer("Water", "Water Tornado")
            end
        end
    )

    UI:Button(
        "Button",
        "Kill All Players (Turn On Exp Farm)",
        function()
            local players = (game.Players:GetPlayers())
            for i = 1, #players do
                local screenGui = Instance.new("ScreenGui")
                screenGui.Parent = script.Parent
                local textBox = Instance.new("TextBox")
                textBox.Text = (players[i].Name)
                game.Players[textBox.Text].Character.Humanoid.HealthChanged:connect(
                    function(health)
                        if game.Players[textBox.text].Character.Humanoid.Health <= 40 then
                            local targetpos =
                                game:GetService "Players"[textBox.Text].Character.HumanoidRootPart.Position
                             --get target pos
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                CFrame.new(targetpos.X, targetpos.Y, targetpos.Z) --TP to target
                            local plr = game.Players.LocalPlayer
                            local mouse = plr:GetMouse()
                            local TrueMagic = game.ReplicatedStorage.Remotes.DoMagic
                            game.ReplicatedStorage.Remotes.DoClientMagic:FireServer("Fire", "Consecutive Fire Bullets")
                             --Change "Fire" To your magic and change "Consecutive Fire Bullets" to your own magic move.
                            TrueMagic:InvokeServer("Fire", "Consecutive Fire Bullets", mouse.Target, mouse.Hit)
                         --Change "Fire" To your magic and change "Consecutive Fire Bullets" to your own magic move.
                        end
                    end
                )
            end
        end
    )

    UI:Toggle(
        "Toggle",
        "Anti Afk",
        false,
        function(state)
            for i, v in next, getconnections(game.Players.LocalPlayer.Idled) do
                v:Disable()
            end
        end
    )

  
end

if game.PlaceId == 5617626326 then -- BLOOD SAMURAI 2
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/Attrixx/Scandia/main/VepsUILib.lua"), true))()
    local lib = _G.Library:init("Straw Hub")
    local tab = lib:addTab("Main")

    local Toggle =
        tab:addToggle(
        "Autofarm Wisdom",
        false,
        function(state)
            if state == true then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(1122.9231, 175.494949, -1805.17944)

                wait(0.5)
                getgenv().farmer = true
                while wait() do
                    if getgenv().farmer == true then
                        game:GetService("Players").LocalPlayer.PlayerGui.mvehdle.meditate:FireServer(
                            game:GetService("Players").LocalPlayer
                        )
                    end
                end
            elseif state == false then
                getgenv().farmer = false
                while wait() do
                    if getgenv().farmer == true then
                        game:GetService("Players").LocalPlayer.PlayerGui.mvehdle.meditate:FireServer(
                            game:GetService("Players").LocalPlayer
                        )
                    end
                end
            end
        end
    )

    local tab3 = lib:addTab("Character Scripts")

    local Button =
        tab3:addButton(
        "No Stun",
        function()
            local walkspeedplayer = game:GetService("Players").LocalPlayer
            local walkspeedmouse = walkspeedplayer:GetMouse()

            local walkspeedenabled = false

            function x_walkspeed(key)
                if (key == "x") then
                    if walkspeedenabled == false then
                        _G.WS = 50
                        local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid
                        Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(
                            function()
                                Humanoid.WalkSpeed = _G.WS
                            end
                        )
                        Humanoid.WalkSpeed = _G.WS

                        walkspeedenabled = true
                    elseif walkspeedenabled == true then
                        _G.WS = 20
                        local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid
                        Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(
                            function()
                                Humanoid.WalkSpeed = _G.WS
                            end
                        )
                        Humanoid.WalkSpeed = _G.WS

                        walkspeedenabled = false
                    end
                end
            end

            walkspeedmouse.KeyDown:connect(x_walkspeed)
        end
    )

    local Toggle =
        tab3:addToggle(
        "Spam Block",
        false,
        function(state)
            if state == true then
                getgenv().farmer = true
                while wait() do
                    game.Players.LocalPlayer.Character.SwordHandler.Block:FireServer(true)
                end
            end
        end
    )

    local Toggle =
        tab3:addToggle(
        "Anti Afk",
        false,
        function(state)
            for i, v in next, getconnections(game.Players.LocalPlayer.Idled) do
                v:Disable()
            end
        end
    )

    local tab5 = lib:addTab("Misc")

    local Dropdown =
        tab5:addDropdown(
        "Kill Aura",
        {"M1 Kill Aura", "M2 Kill Aura"},
        function(value)
            if value == "M1 Kill Aura" then
                while wait() do
                    game.Players.LocalPlayer.Character.SwordHandler.Slice:FireServer()
                end
            elseif value == "M2 Kill Aura" then
                while wait() do
                    game.Players.LocalPlayer.Character.SwordHandler.Slice2:FireServer(1)
                end
            end
        end
    )
    local tab2 = lib:addTab("Teleports")

    local Dropdown =
        tab2:addDropdown(
        "Fighting Styles",
        {"Reverse Stance", "Attack Stance", "Steady Stance", "Phoenix Child"},
        function(value)
            if value == "Reverse Stance" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(1499.62744, 618.821228, -3473.19604)
            elseif value == "Attack Stance" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(1111.99036, 175.419571, -1933.23767)
            elseif value == "Steady Stance" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(2118.32373, 524.703064, -1418.08032)
            elseif value == "Phoenix Child" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(game:GetService("Workspace").NPCS["Phoenix Child"].HumanoidRootPart.Position)
            end
        end
    )

    local Dropdown =
        tab2:addDropdown(
        "Samurai Armors",
        {"Samurai Stealth", "Samurai Trooper", "Samurai Elite"},
        function(value)
            if value == "Samurai Stealth" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(1578.15869, 309.577484, -3363.4248)
            elseif value == "Samurai Trooper" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(1204.73523, 175.889572, -1842.68689)
            elseif value == "Samurai Elite" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(1185.43213, 175.907578, -1843.38086)
            end
        end
    )
end
if game.PlaceId == 5835263912 then --ONE PIECE MILLENIUM 3
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/Attrixx/Scandia/main/VepsUILib.lua"), true))()
    local lib = _G.Library:init("Straw Hub")
    local tab = lib:addTab("Main")

    local Dropdown =
        tab:addDropdown(
        "Autofarm Mobs",
        {
            "Autofarm Villiage Bandits",
            "Autofarm Desert Bandits",
            "Autofarm Bandit Assassin",
            "Autofarm Weak Pirate",
            "Autofarm Vice Admiral",
            "Autofarm Desert Leader",
            "Autofarm Revolutionary Troop",
            "Autofarm Strong Pirate"
        },
        function(value)
            if value == "Autofarm Villiage Bandits" then
                game:GetService("RunService").Heartbeat:Connect(
                    function()
                        game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                    end
                )

                while wait() do
                    local TweenService = game:GetService("TweenService")
                    local tweenInfo =
                        TweenInfo.new(
                        1, -- Time
                        Enum.EasingStyle.Linear, -- EasingStyle
                        Enum.EasingDirection.Out, -- EasingDirection
                        0, -- RepeatCount (when less than zero the tween will loop indefinitely)
                        false, -- Reverses (tween will reverse once reaching it's goal)
                        0 -- DelayTime
                    )

                    local part = game.Players.LocalPlayer.Character.HumanoidRootPart
                    wait(0.1)
                    local npc = game:GetService("Workspace").Enemies["Village Bandit"].HumanoidRootPart
                    local npcCFrame = CFrame.new(npc.Position.X - 1, npc.Position.Y - 5, npc.Position.Z - -4)

                    local tween = TweenService:Create(part, tweenInfo, {CFrame = npcCFrame})
                    tween:Play()
                end
            elseif value == "Autofarm Desert Bandits" then
                game:GetService("RunService").Heartbeat:Connect(
                    function()
                        game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                    end
                )

                while wait() do
                    local TweenService = game:GetService("TweenService")
                    local tweenInfo =
                        TweenInfo.new(
                        20, -- Time
                        Enum.EasingStyle.Linear, -- EasingStyle
                        Enum.EasingDirection.Out, -- EasingDirection
                        0, -- RepeatCount (when less than zero the tween will loop indefinitely)
                        false, -- Reverses (tween will reverse once reaching it's goal)
                        0 -- DelayTime
                    )

                    local part = game.Players.LocalPlayer.Character.HumanoidRootPart
                    wait(0.1)
                    local npc = game:GetService("Workspace").Enemies["Desert Bandit"].HumanoidRootPart
                    local npcCFrame = CFrame.new(npc.Position.X - 1, npc.Position.Y - 5, npc.Position.Z - -4)

                    local tween = TweenService:Create(part, tweenInfo, {CFrame = npcCFrame})
                    tween:Play()
                end
            elseif value == "Autofarm Bandit Assassin" then
                game:GetService("RunService").Heartbeat:Connect(
                    function()
                        game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                    end
                )

                while wait() do
                    local TweenService = game:GetService("TweenService")
                    local tweenInfo =
                        TweenInfo.new(
                        5, -- Time
                        Enum.EasingStyle.Linear, -- EasingStyle
                        Enum.EasingDirection.Out, -- EasingDirection
                        0, -- RepeatCount (when less than zero the tween will loop indefinitely)
                        false, -- Reverses (tween will reverse once reaching it's goal)
                        0 -- DelayTime
                    )

                    local part = game.Players.LocalPlayer.Character.HumanoidRootPart
                    wait(0.1)
                    local npc = game:GetService("Workspace").Enemies["Bandit Assassin"].HumanoidRootPart
                    local npcCFrame = CFrame.new(npc.Position.X - 1, npc.Position.Y - 5, npc.Position.Z - -4)

                    local tween = TweenService:Create(part, tweenInfo, {CFrame = npcCFrame})
                    tween:Play()
                end
            elseif value == "Autofarm Weak Pirate" then
                game:GetService("RunService").Heartbeat:Connect(
                    function()
                        game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                    end
                )

                while wait() do
                    local TweenService = game:GetService("TweenService")
                    local tweenInfo =
                        TweenInfo.new(
                        15, -- Time
                        Enum.EasingStyle.Linear, -- EasingStyle
                        Enum.EasingDirection.Out, -- EasingDirection
                        0, -- RepeatCount (when less than zero the tween will loop indefinitely)
                        false, -- Reverses (tween will reverse once reaching it's goal)
                        0 -- DelayTime
                    )

                    local part = game.Players.LocalPlayer.Character.HumanoidRootPart
                    wait(0.1)
                    local npc = game:GetService("Workspace").Enemies["Weak Pirate"].HumanoidRootPart
                    local npcCFrame = CFrame.new(npc.Position.X - 1, npc.Position.Y - 5, npc.Position.Z - -4)

                    local tween = TweenService:Create(part, tweenInfo, {CFrame = npcCFrame})
                    tween:Play()
                end
            elseif value == "Autofarm Vice Admiral" then
                game:GetService("RunService").Heartbeat:Connect(
                    function()
                        game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                    end
                )

                while wait() do
                    local TweenService = game:GetService("TweenService")
                    local tweenInfo =
                        TweenInfo.new(
                        15, -- Time
                        Enum.EasingStyle.Linear, -- EasingStyle
                        Enum.EasingDirection.Out, -- EasingDirection
                        0, -- RepeatCount (when less than zero the tween will loop indefinitely)
                        false, -- Reverses (tween will reverse once reaching it's goal)
                        0 -- DelayTime
                    )

                    local part = game.Players.LocalPlayer.Character.HumanoidRootPart
                    wait(0.1)
                    local npc = game:GetService("Workspace").Enemies["Vice Admiral"].HumanoidRootPart
                    local npcCFrame = CFrame.new(npc.Position.X - 1, npc.Position.Y - 5, npc.Position.Z - -4)

                    local tween = TweenService:Create(part, tweenInfo, {CFrame = npcCFrame})
                    tween:Play()
                end
            elseif value == "Autofarm Desert Leader" then
                game:GetService("RunService").Heartbeat:Connect(
                    function()
                        game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                    end
                )

                while wait() do
                    local TweenService = game:GetService("TweenService")
                    local tweenInfo =
                        TweenInfo.new(
                        15, -- Time
                        Enum.EasingStyle.Linear, -- EasingStyle
                        Enum.EasingDirection.Out, -- EasingDirection
                        0, -- RepeatCount (when less than zero the tween will loop indefinitely)
                        false, -- Reverses (tween will reverse once reaching it's goal)
                        0 -- DelayTime
                    )

                    local part = game.Players.LocalPlayer.Character.HumanoidRootPart
                    wait(0.1)
                    local npc = game:GetService("Workspace").Enemies["Desert Leader"].HumanoidRootPart
                    local npcCFrame = CFrame.new(npc.Position.X - 1, npc.Position.Y - 5, npc.Position.Z - -4)

                    local tween = TweenService:Create(part, tweenInfo, {CFrame = npcCFrame})
                    tween:Play()
                end
            elseif value == "Autofarm Revolutionary Troop" then
                game:GetService("RunService").Heartbeat:Connect(
                    function()
                        game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                    end
                )

                while wait() do
                    local TweenService = game:GetService("TweenService")
                    local tweenInfo =
                        TweenInfo.new(
                        15, -- Time
                        Enum.EasingStyle.Linear, -- EasingStyle
                        Enum.EasingDirection.Out, -- EasingDirection
                        0, -- RepeatCount (when less than zero the tween will loop indefinitely)
                        false, -- Reverses (tween will reverse once reaching it's goal)
                        0 -- DelayTime
                    )

                    local part = game.Players.LocalPlayer.Character.HumanoidRootPart
                    wait(0.1)
                    local npc = game:GetService("Workspace").Enemies["Revolutionary Troop"].HumanoidRootPart
                    local npcCFrame = CFrame.new(npc.Position.X - 1, npc.Position.Y - 5, npc.Position.Z - -4)

                    local tween = TweenService:Create(part, tweenInfo, {CFrame = npcCFrame})
                    tween:Play()
                end
            elseif value == "Autofarm Strong Pirate" then
                game:GetService("RunService").Heartbeat:Connect(
                    function()
                        game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                    end
                )

                while wait() do
                    local TweenService = game:GetService("TweenService")
                    local tweenInfo =
                        TweenInfo.new(
                        15, -- Time
                        Enum.EasingStyle.Linear, -- EasingStyle
                        Enum.EasingDirection.Out, -- EasingDirection
                        0, -- RepeatCount (when less than zero the tween will loop indefinitely)
                        false, -- Reverses (tween will reverse once reaching it's goal)
                        0 -- DelayTime
                    )

                    local part = game.Players.LocalPlayer.Character.HumanoidRootPart
                    wait(0.1)
                    local npc = game:GetService("Workspace").Enemies["Strong Pirate"].HumanoidRootPart
                    local npcCFrame = CFrame.new(npc.Position.X - 1, npc.Position.Y - 5, npc.Position.Z - -4)

                    local tween = TweenService:Create(part, tweenInfo, {CFrame = npcCFrame})
                    tween:Play()
                end
            end
        end
    )

    local Button =
        tab:addButton(
        "AutoHit",
        function()
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.Combat)

            while wait() do
                local virtualUser = game:GetService("VirtualUser")
                virtualUser:CaptureController()
                wait(0.692379)
                virtualUser:Button1Down(
                    Vector2.new(0.35, -0.581835),
                    CFrame.new(2451.36, 50.2063, 1044.29, -0.0981538, -0.736318, -0.109425, 0.660476)
                )
                wait(0.100164)
                virtualUser:Button1Up(
                    Vector2.new(0.35, -0.581835),
                    CFrame.new(2451.36, 50.2063, 1044.29, -0.0981538, -0.736318, -0.109425, 0.660476)
                )
                wait(0.0683627)
                virtualUser:Button1Down(
                    Vector2.new(0.35, -0.581835),
                    CFrame.new(2451.36, 50.2063, 1044.29, -0.0981538, -0.736318, -0.109425, 0.660476)
                )
                wait(0.102037)
                virtualUser:Button1Up(
                    Vector2.new(0.35, -0.581835),
                    CFrame.new(2451.36, 50.2063, 1044.29, -0.0981538, -0.736318, -0.109425, 0.660476)
                )
                wait(0.0671155)
                virtualUser:Button1Down(
                    Vector2.new(0.35, -0.581835),
                    CFrame.new(2451.36, 50.2063, 1044.29, -0.0981538, -0.736318, -0.109425, 0.660476)
                )
                wait(0.101976)
                virtualUser:Button1Up(
                    Vector2.new(0.35, -0.581835),
                    CFrame.new(2451.36, 50.2063, 1044.29, -0.0981538, -0.736318, -0.109425, 0.660476)
                )
                wait(0.085172)
                virtualUser:Button1Down(
                    Vector2.new(0.35, -0.581835),
                    CFrame.new(2451.36, 50.2063, 1044.29, -0.0981538, -0.736318, -0.109425, 0.660476)
                )
                wait(0.0851426)
                virtualUser:Button1Up(
                    Vector2.new(0.35, -0.581835),
                    CFrame.new(2451.36, 50.2063, 1044.29, -0.0981538, -0.736318, -0.109425, 0.660476)
                )
                wait(0.0669434)
                virtualUser:Button1Down(
                    Vector2.new(0.347917, -0.581835),
                    CFrame.new(2451.36, 50.2063, 1044.29, -0.0981538, -0.736318, -0.109425, 0.660476)
                )
                wait(0.103441)
                virtualUser:Button1Up(
                    Vector2.new(0.347917, -0.581835),
                    CFrame.new(2451.36, 50.2063, 1044.29, -0.0981538, -0.736318, -0.109425, 0.660476)
                )
                wait(0.0490241)
                virtualUser:Button1Down(
                    Vector2.new(0.347917, -0.581835),
                    CFrame.new(2451.36, 50.2063, 1044.29, -0.0981538, -0.736318, -0.109425, 0.660476)
                )
                wait(0.0843452)
                virtualUser:Button1Up(
                    Vector2.new(0.347917, -0.581835),
                    CFrame.new(2451.36, 50.2063, 1044.29, -0.0981538, -0.736318, -0.109425, 0.660476)
                )
                wait(0.087036)
                virtualUser:Button1Down(
                    Vector2.new(0.346875, -0.579943),
                    CFrame.new(2451.36, 50.2063, 1044.29, -0.0981538, -0.736318, -0.109425, 0.660476)
                )
                wait(0.1012)
                virtualUser:Button1Up(
                    Vector2.new(0.346875, -0.579943),
                    CFrame.new(2451.36, 50.2063, 1044.29, -0.0981538, -0.736318, -0.109425, 0.660476)
                )
                wait(0.08331)
                virtualUser:Button1Down(
                    Vector2.new(0.345833, -0.578051),
                    CFrame.new(2451.36, 50.2063, 1044.29, -0.0981538, -0.736318, -0.109425, 0.660476)
                )
                wait(0.0852323)
                virtualUser:Button1Up(
                    Vector2.new(0.345833, -0.578051),
                    CFrame.new(2451.36, 50.2063, 1044.29, -0.0981538, -0.736318, -0.109425, 0.660476)
                )
                wait(0.118794)
                virtualUser:Button1Down(
                    Vector2.new(0.329167, -0.525071),
                    CFrame.new(2451.36, 50.2063, 1044.29, -0.0981538, -0.736318, -0.109425, 0.660476)
                )
                wait(0.0852045)
                virtualUser:Button1Up(
                    Vector2.new(0.247917, -0.30369),
                    CFrame.new(2451.36, 50.2063, 1044.29, -0.0981538, -0.736318, -0.109425, 0.660476)
                )
                wait(0.0838096)
                virtualUser:Button1Down(
                    Vector2.new(0.2125, -0.20719),
                    CFrame.new(2451.36, 50.2063, 1044.29, -0.0981538, -0.736318, -0.109425, 0.660476)
                )
                wait(0.102428)
                virtualUser:Button1Up(
                    Vector2.new(0.19375, -0.150426),
                    CFrame.new(2451.36, 50.2063, 1044.29, -0.0981538, -0.736318, -0.109425, 0.660476)
                )
                wait(0.0842843)
                virtualUser:Button1Down(
                    Vector2.new(0.160417, -0.0842006),
                    CFrame.new(2451.36, 50.2063, 1044.29, -0.0981538, -0.736318, -0.109425, 0.660476)
                )
                wait(0.0845377)
                virtualUser:Button1Up(
                    Vector2.new(0.158333, -0.0823084),
                    CFrame.new(2451.36, 50.2063, 1044.29, -0.0981538, -0.736318, -0.109425, 0.660476)
                )
                wait(0.0836756)
                virtualUser:Button1Down(
                    Vector2.new(0.158333, -0.0823084),
                    CFrame.new(2451.36, 50.2063, 1044.29, -0.0981538, -0.736318, -0.109425, 0.660476)
                )
                wait(0.0863253)
                virtualUser:Button1Up(
                    Vector2.new(0.158333, -0.0823084),
                    CFrame.new(2451.36, 50.2063, 1044.29, -0.0981538, -0.736318, -0.109425, 0.660476)
                )
                wait(0.0837729)
                virtualUser:Button1Down(
                    Vector2.new(0.096875, -0.116367),
                    CFrame.new(2451.36, 50.2063, 1044.29, -0.0981538, -0.736318, -0.109425, 0.660476)
                )
                wait(0.120163)
                virtualUser:Button1Up(
                    Vector2.new(0.096875, -0.116367),
                    CFrame.new(2451.36, 50.2063, 1044.29, -0.0981538, -0.736318, -0.109425, 0.660476)
                )
                wait(0.050627)
                virtualUser:Button1Down(
                    Vector2.new(0.0947917, -0.116367),
                    CFrame.new(2451.36, 50.2063, 1044.29, -0.0981538, -0.736318, -0.109425, 0.660476)
                )
                wait(0.117387)
                virtualUser:Button1Up(
                    Vector2.new(0.0947917, -0.116367),
                    CFrame.new(2451.36, 50.2063, 1044.29, -0.0981538, -0.736318, -0.109425, 0.660476)
                )
                wait(0.0518281)
                virtualUser:Button1Down(
                    Vector2.new(0.0947917, -0.116367),
                    CFrame.new(2451.36, 50.2063, 1044.29, -0.0981538, -0.736318, -0.109425, 0.660476)
                )
                wait(0.1003)
                virtualUser:Button1Up(
                    Vector2.new(0.0947917, -0.116367),
                    CFrame.new(2451.36, 50.2063, 1044.29, -0.0981538, -0.736318, -0.109425, 0.660476)
                )
                wait(0.0687835)
                virtualUser:Button1Down(
                    Vector2.new(0.0947917, -0.116367),
                    CFrame.new(2451.36, 50.2063, 1044.29, -0.0981538, -0.736318, -0.109425, 0.660476)
                )
                wait(0.101844)
                virtualUser:Button1Up(
                    Vector2.new(0.09375, -0.105014),
                    CFrame.new(2451.36, 50.2063, 1044.29, -0.0981538, -0.736318, -0.109425, 0.660476)
                )
                wait(0.086086)
                virtualUser:Button1Down(
                    Vector2.new(0.09375, -0.105014),
                    CFrame.new(2451.36, 50.2063, 1044.29, -0.0981538, -0.736318, -0.109425, 0.660476)
                )
                wait(0.100263)
                virtualUser:Button1Up(
                    Vector2.new(0.09375, -0.105014),
                    CFrame.new(2451.36, 50.2063, 1044.29, -0.0981538, -0.736318, -0.109425, 0.660476)
                )
                wait(0.0672)
                virtualUser:Button1Down(
                    Vector2.new(0.09375, -0.105014),
                    CFrame.new(2451.36, 50.2063, 1044.29, -0.0981538, -0.736318, -0.109425, 0.660476)
                )
                wait(0.0848506)
                virtualUser:Button1Up(
                    Vector2.new(0.09375, -0.105014),
                    CFrame.new(2451.36, 50.2063, 1044.29, -0.0981538, -0.736318, -0.109425, 0.660476)
                )
                wait(0.0679094)
                virtualUser:Button1Down(
                    Vector2.new(0.09375, -0.105014),
                    CFrame.new(2451.36, 50.2063, 1044.29, -0.0981538, -0.736318, -0.109425, 0.660476)
                )
                wait(0.06817)
                virtualUser:Button1Up(
                    Vector2.new(0.09375, -0.105014),
                    CFrame.new(2451.36, 50.2063, 1044.29, -0.0981538, -0.736318, -0.109425, 0.660476)
                )
                wait(0.0853954)
                virtualUser:Button1Down(
                    Vector2.new(0.09375, -0.105014),
                    CFrame.new(2451.36, 50.2063, 1044.29, -0.0981538, -0.736318, -0.109425, 0.660476)
                )
                wait(0.0682195)
                virtualUser:Button1Up(
                    Vector2.new(0.09375, -0.105014),
                    CFrame.new(2451.36, 50.2063, 1044.29, -0.0981538, -0.736318, -0.109425, 0.660476)
                )
                wait(0.0490939)
                virtualUser:Button1Down(
                    Vector2.new(0.09375, -0.105014),
                    CFrame.new(2451.36, 50.2063, 1044.29, -0.0981538, -0.736318, -0.109425, 0.660476)
                )
                wait(0.0863898)
                virtualUser:Button1Up(
                    Vector2.new(0.09375, -0.105014),
                    CFrame.new(2451.36, 50.2063, 1044.29, -0.0981538, -0.736318, -0.109425, 0.660476)
                )
                wait(0.0837985)
                virtualUser:Button1Down(
                    Vector2.new(0.09375, -0.105014),
                    CFrame.new(2451.36, 50.2063, 1044.29, -0.0981538, -0.736318, -0.109425, 0.660476)
                )
                wait(0.1013)
                virtualUser:Button1Up(
                    Vector2.new(0.09375, -0.105014),
                    CFrame.new(2451.36, 50.2063, 1044.29, -0.0981538, -0.736318, -0.109425, 0.660476)
                )
                wait(0.0511203)
                virtualUser:Button1Down(
                    Vector2.new(0.09375, -0.105014),
                    CFrame.new(2451.36, 50.2063, 1044.29, -0.0981538, -0.736318, -0.109425, 0.660476)
                )
                wait(0.135696)
                virtualUser:Button1Up(
                    Vector2.new(0.09375, -0.105014),
                    CFrame.new(2451.36, 50.2063, 1044.29, -0.0981538, -0.736318, -0.109425, 0.660476)
                )
                wait(0.0510099)
                virtualUser:Button1Down(
                    Vector2.new(0.09375, -0.105014),
                    CFrame.new(2451.36, 50.2063, 1044.29, -0.0981538, -0.736318, -0.109425, 0.660476)
                )
                wait(0.0846467)
                virtualUser:Button1Up(
                    Vector2.new(0.09375, -0.105014),
                    CFrame.new(2451.36, 50.2063, 1044.29, -0.0981538, -0.736318, -0.109425, 0.660476)
                )
                wait(0.0684733)
                virtualUser:Button1Down(
                    Vector2.new(0.09375, -0.105014),
                    CFrame.new(2451.36, 50.2063, 1044.29, -0.0981538, -0.736318, -0.109425, 0.660476)
                )
                wait(0.118028)
                virtualUser:Button1Up(
                    Vector2.new(0.09375, -0.105014),
                    CFrame.new(2451.36, 50.2063, 1044.29, -0.0981538, -0.736318, -0.109425, 0.660476)
                )
                wait(0.0510235)
                virtualUser:Button1Down(
                    Vector2.new(0.09375, -0.105014),
                    CFrame.new(2451.36, 50.2063, 1044.29, -0.0981538, -0.736318, -0.109425, 0.660476)
                )
                wait(0.117911)
                virtualUser:Button1Up(
                    Vector2.new(0.09375, -0.105014),
                    CFrame.new(2451.36, 50.2063, 1044.29, -0.0981538, -0.736318, -0.109425, 0.660476)
                )
            end
        end
    )

    local tab2 = lib:addTab("Misc")

    local Toggle =
        tab2:addToggle(
        "Anti Afk",
        false,
        function(state)
            for i, v in next, getconnections(game.Players.LocalPlayer.Idled) do
                v:Disable()
            end
        end
    )
end

if game.PlaceId == 4588604953 then --CRIMINALITY
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/Attrixx/Scandia/main/VepsUILib.lua"), true))()
    local lib = _G.Library:init("Straw Hub")
    local tab = lib:addTab("Main")

    local Button =
        tab:addButton(
        "Anti Cheat Bypass (ALWAYS USE)",
        function()
            -- // Criminality anti-cheat+adonis bypass written by @corewave

            local Context = game:GetService("ScriptContext")
            local Player = game:GetService "Players".LocalPlayer
            local Mt = getrawmetatable(game)
            local __namecall = Mt.__namecall
            local Template =
                "Client<table> at: %s\nClient.__index<function> at: %s\nADetect<function> at: %s\nIDetect<functions> at: %s\nKill<function> at: %s\nSend<function> at: %s\nDisconnect<function> at: %s"
            local Debug = true

            setreadonly(Mt, false)

            for _, Connection in next, getconnections(Context.Error) do
                Connection:Disable()
            end

            local function Lookup(T, A)
                assert(T == "function" or T == "table", "Expected table/function at args[1].")
                local F = T == "function"
                local R

                for _, o in next, getgc(not F) do
                    if ((not F) and type(o) == "table") or (F and (not is_synapse_function(o) and is_lclosure(o))) then
                        local M = true
                        local C = F and getconstants(o)

                        for i, v in next, A do
                            if (M and not ((F and C[i] == v) or ((not F) and rawget(o, v)))) then
                                M = false
                            end
                        end

                        if M then
                            R = o
                            break
                        end
                    end
                end

                return R
            end

            local function string_ret(o, typ)
                local ret, mt, old_func
                typ = typ or typeof(o)

                if not (typ == "table" or typ == "userdata") then
                    return tostring(o)
                end

                mt = (getrawmetatable or getmetatable)(o)
                if not mt then
                    return tostring(o)
                end

                old_func = rawget(mt, "__tostring")
                rawset(mt, "__tostring", nil)
                ret = tostring(o)
                rawset(mt, "__tostring", old_func)
                return ret
            end

            local Empty = function()
            end
            local Client = Lookup("table", {"Core", "Anti", "Remote", "Disconnect"})
            local Detect_A =
                Lookup(
                "function",
                {"Speed Exploit", "Jump Exploit", "HipHeight Exploit", "Changing _G's", "Stamina Spoofing", "Inf Jump"}
            )
            local Detect_B = Lookup("function", {"_", "Detected", 0.5, "kick"})
            local Detect_C = (not Detect_B) and Lookup("function", {"Detected", "kick", "crash"})
            local CMt = getmetatable(Client)

            local Send = rawget(rawget(Client, "Remote"), "Send")
            local Disconnect = rawget(Client, "Disconnect")
            local Kill = rawget(Client, "Kill")
            local CIndex = CMt and rawget(CMt, "__index")
            Detect = Detect_B or Detect_C

            if (Debug) then
                rconsoleprint(
                    Template:format(
                        string_ret(Client),
                        string_ret(CIndex),
                        string_ret(Detect),
                        string_ret(Detect_A),
                        string_ret(Kill),
                        string_ret(Send),
                        string_ret(Disconnect)
                    )
                )
            end

            if (Detect) then
                hookfunc(
                    Detect,
                    function()
                        return true
                    end
                )
            end

            if (Detect_A) then
                hookfunc(Detect_A, Empty)
            end

            if (Disconnect) then
                hookfunc(Disconnect, Empty)
            end

            if (Kill) then
                hookfunc(Kill, Empty)
            end

            if (CIndex) then
                hookfunc(
                    CIndex,
                    function(_, k)
                        if (k == "Kill") then
                            return function()
                                return Empty
                            end
                        end
                    end
                )
            end

            if (Send) then
                Send =
                    hookfunc(
                    Send,
                    function(...)
                        local Args = {...}
                        if (rawget(Args, 1) == "Detected") then
                            return
                        end
                        return Send(unpack(Args))
                    end
                )
            end

            hookfunc(Player.Kick, Empty)
            Mt.__namecall =
                newcclosure(
                function(self, ...)
                    if (Player == self and getnamecallmethod() == "Kick") then
                        return
                    end

                    return __namecall(self, ...)
                end
            )

            setreadonly(Mt, true)
        end
    )

    local Slider =
        tab:addSlider(
        "Walkspeed Changer",
        0,
        200,
        function(value)
            -- This walkspeed script is the same as others , but does not change to default speed when you reset. ENJOY !
            _G.HackedWalkSpeed = (value)

            local Plrs = game:GetService("Players")

            local MyPlr = Plrs.LocalPlayer
            local MyChar = MyPlr.Character

            if MyChar then
                local Hum = MyChar.Humanoid
                Hum.Changed:connect(
                    function()
                        Hum.WalkSpeed = _G.HackedWalkSpeed
                    end
                )
                Hum.WalkSpeed = _G.HackedWalkSpeed
            end

            MyPlr.CharacterAdded:connect(
                function(Char)
                    MyChar = Char
                    repeat
                        wait()
                    until Char:FindFirstChild("Humanoid")
                    local Hum = Char.Humanoid
                    Hum.Changed:connect(
                        function()
                            Hum.WalkSpeed = _G.HackedWalkSpeed
                        end
                    )
                    Hum.WalkSpeed = _G.HackedWalkSpeed
                end
            )

            -- end of script :)
        end
    )

    local Slider =
        tab:addSlider(
        "JumpPower Changer",
        0,
        200,
        function(value)
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = (value)
        end
    )
end

if game.PlaceId == 566399244 then
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/Attrixx/Scandia/main/VepsUILib.lua"), true))()
    local lib = _G.Library:init("Straw Hub")
    local tab = lib:addTab("Main")

    local Button =
        tab:addButton(
        "Autofarm EXP (Grass)",
        function()
            while wait() do
                game:GetService("ReplicatedStorage").Remotes.DoClientMagic:FireServer("Grass", "Spore Bombs")

                wait()

                game:GetService("ReplicatedStorage").Remotes.DoMagic:InvokeServer(
                    "Grass",
                    "Spore Bombs",
                    CFrame.new(
                        -1632.29602,
                        40.9587402,
                        921.052429,
                        0.94363457,
                        -0.0706476048,
                        -0.323361903,
                        -0,
                        0.976955473,
                        -0.213443667,
                        0.33098945,
                        0.201412827,
                        0.921888769
                    )
                )

                wait()

                game:GetService("ReplicatedStorage").Remotes.DoMagic:InvokeServer("Grass", "Poison Needles")

                wait()

                game:GetService("ReplicatedStorage").Remotes.DoMagic:InvokeServer("Grass", "Poison Needles")

                wait()

                game:GetService("ReplicatedStorage").Remotes.DoClientMagic:FireServer("Grass", "Poison Needles")
            end
        end
    )

    local Button =
        tab:addButton(
        "Autofarm EXP (Fire)",
        function()
            while wait() do
                game:GetService("ReplicatedStorage").Remotes.DoMagic:InvokeServer(
                    "Fire",
                    "Consecutive Fire Bullets",
                    CFrame.new(
                        -1632.29602,
                        40.9587402,
                        921.052429,
                        0.94363457,
                        -0.0706476048,
                        -0.323361903,
                        -0,
                        0.976955473,
                        -0.213443667,
                        0.33098945,
                        0.201412827,
                        0.921888769
                    )
                )

                wait()

                game:GetService("ReplicatedStorage").Remotes.DoClientMagic:FireServer(
                    "Fire",
                    "Consecutive Fire Bullets"
                )

                wait()

                game:GetService("ReplicatedStorage").Remotes.DoMagic:InvokeServer("Fire", "Blaze Column")

                wait()

                game:GetService("ReplicatedStorage").Remotes.DoClientMagic:FireServer("Fire", "Blaze Column")

                wait()
            end
        end
    )

    local Button =
        tab:addButton(
        "Autofarm EXP (Water)",
        function()
            while wait() do
                game:GetService("ReplicatedStorage").Remotes.DoMagic:InvokeServer("Water", "Water Beam")

                wait()

                game:GetService("ReplicatedStorage").Remotes.DoClientMagic:FireServer("Water", "Water Beam")

                wait()

                game:GetService("ReplicatedStorage").Remotes.DoMagic:InvokeServer("Water", "Water Tornado")

                wait()

                game:GetService("ReplicatedStorage").Remotes.DoClientMagic:FireServer("Water", "Water Tornado")
            end
        end
    )

    local Button =
        tab:addButton(
        "AutoKill Players",
        function()
            local players = (game.Players:GetPlayers())
            for i = 1, #players do
                local screenGui = Instance.new("ScreenGui")
                screenGui.Parent = script.Parent
                local textBox = Instance.new("TextBox")
                textBox.Text = (players[i].Name)
                game.Players[textBox.Text].Character.Humanoid.HealthChanged:connect(
                    function(health)
                        if game.Players[textBox.text].Character.Humanoid.Health <= 40 then
                            local targetpos =
                                game:GetService "Players"[textBox.Text].Character.HumanoidRootPart.Position
                             --get target pos
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                CFrame.new(targetpos.X, targetpos.Y, targetpos.Z) --TP to target
                            local plr = game.Players.LocalPlayer
                            local mouse = plr:GetMouse()
                            local TrueMagic = game.ReplicatedStorage.Remotes.DoMagic
                            game.ReplicatedStorage.Remotes.DoClientMagic:FireServer("Fire", "Consecutive Fire Bullets")
                             --Change "Fire" To your magic and change "Consecutive Fire Bullets" to your own magic move.
                            TrueMagic:InvokeServer("Fire", "Consecutive Fire Bullets", mouse.Target, mouse.Hit)
                         --Change "Fire" To your magic and change "Consecutive Fire Bullets" to your own magic move.
                        end
                    end
                )
            end

            local tab2 = lib:addTab("Misc")

            local Button =
                tab2:addButton(
                "Skill Spam",
                function()
                    while wait() do
                        game:GetService("ReplicatedStorage").Remotes.DoClientMagic:FireServer("Grass", "Spore Bombs")

                        wait()

                        game:GetService("ReplicatedStorage").Remotes.DoMagic:InvokeServer(
                            "Grass",
                            "Spore Bombs",
                            CFrame.new(
                                -1632.29602,
                                40.9587402,
                                921.052429,
                                0.94363457,
                                -0.0706476048,
                                -0.323361903,
                                -0,
                                0.976955473,
                                -0.213443667,
                                0.33098945,
                                0.201412827,
                                0.921888769
                            )
                        )

                        wait()

                        game:GetService("ReplicatedStorage").Remotes.DoMagic:InvokeServer("Grass", "Poison Needles")

                        wait()

                        game:GetService("ReplicatedStorage").Remotes.DoMagic:InvokeServer("Grass", "Poison Needles")

                        wait()

                        game:GetService("ReplicatedStorage").Remotes.DoClientMagic:FireServer("Grass", "Poison Needles")

                        wait()

                        game:GetService("ReplicatedStorage").Remotes.DoMagic:InvokeServer(
                            "Fire",
                            "Consecutive Fire Bullets",
                            CFrame.new(
                                -1632.29602,
                                40.9587402,
                                921.052429,
                                0.94363457,
                                -0.0706476048,
                                -0.323361903,
                                -0,
                                0.976955473,
                                -0.213443667,
                                0.33098945,
                                0.201412827,
                                0.921888769
                            )
                        )

                        wait()

                        game:GetService("ReplicatedStorage").Remotes.DoClientMagic:FireServer(
                            "Fire",
                            "Consecutive Fire Bullets"
                        )

                        wait()

                        game:GetService("ReplicatedStorage").Remotes.DoMagic:InvokeServer("Fire", "Blaze Column")

                        wait()

                        game:GetService("ReplicatedStorage").Remotes.DoClientMagic:FireServer("Fire", "Blaze Column")

                        wait()

                        game:GetService("ReplicatedStorage").Remotes.DoMagic:InvokeServer("Water", "Water Beam")

                        wait()

                        game:GetService("ReplicatedStorage").Remotes.DoClientMagic:FireServer("Water", "Water Beam")

                        wait()

                        game:GetService("ReplicatedStorage").Remotes.DoMagic:InvokeServer("Water", "Water Tornado")

                        wait()

                        game:GetService("ReplicatedStorage").Remotes.DoClientMagic:FireServer("Water", "Water Tornado")
                    end
                end
            )
        end
    )

    UI:Toggle(
        "Anti Afk",
        "You Wont Get Kicked For Being Idle",
        false,
        function(state)
            for i, v in next, getconnections(game.Players.LocalPlayer.Idled) do
                v:Disable()
            end
        end
    )
end



if game.PlaceId == 1458767429 then --ANIME BATTLE ARENA (ABA)
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/Attrixx/Scandia/main/VepsUILib.lua"), true))()
    local lib = _G.Library:init("Straw Hub")
    local tab = lib:addTab("Automation")

    local Button =
        tab:addButton(
        "Autofarm Points",
        function()
            for i, v in pairs(game.Players:GetChildren()) do
                while wait() do
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
                    wait(0.8)
                end
            end
        end
    )

    local tab2 = lib:addTab("Misc")

    local Button =
        tab2:addButton(
        "Autohit",
        function()
            getgenv().farmer = true
            while wait(.6) do
                if getgenv().farmer == true then
                    local args = {
                        [1] = "m1",
                        [2] = {
                            ["air"] = false,
                            ["mousehit"] = CFrame.new(
                                -484.569305,
                                -176.252823,
                                11561.1416,
                                -0.622997701,
                                -0.303034544,
                                0.721140742,
                                -0,
                                0.92191124,
                                0.387401372,
                                -0.782223761,
                                0.241350159,
                                -0.574348509
                            )
                        }
                    }

                    game:GetService("Players").LocalPlayer.Backpack.ServerTraits.Input:FireServer(unpack(args))
                end
            end
        end
    )

    local Toggle =
        tab2:addToggle(
        "Anti Afk",
        false,
        function(state)
            for i, v in next, getconnections(game.Players.LocalPlayer.Idled) do
                v:Disable()
            end
        end
    )
end

if game.PlaceId == 3101667897 then --LEGENDS OF SPEED
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/Attrixx/Scandia/main/VepsUILib.lua"), true))()
    local lib = _G.Library:init("Straw Hub")
    local tab = lib:addTab("Automation")

    local Toggle =
        tab:addToggle(
        "Auto Rebirth",
        false,
        function(state)
            if state == true then
                getgenv().farmer = true
                while wait() do
                    if getgenv().farmer == true then
                        game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer("rebirthRequest")
                    end
                end
            end
            if state == false then
                getgenv().farmer = false
                while wait() do
                    if getgenv().farmer == true then
                        game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer("rebirthRequest")
                    end
                end
            end
        end
    )

    local Toggle =
        tab:addToggle(
        "Autofarm Levels",
        false,
        function(state)
            if state == true then
                getgenv().farmer = true

                while wait() do
                    if getgenv().farmer == true then
                        game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(
                            "collectOrb",
                            "Yellow Orb",
                            "City"
                        )
                    end
                end
            elseif state == false then
                getgenv().farmer = false

                while wait() do
                    if getgenv().farmer == true then
                        game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(
                            "collectOrb",
                            "Yellow Orb",
                            "City"
                        )
                    end
                end
            end
        end
    )

    local tab2 = lib:addTab("Misc")

    local Toggle =
        tab2:addToggle(
        "Anti Afk",
        false,
        function(state)
            for i, v in next, getconnections(game.Players.LocalPlayer.Idled) do
                v:Disable()
            end
        end
    )

    local Toggle =
        tab2:addToggle(
        "Auto Confirm races",
        false,
        function(state)
            while wait() do
                game:GetService("ReplicatedStorage").rEvents.getServerTimeRemote:InvokeServer()
            end
        end
    )

    local Slider =
        tab2:addSlider(
        "Walkspeed",
        0,
        1000,
        function(value)
            game.Players.LocalPlayer.Humanoid.WalkSpeed = value
        end
    )
end

if game.PlaceId == 5455854502 then --ONE PUNCH MAN REBORN
    local Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/VLi"))()

    local win = Lib:Window("Straw Hub V2")

    local serv = win:Server("Straw Hub", "")

    local ss = serv:Channel("MAIN")
    local sss = serv:Channel("MISC")

    local Character_Table2 = {}
    for i, v in pairs(game:GetService("Workspace")["NPC_Quests"]:GetChildren()) do
        if v:IsA("Model") then
            table.insert(Character_Table2, v.Name)
        end
    end
    getgenv().mobs2 = nil
    getgenv().autofarm2 = false

    local Character_Table = {}
    for i, v in pairs(game:GetService("Workspace").Mobs:GetChildren()) do
        if v:IsA("Model") then
            table.insert(Character_Table, v.Name)
        end
    end
    getgenv().mobs = nil
    getgenv().autofarm1 = false

    ss:Dropdown(
        "Mobs",
        Character_Table,
        function(t)
            getgenv().mobs = t
        end
    )

    ss:Toggle(
        "Farm Start",
        false,
        function(t)
            game:GetService("RunService").Heartbeat:Connect(
                function()
                    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                end
            )

            getgenv().autofarm1 = t
            while wait() do
                for i, v in pairs(game:GetService("Workspace").Mobs:GetChildren()) do
                    if v.Name == getgenv().mobs and v:FindFirstChild("HumanoidRootPart") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            CFrame.new(v.HumanoidRootPart.Position + Vector3.new(0, -5, 0), v.HumanoidRootPart.Position)
                    end
                end
            end
        end
    )

    ss:Dropdown(
        "Quests",
        Character_Table2,
        function(t)
            getgenv().mobs2 = t
        end
    )

    ss:Toggle(
        "Quest Start",
        false,
        function(t)
            getgenv().autofarm2 = t
            while wait() do
                for i, v in pairs(game:GetService("Workspace")["NPC_Quests"]:GetChildren()) do
                    if v.Name == getgenv().mobs2 and getgenv().autofarm2 == true then
                        fireclickdetector(v.ClickDetector)
                    end
                end
            end
        end
    )

    sss:Toggle(
        "Loop Hit",
        false,
        function(t)
            getgenv().loop = t
            while wait() do
                if getgenv().loop == true then
                    while wait() do
                        local virtualUser = game:GetService("VirtualUser")
                        virtualUser:CaptureController()
                        wait()
                        virtualUser:Button1Down(Vector2.new(), CFrame.new())
                        wait()
                        virtualUser:Button1Down(Vector2.new(), CFrame.new())
                    end
                end
            end
        end
    )

    sss:Button(
        "Hide Name",
        function()
            game.Players.LocalPlayer.Character.Head.Gui:Destroy()
        end
    )

    sss:Toggle(
        "AutoUpgrade Strenght",
        false,
        function(state)
            getgenv().farmer = state
            while wait() do
                if getgenv().farmer == true then
                    game:GetService("ReplicatedStorage").RemoteEvents.AS:FireServer("Strength", 1)
                end
            end
        end
    )

    sss:Toggle(
        "AutoUpgrade Durability",
        false,
        function(state)
            getgenv().farmer = state
            while wait() do
                if getgenv().farmer == true then
                    game:GetService("ReplicatedStorage").RemoteEvents.AS:FireServer("Health", 1)
                end
            end
        end
    )

    sss:Toggle(
        "Upgrade All Stats",
        false,
        function(state)
            getgenv().stats = state
            while wait() do
                if getgenv().stats == true then
                    game:GetService("ReplicatedStorage").RemoteEvents.AS:FireServer("Health", 1)
                    game:GetService("ReplicatedStorage").RemoteEvents.AS:FireServer("Strength", 1)
                end
            end
        end
    )

    sss:Toggle(
        "Anti Afk",
        false,
        function(state)
            for i, v in next, getconnections(game.Players.LocalPlayer.Idled) do
                v:Disable()
            end
        end
    )

    sss:Toggle(
        "Anti Staff",
        false,
        function(state)
            game:GetService("Players").PlayerAdded:Connect(
                function(player)
                    if player:GetRankInGroup(5013735) > 2 then
                        game:GetService("Players").LocalPlayer:Kick("Staff Joined")
                    end
                end
            )
        end
    )

    local character = game.Players.LocalPlayer.Character

    sss:Button(
        "Hidename",
        function()
            character.Head.Gui:Destroy()
            for i, v in pairs(game.Players.LocalPlayer.Character.Head:GetChildren()) do
                if v.ClassName == "Accessory" or v.Name == "Shirt" or v.Name == "Pants" or v.Name == "PlayerName" then
                    v:Destroy()
                end
            end
        end
    )
end


if game.PlaceId == 6002047566 then --SORCERER FIGHTING SIMULATOR
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/Attrixx/Scandia/main/VepsUILib.lua"), true))()
    local lib = _G.Library:init("Straw Hub")
    local tab = lib:addTab("Main")

    local Toggle =
        tab:addToggle(
        "Autofarm Endurance",
        false,
        function(state)
            game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("PUI", true)

            if state == true then
                getgenv().farmer = true
                while wait() do
                    if getgenv().farmer == true then
                        game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("SG", "Endurance")
                    end
                end
            elseif state == false then
                getgenv().farmer = false
                while wait() do
                    if getgenv().farmer == true then
                        game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("SG", "Endurance")
                    end
                end
            end
        end
    )

    local Toggle =
        tab:addToggle(
        "Autofarm Element",
        false,
        function(state)
            game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("PUI", true)

            if state == true then
                getgenv().farmer = true
                while wait() do
                    if getgenv().farmer == true then
                        game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("SG")
                    end
                end
            elseif state == false then
                getgenv().farmer = false
                while wait() do
                    if getgenv().farmer == true then
                        game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("SG")
                    end
                end
            end
        end
    )

    local tab2 = lib:addTab("Upgrades")

    local Toggle =
        tab2:addToggle(
        "AutoUpgrade Fire",
        false,
        function(state)
            if state == true then
                getgenv().farmer = true
                while wait() do
                    if getgenv().farmer == true then
                        game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Stat", "Fire")
                    elseif state == false then
                        getgenv().farmer = false
                        while wait() do
                            if getgenv().farmer == true then
                                game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Stat", "Fire")
                            end
                        end
                    end
                end
            end
        end
    )

    local Toggle =
        tab2:addToggle(
        "AutoUpgrade Healer",
        false,
        function(state)
            if state == true then
                getgenv().farmer = true
                while wait() do
                    if getgenv().farmer == true then
                        game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Stat", "Healer")
                    elseif state == false then
                        getgenv().farmer = false
                        while wait() do
                            if getgenv().farmer == true then
                                game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer(
                                    "Stat",
                                    "Healer"
                                )
                            end
                        end
                    end
                end
            end
        end
    )

    local Toggle =
        tab2:addToggle(
        "AutoUpgrade Brawler",
        false,
        function(state)
            if state == true then
                getgenv().farmer = true
                while wait() do
                    if getgenv().farmer == true then
                        game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Stat", "Brawler")
                    elseif state == false then
                        getgenv().farmer = false
                        while wait() do
                            if getgenv().farmer == true then
                                game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer(
                                    "Stat",
                                    "Brawler"
                                )
                            end
                        end
                    end
                end
            end
        end
    )
    local Toggle =
        tab2:addToggle(
        "AutoUpgrade Water",
        false,
        function(state)
            if state == true then
                getgenv().farmer = true
                while wait() do
                    if getgenv().farmer == true then
                        game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Stat", "Water")
                    elseif state == false then
                        getgenv().farmer = false
                        while wait() do
                            if getgenv().farmer == true then
                                game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer(
                                    "Stat",
                                    "Water"
                                )
                            end
                        end
                    end
                end
            end
        end
    )

    local Toggle =
        tab2:addToggle(
        "AutoUpgrade Plasma",
        false,
        function(state)
            if state == true then
                getgenv().farmer = true
                while wait() do
                    if getgenv().farmer == true then
                        game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Stat", "Plasma")
                    elseif state == false then
                        getgenv().farmer = false
                        while wait() do
                            if getgenv().farmer == true then
                                game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer(
                                    "Stat",
                                    "Plasma"
                                )
                            end
                        end
                    end
                end
            end
        end
    )

    local Toggle =
        tab2:addToggle(
        "AutoUpgrade Lightning",
        false,
        function(state)
            if state == true then
                getgenv().farmer = true
                while wait() do
                    if getgenv().farmer == true then
                        game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Stat", "Lightning")
                    elseif state == false then
                        getgenv().farmer = false
                        while wait() do
                            if getgenv().farmer == true then
                                game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer(
                                    "Stat",
                                    "Lightning"
                                )
                            end
                        end
                    end
                end
            end
        end
    )
    local Toggle =
        tab2:addToggle(
        "AutoUpgrade Ranks",
        false,
        function(state)
            if state == true then
                getgenv().farmer = true
                while wait() do
                    if getgenv().farmer == true then
                        game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Rank", 2)
                        game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Rank", 3)
                        game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Rank", 4)
                        game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Rank", 5)
                        game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Rank", 6)
                        game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Rank", 7)
                        game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Rank", 8)
                        game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Rank", 9)
                        game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Rank", 10)
                    elseif state == false then
                        getgenv().farmer = false
                        while wait() do
                            if getgenv().farmer == true then
                                game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Rank", 2)
                                game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Rank", 3)
                                game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Rank", 4)
                                game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Rank", 5)
                                game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Rank", 6)
                                game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Rank", 7)
                                game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Rank", 8)
                                game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Rank", 9)
                                game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Rank", 10)
                            end
                        end
                    end
                end
            end
        end
    )
end

if game.PlaceId == 5951002734 then -- Project Baki 2
    local VLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/VL"))()

    local s = VLib:Window("Straw Hub", "Project Baki 2", "P")
    local ss = s:Tab("MAIN")

    ss:Toggle(
        "Auto Buy Noodle",
        function(state)
            while wait() do
                if game.Players.LocalPlayer.PlayerGui.Feedback.Hunger.Visible == true then --AUTOEAT NOODLE
                    fireclickdetector(game:GetService("Workspace").Game.Shop.Restaurant["Noodle Bowl"].ClickDetector)
                    wait(1)
                    firesignal(game:GetService("Players").HiddenNinjaAli.PlayerGui.Feedback.Shop.Yes.MouseButton1Down)
                    wait(1)
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(
                        game.Players.LocalPlayer.Backpack["Noodle Bowl"]
                    )
                    wait(.5)
                    local virtualUser = game:GetService("VirtualUser")
                    virtualUser:CaptureController()
                    wait()
                    virtualUser:Button1Down(Vector2.new(), CFrame.new())
                    wait()
                    virtualUser:Button1Down(Vector2.new(), CFrame.new())
                end
            end
        end
    )

    ss:Toggle(
        "Auto Eat Noodle",
        function(state)
            while wait() do
                if game.Players.LocalPlayer.PlayerGui.Feedback.Hunger.Visible == true then --AUTOEAT NOODLE
                    fireclickdetector(game:GetService("Workspace").Game.Shop.Restaurant["Noodle Bowl"].ClickDetector)
                    wait(1)
                    firesignal(game:GetService("Players").HiddenNinjaAli.PlayerGui.Feedback.Shop.Yes.MouseButton1Down)
                    wait(1)
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(
                        game.Players.LocalPlayer.Backpack["Noodle Bowl"]
                    )
                    wait(.5)
                    local virtualUser = game:GetService("VirtualUser")
                    virtualUser:CaptureController()
                    wait()
                    virtualUser:Button1Down(Vector2.new(), CFrame.new())
                    wait()
                    virtualUser:Button1Down(Vector2.new(), CFrame.new())
                end
            end
        end
    )

    ss:Toggle(
        "Auto Upgrade Stats",
        function(state)
            if state == true then
                getgenv().farmer = true
                while wait() do
                    if getgenv().farmer == true then
                        game:GetService("ReplicatedStorage").Remotes.ClientToServer.SkillPoint:FireServer("Strength")

                        game:GetService("ReplicatedStorage").Remotes.ClientToServer.SkillPoint:FireServer("Durability")

                        game:GetService("ReplicatedStorage").Remotes.ClientToServer.SkillPoint:FireServer("Agility")

                        game:GetService("ReplicatedStorage").Remotes.ClientToServer.SkillPoint:FireServer("Intellect")
                    end
                end
            elseif state == false then
                getgenv().farmer = false
            end
        end
    )
    ss:Button(
        "Anti Ban",
        function()
            game.Players.LocalPlayer.Data.Banned:Destroy()
             --ANTI BAN

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(-1195.87769, 1711.34363, -473.837097)
        end
    )

    ss:Button(
        "Auto Train Pullups",
        function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(-1123.02393, 1711.34448, -117.131096)

            while wait() do
                if game.Players.LocalPlayer.Data.Stamina.Value > 98 then --AUTO TRAIN PULLUPS
                    repeat
                        wait()
                        game:GetService("ReplicatedStorage").Remotes.ClientToServer.Train:InvokeServer(
                            workspace.Game.Training.Mattress
                        )
                        wait()
                    until game.Players.LocalPlayer.Data.Stamina.Value < 10
                    wait()
                end
            end
        end
    )

    ss:Button(
        "Auto Train",
        function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(-1106.04626, 1711.64673, -238.796707)

            if game.Players.LocalPlayer.Data.Stamina.Value > 98 then --AUTO TRAIN
                repeat
                    wait()
                    game:GetService("ReplicatedStorage").Remotes.ClientToServer.Train:InvokeServer(
                        workspace.Game.Training.Mattress
                    )
                    wait()
                until game.Players.LocalPlayer.Data.Stamina.Value < 10
                wait()
            end
        end
    )

    local ssss = s:Tab("NPCS")

    ssss:Label("AUTOFARMS")
    ssss:Toggle(
        "Kiyosumi Kato",
        function(state)
            if state == true then
                local Player = game:GetService("Players").LocalPlayer

                -- Mainloop
                getgenv().farmer = true
                while wait() do
                    if getgenv().farmer == true then
                        for i, v in next, game:GetService("Workspace").Game.Players:GetChildren() do
                            if
                                (Player.Character and v.Name == "Kiyosumi Kato" and v.PrimaryPart and
                                    v:FindFirstChild("HumanoidRootPart") and
                                    v.Humanoid.Health > 0)
                             then
                                repeat
                                    wait()
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                        CFrame.new(
                                        v.HumanoidRootPart.Position + Vector3.new(0, 5, 0),
                                        v.HumanoidRootPart.Position
                                    )
                                    game:GetService("ReplicatedStorage").Remotes.ClientToServer.BasicCombat:FireServer(
                                        "LightPunch",
                                        4,
                                        v.Humanoid
                                    )
                                until v.Humanoid.Health < 0
                                if v.Humanoid.Health < 0 then
                                    Player.Character.HumanoidRootPart.CFrame =
                                        CFrame.new(-1239.09546, 1713.1001, -121.69017)
                                end
                            end
                        end
                    elseif state == false then
                        getgenv().farmer = false
                    end
                end
            end
        end
    )

    ssss:Toggle(
        "Krampus",
        function(state)
            if state == true then
                local Player = game:GetService("Players").LocalPlayer

                -- Mainloop
                getgenv().farmer = state
                while wait() do
                    for i, v in next, game:GetService("Workspace").Game.Players:GetChildren() do
                        if
                            (Player.Character and v.Name == "Krampus" and v.PrimaryPart and
                                v:FindFirstChild("HumanoidRootPart") and
                                v.Humanoid.Health > 0)
                         then
                            repeat
                                wait()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                    CFrame.new(
                                    v.HumanoidRootPart.Position + Vector3.new(0, 5, 0),
                                    v.HumanoidRootPart.Position
                                )
                                game:GetService("ReplicatedStorage").Remotes.ClientToServer.BasicCombat:FireServer(
                                    "LightPunch",
                                    4,
                                    v.Humanoid
                                )
                            until v.Humanoid.Health < 0
                            if v.Humanoid.Health < 0 then
                                Player.Character.HumanoidRootPart.CFrame =
                                    CFrame.new(-1239.09546, 1713.1001, -121.69017)
                            end
                        end
                    end
                end
            end
        end
    )

    ssss:Toggle(
        "Thugs",
        function(state)
            local Player = game:GetService("Players").LocalPlayer

            -- Mainloop
            getgenv().farmer = state
            while wait(.3) do
                for i, v in next, game:GetService("Workspace").Game.Players:GetChildren() do
                    if
                        (Player.Character and v.Name == "Street Thug" and v.PrimaryPart and
                            v:FindFirstChild("HumanoidRootPart") and
                            v.Humanoid.Health > 0)
                     then
                        repeat
                            wait()
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                CFrame.new(
                                v.HumanoidRootPart.Position + Vector3.new(0, 5, 0),
                                v.HumanoidRootPart.Position
                            )
                            game:GetService("ReplicatedStorage").Remotes.ClientToServer.BasicCombat:FireServer(
                                "LightPunch",
                                4,
                                v.Humanoid
                            )
                        until v.Humanoid.Health < 0
                        if v.Humanoid.Health < 0 then
                            Player.Character.HumanoidRootPart.CFrame = CFrame.new(-1239.09546, 1713.1001, -121.69017)
                        end
                    end
                end
            end
        end
    )

    ssss:Toggle(
        "Retsu",
        function(state)
            local Player = game:GetService("Players").LocalPlayer

            getgenv().farmer = state
            while wait(0.3) do
                for i, v in next, game:GetService("Workspace").Game.Players:GetChildren() do
                    if v.Name == "Retsu" then
                        while (Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") and
                            v.PrimaryPart and
                            v:FindFirstChild("HumanoidRootPart") and
                            v.Humanoid.Health > 0) do
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                CFrame.new(
                                v.HumanoidRootPart.Position + Vector3.new(0, 5, 0),
                                v.HumanoidRootPart.Position
                            )
                            game:GetService("ReplicatedStorage").Remotes.ClientToServer.BasicCombat:FireServer(
                                "LightPunch",
                                4,
                                v.Humanoid
                            )

                            if v.Humanoid.Health < 0 then
                                Player.Character.HumanoidRootPart.CFrame =
                                    CFrame.new(-1239.09546, 1713.1001, -121.69017)
                            end
                        end
                    end
                end
            end
        end
    )

    ssss:Toggle(
        "Yasha Ape",
        function(state)
            local Player = game:GetService("Players").LocalPlayer

            -- Mainloop
            getgenv().farmer = state
            while wait(.3) do
                for i, v in next, game:GetService("Workspace").Game.Players:GetChildren() do
                    if
                        (Player.Character and v.Name == "Yasha Ape" and v.PrimaryPart and
                            v:FindFirstChild("HumanoidRootPart") and
                            v.Humanoid.Health > 0)
                     then
                        repeat
                            wait()
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                CFrame.new(
                                v.HumanoidRootPart.Position + Vector3.new(0, 5, 0),
                                v.HumanoidRootPart.Position
                            )
                            game:GetService("ReplicatedStorage").Remotes.ClientToServer.BasicCombat:FireServer(
                                "LightPunch",
                                4,
                                v.Humanoid
                            )
                        until v.Humanoid.Health < 0
                        if v.Humanoid.Health < 0 then
                            Player.Character.HumanoidRootPart.CFrame = CFrame.new(-1239.09546, 1713.1001, -121.69017)
                        end
                    end
                end
            end
        end
    )

    local sss = s:Tab("MISC")

    sss:Toggle(
        "Hide Name",
        function(state)
            while wait(2) do
                for i, v in pairs(game.Players.LocalPlayer.Character.Head:GetChildren()) do
                    if v.ClassName == "Accessory" or v.Name == "Shirt" or v.Name == "Pants" or v.Name == "PlayerName" then
                        v:Destroy()
                        for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                            if v.ClassName == "Accessory" or v.Name == "Shirt" or v.Name == "Pants" then
                                v:Destroy()
                            end
                        end
                    end
                end
            end
            game:GetService("Workspace").Game.Players.HiddenNinjaAli.Head.PlayerName:Destroy()
        end
    )

    sss:Toggle(
        "Anti Afk",
        function(state)
            getgenv().farmer = not getgenv().farmer
            for i, v in next, getconnections(game.Players.LocalPlayer.Idled) do
                v:Disable()
            end
        end
    )

    sss:Toggle(
        "Infinite Stamina",
        function(state)
            while wait() do
                for i = 1, 1000 do
                    if (game:GetService("Players").LocalPlayer) then
                        game:GetService("Players").LocalPlayer.Data.Stamina.Value = 100
                        game:GetService("Players").LocalPlayer.Data.Stamina.MaxStamina.Value = 100
                    end
                end
            end
        end
    )
end

if game.PlaceId == 3652625463 then -- LIFTING SIMULATOR
    local VLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/VL"))()

    local s = VLib:Window("NinjaHub", "Lifting Simulator", "L")
    local ss = s:Tab("MAIN")

    ss:Toggle(
        "AutoFarm Muscle",
        function(state)
            if state == true then
                getgenv().farm = true
                while wait() do
                    if getgenv().farm == true then
                        game:GetService("ReplicatedStorage").RemoteEvent:FireServer({"GainMuscle"})
                    else
                        getgenv().farm = false
                    end
                end
            end
        end
    )

    ss:Toggle(
        "AutoSell Muscle",
        function(state)
            getgenv().farmer = true
            while wait() do
                if getgenv().farmer == true then
                    game:GetService("ReplicatedStorage").RemoteEvent:FireServer({"SellMuscle"})
                else
                    getgenv().farmer = false
                end
            end
        end
    )

    ss:Slider(
        "WalkSpeed",
        0,
        250,
        16,
        function(t)
            while wait() do
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = t
            end
        end
    )

    ss:Toggle(
        "Anti Afk",
        function(state)
            getgenv().farmer = not getgenv().farmer
            for i, v in next, getconnections(game.Players.LocalPlayer.Idled) do
                v:Disable()
            end
        end
    )
end

if game.PlaceId == 542351431 or game.PlaceId == 540240728 or game.PlaceId == 737272595 then --SWORDBBURST 2
    local VLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/VL"))()

    local s = VLib:Window("NinjaHub", "SwordBurst 2", "S")
    local ss = s:Tab("MAIN")

    ss:Toggle(
        "AutoHit",
        function(state)
            time = 0 -- change to 0 for no wait.

            game:GetService "RunService".Heartbeat:Connect(
                function()
                    mouse1click()
                    game:GetService "RunService".Heartbeat:wait(time)
                end
            )
        end
    )

    ss:Toggle(
        "AutoBlock",
        function(state)
            if state == true then
                getgenv().farm = true
                while wait() do
                    if getgenv().farm == true then
                        game:GetService("ReplicatedStorage").Event:FireServer(
                            "Skills",
                            {"UseSkill", "Block", {["Enabled"] = true}}
                        )
                    else
                        getgenv().farm = false
                    end
                end
            end
        end
    )

    ss:Toggle(
        "AutoSprint",
        function(state)
            if state == true then
                getgenv().farm = true
                while wait() do
                    if getgenv().farm == true then
                        game:GetService("ReplicatedStorage").Event:FireServer("Actions", {"Sprint", "Enabled"})
                     --AUTO SPRINT
                    else
                        getgenv().farm = false
                    end
                end
            end
        end
    )

    local sss = s:Tab("NPCS")

    sss:Dropdown(
        "Auto Mobs",
        {"Wolf", "Frenzy Boar"},
        function(r)
            if r == "Wolf" then
                while wait() do
                    for i, v in pairs(game:GetService("Workspace").Mobs:GetChildren()) do
                        if v.Name == "Wolf" then
                            wait()

                            repeat
                                wait()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                            until v.Humanoid.Health < 0
                        end
                    end
                end
            elseif r == "Frenzy Boar" then
                while wait() do
                    for i, v in pairs(game:GetService("Workspace").Mobs:GetChildren()) do
                        if v.Name == "Frenzy Boar" then
                            wait()

                            repeat
                                wait()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                            until v.Humanoid.Health < 0
                        end
                    end
                end
            elseif r == "Draconite" then
                while wait() do
                    for i, v in pairs(game:GetService("Workspace").Mobs:GetChildren()) do
                        if v.Name == "Draconite" then
                            wait()

                            repeat
                                wait()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                            until v.Humanoid.Health < 0
                        end
                    end
                end
            end
        end
    )
end

if game.PlaceId == 4906760764 then -- Project Stands 2
    local VLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/VL"))()

    local s = VLib:Window("Straw Hub", "Project Stands 2", "P")
    local ss = s:Tab("MAIN")

    ss:Toggle(
        "AutoHit",
        function(state)
            if state == true then
                getgenv().farmer = true
                while wait() do
                    if getgenv().farmer == true then
                        game:GetService("ReplicatedStorage").Rex.RemoteFunctions["ControlsHandler.Combat"]:InvokeServer(
                            CFrame.new()
                        )
                    else
                        getgenv().farmer = false
                    end
                end
            end
        end
    )

    ss:Button(
        "Hide Identity",
        function()
            for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v.ClassName == "Accessory" or v.Name == "Shirt" or v.Name == "Pants" then
                    v:Destroy()

                    game.Players.LocalPlayer.Character.HumanoidRootPart.OverheadUI:Destroy()
                end
            end
        end
    )

    ss:Dropdown(
        "Mobs",
        {"Thugs", "Boxer", "Cop", "Monkey"},
        function(value)
            if value == "thugs" then
                local Player = game.Players.LocalPlayer.Character

                game:GetService("RunService").Heartbeat:Connect(
                    function()
                        game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                    end
                )

                while wait() do
                    for i, v in pairs(game:GetService("Workspace").Entities:GetChildren()) do
                        wait(.1)

                        if v.Name == "Thug" then
                            repeat
                                wait()
                                Player.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                            until v.Humanoid.Health < 0
                        end
                    end
                end
            elseif value == "Cops" then
                local Player = game.Players.LocalPlayer.Character

                game:GetService("RunService").Heartbeat:Connect(
                    function()
                        game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                    end
                )

                while wait() do
                    for i, v in pairs(game:GetService("Workspace").Entities:GetChildren()) do
                        wait(.1)

                        if v.Name == "Cop" then
                            repeat
                                wait()
                                Player.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                            until v.Humanoid.Health < 0
                        end
                    end
                end
            elseif value == "Monkey" then
                local Player = game.Players.LocalPlayer.Character

                game:GetService("RunService").Heartbeat:Connect(
                    function()
                        game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                    end
                )

                while wait() do
                    for i, v in pairs(game:GetService("Workspace").Entities:GetChildren()) do
                        wait(.1)

                        if v.Name == "Monkey" then
                            repeat
                                wait()
                                Player.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                            until v.Humanoid.Health < 0
                        end
                    end
                end
            elseif value == "Boxer" then
                local Player = game.Players.LocalPlayer.Character

                game:GetService("RunService").Heartbeat:Connect(
                    function()
                        game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                    end
                )

                while wait() do
                    for i, v in pairs(game:GetService("Workspace").Entities:GetChildren()) do
                        wait(.1)

                        if v.Name == "Boxer" then
                            repeat
                                wait()
                                Player.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                            until v.Humanoid.Health < 0
                        end
                    end
                end
            end
        end
    )
end

if game.PlaceId == 3376769145 then --DRAGON BALL WARRIORS
    local VLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/VL"))()

    local s = VLib:Window("Straw Hub", "Dragon Ball", "D")
    local ss = s:Tab("Main")

    ss:Toggle(
        "AutoFarm Strenght",
        function(state)
            if state == true then
                getgenv().farmer = true
                while wait() do
                    if getgenv().farmer == true then
                        for i = 1, 1000 do
                            game:GetService("ReplicatedStorage").Events.Transformatico:InvokeServer(
                                game:GetService("Players").LocalPlayer.Statics,
                                {
                                    ["LeftLowerArm"] = game.Players.LocalPlayer.Character.LeftLowerArm,
                                    ["RightUpperArm"] = game.Players.LocalPlayer.Character.RightUpperArm,
                                    ["LeftFoot"] = game.Players.LocalPlayer.Character.LeftFoot,
                                    ["RightHand"] = game.Players.LocalPlayer.Character.RightHand,
                                    ["RightLowerArm"] = game.Players.LocalPlayer.Character.RightLowerArm,
                                    ["LeftUpperLeg"] = game.Players.LocalPlayer.Character.LeftUpperLeg,
                                    ["LeftUpperArm"] = game.Players.LocalPlayer.Character.LeftUpperArm,
                                    ["Character"] = game.Players.LocalPlayer.Character,
                                    ["LeftHand"] = game.Players.LocalPlayer.Character.LeftHand,
                                    ["RightFoot"] = game.Players.LocalPlayer.Character.RightFoot,
                                    ["Humanoid"] = game.Players.LocalPlayer.Character.Humanoid,
                                    ["RightLowerLeg"] = game.Players.LocalPlayer.Character.RightLowerLeg,
                                    ["RightUpperLeg"] = game.Players.LocalPlayer.Character.RightUpperLeg,
                                    ["LeftLowerLeg"] = game.Players.LocalPlayer.Character.LeftLowerLeg
                                },
                                game.Players.LocalPlayer.Character.HumanoidRootPart,
                                "nosexdd"
                            )
                            wait()
                        end
                    end
                end
            elseif state == false then
                getgenv().farmer = false
            end
        end
    )

    ss:Toggle(
        "AutoFarm Ki",
        function(state)
            if state == true then
                getgenv().farmer = true
                while wait() do
                    if getgenv().farmer == true then
                        for i = 1, 1000 do
                            game:GetService("ReplicatedStorage").Events.DOKAMEHAME:InvokeServer(
                                "KiBlast",
                                game:GetService("Players").LocalPlayer.Status,
                                game:GetService("Players").LocalPlayer.Statics,
                                game.Players.LocalPlayer.Character.HumanoidRootPart,
                                game.Players.LocalPlayer.Character.RightHand,
                                game.Players.LocalPlayer.Character,
                                "nosexdd"
                            )
                            wait()
                        end
                    end
                end
            elseif state == false then
                getgenv().farmer = false
            end
        end
    )
    ss:Toggle(
        "AutoFarm Defence",
        function(state)
            if state == true then
                getgenv().farmer = true
                while wait() do
                    if getgenv().farmer == true then
                        for i = 1, 1000 do
                            local Vep = game.Players.LocalPlayer.Character
                            game:GetService("ReplicatedStorage").Events.IDURODEEEE:InvokeServer(
                                game:GetService("Players").LocalPlayer.Statics,
                                game:GetService("Players").LocalPlayer.Status,
                                Vep.Humanoid,
                                Vep.RightHand,
                                "nosexdd"
                            )
                            wait()
                        end
                    end
                end
            elseif state == false then
                getgenv().farmer = false
            end
        end
    )

    ss:Button(
        "Auto Charge",
        function()
            local A_1 = game:GetService("Players").LocalPlayer.Status
            local A_2 = game:GetService("Players").LocalPlayer.Character.UpperTorso
            local A_3 = game:GetService("Players").LocalPlayer.Character.Humanoid
            local A_4 = true
            local Event = game:GetService("ReplicatedStorage").Remotes.Training.Charge
            Event:InvokeServer(A_1, A_2, A_3, A_4)
        end
    )

    local sss = s:Tab("Misc")

    sss:Toggle(
        "Anti Afk",
        function(state)
            for i, v in next, getconnections(game.Players.LocalPlayer.Idled) do
                v:Disable()
            end
        end
    )

    sss:Toggle(
        "Unlock All Gamepass",
        function(state)
            if state == true then
                game.Players.LocalPlayer.Gamepasses.KiTraining.Value = true

                game.Players.LocalPlayer.Gamepasses.FasterTraining.Value = true
            elseif state == false then
                game.Players.LocalPlayer.Gamepasses.KiTraining.Value = false

                game.Players.LocalPlayer.Gamepasses.FasterTraining.Value = false
            end
        end
    )

    local ssss = s:Tab("Universal Scripts")

    ssss:Button(
        "HD GRAPHICS 1",
        function()
            local Services = {}
            Services.RunService = game:GetService("RunService")

            -- [ Custom Functions ] --
            local IsExploit = not Services.RunService:IsStudio()

            local CustomFunctions = {}
            CustomFunctions.SetHidden = sethiddenproperty or set_hidden_property or set_hidden_prop

            -- [ GraphicX ] --
            local GraphicX = {}

            -- Create --
            function GraphicX.new(Class, Properties)
                -- Creates the Instance --
                local NewInstance = Instance.new(Class)

                -- Sets the Properties --
                for i, v in pairs(Properties) do
                    if NewInstance[i] ~= nil and i ~= "Parent" then
                        NewInstance[i] = v
                    end
                end

                -- Sets Parent --
                if Properties.Parent then
                    NewInstance.Parent = Properties.Parent
                end

                return NewInstance
            end

            function GraphicX.SetProperty(Object, Properties)
                -- Sets the Properties --
                for i, v in pairs(Properties) do
                    if Object[i] ~= nil and i ~= "Parent" then
                        Object[i] = v
                    end
                end

                -- Sets Parent --
                if Properties.Parent then
                    Object.Parent = Properties.Parent
                end
            end

            -- [ Instances ] --
            local Lighting = game:GetService("Lighting")
            local Terrain = workspace.Terrain

            local LightingSaves = GraphicX.new("Folder", {Name = "LightingSaves", Parent = nil})

            -- // Main \\ --
            function GraphicX.Enhance(Settings)
                local GraphicSettings =
                    Settings or
                    {
                        FogEnabled = true,
                        WaterEnabled = true
                    }

                -- [ Clears Lighting ] --
                for i, v in ipairs(Lighting:GetChildren()) do
                    if v:IsA("PostEffect") and not string.find(v.Name, "GraphicX") then
                        v.Parent = LightingSaves
                    end
                end

                -- [ Sets Properties ] --

                -- Lighting --
                if GraphicSettings.FogEnabled then
                    GraphicX.SetProperty(
                        Lighting,
                        {
                            FogEnd = 500,
                            FogStart = 25
                        }
                    )
                end

                if IsExploit then
                    CustomFunctions.SetHidden(Lighting, "Technology", Enum.Technology.Future)
                    settings().Rendering.QualityLevel = 21
                end

                -- Terrain --
                if GraphicSettings.WaterEnabled then
                    GraphicX.SetProperty(
                        Terrain,
                        {
                            WaterColor = Color3.fromRGB(131, 165, 164),
                            WaterReflectance = 0.05,
                            WaterTransparency = 1,
                            WaterWaveSize = 0.05,
                            WaterWaveSpeed = 25
                        }
                    )
                end

                -- [ Creates Effects ] --
                GraphicX.LightingEffects = {
                    GraphicX.new(
                        "BloomEffect",
                        {
                            Name = "GraphicXBloom",
                            Parent = Lighting,
                            Intensity = 0.75,
                            Size = 15,
                            Threshold = 0.95
                        }
                    ),
                    GraphicX.new(
                        "BlurEffect",
                        {
                            Name = "GraphicXBlur",
                            Parent = Lighting,
                            Size = 5
                        }
                    ),
                    GraphicX.new(
                        "DepthOfFieldEffect",
                        {
                            Name = "GraphicXDepth",
                            Parent = Lighting,
                            FarIntensity = 0.15,
                            FocusDistance = 0.05,
                            InFocusRadius = 20,
                            NearIntensity = 0.75
                        }
                    ),
                    GraphicX.new(
                        "SunRaysEffect",
                        {
                            Name = "GraphicXRays",
                            Parent = Lighting,
                            Intensity = 0.25,
                            Spread = 0.5
                        }
                    )
                }
            end

            GraphicX.Enhance(
                {
                    FogEnabled = true,
                    WaterEnabled = true
                }
            )

            return GraphicX
        end
    )

    ssss:Button(
        "HD GRAPHICS 2",
        function()
            -- Roblox Graphics Enhancher
            sethiddenproperty(game:GetService("Workspace").Terrain, "Decoration", true)
            sethiddenproperty(game:GetService("Lighting"), "Technology", "Future")
            local light = game.Lighting
            for i, v in pairs(light:GetChildren()) do
                v:Destroy()
            end

            local ter = workspace.Terrain
            local color = Instance.new("ColorCorrectionEffect")
            local bloom = Instance.new("BloomEffect")
            local sun = Instance.new("SunRaysEffect")
            local blur = Instance.new("BlurEffect")

            color.Parent = light
            bloom.Parent = light
            sun.Parent = light
            blur.Parent = light

            -- enable or disable shit

            local config = {
                Terrain = true,
                ColorCorrection = true,
                Sun = true,
                Lighting = true,
                BloomEffect = true
            }

            -- settings {

            color.Enabled = false
            color.Contrast = 0.15
            color.Brightness = 0.1
            color.Saturation = 0.25
            color.TintColor = Color3.fromRGB(255, 222, 211)

            bloom.Enabled = false
            bloom.Intensity = 0.1

            sun.Enabled = false
            sun.Intensity = 0.2
            sun.Spread = 1

            bloom.Enabled = false
            bloom.Intensity = 0.05
            bloom.Size = 32
            bloom.Threshold = 1

            blur.Enabled = false
            blur.Size = 6

            -- settings }

            if config.ColorCorrection then
                color.Enabled = true
            end

            if config.Sun then
                sun.Enabled = true
            end

            if config.Terrain then
                -- settings {
                ter.WaterColor = Color3.fromRGB(10, 10, 24)
                ter.WaterWaveSize = 0.1
                ter.WaterWaveSpeed = 22
                ter.WaterTransparency = 0.9
                ter.WaterReflectance = 0.05
            -- settings }
            end

            if config.Lighting then
                -- settings {
                light.Ambient = Color3.fromRGB(0, 0, 0)
                light.Brightness = 4
                light.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
                light.ColorShift_Top = Color3.fromRGB(0, 0, 0)
                light.ExposureCompensation = 0
                light.FogColor = Color3.fromRGB(132, 132, 132)
                light.GlobalShadows = true
                light.OutdoorAmbient = Color3.fromRGB(112, 117, 128)
                light.Outlines = false
            -- settings }
            end
        end
    )
end

if game.PlaceId == 3823781113 then -- SABER SIMULATOR
    local VLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/VL"))()

    local s = VLib:Window("Straw Hub", "Saber Simulator", "S")
    local ss = s:Tab("Main")

    ss:Toggle(
        "Auto Sell",
        function(t)
            if t == true then
                getgenv().farmer = true
                while wait() do
                    if getgenv().farmer == true then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            CFrame.new(536.941833, 183.987778, 146.277451)
                         --AUTO SELL
                        wait(.8)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            CFrame.new(539.263245, 183.987839, 137.771301)
                    end
                end
            elseif t == false then
                getgenv().farmer = false
            end
        end
    )

    ss:Toggle(
        "Autofarm Strenght",
        function(t)
            if t == true then
                getgenv().farmer = true
                while wait() do
                    if getgenv().farmer == true then
                        game:GetService("ReplicatedStorage").Events.Clicked:FireServer()
                    end
                end
            elseif t == false then
                getgenv().farmer = false
            end
        end
    )

    ss:Toggle(
        "CandyCane Farm",
        function(t)
            local tween = game:GetService("TweenService")
             --CANDY CANE FARM
            local character = game.Players.LocalPlayer.character
            local humanoid = character.HumanoidRootPart
            while wait() do
                game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                wait(.1)
                for i, v in next, {game.Workspace.CandyHolder} do
                    pcall(
                        function()
                            if v:FindFirstChild("CandyCane") then
                                tween:Create(
                                    humanoid,
                                    TweenInfo.new(1, Enum.EasingStyle.Linear),
                                    {CFrame = v.CandyCane.CFrame}
                                ):Play()
                                wait(2)
                                v.CandyCane:Destroy()
                            end
                        end
                    )
                end
            end
            local tween = game:GetService("TweenService")
             --CANDY CANE FARM
            local character = game.Players.LocalPlayer.character
            local humanoid = character.HumanoidRootPart
            while wait() do
                game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                wait(.1)
                for i, v in next, {game.Workspace.CandyHolder} do
                    pcall(
                        function()
                            if v:FindFirstChild("CandyCane") then
                                tween:Create(
                                    humanoid,
                                    TweenInfo.new(1, Enum.EasingStyle.Linear),
                                    {CFrame = v.CandyCane.CFrame}
                                ):Play()
                                wait(2)
                                v.CandyCane:Destroy()
                            end
                        end
                    )
                end
            end
        end
    )
    local sss = s:Tab("Misc")

    sss:Button(
        "Buy All Auras",
        function()
            game:GetService("ReplicatedStorage").Events.BuyAll:FireServer("Auras")
        end
    )

    sss:Button(
        "Buy All Backpacks",
        function()
            game:GetService("ReplicatedStorage").Events.BuyAll:FireServer("Backpacks")
        end
    )

    sss:Button(
        "Buy All PetAuras",
        function()
            game:GetService("ReplicatedStorage").Events.BuyAll:FireServer("PetAuras")
        end
    )

    sss:Button(
        "Buy All Swords",
        function()
            game:GetService("ReplicatedStorage").Events.BuyAll:FireServer("Swords")
         --BUY ALL SWORD
        end
    )

    sss:Button(
        "HideName",
        function()
            game.Players.LocalPlayer.Character.Head.RankingGui.PName:Destroy()
        end
    )

    sss:Button(
        "HideRank",
        function()
            game.Players.LocalPlayer.Character.Head.RankingGui.Tag1:Destroy()
         --HIDE RANK
        end
    )

    local ssss = s:Tab("Universal Scripts")

    ssss:Button(
        "HD GRAPHICS 1",
        function()
            local Services = {}
            Services.RunService = game:GetService("RunService")

            -- [ Custom Functions ] --
            local IsExploit = not Services.RunService:IsStudio()

            local CustomFunctions = {}
            CustomFunctions.SetHidden = sethiddenproperty or set_hidden_property or set_hidden_prop

            -- [ GraphicX ] --
            local GraphicX = {}

            -- Create --
            function GraphicX.new(Class, Properties)
                -- Creates the Instance --
                local NewInstance = Instance.new(Class)

                -- Sets the Properties --
                for i, v in pairs(Properties) do
                    if NewInstance[i] ~= nil and i ~= "Parent" then
                        NewInstance[i] = v
                    end
                end

                -- Sets Parent --
                if Properties.Parent then
                    NewInstance.Parent = Properties.Parent
                end

                return NewInstance
            end

            function GraphicX.SetProperty(Object, Properties)
                -- Sets the Properties --
                for i, v in pairs(Properties) do
                    if Object[i] ~= nil and i ~= "Parent" then
                        Object[i] = v
                    end
                end

                -- Sets Parent --
                if Properties.Parent then
                    Object.Parent = Properties.Parent
                end
            end

            -- [ Instances ] --
            local Lighting = game:GetService("Lighting")
            local Terrain = workspace.Terrain

            local LightingSaves = GraphicX.new("Folder", {Name = "LightingSaves", Parent = nil})

            -- // Main \\ --
            function GraphicX.Enhance(Settings)
                local GraphicSettings =
                    Settings or
                    {
                        FogEnabled = true,
                        WaterEnabled = true
                    }

                -- [ Clears Lighting ] --
                for i, v in ipairs(Lighting:GetChildren()) do
                    if v:IsA("PostEffect") and not string.find(v.Name, "GraphicX") then
                        v.Parent = LightingSaves
                    end
                end

                -- [ Sets Properties ] --

                -- Lighting --
                if GraphicSettings.FogEnabled then
                    GraphicX.SetProperty(
                        Lighting,
                        {
                            FogEnd = 500,
                            FogStart = 25
                        }
                    )
                end

                if IsExploit then
                    CustomFunctions.SetHidden(Lighting, "Technology", Enum.Technology.Future)
                    settings().Rendering.QualityLevel = 21
                end

                -- Terrain --
                if GraphicSettings.WaterEnabled then
                    GraphicX.SetProperty(
                        Terrain,
                        {
                            WaterColor = Color3.fromRGB(131, 165, 164),
                            WaterReflectance = 0.05,
                            WaterTransparency = 1,
                            WaterWaveSize = 0.05,
                            WaterWaveSpeed = 25
                        }
                    )
                end

                -- [ Creates Effects ] --
                GraphicX.LightingEffects = {
                    GraphicX.new(
                        "BloomEffect",
                        {
                            Name = "GraphicXBloom",
                            Parent = Lighting,
                            Intensity = 0.75,
                            Size = 15,
                            Threshold = 0.95
                        }
                    ),
                    GraphicX.new(
                        "BlurEffect",
                        {
                            Name = "GraphicXBlur",
                            Parent = Lighting,
                            Size = 5
                        }
                    ),
                    GraphicX.new(
                        "DepthOfFieldEffect",
                        {
                            Name = "GraphicXDepth",
                            Parent = Lighting,
                            FarIntensity = 0.15,
                            FocusDistance = 0.05,
                            InFocusRadius = 20,
                            NearIntensity = 0.75
                        }
                    ),
                    GraphicX.new(
                        "SunRaysEffect",
                        {
                            Name = "GraphicXRays",
                            Parent = Lighting,
                            Intensity = 0.25,
                            Spread = 0.5
                        }
                    )
                }
            end

            GraphicX.Enhance(
                {
                    FogEnabled = true,
                    WaterEnabled = true
                }
            )

            return GraphicX
        end
    )

    ssss:Button(
        "HD GRAPHICS 2",
        function()
            -- Roblox Graphics Enhancher
            sethiddenproperty(game:GetService("Workspace").Terrain, "Decoration", true)
            sethiddenproperty(game:GetService("Lighting"), "Technology", "Future")
            local light = game.Lighting
            for i, v in pairs(light:GetChildren()) do
                v:Destroy()
            end

            local ter = workspace.Terrain
            local color = Instance.new("ColorCorrectionEffect")
            local bloom = Instance.new("BloomEffect")
            local sun = Instance.new("SunRaysEffect")
            local blur = Instance.new("BlurEffect")

            color.Parent = light
            bloom.Parent = light
            sun.Parent = light
            blur.Parent = light

            -- enable or disable shit

            local config = {
                Terrain = true,
                ColorCorrection = true,
                Sun = true,
                Lighting = true,
                BloomEffect = true
            }

            -- settings {

            color.Enabled = false
            color.Contrast = 0.15
            color.Brightness = 0.1
            color.Saturation = 0.25
            color.TintColor = Color3.fromRGB(255, 222, 211)

            bloom.Enabled = false
            bloom.Intensity = 0.1

            sun.Enabled = false
            sun.Intensity = 0.2
            sun.Spread = 1

            bloom.Enabled = false
            bloom.Intensity = 0.05
            bloom.Size = 32
            bloom.Threshold = 1

            blur.Enabled = false
            blur.Size = 6

            -- settings }

            if config.ColorCorrection then
                color.Enabled = true
            end

            if config.Sun then
                sun.Enabled = true
            end

            if config.Terrain then
                -- settings {
                ter.WaterColor = Color3.fromRGB(10, 10, 24)
                ter.WaterWaveSize = 0.1
                ter.WaterWaveSpeed = 22
                ter.WaterTransparency = 0.9
                ter.WaterReflectance = 0.05
            -- settings }
            end

            if config.Lighting then
                -- settings {
                light.Ambient = Color3.fromRGB(0, 0, 0)
                light.Brightness = 4
                light.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
                light.ColorShift_Top = Color3.fromRGB(0, 0, 0)
                light.ExposureCompensation = 0
                light.FogColor = Color3.fromRGB(132, 132, 132)
                light.GlobalShadows = true
                light.OutdoorAmbient = Color3.fromRGB(112, 117, 128)
                light.Outlines = false
            -- settings }
            end
        end
    )
end



if game.PlaceId == 5080886060 then --HEROES LEGACY
    local Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/VLi"))()

    local win = Lib:Window("Straw Hub V2")

    local serv = win:Server("Straw Hub", "")

    local ss = serv:Channel("MAIN")
    local sss = serv:Channel("MISC")

    local Character_Table = {}
    for i, v in pairs(game:GetService("Workspace").Living:GetChildren()) do
        if v:IsA("Model") then
            table.insert(Character_Table, v.Name)
        end
    end

    getgenv().autofarm = false
    getgenv().mobs = nil

    ss:Dropdown(
        "MobsFarm",
        Character_Table,
        function(value)
            getgenv().mobs = value
        end
    )

    ss:Toggle(
        "Farm Start",
        false,
        function(state)
            game:GetService("RunService").Heartbeat:Connect(
                function()
                    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                end
            )

            getgenv().autofarm = state
            while wait() do
                if getgenv().autofarm == true then
                    for i, v in pairs(game:GetService("Workspace").Living:GetChildren()) do
                        if v.Name == getgenv().mobs and v:FindFirstChild("Humanoid") then
                            repeat
                                wait()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                    CFrame.new(
                                    v.HumanoidRootPart.Position + Vector3.new(0, 5, 0),
                                    v.HumanoidRootPart.Position
                                )
                            until v.Humanoid.Health < .1
                        end
                    end
                end
            end
        end
    )

    ss:Toggle(
        "AutoEquip Fists",
        false,
        function(state)
            getgenv().equip = state
            while wait() do
                if getgenv().equip == true then
                    wait(1)
                    if game.Players.LocalPlayer.Character:FindFirstChild("Punch") == nil then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.Punch)
                    end
                end
            end
        end
    )

    ss:Toggle(
        "Auto Hit",
        false,
        function(state)
            getgenv().hit = state
            while wait() do
                if getgenv().hit == true then
                    local virtualUser = game:GetService("VirtualUser")
                    virtualUser:CaptureController()
                    wait()
                    virtualUser:Button1Down(Vector2.new(), CFrame.new())
                    wait()
                    virtualUser:Button1Down(Vector2.new(), CFrame.new())
                end
            end
        end
    )

    sss:Button(
        "InstaKill",
        function()
            local connections = {}
            function hot(mob)
                if not connections[mob] and not game.Players:FindFirstChild(mob.Parent.Name) then
                    connections[mob] =
                        mob:GetPropertyChangedSignal("Health"):Connect(
                        function()
                            if (mob.Health / mob.MaxHealth * 100) < 90 then
                                for i = 1, 20 do
                                    mob.Health = 0
                                end
                            end
                        end
                    )
                end
            end
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("Humanoid") and v.Parent.Name ~= game.Players.LocalPlayer.Name then
                    hot(v)
                end
            end
            workspace.DescendantAdded:Connect(
                function(v)
                    if v:IsA("Humanoid") then
                        hot(v)
                    end
                end
            )
        end
    )

    sss:Toggle(
        "Hide Identity",
        false,
        function(state)
            for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v.ClassName == "Accessory" or v.Name == "Shirt" or v.Name == "Pants" then
                    v:Destroy()
                end
            end
            game.Players.LocalPlayer.Character.Head.Tag:Destroy()
        end
    )

    sss:Toggle(
        "AutoUpgrade Stats",
        false,
        function(state)
            getgenv().farmer = state
            while wait() do
                if getgenv().farmer == true then
                    pcall(
                        function()
                            game:GetService("ReplicatedStorage").Communication.Events[""]:FireServer("melee", 1)
                            wait()
                            game:GetService("ReplicatedStorage").Communication.Events[""]:FireServer("defense", 1)
                            wait()
                            game:GetService("ReplicatedStorage").Communication.Events[""]:FireServer("agility", 1)
                            wait()
                            game:GetService("ReplicatedStorage").Communication.Events[""]:FireServer("quirk", 1)
                        end
                    )
                end
            end
        end
    )

    sss:Slider(
        "WalkSpeed Changer",
        0,
        500,
        16,
        function(t)
            local gmt = getrawmetatable(game)
            setreadonly(gmt, false)
            local oldindex = gmt.__index

            gmt.__index =
                newcclosure(
                function(self, b)
                    if b == "WalkSpeed" then
                        return 16
                    end
                    return oldindex(self, b)
                end
            )

            while wait() do
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = t
            end
        end
    )
end


if game.PlaceId == 537413528 then --BUILD A BOAT
    local VLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/VL"))()

    local s = VLib:Window("Straw Hub", "Build A Boat", "B")
    local ss = s:Tab("Main")

    ss:Toggle(
        "Gold Farm",
        function(r)
            if r == true then
                getgenv().farmer = true
                while wait() do
                    if getgenv().farmer == true then
                        function Tween(time, pos)
                            pcall(
                                function()
                                    workspace.Gravity = 0
                                    game:GetService("TweenService"):Create(
                                        game.Players.LocalPlayer.Character.HumanoidRootPart,
                                        TweenInfo.new(time, Enum.EasingStyle.Linear),
                                        {CFrame = pos}
                                    ):Play()
                                    wait(time)
                                    workspace.Gravity = 196.19999694824
                                end
                            )
                        end
                        Tween(1, game:GetService("Workspace").BoatStages.NormalStages.CaveStage1.DarknessPart.CFrame)
                        Tween(18, game:GetService("Workspace").BoatStages.NormalStages.CaveStage10.DarknessPart.CFrame)
                        wait(0.1)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            CFrame.new(Vector3.new(-60.1396255, -350.350006, 9500.14648))
                        pcall(
                            function()
                                firetouchinterest(
                                    game.Players.LocalPlayer.Character.HumanoidRootPart,
                                    game:GetService("Workspace").GoldenChest.Collider,
                                    0
                                )
                            end
                        )
                    elseif r == false then
                        getgenv().farmer = false
                    end
                end
            end
        end
    )

    ss:Toggle(
        "Auto Claim Gold",
        function(r)
            if r == true then
                getgenv().farmer = true
                while wait() do
                    if getgenv().farmer == true then
                        workspace.ClaimRiverResultsGold:FireServer()
                    elseif r == false then
                        getgenv().farmer = false
                    end
                end
            end
        end
    )

    sss:Toggle(
        "Anti Afk",
        function(state)
            for i, v in next, getconnections(game.Players.LocalPlayer.Idled) do
                v:Disable()
            end
        end
    )
end

if game.PlaceId == 2898237081 then --KEN OMEGA
    local VLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/VL"))()

    local s = VLib:Window("Straw Hub", "Ken Omega", "K")
    local ss = s:Tab("MAIN")

    ss:Button(
        "Press r To Enable Script",
        function()
        end
    )

    ss:Button(
        "Press Z To AutoSpar",
        function()
        end
    )

    ss:Button(
        "Press M To Inf Combo",
        function()
        end
    )

    ss:Button(
        "Press K To Farm Money",
        function()
        end
    )

    ss:Button(
        "Press H To Farm Durability",
        function()
        end
    )

    ss:Button(
        "Press L AutoRoadwork",
        function()
        end
    )

    local sss = s:Tab("MISC")

    sss:Toggle(
        "Anti Afk",
        false,
        function(state)
            for i, v in next, getconnections(game.Players.LocalPlayer.Idled) do
                v:Disable()
            end
        end
    )

    repeat
        wait()
    until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and
        game.Players.LocalPlayer.Character:FindFirstChild("Torso")
    local player = game.Players.LocalPlayer
    local mouse = player:GetMouse()
    local VirtualUser = game:service "VirtualUser"
    local TOGGLE = 0
    local TRAINING = 0
    local MACRO = 0
    local SPEED = 0
    local MISSION = 0
    local NOCLIP = 0
    local NOCLIP2 = 0
    local DURA = 0
    local COOLDOWN = 1
    local FOOD = 0
    local bagoriginal = game.Workspace.Map.Bag.CFrame

    function teleportPlayer(pos)
        if player == nil or player.Character == nil then
            return
        end
        local char = player.Character
        char:MoveTo(pos)
    end
    function onButton1Down(mouse)
        if player == nil then
            return
        end
        local cf = mouse.Hit
        teleportPlayer(cf.p)
    end

    mouse.KeyDown:connect(
        function(key)
            if key == "r" then
                if TOGGLE == 0 then
                    TOGGLE = 1
                    msg.Text =
                        "T to AutoSpar, G to AutoTraining, H to AutoSelfDura, J to RunSpeed, K to AutoMission, L to AutoRoadwork, M to InfCombo, [ to HeadFling, ] to Reset, P to RejoinGame."
                elseif TOGGLE == 1 then
                    TOGGLE = 0
                    msg.Text = "Cheats are hidden/disabled. Press R to show cheats/hide cheats."
                end
            end
            if TOGGLE == 1 then
                if key == "e" then
                    onButton1Down(mouse)
                end
                if key == "t" then
                    if MACRO == 0 then
                        if NOCLIP2 == 0 then
                            local char = player.Character
                            if char:FindFirstChild("Head") and char:FindFirstChild("Head"):FindFirstChild("face") then
                                char.Head:FindFirstChild("face"):Destroy()
                            end
                            if char:FindFirstChild("Head") and char:FindFirstChild("Head"):FindFirstChild("Pupil") then
                                char.Head:FindFirstChild("Pupil"):Destroy()
                            end
                            if char:FindFirstChild("Shirt") then
                                char:FindFirstChild("Shirt").Parent = nil
                            end
                            if char:FindFirstChild("Pants") then
                                char:FindFirstChild("Pants").Parent = nil
                            end
                            for i, v in pairs(char:GetChildren()) do
                                if v:FindFirstChild("Head") then
                                    v.Parent = nil
                                end
                            end
                            for i, v in pairs(char:GetChildren()) do
                                if v.ClassName == "Accessory" then
                                    v:Destroy()
                                end
                            end
                            NOCLIP2 = 1
                            player.Character.HumanoidRootPart.CFrame =
                                player.Character.HumanoidRootPart.CFrame * CFrame.new(0, -5, 0)
                            local Incre = 2.5
                            local Time = 0
                            if player == nil then
                                return
                            end
                            local char = player.Character
                            local root = char.HumanoidRootPart
                            local cf = game.Workspace.Map.Bag.CFrame
                            local Pos = cf.p + Vector3.new(0, -10, 0)
                            local Debounce = false
                            local Diff = Pos - root.Position
                            local Mag = Diff.magnitude
                            local HumanoidRootParted = CFrame.new(root.Position, Pos).lookVector
                            function Move()
                                if Debounce then
                                    return
                                end
                                Debounce = true
                                for n = 0, Mag, Incre do
                                    root.Anchored = false
                                    root.CFrame = root.CFrame + (HumanoidRootParted * Incre)
                                    wait((Time / Mag) * Incre)
                                end
                                Debounce = false
                                root.Anchored = false
                            end
                            Move()
                            player.Character.HumanoidRootPart.CFrame =
                                bagoriginal * CFrame.new(0, 8.3, 0) * CFrame.Angles(4.75, 0, 0)
                            game.Workspace.Map.Bag.CFrame = bagoriginal * CFrame.new(0, 1.5, 0)
                            game.Workspace.CurrentCamera.CameraSubject = game.Workspace.Map.Bag
                            wait()
                            MACRO = 1
                            FOOD = 1
                        end
                    elseif MACRO == 1 then
                        MACRO = 0
                        FOOD = 0
                        NOCLIP2 = 0
                        game.Workspace.CurrentCamera.CameraSubject = player.Character
                        for _, c in pairs(player.Character:GetDescendants()) do
                            if c:IsA("BasePart") then
                                c.Anchored = true
                            end
                        end
                        local char = player.Character
                        if char:FindFirstChild("Head") and char:FindFirstChild("Head"):FindFirstChild("face") then
                            char.Head:FindFirstChild("face"):Destroy()
                        end
                        if char:FindFirstChild("Head") and char:FindFirstChild("Head"):FindFirstChild("Pupil") then
                            char.Head:FindFirstChild("Pupil"):Destroy()
                        end
                        if char:FindFirstChild("Shirt") then
                            char:FindFirstChild("Shirt").Parent = nil
                        end
                        if char:FindFirstChild("Pants") then
                            char:FindFirstChild("Pants").Parent = nil
                        end
                        for i, v in pairs(char:GetChildren()) do
                            if v:FindFirstChild("Head") then
                                v.Parent = nil
                            end
                        end
                        if player.Backpack:FindFirstChild("Skill Learn") then
                            repeat
                                wait()
                            until nil or
                                not player.Backpack:FindFirstChild("Skill Learn") and
                                    not player.Character:FindFirstChild("Skill Learn")
                        end
                        for i, v in pairs(char:GetChildren()) do
                            if
                                v.ClassName == "Accessory" or v.Name == "Humanoid" or v.Name == "HumanoidRootPart" or
                                    v.Name == "Torso" or
                                    string.match(v.Name, "Right") or
                                    string.match(v.Name, "Left")
                             then
                                v.Parent = nil
                            end
                        end
                        for i = 1, 10 do
                            wait()
                            game.Workspace.Map.Bag.CFrame = bagoriginal
                        end
                    end
                end
                if key == "h" then
                    if DURA == 0 then
                        DURA = 1
                        FOOD = 1
                        NOCLIP2 = 1
                        local char = player.Character
                        if char:FindFirstChild("Head") and char:FindFirstChild("Head"):FindFirstChild("face") then
                            char.Head:FindFirstChild("face"):Destroy()
                        end
                        if char:FindFirstChild("Head") and char:FindFirstChild("Head"):FindFirstChild("Pupil") then
                            char.Head:FindFirstChild("Pupil"):Destroy()
                        end
                        if char:FindFirstChild("Shirt") then
                            char:FindFirstChild("Shirt").Parent = nil
                        end
                        if char:FindFirstChild("Pants") then
                            char:FindFirstChild("Pants").Parent = nil
                        end
                        for i, v in pairs(char:GetChildren()) do
                            if v:FindFirstChild("Head") then
                                v.Parent = nil
                            end
                        end
                        for i, v in pairs(char:GetChildren()) do
                            if v.ClassName == "Accessory" then
                                v:Destroy()
                            end
                        end
                        wait(1)
                        for _, c in pairs(player.Character:GetDescendants()) do
                            if c:IsA("BasePart") then
                                c.Anchored = true
                            end
                        end
                        COOLDOWN = 0
                        while DURA == 1 and wait() do
                            if player.Character.Humanoid.Health <= 1 then
                                local char = player.Character
                                if char:FindFirstChild("Head") and char:FindFirstChild("Head"):FindFirstChild("face") then
                                    char.Head:FindFirstChild("face"):Destroy()
                                end
                                if char:FindFirstChild("Head") and char:FindFirstChild("Head"):FindFirstChild("Pupil") then
                                    char.Head:FindFirstChild("Pupil"):Destroy()
                                end
                                if char:FindFirstChild("Shirt") then
                                    char:FindFirstChild("Shirt").Parent = nil
                                end
                                if char:FindFirstChild("Pants") then
                                    char:FindFirstChild("Pants").Parent = nil
                                end
                                for i, v in pairs(char:GetChildren()) do
                                    if v:FindFirstChild("Head") then
                                        v.Parent = nil
                                    end
                                end
                                for i, v in pairs(char:GetChildren()) do
                                    if
                                        v.ClassName == "Accessory" or v.Name == "Humanoid" or
                                            v.Name == "HumanoidRootPart" or
                                            v.Name == "Torso" or
                                            string.match(v.Name, "Right") or
                                            string.match(v.Name, "Left")
                                     then
                                        v.Parent = nil
                                    end
                                end
                                COOLDOWN = 1
                                wait(8.9)
                                if DURA == 1 then
                                    local char = player.Character
                                    if
                                        char:FindFirstChild("Head") and
                                            char:FindFirstChild("Head"):FindFirstChild("face")
                                     then
                                        char.Head:FindFirstChild("face"):Destroy()
                                    end
                                    if
                                        char:FindFirstChild("Head") and
                                            char:FindFirstChild("Head"):FindFirstChild("Pupil")
                                     then
                                        char.Head:FindFirstChild("Pupil"):Destroy()
                                    end
                                    if char:FindFirstChild("Shirt") then
                                        char:FindFirstChild("Shirt").Parent = nil
                                    end
                                    if char:FindFirstChild("Pants") then
                                        char:FindFirstChild("Pants").Parent = nil
                                    end
                                    for i, v in pairs(char:GetChildren()) do
                                        if v:FindFirstChild("Head") then
                                            v.Parent = nil
                                        end
                                    end
                                    for i, v in pairs(char:GetChildren()) do
                                        if v.ClassName == "Accessory" then
                                            v:Destroy()
                                        end
                                    end
                                    for _, c in pairs(player.Character:GetDescendants()) do
                                        if c:IsA("BasePart") then
                                            c.Anchored = true
                                        end
                                    end
                                    COOLDOWN = 0
                                end
                            end
                        end
                    elseif DURA == 1 then
                        COOLDOWN = 1
                        DURA = 0
                        FOOD = 0
                        NOCLIP2 = 0
                        for _, c in pairs(player.Character:GetDescendants()) do
                            if c:IsA("BasePart") then
                                c.Anchored = true
                            end
                        end
                        local char = player.Character
                        if char:FindFirstChild("Head") and char:FindFirstChild("Head"):FindFirstChild("face") then
                            char.Head:FindFirstChild("face"):Destroy()
                        end
                        if char:FindFirstChild("Head") and char:FindFirstChild("Head"):FindFirstChild("Pupil") then
                            char.Head:FindFirstChild("Pupil"):Destroy()
                        end
                        if char:FindFirstChild("Shirt") then
                            char:FindFirstChild("Shirt").Parent = nil
                        end
                        if char:FindFirstChild("Pants") then
                            char:FindFirstChild("Pants").Parent = nil
                        end
                        for i, v in pairs(char:GetChildren()) do
                            if v:FindFirstChild("Head") then
                                v.Parent = nil
                            end
                        end
                        for i, v in pairs(char:GetChildren()) do
                            if
                                v.ClassName == "Accessory" or v.Name == "Humanoid" or v.Name == "HumanoidRootPart" or
                                    v.Name == "Torso" or
                                    string.match(v.Name, "Right") or
                                    string.match(v.Name, "Left")
                             then
                                v.Parent = nil
                            end
                        end
                    end
                end
                if key == "g" then
                    if TRAINING == 0 then
                        local tool = player.Character:FindFirstChildOfClass("Tool").Name
                        local playerpos = player.Character.HumanoidRootPart.CFrame
                        TRAINING = 1
                        FOOD = 1
                        while TRAINING == 1 and wait() do
                            if
                                not player.Backpack:FindFirstChild("Stat Check Up") and
                                    not player.Character:FindFirstChild("Stat Check Up")
                             then
                                fireclickdetector(game.Workspace.Shop["Stat Check Up $700"].Head.ClickDetector)
                            end
                            player.Character.HumanoidRootPart.Anchored = true
                            player.Character.HumanoidRootPart.CFrame = playerpos
                            if player.Character.Humanoid.Health == 0 then
                                for _, c in pairs(game.Players:GetPlayers()) do
                                    if
                                        c.Name ~= player.Name and c.Character and
                                            c.Character:FindFirstChild("HumanoidRootPart") and
                                            (c.Character:FindFirstChild("HumanoidRootPart").Position -
                                                player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude <
                                                10
                                     then
                                        TRAINING = 0
                                        pgr3.Visible = true
                                        pgr3.Text = c.Name .. " gripped you."
                                    end
                                end
                            end
                            if gethiddenproperty(player.PlayerGui.HUD.Food, "AbsoluteSize").X >= 50.0001 then
                                if not player.Character.Status:FindFirstChild("Bar") then
                                    for _, c in pairs(game.Workspace.Map:GetChildren()) do
                                        if
                                            c:FindFirstChild("Protein Bar $45") and
                                                (c:FindFirstChild("Protein Bar $45").Head.Position -
                                                    player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude <
                                                    30
                                         then
                                            fireclickdetector(c:FindFirstChild("Protein Bar $45").Head.ClickDetector)
                                        end
                                    end
                                    if player.Backpack:FindFirstChild("Protein Bar") then
                                        player.Character.Humanoid:EquipTool(
                                            player.Backpack:FindFirstChild("Protein Bar")
                                        )
                                    end
                                    if player.Character:FindFirstChild("Protein Bar") then
                                        player.Character:FindFirstChild("Protein Bar"):Activate()
                                    end
                                elseif not player.Character.Status:FindFirstChild("Poweraid") then
                                    for _, c in pairs(game.Workspace.Map:GetChildren()) do
                                        if
                                            c:FindFirstChild("Energy Drink $32") and
                                                (c:FindFirstChild("Energy Drink $32").Head.Position -
                                                    player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude <
                                                    30
                                         then
                                            fireclickdetector(c:FindFirstChild("Energy Drink $32").Head.ClickDetector)
                                        end
                                    end
                                    if player.Backpack:FindFirstChild("Energy Drink") then
                                        player.Character.Humanoid:EquipTool(
                                            player.Backpack:FindFirstChild("Energy Drink")
                                        )
                                    end
                                    if player.Character:FindFirstChild("Energy Drink") then
                                        player.Character:FindFirstChild("Energy Drink"):Activate()
                                    end
                                end
                                if not player.Character:FindFirstChild(tool) then
                                    if player.Backpack:FindFirstChild(tool) then
                                        player.Character.Humanoid:EquipTool(player.Backpack:FindFirstChild(tool))
                                    end
                                end
                                if player.Character.Stamina.Value >= 25 and player.Character.Stamina.Value <= 9999 then
                                    if not player.Character.Status:FindFirstChild("Training") then
                                        if player.Character:FindFirstChildOfClass("Tool") then
                                            player.Character:FindFirstChildOfClass("Tool"):Activate()
                                        end
                                    end
                                    wait(0.25)
                                elseif player.Character.Stamina.Value <= 25 then
                                    repeat
                                        wait()
                                    until nil or
                                        gethiddenproperty(player.PlayerGui.HUD.Stamina, "AbsoluteSize").X >= 230 or
                                        TRAINING == 0
                                end
                            end
                        end
                    elseif TRAINING == 1 then
                        TRAINING = 0
                        FOOD = 0
                        for i = 1, 10 do
                            wait()
                            player.Character.HumanoidRootPart.Anchored = false
                        end
                    end
                end
                if key == "y" then
                    if
                        not player.Backpack:FindFirstChild("Stat Check Up") and
                            not player.Character:FindFirstChild("Stat Check Up")
                     then
                        fireclickdetector(game.Workspace.Shop["Stat Check Up $700"].Head.ClickDetector)
                    end
                    if
                        not player.Backpack:FindFirstChild("Jerk Chicken") and
                            not player.Character:FindFirstChild("Jerk Chicken")
                     then
                        fireclickdetector(game.Workspace.Shop["Jerk Chicken $70"].Head.ClickDetector)
                    end
                    if
                        not player.Backpack:FindFirstChild("Bank Card") and
                            not player.Character:FindFirstChild("Bank Card")
                     then
                        fireclickdetector(game.Workspace.Shop["Bank Card $275"].Head.ClickDetector)
                    end
                    game.ReplicatedStorage.Remotes.Withdraw:FireServer("Withdraw", 5000)
                end
                if key == "j" then
                    if SPEED == 0 then
                        SPEED = 1
                        local RunSpeed = player.Backpack.zoom.runspeed

                        local NewRunSpeed = 45

                        local Hook
                        Hook =
                            hookfunction(
                            getrawmetatable(game).__index,
                            newcclosure(
                                function(o, i)
                                    if o == RunSpeed and i == "Value" then
                                        return NewRunSpeed
                                    end
                                    return Hook(o, i)
                                end
                            )
                        )
                    elseif SPEED == 1 then
                        SPEED = 0
                        local RunSpeed = player.Backpack.zoom.runspeed

                        local NewRunSpeed = 30

                        local Hook
                        Hook =
                            hookfunction(
                            getrawmetatable(game).__index,
                            newcclosure(
                                function(o, i)
                                    if o == RunSpeed and i == "Value" then
                                        return NewRunSpeed
                                    end
                                    return Hook(o, i)
                                end
                            )
                        )
                    end
                end
                if key == "k" then
                    if MISSION == 0 then
                        local char = player.Character
                        if char:FindFirstChild("Head") and char:FindFirstChild("Head"):FindFirstChild("face") then
                            char.Head:FindFirstChild("face"):Destroy()
                        end
                        if char:FindFirstChild("Head") and char:FindFirstChild("Head"):FindFirstChild("Pupil") then
                            char.Head:FindFirstChild("Pupil"):Destroy()
                        end
                        if char:FindFirstChild("Shirt") then
                            char:FindFirstChild("Shirt").Parent = nil
                        end
                        if char:FindFirstChild("Pants") then
                            char:FindFirstChild("Pants").Parent = nil
                        end
                        for i, v in pairs(char:GetChildren()) do
                            if v:FindFirstChild("Head") then
                                v.Parent = nil
                            end
                        end
                        for i, v in pairs(char:GetChildren()) do
                            if v.ClassName == "Accessory" then
                                v:Destroy()
                            end
                        end
                        local Incre = 2.5
                        local Time = 0
                        NOCLIP = 1
                        MISSION = 1
                        FOOD = 1
                        while MISSION == 1 and wait() do
                            if
                                not player.Backpack:FindFirstChild("Bank Card") and
                                    not player.Character:FindFirstChild("Bank Card")
                             then
                                fireclickdetector(game.Workspace.Shop["Bank Card $275"].Head.ClickDetector)
                            end
                            game.ReplicatedStorage.Remotes.Withdraw:FireServer("Deposit", 5000)
                            if player:FindFirstChild("Mission") and player:FindFirstChild("Dirt") then
                                for _, c in pairs(game.Workspace.Dirt:GetChildren()) do
                                    if
                                        c:FindFirstChild("Decal") and c:FindFirstChild("Decal").Transparency == 0 and
                                            player:FindFirstChild("Mission") and
                                            MISSION == 1
                                     then
                                        if player == nil then
                                            return
                                        end
                                        local char = player.Character
                                        local root = char.HumanoidRootPart
                                        local cf = c.CFrame
                                        local Pos = cf.p + Vector3.new(0, 4, 0)
                                        local Debounce = false
                                        local Diff = Pos - root.Position
                                        local Mag = Diff.magnitude
                                        local HumanoidRootParted = CFrame.new(root.Position, Pos).lookVector
                                        function Move()
                                            if Debounce then
                                                return
                                            end
                                            Debounce = true
                                            for n = 0, Mag, Incre do
                                                if
                                                    player:FindFirstChild("Mission") and
                                                        c:FindFirstChild("Decal").Transparency == 0
                                                 then
                                                    root.Anchored = false
                                                    root.CFrame = root.CFrame + (HumanoidRootParted * Incre)
                                                    wait((Time / Mag) * Incre)
                                                end
                                            end
                                            Debounce = false
                                            root.Anchored = false
                                        end
                                        Move()
                                        wait()
                                        if
                                            MISSION == 1 and player:FindFirstChild("Mission") and
                                                c:FindFirstChild("Decal").Transparency == 0
                                         then
                                            if
                                                (c.Position -
                                                    player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude <
                                                    5
                                             then
                                                fireclickdetector(c.ClickDetector)
                                            end
                                        end
                                    elseif
                                        c:FindFirstChild("Decal") and c:FindFirstChild("Decal").Transparency ~= 0 and
                                            player:FindFirstChild("Mission") and
                                            MISSION == 1
                                     then
                                        if player == nil then
                                            return
                                        end
                                        local char = player.Character
                                        local root = char.HumanoidRootPart
                                        local cf = c.CFrame
                                        local Pos = cf.p + Vector3.new(0, 30, 0)
                                        local Debounce = false
                                        local Diff = Pos - root.Position
                                        local Mag = Diff.magnitude
                                        local HumanoidRootParted = CFrame.new(root.Position, Pos).lookVector
                                        function Move()
                                            if Debounce then
                                                return
                                            end
                                            Debounce = true
                                            for n = 0, Mag, Incre do
                                                if
                                                    player:FindFirstChild("Mission") and
                                                        c:FindFirstChild("Decal").Transparency ~= 0
                                                 then
                                                    root.Anchored = false
                                                    root.CFrame = root.CFrame + (HumanoidRootParted * Incre)
                                                    wait((Time / Mag) * Incre)
                                                end
                                            end
                                            Debounce = false
                                            root.Anchored = false
                                        end
                                        Move()
                                        wait()
                                    end
                                end
                            elseif player:FindFirstChild("Mission") and player:FindFirstChild("Poster") then
                                for _, c in pairs(game.Workspace.Posters:GetChildren()) do
                                    if
                                        c:FindFirstChild("Decal") and c:FindFirstChild("Decal").Transparency == 1 and
                                            player:FindFirstChild("Mission") and
                                            MISSION == 1
                                     then
                                        if player == nil then
                                            return
                                        end
                                        local char = player.Character
                                        local root = char.HumanoidRootPart
                                        local cf = c.CFrame
                                        local Pos = cf.p
                                        local Debounce = false
                                        local Diff = Pos - root.Position
                                        local Mag = Diff.magnitude
                                        local HumanoidRootParted = CFrame.new(root.Position, Pos).lookVector
                                        function Move()
                                            if Debounce then
                                                return
                                            end
                                            Debounce = true
                                            for n = 0, Mag, Incre do
                                                if
                                                    player:FindFirstChild("Mission") and
                                                        c:FindFirstChild("Decal").Transparency == 1
                                                 then
                                                    root.Anchored = false
                                                    root.CFrame = root.CFrame + (HumanoidRootParted * Incre)
                                                    wait((Time / Mag) * Incre)
                                                end
                                            end
                                            Debounce = false
                                            root.Anchored = false
                                        end
                                        Move()
                                        if
                                            MISSION == 1 and player:FindFirstChild("Mission") and
                                                c:FindFirstChild("Decal").Transparency == 1
                                         then
                                            wait(0.1)
                                            if
                                                (c.Position -
                                                    player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude <
                                                    5
                                             then
                                                fireclickdetector(c.ClickDetector)
                                            end
                                            wait(0.1)
                                        end
                                    end
                                end
                            elseif
                                player:FindFirstChild("Mission") and not player:FindFirstChild("Dirt") and
                                    not player:FindFirstChild("Poster") and
                                    MISSION == 1
                             then
                                if player == nil then
                                    return
                                end
                                local char = player.Character
                                local root = char.HumanoidRootPart
                                local cf = game.Workspace.Delivery.Part.CFrame
                                local Pos = cf.p + Vector3.new(0, 4, 0)
                                local Debounce = false
                                local Diff = Pos - root.Position
                                local Mag = Diff.magnitude
                                local HumanoidRootParted = CFrame.new(root.Position, Pos).lookVector
                                function Move()
                                    if Debounce then
                                        return
                                    end
                                    Debounce = true
                                    for n = 0, Mag, Incre do
                                        root.Anchored = false
                                        root.CFrame = root.CFrame + (HumanoidRootParted * Incre)
                                        wait((Time / Mag) * Incre)
                                    end
                                    Debounce = false
                                    root.Anchored = false
                                end
                                Move()
                                if player.Character:FindFirstChild("HumanoidRootPart") and MISSION == 1 then
                                    player.Character.HumanoidRootPart.CFrame = game.Workspace.Delivery.Part.CFrame
                                end
                                wait(0.15)
                            elseif not player:FindFirstChild("Mission") then
                                if player == nil then
                                    return
                                end
                                local char = player.Character
                                local root = char.HumanoidRootPart
                                local cf = game.Workspace.Corkboard.Board["Color this to paint the board"].CFrame
                                local Pos = cf.p
                                local Debounce = false
                                local Diff = Pos - root.Position
                                local Mag = Diff.magnitude
                                local HumanoidRootParted = CFrame.new(root.Position, Pos).lookVector
                                function Move()
                                    if Debounce then
                                        return
                                    end
                                    Debounce = true
                                    for n = 0, Mag, Incre do
                                        root.Anchored = false
                                        root.CFrame = root.CFrame + (HumanoidRootParted * Incre)
                                        wait((Time / Mag) * Incre)
                                    end
                                    Debounce = false
                                    root.Anchored = false
                                end
                                Move()
                                if MISSION == 1 then
                                    wait(0.15)
                                    if
                                        (game.Workspace.Corkboard.Board["Color this to paint the board"].Position -
                                            player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 5
                                     then
                                        fireclickdetector(
                                            game.Workspace.Corkboard.Board["Color this to paint the board"].ClickDetector
                                        )
                                    end
                                    wait(0.15)
                                end
                            end
                        end
                    elseif MISSION == 1 then
                        MISSION = 0
                        NOCLIP = 0
                        FOOD = 0
                        for _, c in pairs(player.Character:GetDescendants()) do
                            if c:IsA("BasePart") then
                                c.Anchored = true
                            end
                        end
                        local char = player.Character
                        if char:FindFirstChild("Head") and char:FindFirstChild("Head"):FindFirstChild("face") then
                            char.Head:FindFirstChild("face"):Destroy()
                        end
                        if char:FindFirstChild("Head") and char:FindFirstChild("Head"):FindFirstChild("Pupil") then
                            char.Head:FindFirstChild("Pupil"):Destroy()
                        end
                        if char:FindFirstChild("Shirt") then
                            char:FindFirstChild("Shirt").Parent = nil
                        end
                        if char:FindFirstChild("Pants") then
                            char:FindFirstChild("Pants").Parent = nil
                        end
                        for i, v in pairs(char:GetChildren()) do
                            if v:FindFirstChild("Head") then
                                v.Parent = nil
                            end
                        end
                        for i, v in pairs(char:GetChildren()) do
                            if
                                v.ClassName == "Accessory" or v.Name == "Humanoid" or v.Name == "HumanoidRootPart" or
                                    v.Name == "Torso" or
                                    string.match(v.Name, "Right") or
                                    string.match(v.Name, "Left")
                             then
                                v.Parent = nil
                            end
                        end
                    end
                end
                if key == "l" then
                    if MISSION == 0 then
                        local char = player.Character
                        if char:FindFirstChild("Head") and char:FindFirstChild("Head"):FindFirstChild("face") then
                            char.Head:FindFirstChild("face"):Destroy()
                        end
                        if char:FindFirstChild("Head") and char:FindFirstChild("Head"):FindFirstChild("Pupil") then
                            char.Head:FindFirstChild("Pupil"):Destroy()
                        end
                        if char:FindFirstChild("Shirt") then
                            char:FindFirstChild("Shirt").Parent = nil
                        end
                        if char:FindFirstChild("Pants") then
                            char:FindFirstChild("Pants").Parent = nil
                        end
                        for i, v in pairs(char:GetChildren()) do
                            if v:FindFirstChild("Head") then
                                v.Parent = nil
                            end
                        end
                        for i, v in pairs(char:GetChildren()) do
                            if v.ClassName == "Accessory" then
                                v:Destroy()
                            end
                        end
                        for i, v in pairs(player.PlayerGui:GetChildren()) do
                            if v.Name == "BillboardGui" then
                                v:Destroy()
                            end
                        end
                        local Incre = 2.5
                        local Time = 0
                        NOCLIP = 1
                        MISSION = 1
                        FOOD = 1
                        player.Character.HumanoidRootPart.CFrame =
                            player.Character.HumanoidRootPart.CFrame * CFrame.new(0, -5, 0)
                        while MISSION == 1 and wait() do
                            if player.Character:FindFirstChild("Humanoid") then
                                for i, track in pairs(player.Character.Humanoid:GetPlayingAnimationTracks()) do
                                    track:Stop()
                                end
                            end
                            if
                                not player.Backpack:FindFirstChild("Stat Check Up") and
                                    not player.Character:FindFirstChild("Stat Check Up")
                             then
                                fireclickdetector(game.Workspace.Shop["Stat Check Up $700"].Head.ClickDetector)
                            end
                            if
                                player.PlayerGui:FindFirstChild("BillboardGui") and
                                    player.PlayerGui.BillboardGui.Enabled == true
                             then
                                for _, c in pairs(game.Workspace.Roadwork:GetChildren()) do
                                    if
                                        MISSION == 1 and player.PlayerGui:FindFirstChild("BillboardGui") and
                                            player.PlayerGui.BillboardGui.Enabled == true
                                     then
                                        if player == nil then
                                            return
                                        end
                                        local char = player.Character
                                        local root = char.HumanoidRootPart
                                        local cf = c.CFrame
                                        local Pos = cf.p + Vector3.new(0, -2.25, 0)
                                        local Debounce = false
                                        local Diff = Pos - root.Position
                                        local Mag = Diff.magnitude
                                        local HumanoidRootParted = CFrame.new(root.Position, Pos).lookVector
                                        function Move()
                                            if Debounce then
                                                return
                                            end
                                            Debounce = true
                                            for n = 0, Mag, Incre do
                                                root.Anchored = false
                                                root.CFrame = root.CFrame + (HumanoidRootParted * Incre)
                                                wait((Time / Mag) * Incre)
                                            end
                                            Debounce = false
                                            root.Anchored = false
                                        end
                                        Move()
                                        wait()
                                    end
                                end
                            elseif
                                not player.PlayerGui:FindFirstChild("BillboardGui") or
                                    player.PlayerGui:FindFirstChild("BillboardGui") and
                                        player.PlayerGui.BillboardGui.Enabled == false
                             then
                                if player == nil then
                                    return
                                end
                                local char = player.Character
                                local root = char.HumanoidRootPart
                                local cf = game.Workspace.Shop["Roadwork Training $130"].Head.CFrame
                                local Pos = cf.p + Vector3.new(0, -3, 0)
                                local Debounce = false
                                local Diff = Pos - root.Position
                                local Mag = Diff.magnitude
                                local HumanoidRootParted = CFrame.new(root.Position, Pos).lookVector
                                function Move()
                                    if Debounce then
                                        return
                                    end
                                    Debounce = true
                                    for n = 0, Mag, Incre do
                                        root.Anchored = false
                                        root.CFrame = root.CFrame + (HumanoidRootParted * Incre)
                                        wait((Time / Mag) * Incre)
                                    end
                                    Debounce = false
                                    root.Anchored = false
                                end
                                Move()
                                if MISSION == 1 then
                                    wait(0.1)
                                    if
                                        (game.Workspace.Shop["Roadwork Training $130"].Head.Position -
                                            player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 5
                                     then
                                        fireclickdetector(
                                            game.Workspace.Shop["Roadwork Training $130"].Head.ClickDetector
                                        )
                                    end
                                    wait(0.1)
                                end
                            end
                        end
                    elseif MISSION == 1 then
                        MISSION = 0
                        NOCLIP = 0
                        FOOD = 0
                        for _, c in pairs(player.Character:GetDescendants()) do
                            if c:IsA("BasePart") then
                                c.Anchored = true
                            end
                        end
                        local char = player.Character
                        if char:FindFirstChild("Head") and char:FindFirstChild("Head"):FindFirstChild("face") then
                            char.Head:FindFirstChild("face"):Destroy()
                        end
                        if char:FindFirstChild("Head") and char:FindFirstChild("Head"):FindFirstChild("Pupil") then
                            char.Head:FindFirstChild("Pupil"):Destroy()
                        end
                        if char:FindFirstChild("Shirt") then
                            char:FindFirstChild("Shirt").Parent = nil
                        end
                        if char:FindFirstChild("Pants") then
                            char:FindFirstChild("Pants").Parent = nil
                        end
                        for i, v in pairs(char:GetChildren()) do
                            if v:FindFirstChild("Head") then
                                v.Parent = nil
                            end
                        end
                        for i, v in pairs(char:GetChildren()) do
                            if
                                v.ClassName == "Accessory" or v.Name == "Humanoid" or v.Name == "HumanoidRootPart" or
                                    v.Name == "Torso" or
                                    string.match(v.Name, "Right") or
                                    string.match(v.Name, "Left")
                             then
                                v.Parent = nil
                            end
                        end
                    end
                end
                if key == "n" then
                    local destroymeshes = true
                    local destroymeshpart = true
                    local removematerial = true

                    for i, v in pairs(workspace:GetDescendants()) do
                        if v.ClassName == "Part" and removematerial == true then
                            v.Material = "Plastic"
                        elseif v.ClassName == "Mesh" and destroymeshes == true then
                            V:Destroy()
                        end
                    end
                end
                if key == "m" then
                    loadstring(game:HttpGet("https://pastebin.com/raw/NkPVHtLf"))()
                end
                if key == "[" then
                    spawn(
                        function()
                            local message = Instance.new("Message", workspace)
                            message.Text = "Loaded press z to execute headfling , press x to respawn)"
                            wait(1)
                            message:Destroy()
                        end
                    )

                    local mouse = game.Players.LocalPlayer:GetMouse()

                    local groot = nil

                    mouse.KeyDown:connect(
                        function(k)
                            if k == "z" then
                                local plr = game.Players.LocalPlayer
                                mouse = plr:GetMouse()

                                local root = game.Players.LocalPlayer.Character.Head

                                local char = player.Character
                                if char:FindFirstChild("Head") and char:FindFirstChild("Head"):FindFirstChild("face") then
                                    char.Head:FindFirstChild("face"):Destroy()
                                end
                                if char:FindFirstChild("Head") and char:FindFirstChild("Head"):FindFirstChild("Pupil") then
                                    char.Head:FindFirstChild("Pupil"):Destroy()
                                end
                                if char:FindFirstChild("Shirt") then
                                    char:FindFirstChild("Shirt").Parent = nil
                                end
                                if char:FindFirstChild("Pants") then
                                    char:FindFirstChild("Pants").Parent = nil
                                end
                                for i, v in pairs(char:GetChildren()) do
                                    if v:FindFirstChild("Head") then
                                        v.Parent = nil
                                    end
                                end
                                for i, v in pairs(char:GetChildren()) do
                                    if
                                        v.ClassName == "Accessory" or v.Name == "Humanoid" or
                                            v.Name == "HumanoidRootPart" or
                                            v.Name == "Torso" or
                                            string.match(v.Name, "Right") or
                                            string.match(v.Name, "Left")
                                     then
                                        v.Parent = nil
                                    end
                                end

                                workspace.CurrentCamera.CameraSubject = root

                                local se = Instance.new("SelectionBox", root)
                                se.Adornee = root

                                game:GetService("RunService").Stepped:connect(
                                    function()
                                        for i, v in pairs(char:GetChildren()) do
                                            if v:IsA("BasePart") then
                                                v.CanCollide = false
                                            end
                                        end
                                    end
                                )
                                game:GetService("RunService").RenderStepped:connect(
                                    function()
                                        for i, v in pairs(char:GetChildren()) do
                                            if v:IsA("BasePart") then
                                                v.CanCollide = false
                                            end
                                        end
                                    end
                                )

                                power = 2500 -- change this to make it more or less powerful

                                ---
                                wait(.1)
                                local bambam = Instance.new("BodyThrust")
                                bambam.Parent = game.Players.LocalPlayer.Character.Head
                                bambam.Force = Vector3.new(power, 0, power)
                                bambam.Location = game.Players.LocalPlayer.Character.Head.Position

                                local plr = game.Players.LocalPlayer
                                local torso = root
                                local flying = true
                                local deb = true
                                local ctrl = {f = 0, b = 0, l = 0, r = 0}
                                local lastctrl = {f = 0, b = 0, l = 0, r = 0}
                                local speed = 30

                                ---local bambam = Instance.new("BodyThrust")
                                ---bambam.Parent = torso
                                --bambam.Force = Vector3.new(9999999,0,9999999)
                                --bambam.Location = torso.Position

                                ---
                                groot = root

                                function Fly()
                                    local bg = Instance.new("BodyGyro", torso)
                                    bg.P = 9e4
                                    bg.maxTorque = Vector3.new(0, 0, 0)
                                    bg.cframe = torso.CFrame
                                    local bv = Instance.new("BodyVelocity", torso)
                                    bv.velocity = Vector3.new(0, 0, 0)
                                    bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
                                    repeat
                                        wait()

                                        if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
                                            speed = 30
                                            local UserInputService = game:GetService("UserInputService")
                                            local shifting = UserInputService:IsKeyDown(Enum.KeyCode.LeftShift)
                                            if shifting == true then
                                                do
                                                    speed = 45
                                                end
                                            end
                                        elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
                                            speed = 0
                                            if speed < 0 then
                                                speed = 0
                                            end
                                        end
                                        if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
                                            bv.velocity =
                                                ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector *
                                                (ctrl.f + ctrl.b)) +
                                                ((game.Workspace.CurrentCamera.CoordinateFrame *
                                                    CFrame.new(ctrl.l + ctrl.r, (ctrl.f + ctrl.b) * .2, 0).p) -
                                                    game.Workspace.CurrentCamera.CoordinateFrame.p)) *
                                                speed
                                            lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
                                        elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
                                            bv.velocity =
                                                ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector *
                                                (lastctrl.f + lastctrl.b)) +
                                                ((game.Workspace.CurrentCamera.CoordinateFrame *
                                                    CFrame.new(
                                                        lastctrl.l + lastctrl.r,
                                                        (lastctrl.f + lastctrl.b) * .2,
                                                        0
                                                    ).p) -
                                                    game.Workspace.CurrentCamera.CoordinateFrame.p)) *
                                                speed
                                        else
                                            bv.velocity = Vector3.new(0, 0.1, 0)
                                        end
                                    until not flying
                                    ctrl = {f = 0, b = 0, l = 0, r = 0}
                                    lastctrl = {f = 0, b = 0, l = 0, r = 0}
                                    speed = 0
                                    bg:Destroy()
                                    bv:Destroy()
                                end
                                mouse.KeyDown:connect(
                                    function(key)
                                        if key:lower() == "e" then
                                            if flying then
                                                flying = false
                                            else
                                                flying = true
                                                Fly()
                                            end
                                        elseif key:lower() == "w" then
                                            ctrl.f = 1
                                        elseif key:lower() == "s" then
                                            ctrl.b = -1
                                        elseif key:lower() == "a" then
                                            ctrl.l = -1
                                        elseif key:lower() == "d" then
                                            ctrl.r = 1
                                        end
                                    end
                                )
                                mouse.KeyUp:connect(
                                    function(key)
                                        if key:lower() == "w" then
                                            ctrl.f = 0
                                        elseif key:lower() == "s" then
                                            ctrl.b = 0
                                        elseif key:lower() == "a" then
                                            ctrl.l = 0
                                        elseif key:lower() == "d" then
                                            ctrl.r = 0
                                        elseif key:lower() == "r" then
                                        end
                                    end
                                )
                                Fly()
                            elseif k == "x" then
                                spawn(
                                    function()
                                        local message = Instance.new("Message", workspace)
                                        message.Text = "Respawning dont spam"
                                        wait(1)
                                        message:Destroy()
                                    end
                                )

                                local saved = groot.Position

                                local ch = game.Players.LocalPlayer.Character
                                local prt = Instance.new("Model", workspace)
                                local z1 = Instance.new("Part", prt)
                                z1.Name = "Torso"
                                z1.CanCollide = false
                                z1.Anchored = true
                                local z2 = Instance.new("Part", prt)
                                z2.Name = "Head"
                                z2.Anchored = true
                                z2.CanCollide = false
                                local z3 = Instance.new("Humanoid", prt)
                                z3.Name = "Humanoid"
                                z1.Position = Vector3.new(0, 9999, 0)
                                z2.Position = Vector3.new(0, 9991, 0)
                                game.Players.LocalPlayer.Character = prt
                                wait(2)
                                game.Players.LocalPlayer.Character = ch
                                local poop = nil
                                repeat
                                    wait()
                                    poop = game.Players.LocalPlayer.Character:FindFirstChild("Head")
                                until poop ~= nil
                                wait(1)
                                game:GetService("Players").LocalPlayer.Character.Head.CFrame = CFrame.new(saved)
                            end
                        end
                    )
                end
                if key == "]" then
                    for _, c in pairs(player.Character:GetDescendants()) do
                        if c:IsA("BasePart") then
                            c.Anchored = true
                        end
                    end
                    local char = player.Character
                    if char:FindFirstChild("Head") and char:FindFirstChild("Head"):FindFirstChild("face") then
                        char.Head:FindFirstChild("face"):Destroy()
                    end
                    if char:FindFirstChild("Head") and char:FindFirstChild("Head"):FindFirstChild("Pupil") then
                        char.Head:FindFirstChild("Pupil"):Destroy()
                    end
                    if char:FindFirstChild("Shirt") then
                        char:FindFirstChild("Shirt").Parent = nil
                    end
                    if char:FindFirstChild("Pants") then
                        char:FindFirstChild("Pants").Parent = nil
                    end
                    for i, v in pairs(char:GetChildren()) do
                        if v:FindFirstChild("Head") then
                            v.Parent = nil
                        end
                    end
                    for i, v in pairs(char:GetChildren()) do
                        if
                            v.ClassName == "Accessory" or v.Name == "Humanoid" or v.Name == "HumanoidRootPart" or
                                v.Name == "Torso" or
                                string.match(v.Name, "Right") or
                                string.match(v.Name, "Left")
                         then
                            v.Parent = nil
                        end
                    end
                end
                if key == "p" then
                    game:GetService("TeleportService"):Teleport(2898237081)
                end
            end
        end
    )
    game:GetService("RunService").Stepped:connect(
        function()
            if FOOD == 1 then
                if gethiddenproperty(player.PlayerGui.HUD.Food, "AbsoluteSize").X <= 50 then
                    if not player.Character:FindFirstChild("Jerk Chicken") then
                        if player.Backpack:FindFirstChild("Jerk Chicken") then
                            player.Character.Humanoid:EquipTool(player.Backpack:FindFirstChild("Jerk Chicken"))
                        elseif
                            not player.Backpack:FindFirstChild("Jerk Chicken") and
                                not player.Character:FindFirstChild("Jerk Chicken")
                         then
                            fireclickdetector(game.Workspace.Shop["Jerk Chicken $70"].Head.ClickDetector)
                        end
                    elseif player.Character:FindFirstChild("Jerk Chicken") then
                        player.Character:FindFirstChild("Jerk Chicken"):Activate()
                    end
                end
            end
            if MACRO == 1 then
                if
                    not player.Backpack:FindFirstChild("Stat Check Up") and
                        not player.Character:FindFirstChild("Stat Check Up")
                 then
                    fireclickdetector(game.Workspace.Shop["Stat Check Up $700"].Head.ClickDetector)
                end
                for i, track in pairs(player.Character.Humanoid:GetPlayingAnimationTracks()) do
                    track:Stop()
                end
                player.Character.HumanoidRootPart.CFrame =
                    bagoriginal * CFrame.new(0, 8.3, 0) * CFrame.Angles(4.75, 0, 0)
                game.Workspace.Map.Bag.CFrame = bagoriginal * CFrame.new(0, 1.5, 0)
                for _, c in pairs(player.Character:GetChildren()) do
                    if c:IsA("BasePart") then
                        c.Anchored = true
                    end
                end
                if gethiddenproperty(player.PlayerGui.HUD.Food, "AbsoluteSize").X >= 50.0001 then
                    if player.Character.Status:FindFirstChild("Spar") then
                        if not player.Character:FindFirstChild("Basic Combat") then
                            if player.Backpack:FindFirstChild("Basic Combat") then
                                player.Character.Humanoid:EquipTool(player.Backpack:FindFirstChild("Basic Combat"))
                            end
                        elseif player.Character:FindFirstChild("Basic Combat") then
                            player.Character:FindFirstChild("Basic Combat"):Activate()
                        end
                    elseif not player.Character.Status:FindFirstChild("Spar") then
                        if
                            (game.Workspace.Shop["Spar Training $190"].Head.Position -
                                player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 50
                         then
                            fireclickdetector(game.Workspace.Shop["Spar Training $190"].Head.ClickDetector)
                        end
                        if player.Backpack:FindFirstChild("Spar Training") then
                            player.Character.Humanoid:EquipTool(player.Backpack:FindFirstChild("Spar Training"))
                        end
                        if player.Character:FindFirstChild("Spar Training") then
                            player.Character:FindFirstChild("Spar Training"):Activate()
                        end
                    end
                end
            end
            if COOLDOWN == 0 then
                if gethiddenproperty(player.PlayerGui.HUD.Food, "AbsoluteSize").X >= 50.0001 then
                    if player.Character.Status:FindFirstChild("Durability") then
                        if not player.Character:FindFirstChild("Self Punch") then
                            if player.Backpack:FindFirstChild("Self Punch") then
                                player.Character.Humanoid:EquipTool(player.Backpack:FindFirstChild("Self Punch"))
                            elseif
                                not player.Backpack:FindFirstChild("Self Punch") and
                                    not player.Character:FindFirstChild("Self Punch")
                             then
                                fireclickdetector(game.Workspace.Shop["Self Punch $130"].Head.ClickDetector)
                            end
                        elseif player.Character:FindFirstChild("Self Punch") then
                            player.Character:FindFirstChild("Self Punch"):Activate()
                        end
                    elseif not player.Character.Status:FindFirstChild("Durability") then
                        fireclickdetector(game.Workspace.Shop["Durability Training $130"].Head.ClickDetector)
                        if player.Backpack:FindFirstChild("Durability Training") then
                            player.Character.Humanoid:EquipTool(player.Backpack:FindFirstChild("Durability Training"))
                        end
                        if player.Character:FindFirstChild("Durability Training") then
                            player.Character:FindFirstChild("Durability Training"):Activate()
                        end
                    end
                end
            end
            if NOCLIP2 == 1 then
                if player.Character:FindFirstChild("Humanoid") then
                    player.Character.Humanoid:ChangeState(11)
                end
                for i, v in pairs(player.Character:GetChildren()) do
                    if v.Name == "Right" or v.Name == "Left" then
                        v.Parent = nil
                    end
                end
                if DURA == 1 then
                    if player.Character:FindFirstChild("HumanoidRootPart") then
                        player.Character.HumanoidRootPart.CFrame =
                            CFrame.new(
                            player.Character.HumanoidRootPart.CFrame.X,
                            72,
                            player.Character.HumanoidRootPart.CFrame.Z
                        )
                    end
                end
            end
            if NOCLIP == 1 then
                player.Character.Humanoid:ChangeState(11)
                if gethiddenproperty(player.PlayerGui.HUD.Food, "AbsoluteSize").X >= 50.0001 then
                    if player.Backpack:FindFirstChild("Basic Combat") then
                        player.Character.Humanoid:EquipTool(player.Backpack:FindFirstChild("Basic Combat"))
                    elseif player.Backpack:FindFirstChild("Roadwork Training") then
                        player.Character.Humanoid:EquipTool(player.Backpack:FindFirstChild("Roadwork Training"))
                        if player.Character:FindFirstChild("Roadwork Training") then
                            player.Character:FindFirstChild("Roadwork Training"):Activate()
                        end
                    elseif player.Character:FindFirstChild("Basic Combat") then
                        if not player.Character.Status:FindFirstChild("Blocking") then
                            player.Backpack.sTraits.RemoteEvent:FireServer("Block", true)
                        end
                    end
                end
            end
        end
    )
    game:GetService("RunService").Stepped:connect(
        function()
            for _, c in pairs(game.Players:GetPlayers()) do
                if c ~= nil and c:IsInGroup(4701945) == true and c:GetRankInGroup(4701945) >= 2 or c.UserId == 10525748 then
                    player:Kick("High/Mid group member in server.")
                end
            end
            if player.Character:FindFirstChild("Status") then
                if player.Character.Status:FindFirstChild("attack") then
                    player.Character.Status:FindFirstChild("attack"):Destroy()
                end
                if player.Character.Status:FindFirstChild("AntiEnergy") then
                    player.Character.Status:FindFirstChild("AntiEnergy"):Destroy()
                end
                if player.Character.Status:FindFirstChild("Slow") then
                    player.Character.Status:FindFirstChild("Slow"):Destroy()
                end
                if player.Character.Status:FindFirstChild("Stunned") then
                    player.Character.Status:FindFirstChild("Stunned"):Destroy()
                end
                if player.Character.Status:FindFirstChild("Cancel") then
                    player.Character.Status:FindFirstChild("Cancel"):Destroy()
                end
                if player.Character.Status:FindFirstChild("Dashing") then
                    player.Character.Status:FindFirstChild("Dashing"):Destroy()
                end
                if player.Character.Status:FindFirstChild("Anc") then
                    player.Character.Status:FindFirstChild("Anc"):Destroy()
                    if player.Character:FindFirstChild("HumanoidRootPart") then
                        player.Character:FindFirstChild("HumanoidRootPart").Anchored = false
                    end
                end
            end
            if
                player.Character:FindFirstChild("Torso") and
                    player.Character:FindFirstChild("Torso"):FindFirstChild("roblox")
             then
                player.Character:FindFirstChild("Torso"):FindFirstChild("roblox"):Destroy()
            end
            if
                player.Character:FindFirstChild("HumanoidRootPart") and
                    player.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Epic3")
             then
                player.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Epic3"):Destroy()
            end
            if
                player.Character:FindFirstChild("Humanoid") and
                    player.Character:FindFirstChild("Humanoid").WalkSpeed <= 15
             then
                player.Character.Humanoid.WalkSpeed = 16
            end
            if player.Character:FindFirstChild("Humanoid") then
                pgr4.Text =
                    "Current HP: " ..
                    (player.Character.Humanoid.Health + 0.5) - (player.Character.Humanoid.Health + 0.5) % (1) ..
                        "/" ..
                            (player.Character.Humanoid.MaxHealth + 0.5) -
                                (player.Character.Humanoid.MaxHealth + 0.5) % (1)
            end
            if
                player.Character:FindFirstChild("Combat") and player.Character:FindFirstChild("Combat").Value ~= -50 and
                    DURA == 0
             then
                local RunSpeed = player.Character.Combat

                local NewRunSpeed = -50

                local Hook
                Hook =
                    hookfunction(
                    getrawmetatable(game).__index,
                    newcclosure(
                        function(o, i)
                            if o == RunSpeed and i == "Value" then
                                return NewRunSpeed
                            end
                            return Hook(o, i)
                        end
                    )
                )
            end
            for _, c in pairs(game.Players:GetPlayers()) do
                if
                    c.Name ~= player.Name and c.Character and c.Character:FindFirstChild("Status") and
                        c.Character:FindFirstChild("Status"):FindFirstChild("Blocking")
                 then
                    c.Character:FindFirstChild("Status"):FindFirstChild("Blocking"):Destroy()
                end
            end
            for _, c in pairs(game.Players:GetPlayers()) do
                if
                    c.Name ~= player.Name and c.Character and c.Character:FindFirstChild("Status") and
                        c.Character:FindFirstChild("Status"):FindFirstChild("Perf")
                 then
                    c.Character:FindFirstChild("Status"):FindFirstChild("Perf"):Destroy()
                end
            end
            for _, c in pairs(game.Players:GetPlayers()) do
                if
                    c.Name ~= player.Name and c.Character and c.Character:FindFirstChild("Status") and
                        c.Character:FindFirstChild("Status"):FindFirstChild("Invincible")
                 then
                    c.Character:FindFirstChild("Status"):FindFirstChild("Invincible"):Destroy()
                end
            end
            for _, c in pairs(game.Players:GetPlayers()) do
                if
                    c.Name ~= player.Name and c.Character and c.Character:FindFirstChild("Humanoid") and
                        not c.Character:FindFirstChild("tracker")
                 then
                    local bb = Instance.new("BillboardGui", c.Character)
                    bb.Adornee = c.Character
                    bb.ExtentsOffset = Vector3.new(0, 1, 0)
                    bb.AlwaysOnTop = true
                    bb.Size = UDim2.new(0, 5, 0, 5)
                    bb.StudsOffset = Vector3.new(0, 1, 0)
                    bb.Name = "tracker"
                    local frame = Instance.new("Frame", bb)
                    frame.ZIndex = 10
                    frame.BackgroundTransparency = 0.3
                    frame.Size = UDim2.new(1, 0, 1, 0)
                    frame.Position = UDim2.new(0, 0, 0)
                    frame.Transparency = 0
                    local txtlbl = Instance.new("TextLabel", bb)
                    txtlbl.ZIndex = 10
                    txtlbl.Text = c.Character.Name
                    txtlbl.TextSize = 30
                    txtlbl.TextColor = BrickColor.new("White")
                    txtlbl.BackgroundTransparency = 1
                    txtlbl.Position = UDim2.new(0, 0, 0, -35)
                    txtlbl.Size = UDim2.new(1, 0, 10, 0)
                    txtlbl.Font = "SourceSansBold"
                    txtlbl.FontSize = "Size10"
                    txtlbl.TextStrokeTransparency = 0.5
                elseif
                    c.Name ~= game.Players.LocalPlayer.Name and c.Character and c.Character:FindFirstChild("Humanoid") and
                        c.Character:FindFirstChild("tracker")
                 then
                    if
                        c.Character:FindFirstChild("Torso") and
                            not c.Character:FindFirstChild("Torso"):FindFirstChild("roblox")
                     then
                        c.Character:FindFirstChild("tracker").TextLabel.TextColor = BrickColor.new("Bright yellow")
                    elseif
                        c.Character:FindFirstChild("Torso") and
                            c.Character:FindFirstChild("Torso"):FindFirstChild("roblox")
                     then
                        c.Character:FindFirstChild("tracker").TextLabel.TextColor = BrickColor.new("White")
                    else
                        c.Character:FindFirstChild("tracker").TextLabel.TextColor = BrickColor.new("White")
                    end
                    if
                        c.Character:FindFirstChild("TripleShoTz") or c.Character:FindFirstChild("Strikez v2") or
                            c.Character:FindFirstChild("The Hunters Organization") or
                            c.Character:FindFirstChild("Calamity V2") or
                            c.Character:FindFirstChild("[SGBC] KO") or
                            c.Character:FindFirstChild("des amigos gang") or
                            c.Character:FindFirstChild("UNAFFILLIATED")
                     then
                        c.Character:FindFirstChild("tracker").Frame.BackgroundColor3 = Color3.new(0, 255, 0)
                    elseif
                        c.Character:FindFirstChild("WARRIORSFORLIFE") or
                            c.Character:FindFirstChild("captainred123's Group") or
                            c.Character:FindFirstChild("The Lively Bunnies") or
                            c.Character:FindFirstChild("Guilty v2") or
                            c.Character:FindFirstChild("Ultimate Watermelon Gang") or
                            c.Character:FindFirstChild("The Elite Protectors of Airi")
                     then
                        c.Character:FindFirstChild("tracker").Frame.BackgroundColor3 = Color3.new(255, 0, 0)
                    elseif c.Character:FindFirstChild("Pirate Dolphin") or c.Character:FindFirstChild("(G Gang)") then
                        c.Character:FindFirstChild("tracker").Frame.BackgroundColor3 = Color3.new(0, 0, 255)
                    else
                        c.Character:FindFirstChild("tracker").Frame.BackgroundColor3 = Color3.new(163, 162, 165)
                    end
                    if c.Backpack:FindFirstChild("Skill Learn") or c.Character:FindFirstChild("Skill Learn") then
                        c.Character:FindFirstChild("tracker").TextLabel.Text =
                            "(Book) " ..
                            c.Character.Name ..
                                " HP:" .. (c.Character.Humanoid.Health + 0.5) - (c.Character.Humanoid.Health + 0.5) % 1
                    elseif
                        not c.Backpack:FindFirstChild("Skill Learn") and not c.Character:FindFirstChild("Skill Learn")
                     then
                        c.Character:FindFirstChild("tracker").TextLabel.Text =
                            c.Character.Name ..
                            " HP:" .. (c.Character.Humanoid.Health + 0.5) - (c.Character.Humanoid.Health + 0.5) % 1
                    end
                end
            end
            for _, c in pairs(game.Workspace.Live:GetChildren()) do
                if
                    c.Name == "NPC" and c:FindFirstChild("HumanoidRootPart") and c:FindFirstChildOfClass("Humanoid") and
                        (c:FindFirstChild("HumanoidRootPart").Position -
                            player.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50
                 then
                    sethiddenproperty(game.Players.LocalPlayer, "MaximumSimulationRadius", 1000000)
                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", 1000000)
                    c:FindFirstChildOfClass("Humanoid"):ChangeState(11)
                    c:FindFirstChild("HumanoidRootPart").CFrame = player.Character.HumanoidRootPart.CFrame
                end
            end
            game.Lighting.GlobalShadows = false
            game.Lighting.Brightness = 0
            game.Lighting.FogEnd = 100000
            game.Lighting.FogStart = 0
            game.Lighting.TimeOfDay = 11
        end
    )
end


if game.PlaceId == 2753915549 then ---BLOX FRUITS
    local Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/VLi"))()

    local win = Lib:Window("Straw Hub V2")

    local serv = win:Server("Straw Hub", "")

    local ss = serv:Channel("MAIN")
    local ssss = serv:Channel("FARM")
    local sss = serv:Channel("STATS")
    

    --IMPORTANT VARIABLE
    local Character_Table = {}
    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
        if v:IsA("Model") then
            table.insert(Character_Table, v.Name)
        end
    end
    getgenv().npc = nil
    getgenv().autofarm = false

    ss:Button(
        "Chest Esp",
        function()
            for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
                if v.Name == "Chest1" then
                elseif v.Name == "Chest2" then
                elseif v.Name == "Chest3" then
                    local BillboardGui = Instance.new("BillboardGui")
                    local TextLabel = Instance.new("TextLabel")

                    BillboardGui.Parent = v
                    BillboardGui.AlwaysOnTop = true
                    BillboardGui.LightInfluence = 1
                    BillboardGui.Size = UDim2.new(0, 50, 0, 50)
                    BillboardGui.StudsOffset = Vector3.new(0, 2, 0)

                    TextLabel.Parent = BillboardGui
                    TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
                    TextLabel.BackgroundTransparency = 1
                    TextLabel.Size = UDim2.new(1, 0, 1, 0)
                    TextLabel.Text = "X"
                    TextLabel.TextColor3 = Color3.new(1, 1, 0)
                    TextLabel.TextScaled = true
                end
            end
        end
    )

    ss:Button(
        "Inf Dodge",
        function()
            local metatable = getrawmetatable(game)
            local namecall = metatable.__namecall
            setreadonly(metatable, false)

            metatable.__namecall =
                newcclosure(
                function(self, ...)
                    if self.Name == "CommE" then
                        return 0
                    end
                    return namecall(self, ...)
                end
            )
        end
    )

    sss:Toggle(
        "Melee",
        function(t)
            getgenv().farmer = t
            while wait() do
                if getgenv().farmer == true then --AUTO UPGRADE GUN
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Melee", 1)
                end
            end
        end
    )
    sss:Toggle(
        "Gun",
        function(t)
            getgenv().farmer = t
            while wait() do
                if getgenv().farmer == true then --AUTO UPGRADE GUN
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Gun", 1)
                end
            end
        end
    )

    sss:Toggle(
        "Sword",
        function(t)
            getgenv().farmer = t
            while wait() do
                if getgenv().farmer == true then --AUTO UPGRADE GUN
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Sword", 1)
                end
            end
        end
    )

    sss:Toggle(
        "Demon Fruit",
        function(t)
            getgenv().farmer = t
            while wait() do
                if getgenv().farmer == true then --AUTO UPGRADE GUN
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Demon Fruit", 1)
                end
            end
        end
    )

    sss:Toggle(
        "Defense",
        function(t)
            getgenv().farmer = t
            while wait() do
                if getgenv().farmer == true then --AUTO UPGRADE GUN
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Defense", 1)
                end
            end
        end
    )

    ssss:Dropdown(
        "Mobs To Farm",
        Character_Table,
        function(t)
            getgenv().npc = t
        end
    )

    ssss:Toggle(
        "AutoFarm",
        false,
        function(bool)
            getgenv().autofarm = bool
            while getgenv().autofarm do wait()




            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
            if v.Name == getgenv().npc and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v:IsA("Model") then
            
            tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(1, Enum.EasingStyle.Linear)
            tween = tweenService:Create(v.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position + Vector3.new(0,10,0),game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position)})
            tween:Play()
            

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = 1294.89221, 17.5276394, 1426.85352


            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = 1309.11902, 17.5245209, 1445.48462
            
            v.Humanoid.HipHeight = 10
            v.HumanoidRootPart.Size = Vector3.new(100,20,100)
            v.HumanoidRootPart.CanCollide = false
            
                     end
               end
            end
        end
    )

  

    ssss:Toggle(
        "AutoAttack",
        false,
        function(t)
            getgenv().farmer = t
            while wait() do
                if getgenv().farmer == true then
                    local virtualUser = game:GetService("VirtualUser")
                    virtualUser:CaptureController()
                    wait()
                    virtualUser:Button1Down(Vector2.new(), CFrame.new())
                    wait()
                    virtualUser:Button1Down(Vector2.new(), CFrame.new())
                end
            end
        end
    )

end

if game.PlaceId == 3311165597 then -- Dragon Blox Ultimate
    local VLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/VL"))()

    local s = VLib:Window("Straw Hub", "Dragon Blox Ultimate", "D")
    local ss = s:Tab("MAIN")

    local Character_Table = {}

    getgenv().mobs = nil
    getgenv().autofarm = false
    local HRT = game.Players.LocalPlayer.Character.HumanoidRootPart

    local Character_Table = {}

    for i, v in pairs(game:GetService("Workspace").Living:GetChildren()) do
        if v:IsA("Model") then
            table.insert(Character_Table, v.Name)
        end
    end

    ss:Dropdown(
        "Mobs To Farm",
        Character_Table,
        function(mb)
            getgenv().mobs = mb
        end
    )

    ss:Toggle(
        "AutoHit",
        function(state)
            if state == true then
                getgenv().farmer = true
                while wait() do
                    if getgenv().farmer == true then
                        game:GetService("ReplicatedStorage").Package.Events.p:FireServer("Blacknwhite27", 1)
                        wait(.5)
                        game:GetService("ReplicatedStorage").Package.Events.p:FireServer("Blacknwhite27", 2)
                        wait(.5)
                        game:GetService("ReplicatedStorage").Package.Events.p:FireServer("Blacknwhite27", 3)
                        wait(.5)
                        game:GetService("ReplicatedStorage").Package.Events.p:FireServer("Blacknwhite27", 4)
                    elseif state == false then
                        getgenv().farmer = false
                    end
                end
            end
        end
    )

    ss:Toggle(
        "Autofarm Start",
        function(bool)
            getgenv().autofarm = bool

            game:GetService("RunService").Heartbeat:Connect(
                function()
                    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                end
            )

            while wait() do
                for i, v in pairs(game:GetService("Workspace").Living:GetChildren()) do
                    if v.Name == getgenv().mobs and getgenv().autofarm == true and v:FindFirstChild("HumanoidRootPart") then
                        repeat
                            wait()
                            HRT.CFrame =
                                CFrame.new(
                                v.HumanoidRootPart.Position + Vector3.new(0, -5, 0),
                                v.HumanoidRootPart.Position
                            )
                        until v.Humanoid.Health < 0
                    end
                end
            end
        end
    )

    ss:Button(
        "No Drain",
        function()
            metatable = getrawmetatable(game)
            namecall = metatable.__namecall
            setreadonly(metatable, false)

            metatable.__namecall =
                newcclosure(
                function(self, ...)
                    local method = getnamecallmethod()
                    if method == "FireServer" and self.Name == "drain" then
                        return wait(9e9)
                    end
                    return namecall(self, ...)
                end
            )
        end
    )

    local sss = s:Tab("TRAIN")

    sss:Button(
        "Auto Situps",
        function()
            while wait() do
                game:GetService("ReplicatedStorage").Package.Events.def:InvokeServer("Blacknwhite27")
            end
        end
    )
end

if game.GameId == 1720936166 then --ALL STAR TOWER DEFENCE
    --PRESETS------------------------------------------------------------------------------------
    pcall(
        function()
            --game:GetService("Players").LocalPlayer.PlayerGui.LoadingScreen:Destroy()
            game:GetService("Players").LocalPlayer.PlayerGui.HUD.Notification.ChildAdded:Connect(
                function()
                    for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.HUD:GetChildren()) do
                        if v:FindFirstChild("Notification") and v.Visible == true then
                            v.Visible = false
                        end
                    end
                end
            )

            for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.LoadingScreen:GetChildren()) do
                if v.Visible == true then
                    v.Visible = false
                end
            end
        end
    )

    --UI LIBRARY SHIT STUFF---------------------------------------------------------------------------------------------------------
    local VLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/VL"))()

    local s = VLib:Window("Nightmare Hub", "All Star", "A")
    local ss = s:Tab("Main")
    local sss = s:Tab("Configuration")
    local ssss = s:Tab("How To Use")

    ssss:Label("HOW TO USE")

    ssss:Label("WHILE IN THE LOBBY")

    ssss:Label("TOGGLE ALL YOUR SETTINGS")

    ssss:Label("(ALL THE TOGGLES AND DROPDOWN LISTS)")

    ssss:Label("THEN GO TO THE CONFIG TAB")

    ssss:Label("AND SELECT RUN FILE")

    ssss:Label("IF IT DOESN'T AUTOMATICALLY START")

    ssss:Label("RE-EXECUTE THE GUI TO GIVE IT A LIL PUSH")

    ssss:Label("MIGHT NEED TO REJOIN THEN RE-Execute)")

    --JSON FILE CONFIG---------------------------------------------------------------------------------------------------------
    getgenv().Unit_1 = ""
    getgenv().Unit_2 = ""
    getgenv().Unit_3 = ""
    getgenv().Level = ""
    getgenv().AutoFarm_Toggle = false
    getgenv().Skip_Wave = false
    getgenv().Auto_Upgrade = false

    local Config
    Config = {
        Unit_3 = "",
        Unit_2 = "",
        Level = "",
        Unit_1 = "",
        AutoFarm_Toggle = false,
        Skip_Wave = false,
        Auto_Upgrade = false,
        Upgrade_To = 0
    }

    function save()
        local SSettings = game:GetService("HttpService"):JSONEncode(Config)
        writefile("NightmareHub-ASTD.json", SSettings)
    end

    if isfile("NightmareHub-ASTD.json") then
        wait()
        print("File Already Created!")
    else
        save()
    end

    local HttpService = game:GetService("HttpService")
    getgenv().Settings = HttpService:JSONDecode(readfile("NightmareHub-ASTD.json"))
    --Main Tab (MESSY ASS SCRPITS <3)---------------------------------------------------------------------------------------------------------

    spawn(
        function()
            pcall(
                function()
                    while wait(1) do
                        if getgenv().Settings.Skip_Wave == true then
                            wait(0.5)
                            for i, v in pairs(
                                getconnections(
                                    game:GetService("Players").LocalPlayer.PlayerGui.HUD.NextWaveVote.YesButton.MouseButton1Click
                                )
                            ) do
                                v:Fire()
                            end
                        end
                    end
                end
            )
        end
    )

    ss:Toggle(
        "Auto Skip Wave",
        function(bool)
            getgenv().Skip_Wave = bool
            spawn(
                function()
                    while wait(1) do
                        if getgenv().Skip_Wave == true then
                            Config.Skip_Wave = true
                        else
                            Config.Skip_Wave = false
                        end
                    end
                end
            )
        end
    )

    getgenv().switchCharactersNumber = 0
    getgenv().switchCharacters = getgenv().Settings.Unit_1
    game:GetService("Workspace").Unit.ChildAdded:Connect(
        function(unit)
            if
                unit.Name == getgenv().Settings.Unit_1 or unit.Name == getgenv().Settings.Unit_2 or
                    unit.Name == getgenv().Settings.Unit_3
             then
                getgenv().switchCharactersNumber = getgenv().switchCharactersNumber + 1
                if getgenv().switchCharactersNumber == 8 then
                    wait(0.2)
                    getgenv().switchCharacters = getgenv().Settings.Unit_2
                elseif getgenv().switchCharactersNumber == 16 then
                    wait(0.2)
                    getgenv().switchCharacters = getgenv().Settings.Unit_3
                end
            end
        end
    )

    getgenv().farm_wait = true
    spawn(
        function()
            while getgenv().farm_wait == true do
                wait()
                if getgenv().Settings.AutoFarm_Toggle == true then
                    if game:GetService("Workspace"):FindFirstChild("Queue") then
                        if getgenv().Settings.Level == "" then
                            getgenv().farm_wait = false
                        else
                            pcall(
                                function()
                                    repeat
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                                            game:GetService("Workspace").Queue.Story.Part.CFrame
                                        wait(2)
                                        local ohString1 = "Level"
                                        local ohString2 = getgenv().Settings.Level
                                        local ohBoolean3 = false

                                        game:GetService("ReplicatedStorage").Remotes.Input:FireServer(
                                            ohString1,
                                            ohString2,
                                            ohBoolean3
                                        )
                                        wait(2)

                                        local ohString4 = "Start"

                                        game:GetService("ReplicatedStorage").Remotes.Input:FireServer(ohString4)
                                        wait(10)
                                    until not game:GetService("Workspace").Queue
                                end
                            )
                        end
                    else
                        wait(2.8) --########################################################################## ADJUST IF NEEDED/RECOMMENDED 2.5 > ####################################################
                        for i, v in pairs(game:GetService("ReplicatedStorage").Unit:GetChildren()) do
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v:FindFirstChild("HumanoidRootPart") then
                                    local ohString1 = "Summon"
                                    local ohTable2 = {
                                        ["Rotation"] = 0,
                                        ["cframe"] = CFrame.new(v.HumanoidRootPart.Position + Vector3.new(0, 0, 2.5)),
                                        ["Unit"] = getgenv().switchCharacters
                                    }

                                    game:GetService("ReplicatedStorage").Remotes.Input:FireServer(ohString1, ohTable2)

                                    local ohString3 = "Summon"
                                    local ohTable4 = {
                                        ["Rotation"] = 0,
                                        ["cframe"] = CFrame.new(v.HumanoidRootPart.Position + Vector3.new(2.5, 0, 0)),
                                        ["Unit"] = getgenv().switchCharacters
                                    }

                                    game:GetService("ReplicatedStorage").Remotes.Input:FireServer(ohString3, ohTable4)

                                    local ohString5 = "Summon"
                                    local ohTable6 = {
                                        ["Rotation"] = 0,
                                        ["cframe"] = CFrame.new(v.HumanoidRootPart.Position + Vector3.new(-2.5, 0, 0)),
                                        ["Unit"] = getgenv().switchCharacters
                                    }

                                    game:GetService("ReplicatedStorage").Remotes.Input:FireServer(ohString5, ohTable6)
                                end
                            end
                        end
                    end
                end
            end
        end
    )

    ss:Toggle(
        "Auto Upgrade",
        function(bool)
            getgenv().Auto_Upgrade = bool
            spawn(
                function()
                    while wait(1) do
                        if getgenv().Auto_Upgrade == true then
                            Config.Auto_Upgrade = true
                        else
                            Config.Auto_Upgrade = false
                        end
                    end
                end
            )
        end
    )

    ss:Toggle(
        "Auto Farm",
        function(bool)
            getgenv().AutoFarm_Toggle = bool
            spawn(
                function()
                    while wait(1) do
                        if getgenv().AutoFarm_Toggle == true then
                            Config.AutoFarm_Toggle = true
                        else
                            Config.AutoFarm_Toggle = false
                        end
                    end
                end
            )
        end
    )

    local Character_Table = {}

    pcall(
        function()
            for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.HUD.Unit:GetDescendants()) do
                if v:IsA("Model") then
                    table.insert(Character_Table, v.Name)
                end
            end
        end
    )

    ss:Dropdown(
        "Unit Upgrade Level",
        {1, 2, 3, 4, 5, 6},
        function(value0)
            Config.Upgrade_To = value0
        end
    )

    spawn(
        function()
            while getgenv().Settings.Auto_Upgrade == true do
                wait(1)
                for i, v in pairs(game:GetService("Workspace").Unit:GetChildren()) do
                    if v:FindFirstChild("UpgradeTag") ~= getgenv().Settings.Upgrade_To then
                        if
                            getgenv().Settings.Auto_Upgrade == true and
                                v.UpgradeTag.Value ~= getgenv().Settings.Upgrade_To
                         then
                            wait(0.4)
                            print("")
                            game:GetService("ReplicatedStorage").Remotes.Server:InvokeServer("Upgradable", v)
                            game:GetService("ReplicatedStorage").Remotes.Input:FireServer("Upgrade", v)
                        end
                    end
                end
            end
        end
    )

    ss:Dropdown(
        "Select Unit 1",
        Character_Table,
        function(value1)
            Config.Unit_1 = value1
        end
    )

    ss:Dropdown(
        "Select Unit 2",
        Character_Table,
        function(value2)
            Config.Unit_2 = value2
        end
    )

    ss:Dropdown(
        "Select Unit 3",
        Character_Table,
        function(value3)
            Config.Unit_3 = value3
        end
    )

    ss:Dropdown(
        "Select Level",
        {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16},
        function(value4)
            Config.Level = value4
        end
    )
    --CONFIG TAB------------------------------------------------------------------------------------------------------------------

    sss:Button(
        "Run File",
        function()
            wait(1)
            local SSettings = game:GetService("HttpService"):JSONEncode(Config)
            delfile("NightmareHub-ASTD.json")
            wait(0.5)
            writefile("NightmareHub-ASTD.json", SSettings)
             --
            --wait(10)
            --[[local tpservice = game:GetService("TeleportService")
            local rejoinplayer = game:GetService("Players").LocalPlayer
            wait(0.5)
            pcall(function()
                tpservice:Teleport(game.PlaceId, rejoinplayer)
            end)]] game.StarterGui:SetCore(
                "SendNotification",
                {
                    Title = "Info", -- the title (ofc)
                    Text = 'Successfully Saved "NightmareHub-ASTD.json" File\nIf It Doesn\'t Automatically Run, Then Re-execute The Script',
                    Duration = 5 -- how long the notification should in secounds
                }
            )
            wait(1.5)
            getgenv().Settings = HttpService:JSONDecode(readfile("NightmareHub-ASTD.json"))
        end
    )

    sss:Button(
        "Reset File",
        function()
            wait(1)
            local SSettings = game:GetService("HttpService"):JSONEncode(Config)
            delfile("NightmareHub-ASTD.json")
            wait(0.5)
            writefile("NightmareHub-ASTD.json", SSettings)
            game.StarterGui:SetCore(
                "SendNotification",
                {
                    Title = "Info", -- the title (ofc)
                    Text = 'Reset File "NightmareHub-ASTD.json" File Complete',
                    Duration = 5 -- how long the notification should in secounds
                }
            )
             --Unit_3 = "";
            --wait(10)
            --[[local tpservice = game:GetService("TeleportService")
            local rejoinplayer = game:GetService("Players").LocalPlayer
            wait(0.5)
            pcall(function()
                tpservice:Teleport(game.PlaceId, rejoinplayer)
            end)]] Config.Unit_2 =
                ""
            Config.Level = ""
            Config.Unit_1 = ""
            Config.AutoFarm_Toggle = false
            Config.Skip_Wave = false
            Config.Auto_Upgrade = false
            Config.Upgrade_To = 0
            local SSettings = game:GetService("HttpService"):JSONEncode(Config)
            delfile("NightmareHub-ASTD.json")
            wait(0.5)
            writefile("NightmareHub-ASTD.json", SSettings)
            wait(0.5)
            getgenv().Settings = HttpService:JSONDecode(readfile("NightmareHub-ASTD.json"))
        end
    )

    sss:Button(
        "Delete File",
        function()
            delfile("NightmareHub-ASTD.json")
            game.StarterGui:SetCore(
                "SendNotification",
                {
                    Title = "Info", -- the title (ofc)
                    Text = 'Successfully Deleted "NightmareHub-ASTD.json" File',
                    Duration = 5 -- how long the notification should in secounds
                }
            )
        end
    )
end

if game.PlaceId == 2788229376 then ---DA HOOD
    local VLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/VL"))()

    local s = VLib:Window("Straw Hub", "Da Hood", "D")
    local ss = s:Tab("MAIN")

    ss:Button(
        "Join Police",
        function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(-272.358582, 21.7979622, -109.027603)
            local clickdect = game:GetService("Workspace").Ignored["Join/Leave"].ClickDetector
            wait(1)
            fireclickdetector(clickdect)
            wait(2)
            nigganogga = game.StarterGui.MainScreenGui.AreYouSure.TextButton
            firesignal(nigganogga.MouseButton1Down)
        end
    )

    ss:Button(
        "UnJail",
        function()
            game.Players.LocalPlayer.character.HumanoidRootPart.CFrame =
                game:GetService("Workspace").Ignored.Shop["[Key] - $125"].Head.CFrame
            wait(1)
            local dextor = game:GetService("Workspace").Ignored.Shop["[Key] - $125"].ClickDetector
            fireclickdetector(dextor)
            wait(0.5)
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(
                game:GetService("Players").LocalPlayer.Backpack["[Key]"]
            )
        end
    )

    ss:Toggle(
        "Cashier Farm",
        function(bool)
            for i, v in pairs(game:GetService("Workspace").Cashiers:GetChildren()) do
                if v.Humanoid.Health > 0 then
                    repeat
                        wait()
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                            v.Head.CFrame * CFrame.new(Vector3.new(0, 2, 0), Vector3.new(0, 100, 0))
                    until v.Humanoid.Health < 0
                end
            end
        end
    )

    ss:Toggle(
        "Hospital Farm",
        function(value)
            _G.toggle = Value
            game:getService("RunService"):BindToRenderStep(
                "",
                0,
                function()
                    if not game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid") then
                        return
                    end
                    while wait() do
                        if _G.toggle == true then
                            game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)
                        end
                    end
                end
            )
            while wait(1) do
                if _G.toggle == true then
                    pcall(
                        function()
                            for i, v in pairs(game:GetService("Workspace").Ignored.HospitalJob:GetChildren()) do
                                if v:IsA("Model") then
                                    _G.patient = v.Name
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                                        game.Workspace.Ignored.HospitalJob[v.Name].HumanoidRootPart.CFrame *
                                        CFrame.new(Vector3.new(0, -6.5, 0), Vector3.new(0, 100, 0))
                                end
                            end
                            for i, v in pairs(game.Workspace.Ignored.HospitalJob:GetChildren()) do
                                if v.Name == "Can I get the Red bottle" then
                                    local clickdetector = game.Workspace.Ignored.HospitalJob.Red.ClickDetector
                                    fireclickdetector(clickdetector)
                                elseif v.Name == "Can I get the Blue bottle" then
                                    local clickdetector = game.Workspace.Ignored.HospitalJob.Blue.ClickDetector
                                    fireclickdetector(clickdetector)
                                elseif v.Name == "Can I get the Green bottle" then
                                    local clickdetector = game.Workspace.Ignored.HospitalJob.Green.ClickDetector
                                    fireclickdetector(clickdetector)
                                end
                            end
                            local clickdetector2 =
                                game:GetService("Workspace").Ignored.HospitalJob[_G.patient].ClickDetector
                            fireclickdetector(clickdetector2)
                        end
                    )
                elseif _G.toggle == false then
                    return
                end
            end
        end
    )

    ss:Toggle(
        "Tp To Money Drops",
        function(bool)
            if bool == true then
                game:GetService("RunService").Heartbeat:Connect(
                    function()
                        game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                    end
                )

                getgenv().farmer = true
                while wait() do
                    if getgenv().farmer == true then
                        local Players = game.Players
                        local Player = Players.LocalPlayer

                        local ToLocalP = game.Workspace.Ignored.Drop.MoneyDrop

                        function TPPLAYER()
                            Player.Character.HumanoidRootPart.CFrame = CFrame.new(ToLocalP.Position)
                        end

                        TPPLAYER()
                    elseif bool == false then
                        getgenv().farmer = false
                    end
                end
            end
        end
    )

    ss:Toggle(
        "Shoe Farm",
        function(bool)
            game:GetService("RunService").Heartbeat:Connect(
                function()
                    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                end
            )

            if bool == true then
                game:GetService("Workspace").MAP.Map["hood kicks"]:Destroy()
                getgenv().farmer2 = true
                while wait(.3) do
                    if getgenv().farmer2 == true then
                        local descendants = game.Workspace.Ignored.Drop:GetDescendants()
                        for index, descendant in pairs(descendants) do
                            if descendant.Name == "MeshPart" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                    CFrame.new(descendant.Position)
                                game.Players.LocalPlayer.Character.Humanoid.Jump = true
                                wait(1)
                                fireclickdetector(game.Workspace.Ignored.Drop.MeshPart.ClickDetector)
                                wait(1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                    game:GetService("Workspace").Ignored[
                                    "Clean the shoes on the floor and come to me for cash"
                                ].LowerTorso.CFrame
                                fireclickdetector(
                                    game:GetService("Workspace").Ignored[
                                        "Clean the shoes on the floor and come to me for cash"
                                    ].ClickDetector
                                )
                                wait(1)
                                game.Players.LocalPlayer.Character.Humanoid.Jump = true
                            elseif bool == false then
                                getgenv.farmer2 = false
                            end
                        end
                    end
                end
            end
        end
    )

    local sss = s:Tab("MISC")

    sss:Dropdown(
        "Teleports",
        {
            "Hood Kicks",
            "Tyrone's GunZ",
            "Jeff's",
            "Da Bank",
            "Park",
            "Hood Fitness",
            "Fast Food",
            "Metro",
            "Hospital",
            "Smartphone Shop",
            "Playground",
            "Gas Station",
            "Klips",
            "Fire Department"
        },
        function(value)
            if Value == "Tyrone's GunZ" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(494.215515, 48.0685081, -627.296021)
            elseif Value == "Jeff's" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(589.960876, 51.0594025, -480.269562)
            elseif Value == "Da Bank" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(-448.731537, 23.1599579, -283.728394)
            elseif Value == "Park" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(366.649475, 50.259285, -400.029114)
            elseif Value == "Smartphone Shop" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(-102.925934, 21.9069901, -871.030701)
            elseif Value == "Playground" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(-253.389999, 22.1478767, -753.881104)
            elseif Value == "Fast Food" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(298.963257, 49.2806702, -613.90332)
            elseif Value == "Hospital" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(102.07019, 22.7980003, -484.209991)
            elseif Value == "Hood Fitness" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(-76.4810944, 22.6982899, -630.165527)
            elseif Value == "Gas Station" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(591.441528, 48.9980507, -258.464783)
            elseif Value == "Klips" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(3.49468136, 21.7480049, -90.1149673)
            elseif Value == "Fire Department" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(-112.863419, 28.0461464, -112.854378)
            elseif Value == "Metro" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(-374.824921, -21.2519951, 113.759598)
            elseif Value == "Da Furniture" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(-486.35968, 21.8478584, -77.0458908)
            elseif Value == "Hood Kicks" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(-224.505508, 21.8438072, -412.016479)
            elseif Value == "Jail" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(310.851563, 24.0560493, -26.732172)
            elseif Value == "Da Casino" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(-870.768433, 21.7480049, -86.3993225)
            end
        end
    )
    sss:Slider(
        "WalkSpeed",
        0,
        250,
        16,
        function(t)
            local gmt = getrawmetatable(game)
            setreadonly(gmt, false)
            local oldindex = gmt.__index

            gmt.__index =
                newcclosure(
                function(self, b)
                    if b == "WalkSpeed" then
                        return 16
                    end
                    return oldindex(self, b)
                end
            )

            while wait() do
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = t
            end
        end
    )

    sss:Button(
        "Hide Character",
        function()
            for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v.ClassName == "Accessory" or v.Name == "Shirt" or v.Name == "Pants" then
                    v:Destroy()
                end
            end
        end
    )

  
end

if game.PlaceId == 5617626326 then -- BLOOD SAMURAI 2
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/Attrixx/Scandia/main/VepsUILib.lua"), true))()
    local lib = _G.Library:init("Straw Hub")
    local tab = lib:addTab("Main")

    local Toggle =
        tab:addToggle(
        "Autofarm Wisdom",
        false,
        function(state)
            if state == true then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(1122.9231, 175.494949, -1805.17944)

                wait(0.5)
                getgenv().farmer = true
                while wait() do
                    if getgenv().farmer == true then
                        game:GetService("Players").LocalPlayer.PlayerGui.mvehdle.meditate:FireServer(
                            game:GetService("Players").LocalPlayer
                        )
                    end
                end
            elseif state == false then
                getgenv().farmer = false
                while wait() do
                    if getgenv().farmer == true then
                        game:GetService("Players").LocalPlayer.PlayerGui.mvehdle.meditate:FireServer(
                            game:GetService("Players").LocalPlayer
                        )
                    end
                end
            end
        end
    )

    local tab3 = lib:addTab("Character Scripts")

    local Button =
        tab3:addButton(
        "No Stun",
        function()
            local walkspeedplayer = game:GetService("Players").LocalPlayer
            local walkspeedmouse = walkspeedplayer:GetMouse()

            local walkspeedenabled = false

            function x_walkspeed(key)
                if (key == "x") then
                    if walkspeedenabled == false then
                        _G.WS = 50
                        local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid
                        Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(
                            function()
                                Humanoid.WalkSpeed = _G.WS
                            end
                        )
                        Humanoid.WalkSpeed = _G.WS

                        walkspeedenabled = true
                    elseif walkspeedenabled == true then
                        _G.WS = 20
                        local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid
                        Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(
                            function()
                                Humanoid.WalkSpeed = _G.WS
                            end
                        )
                        Humanoid.WalkSpeed = _G.WS

                        walkspeedenabled = false
                    end
                end
            end

            walkspeedmouse.KeyDown:connect(x_walkspeed)
        end
    )

    local Toggle =
        tab3:addToggle(
        "Spam Block",
        false,
        function(state)
            if state == true then
                getgenv().farmer = true
                while wait() do
                    game.Players.LocalPlayer.Character.SwordHandler.Block:FireServer(true)
                end
            end
        end
    )

    local Toggle =
        tab3:addToggle(
        "Anti Afk",
        false,
        function(state)
            for i, v in next, getconnections(game.Players.LocalPlayer.Idled) do
                v:Disable()
            end
        end
    )

    local tab5 = lib:addTab("Misc")

    local Dropdown =
        tab5:addDropdown(
        "Kill Aura",
        {"M1 Kill Aura", "M2 Kill Aura"},
        function(value)
            if value == "M1 Kill Aura" then
                while wait() do
                    game.Players.LocalPlayer.Character.SwordHandler.Slice:FireServer()
                end
            elseif value == "M2 Kill Aura" then
                while wait() do
                    game.Players.LocalPlayer.Character.SwordHandler.Slice2:FireServer(1)
                end
            end
        end
    )
    local tab2 = lib:addTab("Teleports")

    local Dropdown =
        tab2:addDropdown(
        "Fighting Styles",
        {"Reverse Stance", "Attack Stance", "Steady Stance", "Phoenix Child"},
        function(value)
            if value == "Reverse Stance" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(1499.62744, 618.821228, -3473.19604)
            elseif value == "Attack Stance" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(1111.99036, 175.419571, -1933.23767)
            elseif value == "Steady Stance" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(2118.32373, 524.703064, -1418.08032)
            elseif value == "Phoenix Child" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(game:GetService("Workspace").NPCS["Phoenix Child"].HumanoidRootPart.Position)
            end
        end
    )

    local Dropdown =
        tab2:addDropdown(
        "Samurai Armors",
        {"Samurai Stealth", "Samurai Trooper", "Samurai Elite"},
        function(value)
            if value == "Samurai Stealth" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(1578.15869, 309.577484, -3363.4248)
            elseif value == "Samurai Trooper" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(1204.73523, 175.889572, -1842.68689)
            elseif value == "Samurai Elite" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(1185.43213, 175.907578, -1843.38086)
            end
        end
    )
end

if game.PlaceId == 566399244 then
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/Attrixx/Scandia/main/VepsUILib.lua"), true))()
    local lib = _G.Library:init("Straw Hub")
    local tab = lib:addTab("Main")

    local Button =
        tab:addButton(
        "Autofarm EXP (Grass)",
        function()
            while wait() do
                game:GetService("ReplicatedStorage").Remotes.DoClientMagic:FireServer("Grass", "Spore Bombs")

                wait()

                game:GetService("ReplicatedStorage").Remotes.DoMagic:InvokeServer(
                    "Grass",
                    "Spore Bombs",
                    CFrame.new(
                        -1632.29602,
                        40.9587402,
                        921.052429,
                        0.94363457,
                        -0.0706476048,
                        -0.323361903,
                        -0,
                        0.976955473,
                        -0.213443667,
                        0.33098945,
                        0.201412827,
                        0.921888769
                    )
                )

                wait()

                game:GetService("ReplicatedStorage").Remotes.DoMagic:InvokeServer("Grass", "Poison Needles")

                wait()

                game:GetService("ReplicatedStorage").Remotes.DoMagic:InvokeServer("Grass", "Poison Needles")

                wait()

                game:GetService("ReplicatedStorage").Remotes.DoClientMagic:FireServer("Grass", "Poison Needles")
            end
        end
    )

    local Button =
        tab:addButton(
        "Autofarm EXP (Fire)",
        function()
            while wait() do
                game:GetService("ReplicatedStorage").Remotes.DoMagic:InvokeServer(
                    "Fire",
                    "Consecutive Fire Bullets",
                    CFrame.new(
                        -1632.29602,
                        40.9587402,
                        921.052429,
                        0.94363457,
                        -0.0706476048,
                        -0.323361903,
                        -0,
                        0.976955473,
                        -0.213443667,
                        0.33098945,
                        0.201412827,
                        0.921888769
                    )
                )

                wait()

                game:GetService("ReplicatedStorage").Remotes.DoClientMagic:FireServer(
                    "Fire",
                    "Consecutive Fire Bullets"
                )

                wait()

                game:GetService("ReplicatedStorage").Remotes.DoMagic:InvokeServer("Fire", "Blaze Column")

                wait()

                game:GetService("ReplicatedStorage").Remotes.DoClientMagic:FireServer("Fire", "Blaze Column")

                wait()
            end
        end
    )

    local Button =
        tab:addButton(
        "Autofarm EXP (Water)",
        function()
            while wait() do
                game:GetService("ReplicatedStorage").Remotes.DoMagic:InvokeServer("Water", "Water Beam")

                wait()

                game:GetService("ReplicatedStorage").Remotes.DoClientMagic:FireServer("Water", "Water Beam")

                wait()

                game:GetService("ReplicatedStorage").Remotes.DoMagic:InvokeServer("Water", "Water Tornado")

                wait()

                game:GetService("ReplicatedStorage").Remotes.DoClientMagic:FireServer("Water", "Water Tornado")
            end
        end
    )

    local Button =
        tab:addButton(
        "AutoKill Players",
        function()
            local players = (game.Players:GetPlayers())
            for i = 1, #players do
                local screenGui = Instance.new("ScreenGui")
                screenGui.Parent = script.Parent
                local textBox = Instance.new("TextBox")
                textBox.Text = (players[i].Name)
                game.Players[textBox.Text].Character.Humanoid.HealthChanged:connect(
                    function(health)
                        if game.Players[textBox.text].Character.Humanoid.Health <= 40 then
                            local targetpos =
                                game:GetService "Players"[textBox.Text].Character.HumanoidRootPart.Position
                             --get target pos
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                CFrame.new(targetpos.X, targetpos.Y, targetpos.Z) --TP to target
                            local plr = game.Players.LocalPlayer
                            local mouse = plr:GetMouse()
                            local TrueMagic = game.ReplicatedStorage.Remotes.DoMagic
                            game.ReplicatedStorage.Remotes.DoClientMagic:FireServer("Fire", "Consecutive Fire Bullets")
                             --Change "Fire" To your magic and change "Consecutive Fire Bullets" to your own magic move.
                            TrueMagic:InvokeServer("Fire", "Consecutive Fire Bullets", mouse.Target, mouse.Hit)
                         --Change "Fire" To your magic and change "Consecutive Fire Bullets" to your own magic move.
                        end
                    end
                )
            end

            local tab2 = lib:addTab("Misc")

            local Button =
                tab2:addButton(
                "Skill Spam",
                function()
                    while wait() do
                        game:GetService("ReplicatedStorage").Remotes.DoClientMagic:FireServer("Grass", "Spore Bombs")

                        wait()

                        game:GetService("ReplicatedStorage").Remotes.DoMagic:InvokeServer(
                            "Grass",
                            "Spore Bombs",
                            CFrame.new(
                                -1632.29602,
                                40.9587402,
                                921.052429,
                                0.94363457,
                                -0.0706476048,
                                -0.323361903,
                                -0,
                                0.976955473,
                                -0.213443667,
                                0.33098945,
                                0.201412827,
                                0.921888769
                            )
                        )

                        wait()

                        game:GetService("ReplicatedStorage").Remotes.DoMagic:InvokeServer("Grass", "Poison Needles")

                        wait()

                        game:GetService("ReplicatedStorage").Remotes.DoMagic:InvokeServer("Grass", "Poison Needles")

                        wait()

                        game:GetService("ReplicatedStorage").Remotes.DoClientMagic:FireServer("Grass", "Poison Needles")

                        wait()

                        game:GetService("ReplicatedStorage").Remotes.DoMagic:InvokeServer(
                            "Fire",
                            "Consecutive Fire Bullets",
                            CFrame.new(
                                -1632.29602,
                                40.9587402,
                                921.052429,
                                0.94363457,
                                -0.0706476048,
                                -0.323361903,
                                -0,
                                0.976955473,
                                -0.213443667,
                                0.33098945,
                                0.201412827,
                                0.921888769
                            )
                        )

                        wait()

                        game:GetService("ReplicatedStorage").Remotes.DoClientMagic:FireServer(
                            "Fire",
                            "Consecutive Fire Bullets"
                        )

                        wait()

                        game:GetService("ReplicatedStorage").Remotes.DoMagic:InvokeServer("Fire", "Blaze Column")

                        wait()

                        game:GetService("ReplicatedStorage").Remotes.DoClientMagic:FireServer("Fire", "Blaze Column")

                        wait()

                        game:GetService("ReplicatedStorage").Remotes.DoMagic:InvokeServer("Water", "Water Beam")

                        wait()

                        game:GetService("ReplicatedStorage").Remotes.DoClientMagic:FireServer("Water", "Water Beam")

                        wait()

                        game:GetService("ReplicatedStorage").Remotes.DoMagic:InvokeServer("Water", "Water Tornado")

                        wait()

                        game:GetService("ReplicatedStorage").Remotes.DoClientMagic:FireServer("Water", "Water Tornado")
                    end
                end
            )
        end
    )

    UI:Toggle(
        "Anti Afk",
        "You Wont Get Kicked For Being Idle",
        false,
        function(state)
            for i, v in next, getconnections(game.Players.LocalPlayer.Idled) do
                v:Disable()
            end
        end
    )
end

if game.PlaceId == 4042427666 then --ANIME FIGHTING SIMULATOR
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/Attrixx/Scandia/main/VepsUILib.lua"), true))()
    local lib = _G.Library:init("Straw Hub")
    local tab = lib:addTab("Automation")

    local Dropdown =
        tab:addDropdown(
        "Autofarm Single Stat",
        {
            "Autofarm Strenght",
            "Autofarm Durability",
            "Autofarm Chakra",
            "Autofarm Swordskill",
            "Autofarm Speed",
            "Autofarm Agility"
        },
        function(value)
            if value == "Autofarm Strenght" then
                while wait() do
                    game:GetService("ReplicatedStorage").RSPackage.Events.StatFunction:InvokeServer("Stat", "Strength")
                end
            elseif value == "Autofarm Durability" then
                while wait() do
                    game:GetService("ReplicatedStorage").RSPackage.Events.StatFunction:InvokeServer(
                        "Stat",
                        "Durability"
                    )
                end
            elseif value == "Autofarm Chakra" then
                while wait() do
                    game:GetService("ReplicatedStorage").RSPackage.Events.StatFunction:InvokeServer("Stat", "Sword")
                end
            elseif value == "Autofarm SwordSkill" then
                while wait() do
                    game:GetService("ReplicatedStorage").RSPackage.Events.StatFunction:InvokeServer("Stat", "Sword")
                end
            elseif value == "Autofarm Speed" then
                while wait() do
                    game:GetService("ReplicatedStorage").RSPackage.Events.StatFunction:InvokeServer("Stat", "Speed")
                end
            elseif value == "Autofarm Agility" then
                while wait() do
                    game:GetService("ReplicatedStorage").RSPackage.Events.StatFunction:InvokeServer("Stat", "Agility")
                end
            end
        end
    )

    local Toggle =
        tab:addToggle(
        "Auto Get All Quests",
        false,
        function(state)
            if state == true then
                getgenv().farmer = true
                if getgenv().farmer == true then
                    while wait() do
                        loadstring(game:HttpGet("https://pastebin.com/raw/kix9e1QV", true))()
                    end
                end
            end
            if state == false then
                getgenv().farmer = false
            end
        end
    )

    local Toggle =
        tab:addToggle(
        "Autofarm All Stats",
        false,
        function(state)
            if state == true then
                getgenv().farmer = true
                if getgenv().farmer == true then
                    while (.2) do
                        local string_1 = "Stat"
                        local string_2 = "Sword"
                        local Target = game:GetService("ReplicatedStorage").RSPackage.Events.StatFunction
                        Target:InvokeServer(string_1, string_2)

                        local string_1 = "Stat"
                        local string_2 = "Chakra"
                        local Target = game:GetService("ReplicatedStorage").RSPackage.Events.StatFunction
                        Target:InvokeServer(string_1, string_2)

                        local string_1 = "Stat"
                        local string_2 = "Durability"
                        local Target = game:GetService("ReplicatedStorage").RSPackage.Events.StatFunction
                        Target:InvokeServer(string_1, string_2)

                        local string_1 = "Stat"
                        local string_2 = "Strength"
                        local Target = game:GetService("ReplicatedStorage").RSPackage.Events.StatFunction
                        Target:InvokeServer(string_1, string_2)

                        local string_1 = "Stat"
                        local string_2 = "Agility"
                        local Target = game:GetService("ReplicatedStorage").RSPackage.Events.StatFunction
                        Target:InvokeServer(string_1, string_2)

                        local string_1 = "Stat"
                        local string_2 = "Speed"
                        local Target = game:GetService("ReplicatedStorage").RSPackage.Events.StatFunction
                        Target:InvokeServer(string_1, string_2)
                    end

                    if state == false then
                        getgenv().farmer = false
                    end
                end
            end
        end
    )

    local Toggle =
        tab:addToggle(
        "Auto Upgrade Stats",
        false,
        function(state)
            if state == true then
                getgenv().farmer = true
                if getgenv().farmer == true then
                    wait()
                    game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Upgrade", "Sword")
                    wait()
                    game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Upgrade", "Speed")
                    wait()
                    game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Upgrade", "Agility")
                    wait()
                    game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Upgrade", "Chakra")
                    wait()
                    game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Upgrade", "Strength")
                    wait()
                    game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Upgrade", "Durability")

                    if state == false then
                        getgenv().farmer = false
                    end
                end
            end
        end
    )

    local Toggle =
        tab:addToggle(
        "Auto Chikara Shards",
        false,
        function(state)
            if state == true then
                getgenv().farmer = true
                if getgenv().farmer == true then
                    while wait() do
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            Workspace.MouseIgnore.ChikaraCrate.ClickBox.CFrame
                        fireclickdetector(game:GetService("Workspace").MouseIgnore.ChikaraCrate.ClickBox.ClickDetector)
                        wait(4)
                    end
                end
            end
            if state == false then
                getgenv().farmer = false
            end
        end
    )

    local tab3 = lib:addTab("Teleports")

    local Button =
        tab3:addButton(
        "Zoro",
        function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1359.50842, 69.1025467, -1705.34778)
        end
    )
    local Button =
        tab3:addButton(
        "Giorno",
        function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(179.554779, 66.2304077, -213.957596)
        end
    )
    local Button =
        tab3:addButton(
        "Bang",
        function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8.89663219, 79.9990005, 21.3533039)
        end
    )
    local Button =
        tab3:addButton(
        "Kaneki",
        function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1728.78003, 142.399963, -155.228699)
        end
    )
    local tab2 = lib:addTab("Misc")

    local Toggle =
        tab2:addToggle(
        "Anti Afk",
        false,
        function(state)
            for i, v in next, getconnections(game.Players.LocalPlayer.Idled) do
                v:Disable()
            end
        end
    )

    

    local Slider =
        tab2:addSlider(
        "Walkspeed",
        0,
        500,
        function(value)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (value)
        end
    )
    local Slider =
        tab2:addSlider(
        "JumpPower",
        0,
        500,
        function(value)
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = (value)
        end
    )
end

if game.PlaceId == 1458767429 then --ANIME BATTLE ARENA (ABA)
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/Attrixx/Scandia/main/VepsUILib.lua"), true))()
    local lib = _G.Library:init("Straw Hub")
    local tab = lib:addTab("Automation")

    local Button =
        tab:addButton(
        "Autofarm Points",
        function()
            for i, v in pairs(game.Players:GetChildren()) do
                while wait() do
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
                    wait(0.8)
                end
            end
        end
    )

    local tab2 = lib:addTab("Misc")

    local Button =
        tab2:addButton(
        "Autohit",
        function()
            getgenv().farmer = true
            while wait(.6) do
                if getgenv().farmer == true then
                    local args = {
                        [1] = "m1",
                        [2] = {
                            ["air"] = false,
                            ["mousehit"] = CFrame.new(
                                -484.569305,
                                -176.252823,
                                11561.1416,
                                -0.622997701,
                                -0.303034544,
                                0.721140742,
                                -0,
                                0.92191124,
                                0.387401372,
                                -0.782223761,
                                0.241350159,
                                -0.574348509
                            )
                        }
                    }

                    game:GetService("Players").LocalPlayer.Backpack.ServerTraits.Input:FireServer(unpack(args))
                end
            end
        end
    )

    local Toggle =
        tab2:addToggle(
        "Anti Afk",
        false,
        function(state)
            for i, v in next, getconnections(game.Players.LocalPlayer.Idled) do
                v:Disable()
            end
        end
    )
end

if game.PlaceId == 3101667897 then --LEGENDS OF SPEED
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/Attrixx/Scandia/main/VepsUILib.lua"), true))()
    local lib = _G.Library:init("Straw Hub")
    local tab = lib:addTab("Automation")

    local Toggle =
        tab:addToggle(
        "Auto Rebirth",
        false,
        function(state)
            if state == true then
                getgenv().farmer = true
                while wait() do
                    if getgenv().farmer == true then
                        game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer("rebirthRequest")
                    end
                end
            end
            if state == false then
                getgenv().farmer = false
                while wait() do
                    if getgenv().farmer == true then
                        game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer("rebirthRequest")
                    end
                end
            end
        end
    )

    local Toggle =
        tab:addToggle(
        "Autofarm Levels",
        false,
        function(state)
            if state == true then
                getgenv().farmer = true

                while wait() do
                    if getgenv().farmer == true then
                        game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(
                            "collectOrb",
                            "Yellow Orb",
                            "City"
                        )
                    end
                end
            elseif state == false then
                getgenv().farmer = false

                while wait() do
                    if getgenv().farmer == true then
                        game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(
                            "collectOrb",
                            "Yellow Orb",
                            "City"
                        )
                    end
                end
            end
        end
    )

    local tab2 = lib:addTab("Misc")

    local Toggle =
        tab2:addToggle(
        "Anti Afk",
        false,
        function(state)
            for i, v in next, getconnections(game.Players.LocalPlayer.Idled) do
                v:Disable()
            end
        end
    )

    local Toggle =
        tab2:addToggle(
        "Auto Confirm races",
        false,
        function(state)
            while wait() do
                game:GetService("ReplicatedStorage").rEvents.getServerTimeRemote:InvokeServer()
            end
        end
    )

    local Slider =
        tab2:addSlider(
        "Walkspeed",
        0,
        1000,
        function(value)
            -- This walkspeed script is the same as others , but does not change to default speed when you reset. ENJOY !
            _G.HackedWalkSpeed = (value)

            local Plrs = game:GetService("Players")

            local MyPlr = Plrs.LocalPlayer
            local MyChar = MyPlr.Character

            if MyChar then
                local Hum = MyChar.Humanoid
                Hum.Changed:connect(
                    function()
                        Hum.WalkSpeed = _G.HackedWalkSpeed
                    end
                )
                Hum.WalkSpeed = _G.HackedWalkSpeed
            end

            MyPlr.CharacterAdded:connect(
                function(Char)
                    MyChar = Char
                    repeat
                        wait()
                    until Char:FindFirstChild("Humanoid")
                    local Hum = Char.Humanoid
                    Hum.Changed:connect(
                        function()
                            Hum.WalkSpeed = _G.HackedWalkSpeed
                        end
                    )
                    Hum.WalkSpeed = _G.HackedWalkSpeed
                end
            )

            -- end of script :)
        end
    )
end

if game.PlaceId == 4723618670 then --WISTERIA
    local Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/VLi"))()
 
    local win = Lib:Window("Straw Hub V2")
 
    local serv = win:Server("Straw Hub", "")
 
    local ss = serv:Channel("MAIN")
    local sss = serv:Channel("MISC")
     local ssss = serv:Channel("TELEPORTS")
     
 
   ss:Toggle(
       "Autohit",
       false,
       function(state)
           getgenv().hit = state
           while wait() do
               if getgenv().hit == true then
                   local virtualUser = game:GetService("VirtualUser")
                   virtualUser:CaptureController()
                   wait()
                   virtualUser:Button1Down(Vector2.new(), CFrame.new())
                   wait()
                   virtualUser:Button1Down(Vector2.new(), CFrame.new())
               end
           end
       end
   )
 
    local Character_Table = {}
    for i,v in pairs(game:GetService("Workspace").Living:GetChildren()) do
        if v:IsA("Model") then
            table.insert(Character_Table,v.Name)
        end
    end
      getgenv().mobs = nil 
   getgenv().autofarm = false 
 
    
    ss:Dropdown("Mobs To Farm",Character_Table,function(mb)
        getgenv().mobs = mb
    end)
 
    
    ss:Toggle("Autofarm Start Mobs",false,function(bool)
 
 game:GetService("RunService").Heartbeat:Connect(function()
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
 end)
 
  getgenv().autofarm = bool 
  while wait() do 
 
  for i,v in pairs(game:GetService("Workspace").Living:GetChildren()) do 
 if v.Name == getgenv().mobs and getgenv().autofarm == true and v:FindFirstChild("Humanoid") then 
          repeat 
           wait() 
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  CFrame.new(v.HumanoidRootPart.Position + Vector3.new(0,5,0),v.HumanoidRootPart.Position)
 until v.Humanoid.Health < .1 
 end
  end
      end 
       end)
 
 
 
 ss:Toggle(
       "Auto Breathe",
       false,
       function(state)
           getgenv().farmer = state
           while wait() do
               if getgenv().farmer == true then
                   game.Players.LocalPlayer.Character.Scripts.Server.Breathe:FireServer(true)
               end
           end
       end
   )
 
 ss:Toggle(
       "Auto Meditate",
       false,
       function(state)
           game:GetService("ReplicatedStorage").Events.ToggleMeditate:FireServer(true)
               getgenv().farmer = state 
               while wait() do
                   if getgenv().farmer == true then
                       keypress(84)
                       wait()
                       keyrelease(84)
                       wait()
                       keypress(72)
                       wait()
                       keyrelease(72)
                       wait()
                       keypress(66)
                       wait()
                       keyrelease(66)
                       wait()
                       keypress(89)
                       wait()
                       keyrelease(89)
                       wait()
                       keypress(89)
                       wait()
                       keyrelease(89)
                       wait()
                       keypress(78)
                       wait()
                       keyrelease(74)
                       wait()
                       keypress(71)
                       wait()
                       keyrelease(71)
                   end
               end
       end
   )
 
 ss:Toggle(
       "Auto Execute",
       false,
       function(state)
           if state == true then
               getgenv().farmer = true
               while wait() do
                   if getgenv().farmer == true then
                       game:GetService("ReplicatedStorage").Events.Execute:FireServer(
                           {workspace.Living.Civilian},
                           game:GetService("ReplicatedStorage").Styles.Fists.Vulnerable,
                           0,
                           0
                       )
                   elseif state == true then
                       getgenv().farmer = false
                       while wait() do
                           if getgenv().farmer == true then
                               game:GetService("ReplicatedStorage").Events.Execute:FireServer(
                                   {workspace.Living.Civilian},
                                   game:GetService("ReplicatedStorage").Styles.Fists.Vulnerable,
                                   0,
                                   0
                               )
                           end
                       end
                   end
               end
           end
       end
   )
 
 
 
 sss:Button(
       "GodMode",
       function()
           game.Players.LocalPlayer.Character.Health:Destroy()
       end
   )
 
 sss:Toggle(
       "Anti Afk",
       false,
       function(state)
           for i, v in next, getconnections(game.Players.LocalPlayer.Idled) do
               v:Disable()
           end
       end
   )
 sss:Toggle(
       "Fast Attacks",
       false,
       function(state)
           if state == true then
               game.Players.LocalPlayer.Character.Status.Attackspeed.Value = 100
           elseif state == false then
               game.Players.LocalPlayer.Character.Status.Attackspeed.Value = 1
           end
       end
   )
 
 sss:Toggle(
       "Anti Staff",
       false,
       function(state)
           game:GetService("Players").PlayerAdded:Connect(
               function(player)
                   if player:GetRankInGroup(5274013) > 1 then
                       game:GetService("Players").LocalPlayer:Kick("Staff Joined")
                   end
               end
           )
       end
   )
   
 ssss:Dropdown(
       "NPCS",
       {"Flame Trainer", "Water Trainer", "Moon Trainer", "Wind Trainer", "Thunder Trainer", "BlackSmith"},
       function(value)
           if value == "Flame Trainer" then
               local Character = game.Players.LocalPlayer.Character.HumanoidRootPart
 
               Character.CFrame = CFrame.new(game:GetService("Workspace").NPC.Flame.Torso.Position)
           elseif value == "BlackSmith" then
               local Character = game.Players.LocalPlayer.Character.HumanoidRootPart
 
               Character.CFrame =
                   CFrame.new(game:GetService("Workspace").AnimatedBlacksmith.Blacksmith.HumanoidRootPart.Position)
           elseif value == "Moon Trainer" then
               local Character = game.Players.LocalPlayer.Character.HumanoidRootPart
 
               Character.CFrame = CFrame.new(game:GetService("Workspace").NPC.Moon.Torso.Position)
           elseif value == "Water Trainer" then
               local Character = game.Players.LocalPlayer.Character.HumanoidRootPart
 
               Character.CFrame = CFrame.new(game:GetService("Workspace").NPC.Water.Torso.Position)
           elseif value == "Wind Trainer" then
               local Character = game.Players.LocalPlayer.Character.HumanoidRootPart
 
               Character.CFrame = CFrame.new(game:GetService("Workspace").NPC.Wind.Torso.Position)
           elseif value == "Thunder Trainer" then
               local Character = game.Players.LocalPlayer.Character.HumanoidRootPart
 
               Character.CFrame = CFrame.new(game:GetService("Workspace").NPC.Thunder.Torso.Position)
           end
       end
   )
 end


if game.PlaceId == 6002047566 then --SORCERER FIGHTING SIMULATOR
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/Attrixx/Scandia/main/VepsUILib.lua"), true))()
    local lib = _G.Library:init("Straw Hub")
    local tab = lib:addTab("Main")

    local Toggle =
        tab:addToggle(
        "Autofarm Endurance",
        false,
        function(state)
            game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("PUI", true)

            if state == true then
                getgenv().farmer = true
                while wait() do
                    if getgenv().farmer == true then
                        game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("SG", "Endurance")
                    end
                end
            elseif state == false then
                getgenv().farmer = false
                while wait() do
                    if getgenv().farmer == true then
                        game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("SG", "Endurance")
                    end
                end
            end
        end
    )

    local Toggle =
        tab:addToggle(
        "Autofarm Element",
        false,
        function(state)
            game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("PUI", true)

            if state == true then
                getgenv().farmer = true
                while wait() do
                    if getgenv().farmer == true then
                        game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("SG")
                    end
                end
            elseif state == false then
                getgenv().farmer = false
                while wait() do
                    if getgenv().farmer == true then
                        game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("SG")
                    end
                end
            end
        end
    )

    local tab2 = lib:addTab("Upgrades")

    local Toggle =
        tab2:addToggle(
        "AutoUpgrade Fire",
        false,
        function(state)
            if state == true then
                getgenv().farmer = true
                while wait() do
                    if getgenv().farmer == true then
                        game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Stat", "Fire")
                    elseif state == false then
                        getgenv().farmer = false
                        while wait() do
                            if getgenv().farmer == true then
                                game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Stat", "Fire")
                            end
                        end
                    end
                end
            end
        end
    )

    local Toggle =
        tab2:addToggle(
        "AutoUpgrade Healer",
        false,
        function(state)
            if state == true then
                getgenv().farmer = true
                while wait() do
                    if getgenv().farmer == true then
                        game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Stat", "Healer")
                    elseif state == false then
                        getgenv().farmer = false
                        while wait() do
                            if getgenv().farmer == true then
                                game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer(
                                    "Stat",
                                    "Healer"
                                )
                            end
                        end
                    end
                end
            end
        end
    )

    local Toggle =
        tab2:addToggle(
        "AutoUpgrade Brawler",
        false,
        function(state)
            if state == true then
                getgenv().farmer = true
                while wait() do
                    if getgenv().farmer == true then
                        game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Stat", "Brawler")
                    elseif state == false then
                        getgenv().farmer = false
                        while wait() do
                            if getgenv().farmer == true then
                                game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer(
                                    "Stat",
                                    "Brawler"
                                )
                            end
                        end
                    end
                end
            end
        end
    )
    local Toggle =
        tab2:addToggle(
        "AutoUpgrade Water",
        false,
        function(state)
            if state == true then
                getgenv().farmer = true
                while wait() do
                    if getgenv().farmer == true then
                        game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Stat", "Water")
                    elseif state == false then
                        getgenv().farmer = false
                        while wait() do
                            if getgenv().farmer == true then
                                game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer(
                                    "Stat",
                                    "Water"
                                )
                            end
                        end
                    end
                end
            end
        end
    )

    local Toggle =
        tab2:addToggle(
        "AutoUpgrade Plasma",
        false,
        function(state)
            if state == true then
                getgenv().farmer = true
                while wait() do
                    if getgenv().farmer == true then
                        game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Stat", "Plasma")
                    elseif state == false then
                        getgenv().farmer = false
                        while wait() do
                            if getgenv().farmer == true then
                                game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer(
                                    "Stat",
                                    "Plasma"
                                )
                            end
                        end
                    end
                end
            end
        end
    )

    local Toggle =
        tab2:addToggle(
        "AutoUpgrade Lightning",
        false,
        function(state)
            if state == true then
                getgenv().farmer = true
                while wait() do
                    if getgenv().farmer == true then
                        game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Stat", "Lightning")
                    elseif state == false then
                        getgenv().farmer = false
                        while wait() do
                            if getgenv().farmer == true then
                                game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer(
                                    "Stat",
                                    "Lightning"
                                )
                            end
                        end
                    end
                end
            end
        end
    )
    local Toggle =
        tab2:addToggle(
        "AutoUpgrade Ranks",
        false,
        function(state)
            if state == true then
                getgenv().farmer = true
                while wait() do
                    if getgenv().farmer == true then
                        game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Rank", 2)
                        game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Rank", 3)
                        game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Rank", 4)
                        game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Rank", 5)
                        game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Rank", 6)
                        game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Rank", 7)
                        game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Rank", 8)
                        game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Rank", 9)
                        game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Rank", 10)
                    elseif state == false then
                        getgenv().farmer = false
                        while wait() do
                            if getgenv().farmer == true then
                                game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Rank", 2)
                                game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Rank", 3)
                                game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Rank", 4)
                                game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Rank", 5)
                                game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Rank", 6)
                                game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Rank", 7)
                                game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Rank", 8)
                                game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Rank", 9)
                                game:GetService("ReplicatedStorage").Events.GeneralFunction:InvokeServer("Rank", 10)
                            end
                        end
                    end
                end
            end
        end
    )
end






if game.PlaceId == 5951002734 then -- Project Baki 2
    local VLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/VL"))()

    local s = VLib:Window("Straw Hub", "Project Baki 2", "P")
    local ss = s:Tab("MAIN")

    ss:Toggle(
        "Auto Buy Noodle",
        function(state)
            while wait() do
                if game.Players.LocalPlayer.PlayerGui.Feedback.Hunger.Visible == true then --AUTOEAT NOODLE
                    fireclickdetector(game:GetService("Workspace").Game.Shop.Restaurant["Noodle Bowl"].ClickDetector)
                    wait(1)
                    firesignal(game:GetService("Players").HiddenNinjaAli.PlayerGui.Feedback.Shop.Yes.MouseButton1Down)
                    wait(1)
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(
                        game.Players.LocalPlayer.Backpack["Noodle Bowl"]
                    )
                    wait(.5)
                    local virtualUser = game:GetService("VirtualUser")
                    virtualUser:CaptureController()
                    wait()
                    virtualUser:Button1Down(Vector2.new(), CFrame.new())
                    wait()
                    virtualUser:Button1Down(Vector2.new(), CFrame.new())
                end
            end
        end
    )

    ss:Toggle(
        "Auto Eat Noodle",
        function(state)
            while wait() do
                if game.Players.LocalPlayer.PlayerGui.Feedback.Hunger.Visible == true then --AUTOEAT NOODLE
                    fireclickdetector(game:GetService("Workspace").Game.Shop.Restaurant["Noodle Bowl"].ClickDetector)
                    wait(1)
                    firesignal(game:GetService("Players").HiddenNinjaAli.PlayerGui.Feedback.Shop.Yes.MouseButton1Down)
                    wait(1)
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(
                        game.Players.LocalPlayer.Backpack["Noodle Bowl"]
                    )
                    wait(.5)
                    local virtualUser = game:GetService("VirtualUser")
                    virtualUser:CaptureController()
                    wait()
                    virtualUser:Button1Down(Vector2.new(), CFrame.new())
                    wait()
                    virtualUser:Button1Down(Vector2.new(), CFrame.new())
                end
            end
        end
    )

    ss:Toggle(
        "Auto Upgrade Stats",
        function(state)
            if state == true then
                getgenv().farmer = true
                while wait() do
                    if getgenv().farmer == true then
                        game:GetService("ReplicatedStorage").Remotes.ClientToServer.SkillPoint:FireServer("Strength")

                        game:GetService("ReplicatedStorage").Remotes.ClientToServer.SkillPoint:FireServer("Durability")

                        game:GetService("ReplicatedStorage").Remotes.ClientToServer.SkillPoint:FireServer("Agility")

                        game:GetService("ReplicatedStorage").Remotes.ClientToServer.SkillPoint:FireServer("Intellect")
                    end
                end
            elseif state == false then
                getgenv().farmer = false
            end
        end
    )
    ss:Button(
        "Anti Ban",
        function()
            game.Players.LocalPlayer.Data.Banned:Destroy()
             --ANTI BAN

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(-1195.87769, 1711.34363, -473.837097)
        end
    )

    ss:Button(
        "Auto Train Pullups",
        function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(-1123.02393, 1711.34448, -117.131096)

            while wait() do
                if game.Players.LocalPlayer.Data.Stamina.Value > 98 then --AUTO TRAIN PULLUPS
                    repeat
                        wait()
                        game:GetService("ReplicatedStorage").Remotes.ClientToServer.Train:InvokeServer(
                            workspace.Game.Training.Mattress
                        )
                        wait()
                    until game.Players.LocalPlayer.Data.Stamina.Value < 10
                    wait()
                end
            end
        end
    )

    ss:Button(
        "Auto Train",
        function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(-1106.04626, 1711.64673, -238.796707)

            if game.Players.LocalPlayer.Data.Stamina.Value > 98 then --AUTO TRAIN
                repeat
                    wait()
                    game:GetService("ReplicatedStorage").Remotes.ClientToServer.Train:InvokeServer(
                        workspace.Game.Training.Mattress
                    )
                    wait()
                until game.Players.LocalPlayer.Data.Stamina.Value < 10
                wait()
            end
        end
    )

    local ssss = s:Tab("NPCS")

    ssss:Label("AUTOFARMS")
    ssss:Toggle(
        "Kiyosumi Kato",
        function(state)
            if state == true then
                local Player = game:GetService("Players").LocalPlayer

                -- Mainloop
                getgenv().farmer = true
                while wait() do
                    if getgenv().farmer == true then
                        for i, v in next, game:GetService("Workspace").Game.Players:GetChildren() do
                            if
                                (Player.Character and v.Name == "Kiyosumi Kato" and v.PrimaryPart and
                                    v:FindFirstChild("HumanoidRootPart") and
                                    v.Humanoid.Health > 0)
                             then
                                repeat
                                    wait()
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                        CFrame.new(
                                        v.HumanoidRootPart.Position + Vector3.new(0, 5, 0),
                                        v.HumanoidRootPart.Position
                                    )
                                    game:GetService("ReplicatedStorage").Remotes.ClientToServer.BasicCombat:FireServer(
                                        "LightPunch",
                                        4,
                                        v.Humanoid
                                    )
                                until v.Humanoid.Health < 0
                                if v.Humanoid.Health < 0 then
                                    Player.Character.HumanoidRootPart.CFrame =
                                        CFrame.new(-1239.09546, 1713.1001, -121.69017)
                                end
                            end
                        end
                    elseif state == false then
                        getgenv().farmer = false
                    end
                end
            end
        end
    )

    ssss:Toggle(
        "Krampus",
        function(state)
            if state == true then
                local Player = game:GetService("Players").LocalPlayer

                -- Mainloop
                getgenv().farmer = state
                while wait() do
                    for i, v in next, game:GetService("Workspace").Game.Players:GetChildren() do
                        if
                            (Player.Character and v.Name == "Krampus" and v.PrimaryPart and
                                v:FindFirstChild("HumanoidRootPart") and
                                v.Humanoid.Health > 0)
                         then
                            repeat
                                wait()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                    CFrame.new(
                                    v.HumanoidRootPart.Position + Vector3.new(0, 5, 0),
                                    v.HumanoidRootPart.Position
                                )
                                game:GetService("ReplicatedStorage").Remotes.ClientToServer.BasicCombat:FireServer(
                                    "LightPunch",
                                    4,
                                    v.Humanoid
                                )
                            until v.Humanoid.Health < 0
                            if v.Humanoid.Health < 0 then
                                Player.Character.HumanoidRootPart.CFrame =
                                    CFrame.new(-1239.09546, 1713.1001, -121.69017)
                            end
                        end
                    end
                end
            end
        end
    )

    ssss:Toggle(
        "Thugs",
        function(state)
            local Player = game:GetService("Players").LocalPlayer

            -- Mainloop
            getgenv().farmer = state
            while wait(.3) do
                for i, v in next, game:GetService("Workspace").Game.Players:GetChildren() do
                    if
                        (Player.Character and v.Name == "Street Thug" and v.PrimaryPart and
                            v:FindFirstChild("HumanoidRootPart") and
                            v.Humanoid.Health > 0)
                     then
                        repeat
                            wait()
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                CFrame.new(
                                v.HumanoidRootPart.Position + Vector3.new(0, 5, 0),
                                v.HumanoidRootPart.Position
                            )
                            game:GetService("ReplicatedStorage").Remotes.ClientToServer.BasicCombat:FireServer(
                                "LightPunch",
                                4,
                                v.Humanoid
                            )
                        until v.Humanoid.Health < 0
                        if v.Humanoid.Health < 0 then
                            Player.Character.HumanoidRootPart.CFrame = CFrame.new(-1239.09546, 1713.1001, -121.69017)
                        end
                    end
                end
            end
        end
    )

    ssss:Toggle(
        "Retsu",
        function(state)
            local Player = game:GetService("Players").LocalPlayer

            getgenv().farmer = state
            while wait(0.3) do
                for i, v in next, game:GetService("Workspace").Game.Players:GetChildren() do
                    if v.Name == "Retsu" then
                        while (Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") and
                            v.PrimaryPart and
                            v:FindFirstChild("HumanoidRootPart") and
                            v.Humanoid.Health > 0) do
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                CFrame.new(
                                v.HumanoidRootPart.Position + Vector3.new(0, 5, 0),
                                v.HumanoidRootPart.Position
                            )
                            game:GetService("ReplicatedStorage").Remotes.ClientToServer.BasicCombat:FireServer(
                                "LightPunch",
                                4,
                                v.Humanoid
                            )

                            if v.Humanoid.Health < 0 then
                                Player.Character.HumanoidRootPart.CFrame =
                                    CFrame.new(-1239.09546, 1713.1001, -121.69017)
                            end
                        end
                    end
                end
            end
        end
    )

    ssss:Toggle(
        "Yasha Ape",
        function(state)
            local Player = game:GetService("Players").LocalPlayer

            -- Mainloop
            getgenv().farmer = state
            while wait(.3) do
                for i, v in next, game:GetService("Workspace").Game.Players:GetChildren() do
                    if
                        (Player.Character and v.Name == "Yasha Ape" and v.PrimaryPart and
                            v:FindFirstChild("HumanoidRootPart") and
                            v.Humanoid.Health > 0)
                     then
                        repeat
                            wait()
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                CFrame.new(
                                v.HumanoidRootPart.Position + Vector3.new(0, 5, 0),
                                v.HumanoidRootPart.Position
                            )
                            game:GetService("ReplicatedStorage").Remotes.ClientToServer.BasicCombat:FireServer(
                                "LightPunch",
                                4,
                                v.Humanoid
                            )
                        until v.Humanoid.Health < 0
                        if v.Humanoid.Health < 0 then
                            Player.Character.HumanoidRootPart.CFrame = CFrame.new(-1239.09546, 1713.1001, -121.69017)
                        end
                    end
                end
            end
        end
    )

    local sss = s:Tab("MISC")

    sss:Toggle(
        "Hide Name",
        function(state)
            while wait(2) do
                for i, v in pairs(game.Players.LocalPlayer.Character.Head:GetChildren()) do
                    if v.ClassName == "Accessory" or v.Name == "Shirt" or v.Name == "Pants" or v.Name == "PlayerName" then
                        v:Destroy()
                        for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                            if v.ClassName == "Accessory" or v.Name == "Shirt" or v.Name == "Pants" then
                                v:Destroy()
                            end
                        end
                    end
                end
            end
            game:GetService("Workspace").Game.Players.HiddenNinjaAli.Head.PlayerName:Destroy()
        end
    )

    sss:Toggle(
        "Anti Afk",
        function(state)
            for i, v in next, getconnections(game.Players.LocalPlayer.Idled) do
                v:Disable()
            end
        end
    )

    sss:Toggle(
        "Infinite Stamina",
        function(state)
            while wait() do
                for i = 1, 1000 do
                    if (game:GetService("Players").LocalPlayer) then
                        game:GetService("Players").LocalPlayer.Data.Stamina.Value = 100
                        game:GetService("Players").LocalPlayer.Data.Stamina.MaxStamina.Value = 100
                    end
                end
            end
        end
    )
end

if game.PlaceId == 3652625463 then -- LIFTING SIMULATOR
    local VLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/VL"))()

    local s = VLib:Window("NinjaHub", "Lifting Simulator", "L")
    local ss = s:Tab("MAIN")

    ss:Toggle(
        "AutoFarm Muscle",
        function(state)
            if state == true then
                getgenv().farm = true
                while wait() do
                    if getgenv().farm == true then
                        game:GetService("ReplicatedStorage").RemoteEvent:FireServer({"GainMuscle"})
                    else
                        getgenv().farm = false
                    end
                end
            end
        end
    )

    ss:Toggle(
        "AutoSell Muscle",
        function(state)
            getgenv().farmer = true
            while wait() do
                if getgenv().farmer == true then
                    game:GetService("ReplicatedStorage").RemoteEvent:FireServer({"SellMuscle"})
                else
                    getgenv().farmer = false
                end
            end
        end
    )

    ss:Slider(
        "WalkSpeed",
        0,
        250,
        16,
        function(t)
            while wait() do
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = t
            end
        end
    )

    ss:Toggle(
        "Anti Afk",
        function(state)
            for i, v in next, getconnections(game.Players.LocalPlayer.Idled) do
                v:Disable()
            end
        end
    )
end

if game.PlaceId == 3376769145 then --DRAGON BALL WARRIORS
    local VLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/VL"))()

    local s = VLib:Window("Straw Hub", "Dragon Ball", "D")
    local ss = s:Tab("Main")

    ss:Toggle(
        "AutoFarm Strenght",
        function(state)
            if state == true then
                getgenv().farmer = true
                while wait() do
                    if getgenv().farmer == true then
                        for i = 1, 1000 do
                            game:GetService("ReplicatedStorage").Events.Transformatico:InvokeServer(
                                game:GetService("Players").LocalPlayer.Statics,
                                {
                                    ["LeftLowerArm"] = game.Players.LocalPlayer.Character.LeftLowerArm,
                                    ["RightUpperArm"] = game.Players.LocalPlayer.Character.RightUpperArm,
                                    ["LeftFoot"] = game.Players.LocalPlayer.Character.LeftFoot,
                                    ["RightHand"] = game.Players.LocalPlayer.Character.RightHand,
                                    ["RightLowerArm"] = game.Players.LocalPlayer.Character.RightLowerArm,
                                    ["LeftUpperLeg"] = game.Players.LocalPlayer.Character.LeftUpperLeg,
                                    ["LeftUpperArm"] = game.Players.LocalPlayer.Character.LeftUpperArm,
                                    ["Character"] = game.Players.LocalPlayer.Character,
                                    ["LeftHand"] = game.Players.LocalPlayer.Character.LeftHand,
                                    ["RightFoot"] = game.Players.LocalPlayer.Character.RightFoot,
                                    ["Humanoid"] = game.Players.LocalPlayer.Character.Humanoid,
                                    ["RightLowerLeg"] = game.Players.LocalPlayer.Character.RightLowerLeg,
                                    ["RightUpperLeg"] = game.Players.LocalPlayer.Character.RightUpperLeg,
                                    ["LeftLowerLeg"] = game.Players.LocalPlayer.Character.LeftLowerLeg
                                },
                                game.Players.LocalPlayer.Character.HumanoidRootPart,
                                "nosexdd"
                            )
                            wait()
                        end
                    end
                end
            elseif state == false then
                getgenv().farmer = false
            end
        end
    )

    ss:Toggle(
        "AutoFarm Ki",
        function(state)
            if state == true then
                getgenv().farmer = true
                while wait() do
                    if getgenv().farmer == true then
                        for i = 1, 1000 do
                            game:GetService("ReplicatedStorage").Events.DOKAMEHAME:InvokeServer(
                                "KiBlast",
                                game:GetService("Players").LocalPlayer.Status,
                                game:GetService("Players").LocalPlayer.Statics,
                                game.Players.LocalPlayer.Character.HumanoidRootPart,
                                game.Players.LocalPlayer.Character.RightHand,
                                game.Players.LocalPlayer.Character,
                                "nosexdd"
                            )
                            wait()
                        end
                    end
                end
            elseif state == false then
                getgenv().farmer = false
            end
        end
    )
    ss:Toggle(
        "AutoFarm Defence",
        function(state)
            if state == true then
                getgenv().farmer = true
                while wait() do
                    if getgenv().farmer == true then
                        for i = 1, 1000 do
                            local Vep = game.Players.LocalPlayer.Character
                            game:GetService("ReplicatedStorage").Events.IDURODEEEE:InvokeServer(
                                game:GetService("Players").LocalPlayer.Statics,
                                game:GetService("Players").LocalPlayer.Status,
                                Vep.Humanoid,
                                Vep.RightHand,
                                "nosexdd"
                            )
                            wait()
                        end
                    end
                end
            elseif state == false then
                getgenv().farmer = false
            end
        end
    )

    ss:Button(
        "Auto Charge",
        function()
            local A_1 = game:GetService("Players").LocalPlayer.Status
            local A_2 = game:GetService("Players").LocalPlayer.Character.UpperTorso
            local A_3 = game:GetService("Players").LocalPlayer.Character.Humanoid
            local A_4 = true
            local Event = game:GetService("ReplicatedStorage").Remotes.Training.Charge
            Event:InvokeServer(A_1, A_2, A_3, A_4)
        end
    )

    local sss = s:Tab("Misc")

    sss:Toggle(
        "Anti Afk",
        function(state)
            for i, v in next, getconnections(game.Players.LocalPlayer.Idled) do
                v:Disable()
            end
        end
    )

    sss:Toggle(
        "Unlock All Gamepass",
        function(state)
            if state == true then
                game.Players.LocalPlayer.Gamepasses.KiTraining.Value = true

                game.Players.LocalPlayer.Gamepasses.FasterTraining.Value = true
            elseif state == false then
                game.Players.LocalPlayer.Gamepasses.KiTraining.Value = false

                game.Players.LocalPlayer.Gamepasses.FasterTraining.Value = false
            end
        end
    )

    local ssss = s:Tab("Universal Scripts")

    ssss:Button(
        "HD GRAPHICS 1",
        function()
            local Services = {}
            Services.RunService = game:GetService("RunService")

            -- [ Custom Functions ] --
            local IsExploit = not Services.RunService:IsStudio()

            local CustomFunctions = {}
            CustomFunctions.SetHidden = sethiddenproperty or set_hidden_property or set_hidden_prop

            -- [ GraphicX ] --
            local GraphicX = {}

            -- Create --
            function GraphicX.new(Class, Properties)
                -- Creates the Instance --
                local NewInstance = Instance.new(Class)

                -- Sets the Properties --
                for i, v in pairs(Properties) do
                    if NewInstance[i] ~= nil and i ~= "Parent" then
                        NewInstance[i] = v
                    end
                end

                -- Sets Parent --
                if Properties.Parent then
                    NewInstance.Parent = Properties.Parent
                end

                return NewInstance
            end

            function GraphicX.SetProperty(Object, Properties)
                -- Sets the Properties --
                for i, v in pairs(Properties) do
                    if Object[i] ~= nil and i ~= "Parent" then
                        Object[i] = v
                    end
                end

                -- Sets Parent --
                if Properties.Parent then
                    Object.Parent = Properties.Parent
                end
            end

            -- [ Instances ] --
            local Lighting = game:GetService("Lighting")
            local Terrain = workspace.Terrain

            local LightingSaves = GraphicX.new("Folder", {Name = "LightingSaves", Parent = nil})

            -- // Main \\ --
            function GraphicX.Enhance(Settings)
                local GraphicSettings =
                    Settings or
                    {
                        FogEnabled = true,
                        WaterEnabled = true
                    }

                -- [ Clears Lighting ] --
                for i, v in ipairs(Lighting:GetChildren()) do
                    if v:IsA("PostEffect") and not string.find(v.Name, "GraphicX") then
                        v.Parent = LightingSaves
                    end
                end

                -- [ Sets Properties ] --

                -- Lighting --
                if GraphicSettings.FogEnabled then
                    GraphicX.SetProperty(
                        Lighting,
                        {
                            FogEnd = 500,
                            FogStart = 25
                        }
                    )
                end

                if IsExploit then
                    CustomFunctions.SetHidden(Lighting, "Technology", Enum.Technology.Future)
                    settings().Rendering.QualityLevel = 21
                end

                -- Terrain --
                if GraphicSettings.WaterEnabled then
                    GraphicX.SetProperty(
                        Terrain,
                        {
                            WaterColor = Color3.fromRGB(131, 165, 164),
                            WaterReflectance = 0.05,
                            WaterTransparency = 1,
                            WaterWaveSize = 0.05,
                            WaterWaveSpeed = 25
                        }
                    )
                end

                -- [ Creates Effects ] --
                GraphicX.LightingEffects = {
                    GraphicX.new(
                        "BloomEffect",
                        {
                            Name = "GraphicXBloom",
                            Parent = Lighting,
                            Intensity = 0.75,
                            Size = 15,
                            Threshold = 0.95
                        }
                    ),
                    GraphicX.new(
                        "BlurEffect",
                        {
                            Name = "GraphicXBlur",
                            Parent = Lighting,
                            Size = 5
                        }
                    ),
                    GraphicX.new(
                        "DepthOfFieldEffect",
                        {
                            Name = "GraphicXDepth",
                            Parent = Lighting,
                            FarIntensity = 0.15,
                            FocusDistance = 0.05,
                            InFocusRadius = 20,
                            NearIntensity = 0.75
                        }
                    ),
                    GraphicX.new(
                        "SunRaysEffect",
                        {
                            Name = "GraphicXRays",
                            Parent = Lighting,
                            Intensity = 0.25,
                            Spread = 0.5
                        }
                    )
                }
            end

            GraphicX.Enhance(
                {
                    FogEnabled = true,
                    WaterEnabled = true
                }
            )

            return GraphicX
        end
    )

    ssss:Button(
        "HD GRAPHICS 2",
        function()
            -- Roblox Graphics Enhancher
            sethiddenproperty(game:GetService("Workspace").Terrain, "Decoration", true)
            sethiddenproperty(game:GetService("Lighting"), "Technology", "Future")
            local light = game.Lighting
            for i, v in pairs(light:GetChildren()) do
                v:Destroy()
            end

            local ter = workspace.Terrain
            local color = Instance.new("ColorCorrectionEffect")
            local bloom = Instance.new("BloomEffect")
            local sun = Instance.new("SunRaysEffect")
            local blur = Instance.new("BlurEffect")

            color.Parent = light
            bloom.Parent = light
            sun.Parent = light
            blur.Parent = light

            -- enable or disable shit

            local config = {
                Terrain = true,
                ColorCorrection = true,
                Sun = true,
                Lighting = true,
                BloomEffect = true
            }

            -- settings {

            color.Enabled = false
            color.Contrast = 0.15
            color.Brightness = 0.1
            color.Saturation = 0.25
            color.TintColor = Color3.fromRGB(255, 222, 211)

            bloom.Enabled = false
            bloom.Intensity = 0.1

            sun.Enabled = false
            sun.Intensity = 0.2
            sun.Spread = 1

            bloom.Enabled = false
            bloom.Intensity = 0.05
            bloom.Size = 32
            bloom.Threshold = 1

            blur.Enabled = false
            blur.Size = 6

            -- settings }

            if config.ColorCorrection then
                color.Enabled = true
            end

            if config.Sun then
                sun.Enabled = true
            end

            if config.Terrain then
                -- settings {
                ter.WaterColor = Color3.fromRGB(10, 10, 24)
                ter.WaterWaveSize = 0.1
                ter.WaterWaveSpeed = 22
                ter.WaterTransparency = 0.9
                ter.WaterReflectance = 0.05
            -- settings }
            end

            if config.Lighting then
                -- settings {
                light.Ambient = Color3.fromRGB(0, 0, 0)
                light.Brightness = 4
                light.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
                light.ColorShift_Top = Color3.fromRGB(0, 0, 0)
                light.ExposureCompensation = 0
                light.FogColor = Color3.fromRGB(132, 132, 132)
                light.GlobalShadows = true
                light.OutdoorAmbient = Color3.fromRGB(112, 117, 128)
                light.Outlines = false
            -- settings }
            end
        end
    )
end

if game.PlaceId == 3823781113 then -- SABER SIMULATOR
    local VLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/VL"))()

    local s = VLib:Window("Straw Hub", "Saber Simulator", "S")
    local ss = s:Tab("Main")

    ss:Toggle(
        "Auto Sell",
        function(t)
            if t == true then
                getgenv().farmer = true
                while wait() do
                    if getgenv().farmer == true then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            CFrame.new(536.941833, 183.987778, 146.277451)
                         --AUTO SELL
                        wait(.8)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            CFrame.new(539.263245, 183.987839, 137.771301)
                    end
                end
            elseif t == false then
                getgenv().farmer = false
            end
        end
    )

    ss:Toggle(
        "Autofarm Strenght",
        function(t)
            if t == true then
                getgenv().farmer = true
                while wait() do
                    if getgenv().farmer == true then
                        game:GetService("ReplicatedStorage").Events.Clicked:FireServer()
                    end
                end
            elseif t == false then
                getgenv().farmer = false
            end
        end
    )

    ss:Toggle(
        "CandyCane Farm",
        function(t)
            local tween = game:GetService("TweenService")
             --CANDY CANE FARM
            local character = game.Players.LocalPlayer.character
            local humanoid = character.HumanoidRootPart
            while wait() do
                game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                wait(.1)
                for i, v in next, {game.Workspace.CandyHolder} do
                    pcall(
                        function()
                            if v:FindFirstChild("CandyCane") then
                                tween:Create(
                                    humanoid,
                                    TweenInfo.new(1, Enum.EasingStyle.Linear),
                                    {CFrame = v.CandyCane.CFrame}
                                ):Play()
                                wait(2)
                                v.CandyCane:Destroy()
                            end
                        end
                    )
                end
            end
            local tween = game:GetService("TweenService")
             --CANDY CANE FARM
            local character = game.Players.LocalPlayer.character
            local humanoid = character.HumanoidRootPart
            while wait() do
                game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                wait(.1)
                for i, v in next, {game.Workspace.CandyHolder} do
                    pcall(
                        function()
                            if v:FindFirstChild("CandyCane") then
                                tween:Create(
                                    humanoid,
                                    TweenInfo.new(1, Enum.EasingStyle.Linear),
                                    {CFrame = v.CandyCane.CFrame}
                                ):Play()
                                wait(2)
                                v.CandyCane:Destroy()
                            end
                        end
                    )
                end
            end
        end
    )
    local sss = s:Tab("Misc")

    sss:Button(
        "Buy All Auras",
        function()
            game:GetService("ReplicatedStorage").Events.BuyAll:FireServer("Auras")
        end
    )

    sss:Button(
        "Buy All Backpacks",
        function()
            game:GetService("ReplicatedStorage").Events.BuyAll:FireServer("Backpacks")
        end
    )

    sss:Button(
        "Buy All PetAuras",
        function()
            game:GetService("ReplicatedStorage").Events.BuyAll:FireServer("PetAuras")
        end
    )

    sss:Button(
        "Buy All Swords",
        function()
            game:GetService("ReplicatedStorage").Events.BuyAll:FireServer("Swords")
         --BUY ALL SWORD
        end
    )

    sss:Button(
        "HideName",
        function()
            game.Players.LocalPlayer.Character.Head.RankingGui.PName:Destroy()
        end
    )

    sss:Button(
        "HideRank",
        function()
            game.Players.LocalPlayer.Character.Head.RankingGui.Tag1:Destroy()
         --HIDE RANK
        end
    )

    local ssss = s:Tab("Universal Scripts")

    ssss:Button(
        "HD GRAPHICS 1",
        function()
            local Services = {}
            Services.RunService = game:GetService("RunService")

            -- [ Custom Functions ] --
            local IsExploit = not Services.RunService:IsStudio()

            local CustomFunctions = {}
            CustomFunctions.SetHidden = sethiddenproperty or set_hidden_property or set_hidden_prop

            -- [ GraphicX ] --
            local GraphicX = {}

            -- Create --
            function GraphicX.new(Class, Properties)
                -- Creates the Instance --
                local NewInstance = Instance.new(Class)

                -- Sets the Properties --
                for i, v in pairs(Properties) do
                    if NewInstance[i] ~= nil and i ~= "Parent" then
                        NewInstance[i] = v
                    end
                end

                -- Sets Parent --
                if Properties.Parent then
                    NewInstance.Parent = Properties.Parent
                end

                return NewInstance
            end

            function GraphicX.SetProperty(Object, Properties)
                -- Sets the Properties --
                for i, v in pairs(Properties) do
                    if Object[i] ~= nil and i ~= "Parent" then
                        Object[i] = v
                    end
                end

                -- Sets Parent --
                if Properties.Parent then
                    Object.Parent = Properties.Parent
                end
            end

            -- [ Instances ] --
            local Lighting = game:GetService("Lighting")
            local Terrain = workspace.Terrain

            local LightingSaves = GraphicX.new("Folder", {Name = "LightingSaves", Parent = nil})

            -- // Main \\ --
            function GraphicX.Enhance(Settings)
                local GraphicSettings =
                    Settings or
                    {
                        FogEnabled = true,
                        WaterEnabled = true
                    }

                -- [ Clears Lighting ] --
                for i, v in ipairs(Lighting:GetChildren()) do
                    if v:IsA("PostEffect") and not string.find(v.Name, "GraphicX") then
                        v.Parent = LightingSaves
                    end
                end

                -- [ Sets Properties ] --

                -- Lighting --
                if GraphicSettings.FogEnabled then
                    GraphicX.SetProperty(
                        Lighting,
                        {
                            FogEnd = 500,
                            FogStart = 25
                        }
                    )
                end

                if IsExploit then
                    CustomFunctions.SetHidden(Lighting, "Technology", Enum.Technology.Future)
                    settings().Rendering.QualityLevel = 21
                end

                -- Terrain --
                if GraphicSettings.WaterEnabled then
                    GraphicX.SetProperty(
                        Terrain,
                        {
                            WaterColor = Color3.fromRGB(131, 165, 164),
                            WaterReflectance = 0.05,
                            WaterTransparency = 1,
                            WaterWaveSize = 0.05,
                            WaterWaveSpeed = 25
                        }
                    )
                end

                -- [ Creates Effects ] --
                GraphicX.LightingEffects = {
                    GraphicX.new(
                        "BloomEffect",
                        {
                            Name = "GraphicXBloom",
                            Parent = Lighting,
                            Intensity = 0.75,
                            Size = 15,
                            Threshold = 0.95
                        }
                    ),
                    GraphicX.new(
                        "BlurEffect",
                        {
                            Name = "GraphicXBlur",
                            Parent = Lighting,
                            Size = 5
                        }
                    ),
                    GraphicX.new(
                        "DepthOfFieldEffect",
                        {
                            Name = "GraphicXDepth",
                            Parent = Lighting,
                            FarIntensity = 0.15,
                            FocusDistance = 0.05,
                            InFocusRadius = 20,
                            NearIntensity = 0.75
                        }
                    ),
                    GraphicX.new(
                        "SunRaysEffect",
                        {
                            Name = "GraphicXRays",
                            Parent = Lighting,
                            Intensity = 0.25,
                            Spread = 0.5
                        }
                    )
                }
            end

            GraphicX.Enhance(
                {
                    FogEnabled = true,
                    WaterEnabled = true
                }
            )

            return GraphicX
        end
    )

    ssss:Button(
        "HD GRAPHICS 2",
        function()
            -- Roblox Graphics Enhancher
            sethiddenproperty(game:GetService("Workspace").Terrain, "Decoration", true)
            sethiddenproperty(game:GetService("Lighting"), "Technology", "Future")
            local light = game.Lighting
            for i, v in pairs(light:GetChildren()) do
                v:Destroy()
            end

            local ter = workspace.Terrain
            local color = Instance.new("ColorCorrectionEffect")
            local bloom = Instance.new("BloomEffect")
            local sun = Instance.new("SunRaysEffect")
            local blur = Instance.new("BlurEffect")

            color.Parent = light
            bloom.Parent = light
            sun.Parent = light
            blur.Parent = light

            -- enable or disable shit

            local config = {
                Terrain = true,
                ColorCorrection = true,
                Sun = true,
                Lighting = true,
                BloomEffect = true
            }

            -- settings {

            color.Enabled = false
            color.Contrast = 0.15
            color.Brightness = 0.1
            color.Saturation = 0.25
            color.TintColor = Color3.fromRGB(255, 222, 211)

            bloom.Enabled = false
            bloom.Intensity = 0.1

            sun.Enabled = false
            sun.Intensity = 0.2
            sun.Spread = 1

            bloom.Enabled = false
            bloom.Intensity = 0.05
            bloom.Size = 32
            bloom.Threshold = 1

            blur.Enabled = false
            blur.Size = 6

            -- settings }

            if config.ColorCorrection then
                color.Enabled = true
            end

            if config.Sun then
                sun.Enabled = true
            end

            if config.Terrain then
                -- settings {
                ter.WaterColor = Color3.fromRGB(10, 10, 24)
                ter.WaterWaveSize = 0.1
                ter.WaterWaveSpeed = 22
                ter.WaterTransparency = 0.9
                ter.WaterReflectance = 0.05
            -- settings }
            end

            if config.Lighting then
                -- settings {
                light.Ambient = Color3.fromRGB(0, 0, 0)
                light.Brightness = 4
                light.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
                light.ColorShift_Top = Color3.fromRGB(0, 0, 0)
                light.ExposureCompensation = 0
                light.FogColor = Color3.fromRGB(132, 132, 132)
                light.GlobalShadows = true
                light.OutdoorAmbient = Color3.fromRGB(112, 117, 128)
                light.Outlines = false
            -- settings }
            end
        end
    )
end

if game.PlaceId == 5080886060 then --HEROES LEGACY
    local VLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/VL"))()

    local s = VLib:Window("Straw Hub", "Heroes Legacy", "H")
    local ss = s:Tab("Main")

    ss:Dropdown(
        "MobsFarm",
        {"Gangster", "Rookie Police", "Thug", "Armed Police", "Super Thug", "Forest Bandit", "Junior Trainee"},
        function(value)
            if value == "Gangster" then
                while wait() do
                    if game.Players.LocalPlayer.Character:FindFirstChild("Punch") == nil then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.Punch)
                    end

                    local virtualUser = game:GetService("VirtualUser")
                    virtualUser:CaptureController()
                    wait()
                    virtualUser:Button1Down(Vector2.new(), CFrame.new())
                    wait()
                    virtualUser:Button1Down(Vector2.new(), CFrame.new())

                    for i, v in pairs(game:GetService("Workspace").Living:GetChildren()) do
                        if v.Name == "Gangster" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                        end
                    end
                end
            elseif value == "Rookie Police" then
                while wait() do
                    if game.Players.LocalPlayer.Character:FindFirstChild("Punch") == nil then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.Punch)
                    end

                    local virtualUser = game:GetService("VirtualUser")
                    virtualUser:CaptureController()
                    wait()
                    virtualUser:Button1Down(Vector2.new(), CFrame.new())
                    wait()
                    virtualUser:Button1Down(Vector2.new(), CFrame.new())

                    for i, v in pairs(game:GetService("Workspace").Living:GetChildren()) do
                        if v.Name == "Rookie Police" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                        end
                    end
                end
            elseif value == "Thug" then
                while wait() do
                    if game.Players.LocalPlayer.Character:FindFirstChild("Punch") == nil then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.Punch)
                    end

                    local virtualUser = game:GetService("VirtualUser")
                    virtualUser:CaptureController()
                    wait()
                    virtualUser:Button1Down(Vector2.new(), CFrame.new())
                    wait()
                    virtualUser:Button1Down(Vector2.new(), CFrame.new())

                    for i, v in pairs(game:GetService("Workspace").Living:GetChildren()) do
                        if v.Name == "Thug" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                        end
                    end
                end
            elseif value == "Armed Police" then
                while wait() do
                    if game.Players.LocalPlayer.Character:FindFirstChild("Punch") == nil then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.Punch)
                    end

                    local virtualUser = game:GetService("VirtualUser")
                    virtualUser:CaptureController()
                    wait()
                    virtualUser:Button1Down(Vector2.new(), CFrame.new())
                    wait()
                    virtualUser:Button1Down(Vector2.new(), CFrame.new())

                    for i, v in pairs(game:GetService("Workspace").Living:GetChildren()) do
                        if v.Name == "Armed Police" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                        end
                    end
                end
            elseif value == "Super Thug" then
                while wait() do
                    if game.Players.LocalPlayer.Character:FindFirstChild("Punch") == nil then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.Punch)
                    end

                    local virtualUser = game:GetService("VirtualUser")
                    virtualUser:CaptureController()
                    wait()
                    virtualUser:Button1Down(Vector2.new(), CFrame.new())
                    wait()
                    virtualUser:Button1Down(Vector2.new(), CFrame.new())

                    for i, v in pairs(game:GetService("Workspace").Living:GetChildren()) do
                        if v.Name == "Super Thug" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                        end
                    end
                end
            elseif value == "Forest Bandit" then
                while wait() do
                    if game.Players.LocalPlayer.Character:FindFirstChild("Punch") == nil then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.Punch)
                    end

                    local virtualUser = game:GetService("VirtualUser")
                    virtualUser:CaptureController()
                    wait()
                    virtualUser:Button1Down(Vector2.new(), CFrame.new())
                    wait()
                    virtualUser:Button1Down(Vector2.new(), CFrame.new())

                    for i, v in pairs(game:GetService("Workspace").Living:GetChildren()) do
                        if v.Name == "Forest Bandit" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                        end
                    end
                end
            elseif value == "Junior Trainee" then
                while wait() do
                    if game.Players.LocalPlayer.Character:FindFirstChild("Punch") == nil then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.Punch)
                    end

                    local virtualUser = game:GetService("VirtualUser")
                    virtualUser:CaptureController()
                    wait()
                    virtualUser:Button1Down(Vector2.new(), CFrame.new())
                    wait()
                    virtualUser:Button1Down(Vector2.new(), CFrame.new())

                    for i, v in pairs(game:GetService("Workspace").Living:GetChildren()) do
                        if v.Name == "Junior Trainee" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                        end
                    end
                end
            end
        end
    )

    ss:Toggle(
        "Hide Identity",
        function(state)
            for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v.ClassName == "Accessory" or v.Name == "Shirt" or v.Name == "Pants" then
                    v:Destroy()
                end
            end
            game.Players.LocalPlayer.Character.Head.Tag:Destroy()
        end
    )

    ss:Toggle(
        "AutoUpgrade Stats",
        function(state)
            getgenv().farmer = true
            while wait() do
                if getgenv().farmer == true then
                    game:GetService("ReplicatedStorage").Communication.Events[""]:FireServer("melee", 1)

                    game:GetService("ReplicatedStorage").Communication.Events[""]:FireServer("defense", 1)

                    game:GetService("ReplicatedStorage").Communication.Events[""]:FireServer("agility", 1)

                    game:GetService("ReplicatedStorage").Communication.Events[""]:FireServer("quirk", 1)
                end
            end
        end
    )

    ss:Slider(
        "WalkSpeed Changer",
        0,
        500,
        16,
        function(t)
            local gmt = getrawmetatable(game)
            setreadonly(gmt, false)
            local oldindex = gmt.__index

            gmt.__index =
                newcclosure(
                function(self, b)
                    if b == "WalkSpeed" then
                        return 16
                    end
                    return oldindex(self, b)
                end
            )

            while wait() do
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = t
            end
        end
    )
end

if game.PlaceId == 537413528 then --BUILD A BOAT
    local VLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/VL"))()

    local s = VLib:Window("Straw Hub", "Build A Boat", "B")
    local ss = s:Tab("Main")

    ss:Toggle(
        "Gold Farm",
        function(r)
            if r == true then
                getgenv().farmer = true
                while wait() do
                    if getgenv().farmer == true then
                        function Tween(time, pos)
                            pcall(
                                function()
                                    workspace.Gravity = 0
                                    game:GetService("TweenService"):Create(
                                        game.Players.LocalPlayer.Character.HumanoidRootPart,
                                        TweenInfo.new(time, Enum.EasingStyle.Linear),
                                        {CFrame = pos}
                                    ):Play()
                                    wait(time)
                                    workspace.Gravity = 196.19999694824
                                end
                            )
                        end
                        Tween(1, game:GetService("Workspace").BoatStages.NormalStages.CaveStage1.DarknessPart.CFrame)
                        Tween(18, game:GetService("Workspace").BoatStages.NormalStages.CaveStage10.DarknessPart.CFrame)
                        wait(0.1)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            CFrame.new(Vector3.new(-60.1396255, -350.350006, 9500.14648))
                        pcall(
                            function()
                                firetouchinterest(
                                    game.Players.LocalPlayer.Character.HumanoidRootPart,
                                    game:GetService("Workspace").GoldenChest.Collider,
                                    0
                                )
                            end
                        )
                    elseif r == false then
                        getgenv().farmer = false
                    end
                end
            end
        end
    )

    ss:Toggle(
        "Auto Claim Gold",
        function(r)
            if r == true then
                getgenv().farmer = true
                while wait() do
                    if getgenv().farmer == true then
                        workspace.ClaimRiverResultsGold:FireServer()
                    elseif r == false then
                        getgenv().farmer = false
                    end
                end
            end
        end
    )

    sss:Toggle(
        "Anti Afk",
        function(state)
            for i, v in next, getconnections(game.Players.LocalPlayer.Idled) do
                v:Disable()
            end
        end
    )
end

if game.PlaceId == 4520749081 then --KING PIECE
    local VLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/VL"))()

    local s = VLib:Window("Straw Hub", "King Piece", "K")
    local ss = s:Tab("MAIN")

    getgenv().mobs = nil
    getgenv().Boss = nil
    getgenv().autofarm = false
    getgenv().autofarm2 = false

    local HRT = game.Players.LocalPlayer.Character.HumanoidRootPart

    local Character_Table = {}
    for i, v in pairs(game:GetService("Workspace").Monster.Mon:GetChildren()) do
        if v:IsA("Model") then
            table.insert(Character_Table, v.Name)
        end
    end

    local Character_Table2 = {}
    for i, v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
        if v:IsA("Model") then
            table.insert(Character_Table2, v.Name)
        end
    end

    ss:Dropdown(
        "Mobs To Farm",
        Character_Table,
        function(mb)
            getgenv().mobs = mb
        end
    )

    ss:Toggle(
        "Autofarm Start Mobs",
        function(bool)
            getgenv().autofarm = bool

            game:GetService("RunService").Heartbeat:Connect(
                function()
                    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                end
            )

            while wait() do
                for i, v in pairs(game:GetService("Workspace").Monster.Mon:GetChildren()) do
                    if v.Name == getgenv().mobs and getgenv().autofarm == true and v:FindFirstChild("HumanoidRootPart") then
                        repeat
                            wait()
                            HRT.CFrame =
                                CFrame.new(
                                v.HumanoidRootPart.Position + Vector3.new(0, -5, 0),
                                v.HumanoidRootPart.Position
                            )
                        until v.Humanoid.Health < 0.2
                    end
                end
            end
        end
    )

    local sss = s:Tab("MISC")

    sss:Toggle(
        "AutoHit",
        function(state)
            if state == true then
                getgenv().farmer = true
                while wait() do
                    if getgenv().farmer == true then
                        local virtualUser = game:GetService("VirtualUser")
                        virtualUser:CaptureController()
                        wait()
                        virtualUser:Button1Down(Vector2.new(), CFrame.new())
                        wait()
                        virtualUser:Button1Down(Vector2.new(), CFrame.new())
                    elseif state == false then
                        getgenv().farmer = false
                    end
                end
            end
        end
    )

    sss:Toggle(
        "AutoEquip Fists",
        function(state)
            if state == true then
                getgenv().farmer = true
                while wait() do
                    if getgenv().farmer == true then
                        if game.Players.LocalPlayer.Character:FindFirstChild("None") == nil then
                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(
                                game.Players.LocalPlayer.Backpack.None
                            )
                        end
                    else
                        getegenv().farmer = false
                    end
                end
            end
        end
    )

    sss:Button(
        "No Cooldown",
        function()
            Timer =
                hookfunction(
                wait,
                function(time)
                    if time then
                        return Timer()
                    end
                    return Timer(time)
                end
            )
        end
    )

    ss:Toggle(
        "Anti Afk",
        function(state)
            for i, v in next, getconnections(game.Players.LocalPlayer.Idled) do
                v:Disable()
            end
        end
    )
    sss:Slider(
        "WalkSpeed",
        0,
        250,
        16,
        function(t)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = t
        end
    )

    sss:Button(
        "Autofarm DevilFruits",
        function()
            while wait() do
                for i, v in pairs(game:GetDescendants()) do
                    if
                        v:IsA("Tool") and v.Parent == Workspace and v:FindFirstChild("Handle") and
                            v:FindFirstChild("DevilFruit")
                     then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
                    end
                end
            end
        end
    )
end

if game.PlaceId == 3311165597 then -- Dragon Blox Ultimate
    local VLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/VL"))()

    local s = VLib:Window("Straw Hub", "Dragon Blox Ultimate", "D")
    local ss = s:Tab("MAIN")

    local Character_Table = {}

    getgenv().mobs = nil
    getgenv().autofarm = false
    local HRT = game.Players.LocalPlayer.Character.HumanoidRootPart

    local Character_Table = {}

    for i, v in pairs(game:GetService("Workspace").Living:GetChildren()) do
        if v:IsA("Model") then
            table.insert(Character_Table, v.Name)
        end
    end

    ss:Dropdown(
        "Mobs To Farm",
        Character_Table,
        function(mb)
            getgenv().mobs = mb
        end
    )

    ss:Toggle(
        "AutoHit",
        function(state)
            if state == true then
                getgenv().farmer = true
                while wait() do
                    if getgenv().farmer == true then
                        game:GetService("ReplicatedStorage").Package.Events.p:FireServer("Blacknwhite27", 1)
                        wait(.5)
                        game:GetService("ReplicatedStorage").Package.Events.p:FireServer("Blacknwhite27", 2)
                        wait(.5)
                        game:GetService("ReplicatedStorage").Package.Events.p:FireServer("Blacknwhite27", 3)
                        wait(.5)
                        game:GetService("ReplicatedStorage").Package.Events.p:FireServer("Blacknwhite27", 4)
                    elseif state == false then
                        getgenv().farmer = false
                    end
                end
            end
        end
    )

    ss:Toggle(
        "Autofarm Start",
        function(bool)
            getgenv().autofarm = bool

            game:GetService("RunService").Heartbeat:Connect(
                function()
                    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                end
            )

            while wait() do
                for i, v in pairs(game:GetService("Workspace").Living:GetChildren()) do
                    if v.Name == getgenv().mobs and getgenv().autofarm == true and v:FindFirstChild("HumanoidRootPart") then
                        repeat
                            wait()
                            HRT.CFrame =
                                CFrame.new(
                                v.HumanoidRootPart.Position + Vector3.new(0, -5, 0),
                                v.HumanoidRootPart.Position
                            )
                        until v.Humanoid.Health < 0
                    end
                end
            end
        end
    )

    ss:Button(
        "No Drain",
        function()
            metatable = getrawmetatable(game)
            namecall = metatable.__namecall
            setreadonly(metatable, false)

            metatable.__namecall =
                newcclosure(
                function(self, ...)
                    local method = getnamecallmethod()
                    if method == "FireServer" and self.Name == "drain" then
                        return wait(9e9)
                    end
                    return namecall(self, ...)
                end
            )
        end
    )

    local sss = s:Tab("TRAIN")

    sss:Button(
        "Auto Situps",
        function()
            while wait() do
                game:GetService("ReplicatedStorage").Package.Events.def:InvokeServer("Blacknwhite27")
            end
        end
    )
end



if game.PlaceId == 5062619730 then --WAR SIMULATOR
    local Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/VLi"))()

    local win = Lib:Window("Straw Hub V2")

    local serv = win:Server("Straw Hub", "")

    local btns = serv:Channel("Main")

    local Character_Table = {}

    getgenv().mobs = nil
    getgenv().autofarm = false

    local HRT = game.Players.LocalPlayer.Character.HumanoidRootPart

    local Character_Table = {}

    for i, v in pairs(game:GetService("Workspace").MapAreas.Area4WorldWarsRegular.Mobs:GetChildren()) do
        if v:IsA("Model") then
            table.insert(Character_Table, v.Name)
        end
    end

    btns:Dropdown(
        "Mobs To Farm",
        Character_Table,
        function(mb)
            getgenv().mobs = mb
        end
    )

    btns:Toggle(
        "AutoEquip",
        Character_Table,
        function(bool)
            getgenv().autofarm = bool
            while wait() do
                if getgenv().autofarm == true then
                    if game.Players.LocalPlayer.Character:FindFirstChild("Knife") == nil then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.Knife)
                    end
                end
            end
        end
    )

    btns:Toggle(
        "Autofarm Start",
        Character_Table,
        function(bool)
            getgenv().autohit = bool
            while wait() do
                if getgenv().autohit == true then
                    local virtualUser = game:GetService("VirtualUser")
                    virtualUser:CaptureController()
                    wait()
                    virtualUser:Button1Down(Vector2.new(), CFrame.new())
                    wait()
                    virtualUser:Button1Down(Vector2.new(), CFrame.new())
                end
            end
        end
    )

    btns:Toggle(
        "Autofarm Start",
        Character_Table,
        function(bool)
            getgenv().autofarm = bool

            game:GetService("RunService").Heartbeat:Connect(
                function()
                    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                end
            )

            while wait() do
                for i, v in pairs(game:GetService("Workspace").MapAreas.Area4WorldWarsRegular.Mobs:GetChildren()) do
                    if v.Name == getgenv().mobs and getgenv().autofarm == true and v:FindFirstChild("HumanoidRootPart") then
                        repeat
                            wait()
                            HRT.CFrame =
                                CFrame.new(
                                v.HumanoidRootPart.Position + Vector3.new(0, -5, 0),
                                v.HumanoidRootPart.Position
                            )
                        until v.Humanoid.Health < 0.2
                    end
                end
            end
        end
    )
end
if game.PlaceId == 1499872953 then --BOKU NO ROBLOX
    local Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/VLi"))()

    local win = Lib:Window("Straw Hub V2")

    local serv = win:Server("Straw Hub", "")

    local btns = serv:Channel("MAIN")
    local btns2 = serv:Channel("MISC")

    local Character_Table = {}

    getgenv().mobs = nil
    getgenv().autofarm = false
    local HRT = game.Players.LocalPlayer.Character.HumanoidRootPart

    local Character_Table = {}

    for i, v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
        if v:IsA("Model") then
            table.insert(Character_Table, v.Name)
        end
    end

    btns:Dropdown(
        "Mobs To Farm",
        Character_Table,
        function(mb)
            getgenv().mobs = mb
        end
    )

    btns:Toggle(
        "Autofarm Start",
        false,
        function(bool)
            getgenv().autofarm = bool

            game:GetService("RunService").Heartbeat:Connect(
                function()
                    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                end
            )
            if getgenv().autofarm == true then
                while wait() do
                    pcall(
                        function()
                            for i, v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
                                if v.Name == getgenv().mobs and v:FindFirstChild("HumanoidRootPart") then
                                    repeat
                                        wait()
                                        HRT.CFrame =
                                            CFrame.new(
                                            v.HumanoidRootPart.Position + Vector3.new(0, -5, 0),
                                            v.HumanoidRootPart.Position
                                        )
                                    until v.Humanoid.Health < .1
                                end
                            end
                        end
                    )
                end
            end
        end
    )

    local Quest_Table = {}
    for i, v in pairs(game:GetService("ReplicatedStorage").Modules.Quests:GetDescendants()) do
        table.insert(Quest_Table, v.Name)
    end

    getgenv().questmob = nil
    getgenv().autoquest = false

    btns:Dropdown(
        "Quests",
        Quest_Table,
        function(mb)
            getgenv().questmob = mb
        end
    )

    btns:Toggle(
        "Quest Start",
        false,
        function(bool)
            getgenv().autoquest = bool
            while wait() do
                if getgenv().autoquest == true and getgenv().questmob == "Kill Criminal" then
                    game:GetService("ReplicatedStorage").Remotes.Quest.AcceptQuest:FireServer("Kill Criminal")
                elseif getgenv().questmob == "Kill Police" and getgenv().autoquest == true then
                    game:GetService("ReplicatedStorage").Remotes.Quest.AcceptQuest:FireServer("Kill Police")
                elseif getgenv().questmob == "Kill Hero" and getgenv().autoquest == true then
                    game:GetService("ReplicatedStorage").Remotes.Quest.AcceptQuest:FireServer("Kill Hero")
                elseif getgenv().questmob == "Kill Villain" and getgenv().autoquest == true then
                    game:GetService("ReplicatedStorage").Remotes.Quest.AcceptQuest:FireServer("Kill Villain")
                elseif getgenv().questmob == "Kill High End" and getgenv().autoquest == true then
                    game:GetService("ReplicatedStorage").Remotes.Quest.AcceptQuest:FireServer("Kill High End")
                elseif getgenv().questmob == "Kill Pro Hero" and getgenv().autoquest == true then
                    game:GetService("ReplicatedStorage").Remotes.Quest.AcceptQuest:FireServer("Kill Pro Hero")
                elseif getgenv().questmob == "Kill Weak Nomu" and getgenv().autoquest == true then
                    game:GetService("ReplicatedStorage").Remotes.Quest.AcceptQuest:FireServer("Kill Weak Nomu")
                elseif getgenv().questmob == "Kill Forest Beast" and getgenv().autoquest == true then
                    game:GetService("ReplicatedStorage").Remotes.Quest.AcceptQuest:FireServer("Kill Forest Beast")
                elseif getgenv().questmob == "Kill Evil Santa" and getgenv().autoquest == true then
                    game:GetService("ReplicatedStorage").Remotes.Quest.AcceptQuest:FireServer("Kill Evil Santa")
                elseif getgenv().questmob == "Defeat UA Student" and getgenv().autoquest == true then
                    game:GetService("ReplicatedStorage").Remotes.Quest.AcceptQuest:FireServer("Defeat UA Student")
                elseif getgenv().questmob == "QuestPane" and getgenv().autoquest == true then
                    game:GetService("ReplicatedStorage").Remotes.Quest.AcceptQuest:FireServer("QuestPane")
                elseif getgenv().questmob == "General Rewards" and getgenv().autoquest == true then
                    game:GetService("ReplicatedStorage").Remotes.Quest.AcceptQuest:FireServer("General Rewards")
                end
            end
        end
    )

    btns2:Button(
        "Hide Name",
        function()
            for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v.ClassName == "Accessory" or v.Name == "Shirt" or v.Name == "Pants" then
                    v:Destroy()
                    game.Players.LocalPlayer.Character.Head.OverHead:Destroy()
                end
            end
        end
    )

    btns2:Toggle(
        "AutoSwing",
        false,
        function(bool)
            getgenv().autoswing = bool
            while wait() do
                if getgenv().autoswing == true then
                    game.Players.LocalPlayer.Character.Main.Swing:FireServer(
                        CFrame.new(
                            378.768951,
                            328.365631,
                            306.362946,
                            -0.0915605724,
                            0.556029916,
                            -0.826103747,
                            -0,
                            0.829588473,
                            0.558375359,
                            0.995799541,
                            0.0511251688,
                            -0.0759575963
                        )
                    )
                end
            end
        end
    )

    btns2:Toggle(
        "AutoDaily",
        false,
        function(t)
            getgenv().cash = t
            while wait() do
                if getgenv().cash == true then
                    game:GetService("ReplicatedStorage").DailyCash:FireServer()
                end
            end
        end
    )

    btns2:Slider(
        "WalkSpeed",
        0,
        1000,
        16,
        function(value)
            local gmt = getrawmetatable(game)
            setreadonly(gmt, false)
            local oldindex = gmt.__index

            gmt.__index =
                newcclosure(
                function(self, b)
                    if b == "WalkSpeed" then
                        return 16
                    end
                    return oldindex(self, b)
                end
            )

            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
        end
    )

    btns2:Slider(
        "JumpPower",
        0,
        1000,
        16,
        function(value)
            local gmt = getrawmetatable(game)
            setreadonly(gmt, false)
            local oldindex = gmt.__index

            gmt.__index =
                newcclosure(
                function(self, b)
                    if b == "JumpPower" then
                        return 16
                    end
                    return oldindex(self, b)
                end
            )

            game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
        end
    )
end


if game.PlaceId == 3712279497 or game.PlaceId == 2346746059 then -- HUNTER X HUNTER ULTIMATE
    local VLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/VL"))()

    local s = VLib:Window("Straw Hub", "HXH", "H")
    local ss = s:Tab("MAIN")

    ss:Toggle(
        "AutoHit",
        function(state)
            if state == true then
                getgenv().farmer = true
                while wait() do
                    if getgenv().farmer == true then
                        game.Players.LocalPlayer.Character.Combat:FireServer(
                            game.Players.LocalPlayer.Name,
                            {["Type"] = "MouseButton1"}
                        )
                    else
                        getgenv().farmer = false
                    end
                end
            end
        end
    )

    getgenv().mobs = nil
    getgenv().autofarm = false

    local Character_Table = {}

    for i, v in pairs(game:GetService("Workspace").MobFolder:GetChildren()) do
        if v:IsA("Model") then
            table.insert(Character_Table, v.Name)
        end
    end

    ss:Dropdown(
        "Mobs To Farm",
        Character_Table,
        function(mb)
            getgenv().mobs = mb
        end
    )

    ss:Toggle(
        "Autofarm Start",
        function(bool)
            getgenv().autofarm = bool

            game:GetService("RunService").Heartbeat:Connect(
                function()
                    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                end
            )

            while wait() do
                for i, v in pairs(game:GetService("Workspace").MobFolder:GetChildren()) do
                    if v.Name == getgenv().mobs and getgenv().autofarm == true and v:FindFirstChild("HumanoidRootPart") then
                        local TweenService = game:GetService("TweenService")
                        local tweenInfo =
                            TweenInfo.new(
                            2, -- Time
                            Enum.EasingStyle.Linear, -- EasingStyle
                            Enum.EasingDirection.Out, -- EasingDirection
                            0, -- RepeatCount (when less than zero the tween will loop indefinitely)
                            false, -- Reverses (tween will reverse once reaching it's goal)
                            0 -- DelayTime
                        )

                        local part = game.Players.LocalPlayer.Character.HumanoidRootPart
                        local npc = v.HumanoidRootPart
                        local npcCFrame =
                            CFrame.new(v.HumanoidRootPart.Position + Vector3.new(0, -5, 0), v.HumanoidRootPart.Position)
                        local tween = TweenService:Create(part, tweenInfo, {CFrame = npcCFrame})
                        tween:Play()
                        wait()
                    end
                end
            end
        end
    )

    ss:Toggle(
        "AutoUpgrade Stats",
        function(state)
            while wait() do
                game:GetService("ReplicatedStorage").Events.Invest:FireServer(
                    game.Players.LocalPlayer.Name,
                    {["Target"] = "Endurance", ["Type"] = "Upgrade", ["Points"] = 1}
                )
                game:GetService("ReplicatedStorage").Events.Invest:FireServer(
                    game.Players.LocalPlayer.Name,
                    {["Target"] = "Strength", ["Type"] = "Upgrade", ["Points"] = 1}
                )
                game:GetService("ReplicatedStorage").Events.Invest:FireServer(
                    game.Players.LocalPlayer.Name,
                    {["Target"] = "Stamina", ["Type"] = "Upgrade", ["Points"] = 1}
                )
                game:GetService("ReplicatedStorage").Events.Invest:FireServer(
                    game.Players.LocalPlayer.Name,
                    {["Target"] = "Agility", ["Type"] = "Upgrade", ["Points"] = 1}
                )
                game:GetService("ReplicatedStorage").Events.Invest:FireServer(
                    game.Players.LocalPlayer.Name,
                    {["Target"] = "Spirit", ["Type"] = "Upgrade", ["Points"] = 1}
                )
            end
        end
    )

    local sss = s:Tab("Misc")

    sss:Toggle(
        "Anti Afk",
        function(state)
            for i, v in next, getconnections(game.Players.LocalPlayer.Idled) do
                v:Disable()
            end
        end
    )

    sss:Button(
        "Hide Identity",
        function()
            while wait() do
                for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v.ClassName == "Accessory" or v.Name == "Shirt" or v.Name == "Pants" then
                        v:Destroy()
                    end
                end
            end
        end
    )

   
end

if game.PlaceId == 2809202155 then --YBA
    local VLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/VL"))()

    local s = VLib:Window("Straw Hub", "YBA", "Y")
    local ss = s:Tab("MAIN")

    --MAIN GUI
    local Character_Table = {}

    getgenv().mobs = nil
    getgenv().autofarm = false
    local HRT = game.Players.LocalPlayer.Character.HumanoidRootPart

    local Character_Table = {}

    for i, v in pairs(game:GetService("Workspace").Living:GetChildren()) do
        if v:IsA("Model") then
            table.insert(Character_Table, v.Name)
        end
    end

    ss:Dropdown(
        "Mobs To Farm",
        Character_Table,
        function(mb)
            getgenv().mobs = mb
        end
    )

    ss:Toggle(
        "Autofarm Start",
        function(bool)
            getgenv().autofarm = bool

            game:GetService("RunService").Heartbeat:Connect(
                function()
                    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                end
            )

            while wait() do
                for i, v in pairs(game:GetService("Workspace").Living:GetChildren()) do
                    if v.Name == getgenv().mobs and getgenv().autofarm == true and v:FindFirstChild("HumanoidRootPart") then
                        repeat
                            wait()
                            local TweenService = game:GetService("TweenService")
                            local tweenInfo =
                                TweenInfo.new(
                                1, -- Time
                                Enum.EasingStyle.Linear, -- EasingStyle
                                Enum.EasingDirection.Out, -- EasingDirection
                                0, -- RepeatCount (when less than zero the tween will loop indefinitely)
                                false, -- Reverses (tween will reverse once reaching it's goal)
                                0 -- DelayTime
                            )

                            local part = game.Players.LocalPlayer.Character.HumanoidRootPart
                            local npc = v.HumanoidRootPart
                            local npcCFrame =
                                CFrame.new(
                                v.HumanoidRootPart.Position + Vector3.new(0, -6, 0),
                                v.HumanoidRootPart.Position
                            )
                            local tween = TweenService:Create(part, tweenInfo, {CFrame = npcCFrame})
                            tween:Play()
                        until v.Humanoid.Health < 0.2
                        wait()
                    end
                end
            end
        end
    )

    ss:Toggle(
        "Auto Hit",
        function(bool)
            local Char = game.Players.LocalPlayer.Character
            getgenv().autohit = bool
            while wait() do
                if getgenv().autohit == true then
                    Char.RemoteEvent:FireServer("InputBegan", {["Input"] = (Enum.UserInputType.MouseButton1)})
                    Char.RemoteEvent:FireServer("InputEnded", {["Input"] = (Enum.UserInputType.MouseButton1)})
                end
            end
        end
    )

    ss:Toggle(
        "Item Farm",
        function(bool)
            getgenv().item = bool
            while wait() do
                if getgenv().item == true then
                    for i, v in pairs(game:GetService("Workspace")["Item_Spawns"].Items:GetChildren()) do
                        if v:IsA("Model") then
                            tweenService, tweenInfo =
                                game:GetService("TweenService"),
                                TweenInfo.new(
                                    (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Base.Position).magnitude /
                                        100,
                                    Enum.EasingStyle.Linear
                                )
                            tween =
                                tweenService:Create(
                                game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart,
                                tweenInfo,
                                {CFrame = v.Base.CFrame}
                            )
                            tween:Play()
                            wait(5)
                            fireclickdetector(v.ClickDetector)
                        end
                    end
                end
            end
        end
    )
end

if game.PlaceId == 5810056693 then --REAPER
   local Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/VLi"))()

    local win = Lib:Window("Straw Hub V2")

    local serv = win:Server("Straw Hub", "")
    
    local character_table = {}
    for i, v in pairs(game:GetService("Workspace").Living:GetChildren()) do
        if v:IsA("Model") then
            table.insert(character_table, v.Name)
        end
    end

    getgenv().mob = nil
    getgenv().autofarm = false


    local ss = serv:Channel("MAIN")
    local sss = serv:Channel("FARM")
    local ssss = serv:Channel("MISC")
   
  

    
    local player = game.Players.LocalPlayer
    local mt = getrawmetatable(game)
    local backupindex = mt.__index
    local backupnamecall = mt.__namecall
    setreadonly(mt, false)

    hookfunction(player.Kick, warn)
    hookfunction(player.kick, warn)
    hookfunction(player.kick, warn)

    mt.__namecall =
        newcclosure(
        function(...)
            if string.lower(getnamecallmethod()) == "kick" then
                return
            end
            return backupnamecall(...)
        end
    )

    ss:Button(
        "Hide Name",
        function()
            for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                if v.Name == "Pants" or v.ClassName == "Accessory" or v.Name == "Shirt" or v.Name == "Title" then
                    v:Destroy()
                end
            end
        end
    )

    ss:Button(
        "Hollow Esp",
        function()
            for i, v in pairs(game:GetService("Workspace").Living:GetDescendants()) do
                if v.Name == "Hollow" then
                    local BillboardGui = Instance.new("BillboardGui")
                    local TextLabel = Instance.new("TextLabel")

                    BillboardGui.Parent = v
                    BillboardGui.AlwaysOnTop = true
                    BillboardGui.LightInfluence = 1
                    BillboardGui.Size = UDim2.new(0, 30, 0, 30)
                    BillboardGui.StudsOffset = Vector3.new(0, 2, 0)

                    TextLabel.Parent = BillboardGui
                    TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
                    TextLabel.BackgroundTransparency = 1
                    TextLabel.Size = UDim2.new(1, 0, 1, 0)
                    TextLabel.Text = "Hollow"
                    TextLabel.TextColor3 = Color3.new(1, 1, 0)
                    TextLabel.TextScaled = true
                end
            end
        end
    )

    ss:Button(
        "Lost Soul Esp",
        function()
            for i, v in pairs(game:GetService("Workspace").Living:GetDescendants()) do
                if v.Name == "Lost Soul" then
                    local BillboardGui = Instance.new("BillboardGui")
                    local TextLabel = Instance.new("TextLabel")

                    BillboardGui.Parent = v
                    BillboardGui.AlwaysOnTop = true
                    BillboardGui.LightInfluence = 1
                    BillboardGui.Size = UDim2.new(0, 30, 0, 30)
                    BillboardGui.StudsOffset = Vector3.new(0, 2, 0)

                    TextLabel.Parent = BillboardGui
                    TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
                    TextLabel.BackgroundTransparency = 1
                    TextLabel.Size = UDim2.new(1, 0, 1, 0)
                    TextLabel.Text = "Lost Soul"
                    TextLabel.TextColor3 = Color3.new(1, 1, 0)
                    TextLabel.TextScaled = true
                end
            end
        end
    )

    ss:Button(
        "Dummy Esp",
        function()
            for i, v in pairs(game:GetService("Workspace").Living:GetDescendants()) do
                if v.Name == "Lost Soul" then
                    local BillboardGui = Instance.new("BillboardGui")
                    local TextLabel = Instance.new("TextLabel")

                    BillboardGui.Parent = v
                    BillboardGui.AlwaysOnTop = true
                    BillboardGui.LightInfluence = 1
                    BillboardGui.Size = UDim2.new(0, 30, 0, 30)
                    BillboardGui.StudsOffset = Vector3.new(0, 2, 0)

                    TextLabel.Parent = BillboardGui
                    TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
                    TextLabel.BackgroundTransparency = 1
                    TextLabel.Size = UDim2.new(1, 0, 1, 0)
                    TextLabel.Text = "Dummy"
                    TextLabel.TextColor3 = Color3.new(1, 1, 0)
                    TextLabel.TextScaled = true
                end
            end
        end
    )
    sss:Dropdown(
        "Npcs",
        character_table,
        function(t)
            getgenv().mob = t
        end
    )

    sss:Toggle(
        "Autofarm Start Mobs",false,
       
        function(bool)
            getgenv().autofarm = bool
            while wait() do
                for i, v in pairs(game:GetService("Workspace").Living:GetChildren()) do
                    if v.Name == getgenv().mob and getgenv().autofarm == true then
                        repeat
                            wait()
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  CFrame.new(v.HumanoidRootPart.Position + Vector3.new(0,5,0),v.HumanoidRootPart.Position)
                        until v.Humanoid.Health < 0.1
                    end
                end
            end
        end
    )

    local quest_table = {}
    for i, v in pairs(game:GetService("Workspace").NPCS:GetChildren()) do
        if v:IsA("Model") then
            table.insert(quest_table, v.Name)
        end
    end

    getgenv().npc = nil
    getgenv().autofarm2 = false

    sss:Dropdown(
        "Quests",
        quest_table,
        function(t)
            getgenv().npc = t
        end
    )

    sss:Toggle(
        "AutoQuest",false,
     
        function(bool)
            getgenv().autofarm2 = bool

            for i, v in pairs(game.Workspace.NPCS:GetChildren()) do
                if v.Name == getgenv().npc and getgenv().autofarm2 == true then
                    while wait() do
                        if game.Players.LocalPlayer.PlayerGui.HUD.Quest.Visible == false then
                            repeat
                                wait()
                                fireclickdetector(v.Hitbox.ClickDetector)
                            until game.Players.LocalPlayer.PlayerGui.HUD.Quest.Visible == true
                        end
                    end
                end
            end
        end
    )

  

    ssss:Button(
        "No Clip",
        function()
            local noclip = true
            char = game.Players.LocalPlayer.Character
            while true do
                if noclip == true then
                    for _, v in pairs(char:children()) do
                        pcall(
                            function()
                                if v.className == "Part" then
                                    v.CanCollide = false
                                elseif v.ClassName == "Model" then
                                    v.Head.CanCollide = false
                                end
                            end
                        )
                    end
                end
                game:service("RunService").Stepped:wait()
            end
            local noclip = false
            char = game.Players.LocalPlayer.Character
            while wait() do
                if noclip == true then
                    for _, v in pairs(char:children()) do
                        pcall(
                            function()
                                if v.className == "Part" then
                                    v.CanCollide = false
                                elseif v.ClassName == "Model" then
                                    v.Head.CanCollide = false
                                end
                            end
                        )
                    end
                end
                game:service("RunService").Stepped:wait()
            end
        end
    )
    
    
          ssss:Button(
        "InstaKill",function()

local connections = {}
function hot(mob)
    if not connections[mob] and not game.Players:FindFirstChild(mob.Parent.Name) then
        connections[mob] = mob:GetPropertyChangedSignal("Health"):Connect(function()
            if (mob.Health / mob.MaxHealth *100) < 90 then
            for i=1,20 do
                mob.Health = 0
            end
            end
    end)
    end
end
for i,v in pairs(workspace:GetDescendants()) do
    if v:IsA("Humanoid") and v.Parent.Name ~= game.Players.LocalPlayer.Name then
        hot(v)
    end
end
workspace.DescendantAdded:Connect(function(v)
    if v:IsA("Humanoid") then
        hot(v)
    end
end)
end)

    ssss:Toggle(
        "Loop Hit",false,
        
        function(hit)
            getgenv().loop = hit
            pcall(
                function()
                    while wait() do
                        if getgenv().loop == true then
                            game:GetService("Players").LocalPlayer.Backpack.notcombo.R:FireServer({"LightAttack"})
                        end
                    end
                end
            )
        end
    )

    ssss:Toggle(
        "Enable Flash Step",false,
     
        function(flash)
            getgenv().Flash = flash
            while wait() do
                if getgenv().Flash == true then
                    local args = {
                        [1] = true
                    }

                    game:GetService("ReplicatedStorage").Events.FlashStep:FireServer(unpack(args))
                end
            end
        end
    )
    


end 

 
