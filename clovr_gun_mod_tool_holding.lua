
--[[
  _______________________________________________________________
//                                                               \\
||       CLOVR - Modified by: ONEReverseCard and ShownApe         ||
||        Original VR script made by Abacaxl on YouTube           ||
|| NOTE: Everything that I put into this script wasn't made by me ||
||            I will give credit where credit is due              ||
||                    Here's my discord server                    ||
||                -------------------------------                 ||
||               | https://discord.gg/Hbq3TgAJbB |                ||
||                -------------------------------                 ||
||                         Have Fun :)                            ||
\\________________________________________________________________//

                      ____________         __             ____________             ___  ___     ____________  ___ 
                     / __________/        / /            / __________ \           /  / /  /    /  _______  /   | /\/\
                    / /                  / /            / /          \ \         /  / /  /    /  /      / /    ------
                   / /                  / /            / /            \ \       /  / /  /    /  /______/ /
                  / /                  / /            / /              \ \     /  / /  /    /      _____/
                 / /                  / /             \ \              / /    /  / /  /    /       \
                / /                  / /               \ \            / /    /  / /  /    /    /\   \
               / /____________      / /___________      \ \__________/ /    /   \/  /    /    /  \   \
               \_____________/     /_____________/       \____________/     \______/    /____/    \___\
                ----------------------------------------------------------------------------------------
        __________   __      __  __            __        __          __          ____________        _____________
       / ________/  / /     / / /  \          / /       /  \        /  \        / __________ \      / _________  /
      / /          / /     / / / /\ \        / /       / /\ \      / /\ \      / /          \ \    / /         / /
     / /          / /     / / / /  \ \      / /       / /  \ \    / /  \ \    / /            \ \  / /          / /
    / /  ______  / /     / / / /    \ \    / /       / /    \ \  / /    \ \  / /             / / / /           / /
   / /  /___  / / /     / / / /      \ \  / /       / /      \ \/ /      \ \ \ \            / / / /           / /
  / /______/ / / /_____/ / / /        \ \/ /       / /        \__/        \ \ \ \__________/ / / /__________/ /
 /__________/ /_________/ /_/          \__/       /_/                      \_\ \____________/ /_____________/
 -----------------------------------------------------------------------------------------------------------

]]

--[[------Hats Supported------]]--
-- --[--Guns--]-- (Primary Weapons)
--   (Works with all cyberpunk snipers)
--   | Cyberpunk Sniper - https://www.roblox.com/catalog/5063578607/Cyberpunk-Sniper
--   | Toxic Cyberpunk Sniper - https://www.roblox.com/catalog/5131883666/Toxic-Cyberpunk-Sniper
--   | Blue Cyberpunk Sniper - https://www.roblox.com/catalog/5131898377/Blue-Cyberpunk-Sniper
--   | Red Cyberpunk Sniper - https://www.roblox.com/catalog/5230863216/Red-Cyberpunk-Sniper
--   | Pink Cyberpunk Sniper - https://www.roblox.com/catalog/5099663350/Pink-Cyberpunk-Sniper
--   | Tactical Cyberpunk Sniper - https://www.roblox.com/catalog/5164293775/Tactical-Cyberpunk-Sniper
--   | Noob Cyberpunk Sniper - https://www.roblox.com/catalog/5164703810/Noob-Cyberpunk-Sniper
--   | Pink Cow Cyberpunk Sniper - https://www.roblox.com/catalog/5765105171/Pink-Cow-Cyberpunk-Sniper
--   | Purple Cyberpunk Sniper - https://www.roblox.com/catalog/5505951511/Purple-Cyberpunk-Sniper
--   | Rainbow Cyberpunk Sniper - https://www.roblox.com/catalog/5318857837/Rainbow-Cyberpunk-Sniper
--   | Wavy Cyberpunk Sniper - https://www.roblox.com/catalog/5410381017/Wavy-Cyberpunk-Sniper
--   | Festive Cyberpunk Sniper - https://www.roblox.com/catalog/6005601627/Festive-Cyberpunk-Sniper
--   | Spooky Cyberpunk Sniper - https://www.roblox.com/catalog/5699860995/Spooky-Cyberpunk-Sniper
--
--   Type-49 The Abomination - https://www.roblox.com/catalog/4962455546/Type-49-The-Abomination
--   Blox Rifle 5000 - https://www.roblox.com/catalog/5168118559/Blox-Rifle-5000
--   --[--Pistols--]--
--     LEO Mk.45 [Right Hip] - https://www.roblox.com/catalog/6995534747/LEO-Mk-45-Right-Hip
--     Halloween Gun - https://www.roblox.com/catalog/7542631784/Halloween-Gun
--     White Mk.45 [Left Hip] - https://www.roblox.com/catalog/7604371176/White-Mk-45-Left-Hip
--
-- --[--Swords--]-- (Secondary Weapons)
--   Galaxy Sword - https://www.roblox.com/catalog/5355685721/Galaxy-Sword
--   Russo’s Sword of Truth - https://www.roblox.com/catalog/5909776064/Russo-s-Sword-of-Truth
--  --[--Greatswords--]--
--    Demonic Greatsword - https://www.roblox.com/catalog/4315489767/Demonic-Greatsword
--    Corrupt Demonic Greatsword - https://www.roblox.com/catalog/4506945409/Corrupt-Demonic-Greatsword
--    Frozen Demonic Greatsword - https://www.roblox.com/catalog/4458601937/Frozen-Demonic-Greatsword
--    Golden Demonic Greatsword - https://www.roblox.com/catalog/4794315940/Golden-Demonic-Greatsword
--  --[--Knifes--]--
--    UMAD? - https://www.roblox.com/catalog/743692483/UMAD
--    Red Swag Knife - https://www.roblox.com/catalog/7170689370/Red-Swag-Knife
--    White Swag Knife - https://www.roblox.com/catalog/7170680556/White-Swag-Knife
--[[--------------------------]]--

--[[---------KeyBinds---------]]--
-- --[--Non VR--]--
--  F to equip and unequip the gun
--  G to equip and unequip the sword
--  E to shoot the gun while holding it
-- --[--VR--]--
--  Grip Button to equip and unequip the sword/gun
--  Trigger button to shoot the gun while holding it
--[[--------------------------]]--


local character = game.Players.LocalPlayer.Character
local tools = {}
for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if v:IsA("Tool") 
        then v.Parent = character
        table.insert(tools,v)
    end
end
wait()
for i, v in pairs(tools) do
    v.Parent = game.Players.LocalPlayer.Backpack
end

local player1 = game.Players.LocalPlayer
local character1 = player1.Character
local StarterGUI = game:GetService("StarterGui")
settings().Physics.AllowSleep = false

--Guns
local snipers = {"Sniper", "Meshes/Sniper_rbxAccessory", "Meshes/SniperAccessory", "Meshes/cowsniperAccessory", "Meshes/RainbowSniperAccessory", "WavySniper", "Meshes/GiftsniperAccessory", "HalloweenSniperAccessory", "Blox Rifle 5000"}
local automaticGuns = {"Type-49 Abomindation Back Accessory"}
local pistols = {"Meshes/1911RightAccessory", "Meshes/恶魔枪Accessory"}

--Melee Weapons
local swords = {"Dark Matter Sword", "Russo's Sword", "MeshPartAccessory"}
local knives = {"UMAD", "Red SS", "White SS"}


--Checks to see if you have one of the swords--
local meleeWeaponFound = false

for i,v in pairs(character1:GetChildren()) do
    if v:IsA("Accessory") then
        if table.find(swords, v.Name) or table.find(knives, v.Name) then
            meleeWeaponFound = true
        end
    end
end

if _G.secondaryWeapon == true and meleeWeaponFound == false then
    local errorSound = Instance.new("Sound")
    errorSound.SoundId = "rbxassetid://3041205264"
    errorSound.PlaybackSpeed = 1
    errorSound.Looped = false
    errorSound.RollOffMaxDistance = 1000
    errorSound.RollOffMinDistance = 0
    errorSound.Volume = 1
    errorSound.Parent = game.Workspace
    errorSound.Name = "Error"
    errorSound:Play()
    
    StarterGUI:SetCore("SendNotification",
        {
            Title = "Sword Needed",
            Text = "You need one of the supported swords to use this script."
        }
    )
    wait(0.5)
    StarterGUI:SetCore("SendNotification",
        {
            Title = "Other Option",
            Text = [[Or, make "secondaryWeapon" false in the settings.]]
        }
    )
    
    wait(0.9)
    errorSound:Destroy()
    reanimFolder:Destroy()
    error("You don't have a sword")
end
-----------------------------------------------

--Checks to see if you have one of the guns--
local rangedWeaponFound = false

for i,v in pairs(character1:GetChildren()) do
    if v:IsA("Accessory") then
        if table.find(snipers, v.Name) or table.find(automaticGuns, v.Name) or table.find(pistols, v.Name) then
            rangedWeaponFound = true
        end
    end
end

if rangedWeaponFound == false then
    local errorSound = Instance.new("Sound")
    errorSound.SoundId = "rbxassetid://3041205264"
    errorSound.PlaybackSpeed = 1
    errorSound.Looped = false
    errorSound.RollOffMaxDistance = 1000
    errorSound.RollOffMinDistance = 0
    errorSound.Volume = 1
    errorSound.Parent = game.Workspace
    errorSound.Name = "Error"
    errorSound:Play()
    
    StarterGUI:SetCore("SendNotification",
        {
            Title = "Gun Needed",
            Text = "You need one of the supported guns to use this script."
        }
    )
    
    wait(1.4)
    errorSound:Destroy()
    error("You don't have a gun")
end
------------------------------------------------

if _G.primaryWeapon == false then
    _G.leftHand = not _G.leftHand
end

--Fake Character--
--Create Attachment Function
local function CreateAttachment(parent, position, orientation, axis, secondaryAxis, name)
    local newAttchment = Instance.new("Attachment", parent)
    newAttchment.Position = position
    newAttchment.Orientation = orientation
    newAttchment.Axis = axis
    newAttchment.SecondaryAxis = secondaryAxis
    newAttchment.Name = name
end

--Variables
local player1 = game:GetService("Players").LocalPlayer
local character1 = player1.Character
local hrp = character1.HumanoidRootPart
--local torso = character.Torso

local camera = workspace.CurrentCamera

local reanimFolder = Instance.new("Folder", character1)
reanimFolder.Name = "FakeCharacter"

local model = Instance.new("Model", reanimFolder)
model.Name = "Reanimation"

local userInputService = game:GetService("UserInputService")
local movingW, movingA, movingS, movingD, jumping = false

--Body Parts--
--Head
local cHead = Instance.new("Part", model)
cHead.Size = Vector3.new(2, 1, 1)
cHead.Name = "Head"

--Torso
local cTorso = Instance.new("Part", model)
cTorso.Size = Vector3.new(2, 2, 1)
cTorso.Name = "Torso"

--Left Arm
local cLArm = Instance.new("Part", model)
cLArm.Size = Vector3.new(1, 2, 1)
cLArm.Name = "Left Arm"

--Right Arm
local cRArm = Instance.new("Part", model)
cRArm.Size = Vector3.new(1, 2, 1)
cRArm.Name = "Right Arm"

--Left Leg
local cLLeg = Instance.new("Part", model)
cLLeg.Size = Vector3.new(1, 2, 1)
cLLeg.Name = "Left Leg"

--Right Leg
local cRLeg = Instance.new("Part", model)
cRLeg.Size = Vector3.new(1, 2, 1)
cRLeg.Name = "Right Leg"

--HumanoidRootPart
local cHRP = Instance.new("Part", model)
cHRP.Size = Vector3.new(2, 2, 1)
cHRP.Name = "HumanoidRootPart"
cHRP.Transparency = 1
cHRP.CanCollide = false

--Transparency
for i,v in pairs(model:GetChildren()) do
    if v:IsA("Part") and v.Name ~= "HumanoidRootPart" then
        v.Transparency = 1
    end
end

--Joints--
--Right Shoulder
local rShoulder = Instance.new("Motor6D", cTorso)
rShoulder.Part0 = cTorso
rShoulder.Part1 = cRArm
rShoulder.Name = "Right Shoulder"
rShoulder.C0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
rShoulder.C1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)

--Left Shoulder
local lShoulder = Instance.new("Motor6D", cTorso)
lShoulder.Part0 = cTorso
lShoulder.Part1 = cLArm
lShoulder.Name = "Left Shoulder"
lShoulder.C0 = CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
lShoulder.C1 = CFrame.new(0.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)

--Right Hip
local rHip = Instance.new("Motor6D", cTorso)
rHip.Part0 = cTorso
rHip.Part1 = cRLeg
rHip.Name = "Right Hip"
rHip.C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
rHip.C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)

--Left Hip
local lHip = Instance.new("Motor6D", cTorso)
lHip.Part0 = cTorso
lHip.Part1 = cLLeg
lHip.Name = "Left Hip"
lHip.C0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
lHip.C1 = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)

--Neck
local neck = Instance.new("Motor6D", cTorso)
neck.Part0 = cTorso
neck.Part1 = cHead
neck.Name = "Neck"
neck.C0 = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
neck.C1 = CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)

--RootJoint
local rootJoint = Instance.new("Motor6D", cHRP)
rootJoint.Part0 = cHRP
rootJoint.Part1 = cTorso
rootJoint.Name = "RootJoint"
rootJoint.C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
rootJoint.C1 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)

--Humanoid--
local cHumanoid = Instance.new("Humanoid", model)
cHumanoid.DisplayDistanceType = "None"

--Head Mesh--
local headMesh = Instance.new("SpecialMesh", cHead)
headMesh.Scale = Vector3.new(1.25, 1.25, 1.25)

--Attachments
--for i,v in pairs(character1:GetDescendants()) do
    --if v:IsA("Attachment") then
        --print([[CreateAttachment(]]..v.Parent.Name..[[, Vector3.new(]]..v.Position.X..","..v.Position.Y..","..v.Position.Z..[[), Vector3.new(]]..v.Orientation.X..","..v.Orientation.Y..","..v.Orientation.Z..[[), Vector3.new(]]..v.Axis.X..","..v.Axis.Y..","..v.Axis.Z..[[), Vector3.new(]]..v.SecondaryAxis.X..","..v.SecondaryAxis.Y..","..v.SecondaryAxis.Z..[[), "]]..v.Name..[[")]])
        --game.Players:Chat([[CreateAttachment(]]..v.Parent.Name..[[, Vector3.new(]]..v.Position.X..","..v.Position.Y..","..v.Position.Z..[[), Vector3.new(]]..v.Orientation.X..","..v.Orientation.Y..","..v.Orientation.Z..[[), Vector3.new(]]..v.Axis.X..","..v.Axis.Y..","..v.Axis.Z..[[), Vector3.new(]]..v.SecondaryAxis.X..","..v.SecondaryAxis.Y..","..v.SecondaryAxis.Z..[[), "]]..v.Name..[[")]])
    --end
--end

--CreateAttachment(cHead, CFrame.new(0, 0.600000024, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(1, 0, 0), Vector3.new(0, 1, 0), "HairAttachment")
--CreateAttachment(cHead, CFrame.new(0, 0.600000024, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(1, 0, 0), Vector3.new(0, 1, 0), "")

local reanimation = model
reanimation.Humanoid.BreakJointsOnDeath = false

--Creating Attachments
CreateAttachment(cHead, Vector3.new(0,0.60000002384186,0), Vector3.new(-0,0,0), Vector3.new(1,0,0), Vector3.new(0,1,0), "HairAttachment")
CreateAttachment(cHead, Vector3.new(0,0.60000002384186,0), Vector3.new(-0,0,0), Vector3.new(1,0,0), Vector3.new(0,1,0), "HatAttachment")
CreateAttachment(cHead, Vector3.new(0,0,-0.60000002384186), Vector3.new(-0,0,0), Vector3.new(1,0,0), Vector3.new(0,1,0), "FaceFrontAttachment")
CreateAttachment(cHead, Vector3.new(0,0,0), Vector3.new(-0,0,0), Vector3.new(1,0,0), Vector3.new(0,1,0), "FaceCenterAttachment")
CreateAttachment(cTorso, Vector3.new(0,1,0), Vector3.new(-0,0,0), Vector3.new(1,0,0), Vector3.new(0,1,0), "NeckAttachment")
CreateAttachment(cTorso, Vector3.new(0,0,-0.5), Vector3.new(-0,0,0), Vector3.new(1,0,0), Vector3.new(0,1,0), "BodyFrontAttachment")
CreateAttachment(cTorso, Vector3.new(0,0,0.5), Vector3.new(-0,0,0), Vector3.new(1,0,0), Vector3.new(0,1,0), "BodyBackAttachment")
CreateAttachment(cTorso, Vector3.new(-1,1,0), Vector3.new(-0,0,0), Vector3.new(1,0,0), Vector3.new(0,1,0), "LeftCollarAttachment")
CreateAttachment(cTorso, Vector3.new(1,1,0), Vector3.new(-0,0,0), Vector3.new(1,0,0), Vector3.new(0,1,0), "RightCollarAttachment")
CreateAttachment(cTorso, Vector3.new(0,-1,-0.5), Vector3.new(-0,0,0), Vector3.new(1,0,0), Vector3.new(0,1,0), "WaistFrontAttachment")
CreateAttachment(cTorso, Vector3.new(0,-1,0), Vector3.new(-0,0,0), Vector3.new(1,0,0), Vector3.new(0,1,0), "WaistCenterAttachment")
CreateAttachment(cTorso, Vector3.new(0,-1,0.5), Vector3.new(-0,0,0), Vector3.new(1,0,0), Vector3.new(0,1,0), "WaistBackAttachment")
CreateAttachment(cLArm, Vector3.new(0,1,0), Vector3.new(-0,0,0), Vector3.new(1,0,0), Vector3.new(0,1,0), "LeftShoulderAttachment")
CreateAttachment(cLArm, Vector3.new(0,-1,0), Vector3.new(-0,0,0), Vector3.new(1,0,0), Vector3.new(0,1,0), "LeftGripAttachment")
CreateAttachment(cRArm, Vector3.new(0,1,0), Vector3.new(-0,0,0), Vector3.new(1,0,0), Vector3.new(0,1,0), "RightShoulderAttachment")
CreateAttachment(cRArm, Vector3.new(0,-1,0), Vector3.new(-0,0,0), Vector3.new(1,0,0), Vector3.new(0,1,0), "RightGripAttachment")
CreateAttachment(cLLeg, Vector3.new(0,-1,0), Vector3.new(-0,0,0), Vector3.new(1,0,0), Vector3.new(0,1,0), "LeftFootAttachment")
CreateAttachment(cRLeg, Vector3.new(0,-1,0), Vector3.new(-0,0,0), Vector3.new(1,0,0), Vector3.new(0,1,0), "RightFootAttachment")
CreateAttachment(cHRP, Vector3.new(0,0,0), Vector3.new(-0,0,0), Vector3.new(1,0,0), Vector3.new(0,1,0), "RootAttachment")

--Cloning Hats (For Netless)
for i,v in pairs(character1:GetChildren()) do
    if v:IsA("Accessory") then
        local clone = v:Clone()
        local weld = v.Handle:FindFirstChildWhichIsA("Weld")
        local weldPart1 = weld.Part1
        local newWeld = Instance.new("Weld", clone.Handle)
        local CFrame0 = v.Handle.AccessoryWeld.C0
        local CFrame1 = v.Handle.AccessoryWeld.C1
        
        clone.Handle:FindFirstChild("AccessoryWeld"):Destroy()
        clone.Parent = reanimation
        newWeld.Name = "AccessoryWeld"
        newWeld.C0 = CFrame0
        newWeld.C1 = CFrame1
        newWeld.Part0 = clone.Handle
        newWeld.Part1 = character1:FindFirstChild(weldPart1.Name)
        clone.Handle.Transparency = 1
    end
end

cHRP.CFrame = hrp.CFrame
----------------------------------------

--Deleting all LocalScripts in your character
for i,v in pairs(character1:GetChildren()) do
    if v:IsA("LocalScript") then
        v:Destroy()
    end
end

--Making The Flinger
local flinger = Instance.new("BodyAngularVelocity", character1.HumanoidRootPart)
flinger.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
flinger.P = 1000000000000000000000000000
flinger.AngularVelocity = Vector3.new(0, 0, 0)

local gun = nil
local sword = nil
local rArm1 = reanimation["Right Arm"]
local lArm1 = reanimation["Left Arm"]
local rGrip1 = rArm1.RightGripAttachment
local lGrip1 = lArm1.LeftGripAttachment
--local hrp  = character1.HumanoidRootPart
local mouse = player1:GetMouse()
local touchedFunction = nil

--Holstered Values
local gHolstPos = nil
local gHolstRot = nil
local sHolstPos = nil
local sHolstRot = nil

--Holding Values
local gHoldPos = nil
local gHoldRot = nil
local sHoldPos = nil
local sHoldRot = nil

--Default Camera Stuff
local maxZoom = player1.CameraMaxZoomDistance
local minZoom = player1.CameraMinZoomDistance
local cameraMode = player1.CameraMode

--Services
local userInputService = game:GetService("UserInputService")
local vrService = game:GetService("VRService")
local debris = game:GetService("Debris")

if _G.flinging == true then
    hrp.Transparency = 0.5
else
    hrp.Transparency = 1
end

if _G.primaryWeapon == true then
    --Multiple Snipers
    if reanimation:FindFirstChild("Meshes/Sniper_rbxAccessory") then
        game.Players.LocalPlayer.Character["Meshes/Sniper_rbxAccessory"].Name = "Sniper"
        reanimation["Meshes/Sniper_rbxAccessory"].Name = "Sniper"
    end
    
    --Pink Cow Cyberpunk Sniper
    if reanimation:FindFirstChild("Meshes/cowsniperAccessory") then
        game.Players.LocalPlayer.Character["Meshes/cowsniperAccessory"].Name = "Meshes/SniperAccessory"
        reanimation["Meshes/cowsniperAccessory"].Name = "Meshes/SniperAccessory"
    end
    
    --Wavy Cyberpunk Sniper
    if reanimation:FindFirstChild("WavySniper") then
        game.Players.LocalPlayer.Character.WavySniper.Name = "Meshes/RainbowSniperAccessory"
        reanimation.WavySniper.Name = "Meshes/RainbowSniperAccessory"
    end
end

--Swords
if _G.secondaryWeapon == true then
    if reanimation:FindFirstChild("Dark Matter Sword") then
        sword = reanimation["Dark Matter Sword"].Handle
    end
    
    if reanimation:FindFirstChild("Russo's Sword") then
        sword = reanimation["Russo's Sword"].Handle
    end
    
    if reanimation:FindFirstChild("MeshPartAccessory") then
        sword = reanimation.MeshPartAccessory.Handle
    end
    
    --Knifes
    if reanimation:FindFirstChild("UMAD") then
        sword = reanimation.UMAD.Handle
    end
    
    if reanimation:FindFirstChild("Red SS") then
        sword = reanimation["Red SS"].Handle
    end
    
    if reanimation:FindFirstChild("White SS") then
        sword = reanimation["White SS"].Handle
    end
end

if _G.primaryWeapon == true then
    --Snipers
    if reanimation:FindFirstChild("Sniper") then
        gun = reanimation.Sniper.Handle
    end
    
    if reanimation:FindFirstChild("Meshes/SniperAccessory") then
        gun = reanimation["Meshes/SniperAccessory"].Handle
    end
    
    if reanimation:FindFirstChild("Meshes/RainbowSniperAccessory") then
        gun = reanimation["Meshes/RainbowSniperAccessory"].Handle
    end
    
    if reanimation:FindFirstChild("Meshes/GiftsniperAccessory") then
        gun = reanimation["Meshes/GiftsniperAccessory"].Handle
    end
    
    if reanimation:FindFirstChild("HalloweenSniperAccessory") then
        gun = reanimation.HalloweenSniperAccessory.Handle
    end
    
    if reanimation:FindFirstChild("Blox Rifle 5000") then
        gun = reanimation["Blox Rifle 5000"].Handle
    end
    
    --Other Guns
    --Automatic
    if reanimation:FindFirstChild("Type-49 Abomindation Back Accessory") then
        gun = reanimation["Type-49 Abomindation Back Accessory"].Handle
    end
    
    --Pistols
    if reanimation:FindFirstChild("Meshes/1911RightAccessory") then
        gun = reanimation["Meshes/1911RightAccessory"].Handle
    end
    
    if reanimation:FindFirstChild("Meshes/恶魔枪Accessory") then
        gun = reanimation["Meshes/恶魔枪Accessory"].Handle
    end
end

--The Part That Will Determine Where The Bullet Is Shot From--
local vrAimer = nil

local function VRAimerPlacement(SIZE, POSITION, ORIENTATION)
    --Aimer
    local part = Instance.new("Part")
    part.Parent = game.Workspace
    part.CanCollide = false
    part.Anchored = false
    part.Massless = true
    part.Size = SIZE
    part.Transparency = 1
    part.Orientation = gun.Orientation
    part.Name = "VRAimer"
    
    local VRAimer = part
    
    --Aim Weld
    local weld = Instance.new("Weld")
    weld.Parent = VRAimer
    weld.Part0 = VRAimer
    weld.Part1 = gun
    
    local savePos = gun.Position
    local saveRot = gun.Orientation
    
    --Gun Pos and Rot
    gun.Position = Vector3.new(0, 0, 0)
    gun.Orientation = Vector3.new (0, 0, 0)
    
    --Aimer Pos and Rot
    VRAimer.Position = POSITION
    VRAimer.Orientation = ORIENTATION
    
    --Gun Pos and Rot
    gun.Position = savePos
    gun.Orientation = saveRot
    
    VRAimer.CanTouch = false
    
    vrAimer = VRAimer
end

if _G.primaryWeapon == true then
    if reanimation:FindFirstChild("Sniper") then
        VRAimerPlacement(Vector3.new(0.25, 0.25, 0.25), Vector3.new(3.205, 0.15, 0), Vector3.new(0, -90, 0))
    end
    
    if reanimation:FindFirstChild("Meshes/SniperAccessory") then
        VRAimerPlacement(Vector3.new(0.25, 0.25, 0.25), Vector3.new(-1.9025, 2.6, 0), Vector3.new(51, 90, 0))
    end
    
    if reanimation:FindFirstChild("Meshes/RainbowSniperAccessory") then
        VRAimerPlacement(Vector3.new(0.25, 0.25, 0.25), Vector3.new(-2.125, 2.46, 0.0675), Vector3.new(51, 90, 0))
    end
    
    if reanimation:FindFirstChild("Meshes/GiftsniperAccessory") then
        VRAimerPlacement(Vector3.new(0.25, 0.25, 0.25), Vector3.new(2.063, 2.185, 0.918), Vector3.new(45.15, -107, -89))
    end
    
    if reanimation:FindFirstChild("HalloweenSniperAccessory") then
        VRAimerPlacement(Vector3.new(0.25, 0.25, 0.25), Vector3.new(2.188, 2.3475, 0.005), Vector3.new(45, -90, 0))
    end
    
    if reanimation:FindFirstChild("Type-49 Abomindation Back Accessory") then
        VRAimerPlacement(Vector3.new(0.25, 0.25, 0.25), Vector3.new(-1.6, -1.75, -0.288), Vector3.new(-50, 90, 90))
        
        --Laser
        local laser = Instance.new("Part")
        laser.Parent = game.Workspace
        laser.CanCollide = false
        laser.Anchored = false
        laser.Massless = true
        laser.Size = Vector3.new(10, 0.1, 0.1)
        laser.Transparency = 0
        laser.Material = "Neon"
        laser.BrickColor = BrickColor.new("Really red")
        laser.Shape = "Cylinder"
        laser.Name = "VRLaser"
        
        --Laser Weld
        local lWeld = Instance.new("Weld")
        lWeld.Parent = laser
        lWeld.Part0 = laser
        lWeld.Part1 = gun
        
        local savePos = gun.Position
        local saveRot = gun.Orientation
        
        --Gun Pos and Rot
        gun.Position = Vector3.new(0, 0, 0)
        gun.Orientation = Vector3.new (0, 0, 0)
        
        --Laser Pos and Rot
        laser.Position = gun.Position + Vector3.new(-4.585, -5.255, -0.286)
        laser.Orientation = gun.Orientation + Vector3.new(0, 0, 48)
        
        --Gun Pos and Rot
        gun.Position = savePos
        gun.Orientation = saveRot
    end
    
    if reanimation:FindFirstChild("Blox Rifle 5000") then
        VRAimerPlacement(Vector3.new(0.25, 0.25, 0.25), Vector3.new(0, 2.163, -2.017), Vector3.new(45, 0, 0))
    end
    
    if reanimation:FindFirstChild("Meshes/1911RightAccessory") then
        if gun:FindFirstChild("SpecialMesh").MeshId == "rbxassetid://6995200499" then
            VRAimerPlacement(Vector3.new(0.25, 0.25, 0.25), Vector3.new(0, -0.75, 0.3), Vector3.new(-90, 0, 0))
        elseif gun:FindFirstChildWhichIsA("SpecialMesh").MeshId == "rbxassetid://6995561576" then
            VRAimerPlacement(Vector3.new(0.25, 0.25, 0.25), Vector3.new(-0.3, -0.75, 0), Vector3.new(-90, 0, 0))
        end
    end
    
    if reanimation:FindFirstChild("Meshes/恶魔枪Accessory") then
        VRAimerPlacement(Vector3.new(0.25, 0.25, 0.25), Vector3.new(0, -0.125, 0.8), Vector3.new(-21, 180, 180))
    end
end
----------------------------------------------------------------------------

local function hrpAlignment(torso)
    --Checking For Other Alignments
    if hrp:FindFirstChild("AlignPosition") then
        hrp:FindFirstChild("AlignPosition"):Destroy()
    end
    if hrp:FindFirstChild("PosAtt0") then
        hrp:FindFirstChild("PosAtt0"):Destroy()
    end
    
    --Creating AlignPosition
    local alignPosition = Instance.new("AlignPosition")
    
    --Creating PosAtt0
    local posAtt0 = Instance.new("Attachment", hrp)
    posAtt0.Name = "PosAtt0"
    
    --Creating PosAtt1
    local posAtt1 = Instance.new("Attachment", torso)
    posAtt1.Name = "PosAtt1"
    
    --AlignPosition Properties--
    alignPosition.Attachment0 = posAtt0
    alignPosition.Attachment1 = posAtt1
    alignPosition.RigidityEnabled = false
    alignPosition.ReactionForceEnabled = false
    alignPosition.MaxForce = 99999999999999999999999999
    alignPosition.Responsiveness = 200
    alignPosition.Parent = hrp
    
    --Debris
    debris:AddItem(alignPosition, 1)
    debris:AddItem(posAtt0, 1)
    debris:AddItem(posAtt1, 1)
end


--Making The Bullet
function Bullet(lifetime)
    --Bullet
    local bullet = Instance.new("Part", workspace)
	bullet.Color = Color3.fromRGB(_G.bulletColor[1], _G.bulletColor[2], _G.bulletColor[3])
	if not vrService.VREnabled then
        bullet.CFrame = CFrame.new(vrAimer.CFrame.Position + ((bullet.Size.Z/2) * vrAimer.CFrame.LookVector), mouse.Hit.Position)
    else
        bullet.CFrame = vrAimer.CFrame
    end
	bullet.Material = Enum.Material.Neon
	bullet.Size = Vector3.new(0.25, 0.25, 7)
	bullet.CanCollide = false
	debris:AddItem(bullet, lifetime)
	
	--BodyVelocity
    local bulletBodyVelocity = Instance.new("BodyVelocity", bullet)
    bulletBodyVelocity.MaxForce = Vector3.new(10000, 10000, 10000)
    if not vrService.VREnabled then
        bulletBodyVelocity.Velocity = mouse.Hit.LookVector * 500
    else
        bulletBodyVelocity.Velocity = vrAimer.CFrame.LookVector * 500
    end
	
	--Touched
	bullet.Touched:Connect(function(part)
        if part.Name ~= "VRAimer" and part.Name ~= "VRLaser" then
            if part.Parent.ClassName == "Model" then
                if part.Parent.Name ~= "VirtualRig" and part.Parent.Name ~= "VirtualBody" and part.Parent.Name ~= player1.Name and part.Parent.Name ~= reanimation.Name then
                    if part.Parent:FindFirstChild("Humanoid") then
                        if part.Parent:FindFirstChild("Humanoid").RigType == Enum.HumanoidRigType.R6 then
                            hrpAlignment(part.Parent:FindFirstChild("Torso"))
                        else
                            hrpAlignment(part.Parent:FindFirstChild("UpperTorso"))
                        end
                    end
                    --wait(0.1)
                    bullet:Destroy()
                end
            elseif part.ClassName == "Accessory" then
                if part.Parent.Parent.Name ~= "VirtualRig" and part.Parent.Parent.Name ~= "VirtualBody" and part.Parent.Parent.Name ~= player1.Name and part.Parent.Parent.Name ~= reanimation.Name then
                    if part.Parent.Parent:FindFirstChild("Humanoid") then
                        if part.Parent.Parent:FindFirstChild("Humanoid").RigType == Enum.HumanoidRigType.R6 then
                            hrpAlignment(part.Parent.Parent:FindFirstChild("Torso"))
                        else
                            hrpAlignment(part.Parent.Parent:FindFirstChild("UpperTorso"))
                        end
                    end
                    --wait(0.1)
                    bullet:Destroy()
                end
            end
            
            if part.Parent == workspace and part.CanCollide == true then
                --wait(0.1)
                bullet:Destroy()
            end
        end
    end)
end

--Setting The Gun's Position And Orientation Function
local function gunPosRot(changeName, holsteredRot, holsteredPos, holdingRot, holdingPos)
    if changeName == true then
        gun:FindFirstChildWhichIsA("Attachment").Name = "BodyBackAttachment"
    end
    
    gun.BodyBackAttachment.Orientation = holsteredRot --Orientation
    gun.BodyBackAttachment.Position = holsteredPos --Position
    
    --Holster
    gHolstRot = holsteredRot --Orientation
    gHolstPos = holsteredPos --Position
    
    --Holding
    gHoldRot = holdingRot --Orientation
    gHoldPos = holdingPos --Position
end

--Setting The Melee Weapon's Position And Orientation
local function meleePosRot(changeName, holsteredRot, holsteredPos, holdingRot, holdingPos)
    if changeName == true then
        sword:FindFirstChildWhichIsA("Attachment").Name = "BodyBackAttachment"
    end
    
    sword.BodyBackAttachment.Orientation = holsteredRot --Orientation
    sword.BodyBackAttachment.Position = holsteredPos --Position
    
    --Holster
    sHolstRot = holsteredRot --Orientation
    sHolstPos = holsteredPos --Position
    
    --Holding
    sHoldRot = holdingRot --Orientation
    sHoldPos = holdingPos --Position
end

--Setting Camera To First Person (VR)
if vrService.VREnabled and _G.changeSomeStuff == true then
    player1.CameraMode = Enum.CameraMode.LockFirstPerson
end

if _G.leftHand == true then
    --Gun
    if _G.primaryWeapon == true then
        --Sniper
        if reanimation:FindFirstChild("Sniper") then
            gunPosRot(false, Vector3.new(0, 0, 43.1329), Vector3.new(0.07, 0.08, -0.19), Vector3.new(90, -90, 0), Vector3.new(-1.8, -1.6, 0))
        end
        
        --Tactical Cyberpunk Sniper and Rainbow Cyberpunk Sniper
        if reanimation:FindFirstChild("Meshes/SniperAccessory") or reanimation:FindFirstChild("Meshes/RainbowSniperAccessory") then
            if reanimation:FindFirstChild("Meshes/SniperAccessory") then
                gunPosRot(false, Vector3.new(-0, 180, 94.25939), Vector3.new(0.18, -0.70, 0.27), Vector3.new(40, -90, 180), Vector3.new(0.6, -1.7, 0))
            elseif reanimation:FindFirstChild("Meshes/RainbowSniperAccessory") then
                gunPosRot(false, Vector3.new(-0, 180, 94.25939), Vector3.new(0.18, -0.70, 0.27), Vector3.new(40, -90, 180), Vector3.new(0.8, -1.6, 0))
            end
        end
        
        --Festive Cyberpunk Sniper
        if reanimation:FindFirstChild("Meshes/GiftsniperAccessory") then
            gunPosRot(false, Vector3.new(46.14, 72.67, 134.3), Vector3.new(-0.6, -0.3, -0.3), Vector3.new(-1, 164, -135), Vector3.new(-1.05, -1.3, -0.7))
        end
        
        --Spooky Cyberpunk Sniper
        if reanimation:FindFirstChild("HalloweenSniperAccessory") then
            gunPosRot(false, Vector3.new(0, 0, 90), Vector3.new(-0.36, -0.66, -0.21), Vector3.new(45, 86.75, -180), Vector3.new(-0.8, -1.6, 0.05))
        end
        
        --Type-49 The Abomination
        if reanimation:FindFirstChild("Type-49 Abomindation Back Accessory") then
            gunPosRot(false, Vector3.new(0, 180, 0), Vector3.new(-0.08, -0.18, -0.05), Vector3.new(40, 90, 0), Vector3.new(1, 0.2, -0.3))
        end
        
        --Blox Rifle 5000
        if reanimation:FindFirstChild("Blox Rifle 5000") then
            gunPosRot(false, Vector3.new(-0, 90, 90), Vector3.new(-0.24, -0.14, 0.0009), Vector3.new(45, 180, 180), Vector3.new(0, -1.3, 0.5))
        end
        
        --Sidearms
        --LEO Mk.45 [Right Hip]
        if reanimation:FindFirstChild("Meshes/1911RightAccessory") then
            if gun:FindFirstChildWhichIsA("SpecialMesh").MeshId == "rbxassetid://6995200499" then
                gunPosRot(true, Vector3.new(-180, 0, -180), Vector3.new(-1.10212, 1.1, -0.5), Vector3.new(-180, 0, -180), Vector3.new(0, 0.45, -0.25))
            elseif gun:FindFirstChildWhichIsA("SpecialMesh").MeshId == "rbxassetid://6995561576" then
                gunPosRot(true, Vector3.new(-180, -90, -180), Vector3.new(0.5, 1.1, -1.1), Vector3.new(-180, -90, -180), Vector3.new(0.25, 0.45, 0))
            end
        end
        
        --Halloween Gun
        if reanimation:FindFirstChild("Meshes/恶魔枪Accessory") then
            gunPosRot(true, Vector3.new(60, 180, 0), Vector3.new(-1.16053, -0.1, -1.2), Vector3.new(69, -180, 0), Vector3.new(0, -0.175, -0.6))
        end
    end
    
    --Knives
    --UMAD?
    if _G.secondaryWeapon == true and reanimation:FindFirstChild("UMAD") then
        meleePosRot(false, Vector3.new(-20, -180, 0), Vector3.new(1.08, 0.9, -0.5), Vector3.new(40, 0, 0), Vector3.new(0, -0.4, 0.7))
    end
    
    --Sword/Knives
    --VR
    if vrService.VREnabled and _G.knifeMode == true then
        if _G.secondaryWeapon == true then
            --Dark Matter Sword
            if reanimation:FindFirstChild("Dark Matter Sword") then
                meleePosRot(false, Vector3.new(50, -90, 0), Vector3.new(0, 1, -1.2), Vector3.new(50, -90, 0), Vector3.new(1.3, 1.6, 0))
            end
            
            --Russo's Sword
            if reanimation:FindFirstChild("Russo's Sword") then
                meleePosRot(false, Vector3.new(-90, 90, 0), Vector3.new(-0.7, -0.5, 1.1), Vector3.new(-90, -90, 0), Vector3.new(-0.1, -1.9, 0))
            end
            
            --Greatswords
            if reanimation:FindFirstChild("MeshPartAccessory") then
                meleePosRot(false, Vector3.new(45, -90, 0), Vector3.new(0.3, 1.2, -1.2), Vector3.new(45, -90, 0), Vector3.new(1.8, 1.8, 0))
            end
            
            --Red Swag Knife
            if reanimation:FindFirstChild("Red SS") or reanimation:FindFirstChild("White SS") then
                meleePosRot(true, Vector3.new(0, 180, 0), Vector3.new(1.07686, 1, -0.5), Vector3.new(135, 0, -180), Vector3.new(0, 0.455, 0.555))
            end
        end
    else --No VR
        if _G.secondaryWeapon == true then
            --Dark Matter Sword/Greatswords
            if reanimation:FindFirstChild("Dark Matter Sword") or reanimation:FindFirstChild("MeshPartAccessory") then
                if reanimation:FindFirstChild("Dark Matter Sword") then
                    meleePosRot(false, Vector3.new(0, 0, 0), sword.BodyBackAttachment.Position, Vector3.new(-100, -90, 0), Vector3.new(1.2, 1.4, 0))
                elseif reanimation:FindFirstChild("MeshPartAccessory") then
                    meleePosRot(false, Vector3.new(0, 0, 0), sword.BodyBackAttachment.Position, Vector3.new(-100, -90, 0), Vector3.new(1.7, 1.6, 0))
                end
            end
            
            --Russo's Sword
            if reanimation:FindFirstChild("Russo's Sword") then
                meleePosRot(false, Vector3.new(-0, 180, 215.002), Vector3.new(-0.17, 0.23, 0.21), Vector3.new(45, 90, -180), Vector3.new(-0.1, -1.7, 0))
            end
            
            --Red Swag Knife
            if reanimation:FindFirstChild("Red SS") or reanimation:FindFirstChild("White SS") then
                meleePosRot(true, Vector3.new(0, 180, 0), Vector3.new(1.07686, 1, -0.5), Vector3.new(-45, 0, 0), Vector3.new(0, 0.455, 0.555))
            end
        end
    end
else --Right Hand
    --Gun
    if _G.primaryWeapon == true then
        --Sniper
        if reanimation:FindFirstChild("Sniper") then
            gunPosRot(false, Vector3.new(180, 0, 133.1329), Vector3.new(-0.5, -0.3, 0.2), Vector3.new(90, -90, 0), Vector3.new(-1.8, -1.6, 0))
        end
        
        --Tactical Cyberpunk Sniper and Rainbow Cyberpunk Sniper
        if reanimation:FindFirstChild("Meshes/SniperAccessory") or reanimation:FindFirstChild("Meshes/RainbowSniperAccessory") then
            if reanimation:FindFirstChild("Meshes/SniperAccessory") then
                gunPosRot(false, Vector3.new(180, 180, 94.25939), Vector3.new(0.18, -0.70, -0.26), Vector3.new(40, -90, 180), Vector3.new(0.6, -1.7, 0))
            elseif reanimation:FindFirstChild("Meshes/RainbowSniperAccessory") then
                gunPosRot(false, Vector3.new(180, 180, 94.25939), Vector3.new(0.18, -0.70, -0.26), Vector3.new(40, -90, 180), Vector3.new(0.8, -1.6, 0))
            end
        end
        
        --Festive Cyberpunk Sniper
        if reanimation:FindFirstChild("Meshes/GiftsniperAccessory") then
            gunPosRot(false, Vector3.new(-43.86, -107.33, -135.7), Vector3.new(-0.3, -0.9, -0.3), Vector3.new(-1, 164, -135), Vector3.new(-1.05, -1.3, -0.7))
        end
        
        --Spooky Cyberpunk Sniper
        if reanimation:FindFirstChild("HalloweenSniperAccessory") then
            gunPosRot(false, Vector3.new(-0, -180, -90), Vector3.new(-0.5, -0.3, 0.2), Vector3.new(45, 86.75, -180), Vector3.new(-0.8, -1.6, 0.05))
        end
        
        --Type-49 The Abomination
        if reanimation:FindFirstChild("Type-49 Abomindation Back Accessory") then
            gunPosRot(false, Vector3.new(0, 0, 0), Vector3.new(-0.08, -0.18, -0.53), Vector3.new(40, 90, 0), Vector3.new(1, 0.2, -0.3))
        end
        
        --Blox Rifle 5000
        if reanimation:FindFirstChild("Blox Rifle 5000") then
            gunPosRot(false, Vector3.new(-0, -90, -90), Vector3.new(0.2, -0.14, 0.0009), Vector3.new(45, 180, 180), Vector3.new(0, -1.3, 0.5))
        end
        
        --Sidearms
        --LEO Mk.45 [Right Hip]
        if reanimation:FindFirstChild("Meshes/1911RightAccessory") then
            gun.WaistCenterAttachment.Name = "BodyBackAttachment"
            if gun:FindFirstChildWhichIsA("SpecialMesh").MeshId == "rbxassetid://6995200499" then
                gunPosRot(true, Vector3.new(-180, 0, -180), Vector3.new(1.10212, 1.1, -0.5), Vector3.new(-180, 0, -180), Vector3.new(0, 0.45, -0.25))
            elseif gun:FindFirstChildWhichIsA("SpecialMesh").MeshId == "rbxassetid://6995561576" then
                gunPosRot(true, Vector3.new(-180, -90, -180), Vector3.new(0.5, 1.1, 1.1), Vector3.new(-180, -90, -180), Vector3.new(0.25, 0.45, 0))
            end
        end
        
        --Halloween Gun
        if reanimation:FindFirstChild("Meshes/恶魔枪Accessory") then
            gunPosRot(true, Vector3.new(60, 180, 0), Vector3.new(1.16053, -0.1, -1.2), Vector3.new(69, -180, 0), Vector3.new(0, -0.175, -0.6))
        end
    end
    
    --Knife
    --UMAD?
    if _G.secondaryWeapon == true and reanimation:FindFirstChild("UMAD") then
        meleePosRot(false, Vector3.new(-20, -180, 0), Vector3.new(-1.08, 0.9, -0.5), Vector3.new(40, 0, 0), Vector3.new(0, -0.4, 0.7))
    end
    
    --Sword/Knifes
    --VR
    if vrService.VREnabled and _G.knifeMode == true then
        if _G.secondaryWeapon == true then
            --Dark Matter Sword
            if reanimation:FindFirstChild("Dark Matter Sword") then
                meleePosRot(false, Vector3.new(50, -90, 0), Vector3.new(0, 1, 1.2), Vector3.new(50, -90, 0), Vector3.new(1.3, 1.6, 0))
            end
            
            --Russo's Sword
            if reanimation:FindFirstChild("Russo's Sword") then
                meleePosRot(false, Vector3.new(-90, -90, 0), Vector3.new(0.7, -0.5, 1.1), Vector3.new(-90, 90, 0), Vector3.new(0, -1.9, 0))
            end
            
            --Greatswords
            if reanimation:FindFirstChild("MeshPartAccessory") then
                meleePosRot(false, Vector3.new(45, -90, 0), Vector3.new(0.3, 1.2, 1.2), Vector3.new(45, -90, 0), Vector3.new(1.8, 1.8, 0))
            end
            
            --Red Swag Knife
            if reanimation:FindFirstChild("Red SS") or reanimation:FindFirstChild("White SS") then
                meleePosRot(true, Vector3.new(0, 180, 0), Vector3.new(-1.07686, 1, -0.5), Vector3.new(135, 0, -180), Vector3.new(0, 0.455, 0.555))
            end
        end
    else --No VR
        if _G.secondaryWeapon == true then
            --Dark Matter Sword
            if reanimation:FindFirstChild("Dark Matter Sword") or reanimation:FindFirstChild("MeshPartAccessory") then
                if reanimation:FindFirstChild("Dark Matter Sword") then
                    meleePosRot(false, Vector3.new(0, 0, -90), sword.BodyBackAttachment.Position, Vector3.new(-100, -90, 0), Vector3.new(1.2, 1.4, 0))
                elseif reanimation:FindFirstChild("MeshPartAccessory") then
                    meleePosRot(false, Vector3.new(0, 0, -90), sword.BodyBackAttachment.Position, Vector3.new(-100, -90, 0), Vector3.new(1.7, 1.6, 0))
                end
            end
            
            --Russo's Sword
            if reanimation:FindFirstChild("Russo's Sword") then
                meleePosRot(false, Vector3.new(-0, 180, 125.002), Vector3.new(-0.17, 0.23, 0.21), Vector3.new(45, 90, -180), Vector3.new(-0.1, -1.7, 0))
            end
            
            --Red Swag Knife
            if reanimation:FindFirstChild("Red SS") or reanimation:FindFirstChild("White SS") then
                meleePosRot(true, Vector3.new(0, 180, 0), Vector3.new(-1.07686, 1, -0.5), Vector3.new(-45, 0, 0), Vector3.new(0, 0.455, 0.555))
            end
        end
    end
end

------------------------------------Functions------------------------------------
local function Hats(hat)
    --From CLOVR (Modified)------------------------------------------------
    local Attachment1 = hat:FindFirstChildWhichIsA("Attachment")
    local Attachment0 = reanimation:FindFirstChild(tostring(Attachment1), true)
    local Orientation = reanimation["Head"]:FindFirstChild(hat.Parent.Name.."'s AlignRot")
    local Position = reanimation["Head"]:FindFirstChild(hat.Parent.Name.."'s AlignPos")
    
    Orientation.Attachment1 = Attachment0
    Position.Attachment1 = Attachment0
    -----------------------------------------------------------------------
end

--From - The Zenith Battle Rifle 70 by CKbackup (Modified)--
function GunShot(id, vol, pitch)
    local sou = Instance.new("Sound")
    sou.Parent = vrAimer
    sou.Volume = vol
    sou.Pitch = pitch
    sou.SoundId = "rbxassetid://"..id
    sou.PlayOnRemove = true
    sou:Destroy()
end
-----------------------------------------------------

local function R15Hats()
    --From CLOVR (Modified)-------------------------------
    local attachment0 = Instance.new("Attachment")
    local Orientation = Instance.new("AlignOrientation")
    local Position = Instance.new("AlignPosition")
    attachment0.Name = "Attachment0"
    attachment0.Parent = v
    
    Orientation.Attachment0 = attachment0
    Orientation.Attachment1 = attachment1
    Orientation.RigidityEnabled = true
    Orientation.ReactionTorqueEnabled = true
    Orientation.MaxTorque = 20000
    Orientation.Responsiveness = 200
    Orientation.Parent = v
    
    Position.Attachment0 = attachment0
    Position.Attachment1 = Attachment
    Position.RigidityEnabled = true
    Position.ReactionForceEnabled = true
    Position.MaxForce = 40000
    Position.Responsiveness = 200
    Position.Parent = v 
    ------------------------------------------------------
end
---------------------------------------------------------------------------------

--Sizes
if _G.primaryWeapon == true then
    gun.Size = Vector3.new(1, 1, 1)
end
if _G.secondaryWeapon == true then
    sword.Size = Vector3.new(1, 1, 1)
end

--local flinging = false
local shooting = false
local holdingGun = false
local holdingSword = false
local scriptLoaded = false

if _G.primaryWeapon == true then
    gun.Massless = true
end
if _G.secondaryWeapon == true then
    sword.Massless = true
end

userInputService.InputBegan:Connect(function(key, gameProcessedEvent)
    if character1.Parent == game.Workspace then
        --No VR-------------------------------------------------------------------------------
        --Gun
        if key.KeyCode == Enum.KeyCode.F and not vrService.VREnabled and scriptLoaded == true and not gameProcessedEvent and _G.primaryWeapon == true then
            if holdingGun == false then
                --Start Flinging
                local hatGrip = gun.BodyBackAttachment
                
                --Orientation
                if _G.leftHand == true then
                    hatGrip.Name = lGrip1.Name
                    hatGrip = gun.LeftGripAttachment
                else
                    hatGrip.Name = rGrip1.Name
                    hatGrip = gun.RightGripAttachment
                end
                
                hatGrip.Orientation = gHoldRot
                hatGrip.Position = gHoldPos
                
                --Function
                Hats(gun)
                
                holdingGun = true
            else
                --Stop Flinging
                if _G.leftHand == true then
                    gun.LeftGripAttachment.Name = "BodyBackAttachment"
                else
                    gun.RightGripAttachment.Name = "BodyBackAttachment"
                end
                
                local hatGrip = gun.BodyBackAttachment
                
                hatGrip.Orientation = gHolstRot
                hatGrip.Position = gHolstPos
                
                --Function
                Hats(gun)
                
                holdingGun = false
            end
        end
        
        --Shoot Gun
        if key.KeyCode == Enum.KeyCode.E and shooting == false and holdingGun == true and not vrService.VREnabled and scriptLoaded == true and not gameProcessedEvent and _G.primaryWeapon == true then
            shooting = true 
            
            if table.find(snipers, gun.Parent.Name) then
                --Fling Stuff
                if holdingSword == false and _G.flinging == true then
                    flinger.AngularVelocity = Vector3.new(10000, 10000, 10000)
                end
                
                --Functions
                GunShot(680140087, 0.7, 1)
                Bullet(_G.sniperLifetime)
                
                --Wait
                wait(_G.sniperShootCooldown)
                
                shooting = false 
                
                --Fling Stuff
                if holdingSword == false and not hrp:FindFirstChild("AlignPosition") and _G.flinging == true then
                    flinger.AngularVelocity = Vector3.new(0, 0, 0)
                end
            elseif table.find(automaticGuns, gun.Parent.Name) then
                --Fling Stuff
                if holdingSword == false and _G.flinging == true then
                    flinger.AngularVelocity = Vector3.new(10000, 10000, 10000)
                end
            elseif table.find(pistols, gun.Parent.Name) then
                --Fling Stuff
                if holdingSword == false and _G.flinging == true then
                    flinger.AngularVelocity = Vector3.new(10000, 10000, 10000)
                end
                
                --Functions
                GunShot(5298232020, 1, math.random(90,110)/100)
                Bullet(_G.pistolLifetime)
                
                --Wait
                wait(_G.pistolShootCooldown)
                
                shooting = false
                
                --Fling Stuff
                if holdingSword == false and not hrp:FindFirstChild("AlignPosition") and _G.flinging == true then
                    flinger.AngularVelocity = Vector3.new(0, 0, 0)
                end
            end
        end
        
        --Sword/Kinfe
        if key.KeyCode == Enum.KeyCode.G and not vrService.VREnabled and scriptLoaded == true and _G.secondaryWeapon == true and not gameProcessedEvent then
           if holdingSword == false then
                --Start Flinging
                local hatGrip = sword.BodyBackAttachment
                
                --Orientation
                if _G.leftHand == true then
                    hatGrip.Name = rGrip1.Name
                    hatGrip = sword.RightGripAttachment
                else
                    hatGrip.Name = lGrip1.Name
                    hatGrip = sword.LeftGripAttachment
                end
                
                hatGrip.Orientation = sHoldRot
                hatGrip.Position = sHoldPos
                
                --Function
                Hats(sword)
                
                --Fling Stuff
                if _G.flinging == true then
                    flinger.AngularVelocity = Vector3.new(10000, 10000, 10000)
                end
                
                holdingSword = true
            else
                --Stop Flinging
                if _G.leftHand == true then
                    sword.RightGripAttachment.Name = "BodyBackAttachment"
                else
                    sword.LeftGripAttachment.Name = "BodyBackAttachment"
                end
                
                local hatGrip = sword.BodyBackAttachment
                
                hatGrip.Orientation = sHolstRot
                hatGrip.Position = sHolstPos
                
                --Function
                Hats(sword)
                
                --Fling Stuff
                if _G.flinging == true then
                    flinger.AngularVelocity = Vector3.new(0, 0, 0)
                end
                
                holdingSword = false
            end
        end
        --------------------------------------------------------------------------------------
        
        --VR----------------------------------------------------------------------------------
        --Right Hand
        if key.KeyCode == Enum.KeyCode.ButtonR1 and scriptLoaded == true then
            --Gun
            if _G.primaryWeapon == true then
                if holdingGun == false and _G.leftHand == false then
                    --Start Flinging
                    gun.BodyBackAttachment.Name = rGrip1.Name
                    
                    local hatGrip = gun.RightGripAttachment
                    
                    hatGrip.Orientation = gHoldRot
                    hatGrip.Position = gHoldPos
                    
                    --Function
                    Hats(gun)
                    
                    holdingGun = true
                else
                    if holdingGun == true and _G.gunAutoEquip == true and _G.leftHand == false then
                        --Stop Flinging
                        gun.RightGripAttachment.Name = "BodyBackAttachment"
                        
                        local hatGrip = gun.BodyBackAttachment
                        
                        hatGrip.Orientation = gHolstRot
                        hatGrip.Position = gHolstPos
                        
                        --Function
                        Hats(gun)
                        
                        holdingGun = false
                    end
                end
            end
            
            --Sword
            if holdingSword == false and _G.leftHand == true and _G.secondaryWeapon == true then
                --Start Flinging
                local hatGrip = sword.BodyBackAttachment
                
                hatGrip.Name = rGrip1.Name
                hatGrip = sword.RightGripAttachment
                
                hatGrip.Orientation = sHoldRot
                hatGrip.Position = sHoldPos
                
                --Function
                Hats(sword)
                
                --Fling Stuff
                if _G.flinging == true then
                    flinger.AngularVelocity = Vector3.new(10000, 10000, 10000)
                end
                
                holdingSword = true
            else
                if holdingSword == true and _G.leftHand == true and _G.swordAutoEquip == true and _G.secondaryWeapon == true then
                    --Stop Flinging
                    sword.RightGripAttachment.Name = "BodyBackAttachment"
                    
                    local hatGrip = sword.BodyBackAttachment
                    
                    hatGrip.Orientation = sHolstRot
                    hatGrip.Position = sHolstPos
                    
                    --Function
                    Hats(sword)
                    
                    --Fling Stuff
                    if _G.flinging == true then
                        flinger.AngularVelocity = Vector3.new(0, 0, 0)
                    end
                    
                    holdingSword = false
                end
            end
        end
        
        --Shoot Gun
        if key.KeyCode == Enum.KeyCode.ButtonR2 and shooting == false and holdingGun == true and _G.leftHand == false and scriptLoaded == true and _G.primaryWeapon == true then
            shooting = true 
            
            if table.find(snipers, gun.Parent.Name) then
                --Fling Stuff
                if holdingSword == false and _G.flinging == true then
                    flinger.AngularVelocity = Vector3.new(10000, 10000, 10000)
                end
                
                --Functions
                GunShot(680140087, 0.7, 1)
                Bullet(_G.sniperLifetime)
                
                --Wait
                wait(_G.sniperShootCooldown)
                
                shooting = false 
                
                --Fling Stuff
                if holdingSword == false and not hrp:FindFirstChild("AlignPosition") and _G.flinging == true then
                    flinger.AngularVelocity = Vector3.new(0, 0, 0)
                end
            elseif table.find(automaticGuns, gun.Parent.Name) then
                --Fling Stuff
                if holdingSword == false and _G.flinging == true then
                    flinger.AngularVelocity = Vector3.new(10000, 10000, 10000)
                end
            elseif table.find(pistols, gun.Parent.Name) then
                --Fling Stuff
                if holdingSword == false and _G.flinging == true then
                    flinger.AngularVelocity = Vector3.new(10000, 10000, 10000)
                end
                
                --Functions
                GunShot(5298232020, 1, math.random(90,110)/100)
                Bullet(_G.pistolLifetime)
                
                --Wait
                wait(_G.pistolShootCooldown)
                
                shooting = false
                
                --Fling Stuff
                if holdingSword == false and not hrp:FindFirstChild("AlignPosition") and _G.flinging == true then
                    flinger.AngularVelocity = Vector3.new(0, 0, 0)
                end
            end
        end
        
        --Left Hand
        if key.KeyCode == Enum.KeyCode.ButtonL1 and scriptLoaded == true then
            --Gun
            if _G.primaryWeapon == true then
                if holdingGun == false and _G.leftHand == true then
                    --Start Flinging
                    gun.BodyBackAttachment.Name = lGrip1.Name
                    
                    local hatGrip = gun.LeftGripAttachment
                    
                    hatGrip.Orientation = gHoldRot
                    hatGrip.Position = gHoldPos
                    
                    --Function
                    Hats(gun)
                    
                    holdingGun = true
                else
                    if holdingGun == true and _G.gunAutoEquip == true and _G.leftHand == true then
                        --Stop Flinging
                        gun.LeftGripAttachment.Name = "BodyBackAttachment"
                        
                        local hatGrip = gun.BodyBackAttachment
                        
                        hatGrip.Orientation = gHolstRot
                        hatGrip.Position = gHolstPos
                        
                        --Function
                        Hats(gun)
                        
                        holdingGun = false
                    end
                end
            end
            
            --Sword
            if holdingSword == false and _G.leftHand == false and _G.secondaryWeapon == true then
                --Start Flinging
                local hatGrip = sword.BodyBackAttachment
                
                hatGrip.Name = lGrip1.Name
                hatGrip = sword.LeftGripAttachment
                
                hatGrip.Orientation = sHoldRot
                hatGrip.Position = sHoldPos
                
                --Function
                Hats(sword)
                
                --Fling Stuff
                if _G.flinging == true then
                    flinger.AngularVelocity = Vector3.new(10000, 10000, 10000)
                end
                
                holdingSword = true
            else
                if holdingSword == true and _G.leftHand == false and _G.swordAutoEquip == true and _G.secondaryWeapon == true then
                    --Stop Flinging
                    sword.LeftGripAttachment.Name = "BodyBackAttachment"
                    
                    local hatGrip = sword.BodyBackAttachment
                    
                    hatGrip.Orientation = sHolstRot
                    hatGrip.Position = sHolstPos
                    
                    --Function
                    Hats(sword)
                    
                    --Fling Stuff
                    if _G.flinging == true then
                        flinger.AngularVelocity = Vector3.new(0, 0, 0)
                    end
                    
                    holdingSword = false
                end
            end
        end
        
        --Shoot Gun
        if key.KeyCode == Enum.KeyCode.ButtonL2 and shooting == false and holdingGun == true and _G.leftHand == true and scriptLoaded == true and _G.primaryWeapon == true then
            shooting = true 
            
            if table.find(snipers, gun.Parent.Name) then
                --Fling Stuff
                if holdingSword == false and _G.flinging == true then
                    flinger.AngularVelocity = Vector3.new(10000, 10000, 10000)
                end
                
                --Functions
                GunShot(680140087, 0.7, 1)
                Bullet(_G.sniperLifetime)
                
                --Wait
                wait(_G.sniperShootCooldown)
                
                shooting = false 
                
                --Fling Stuff
                if holdingSword == false and not hrp:FindFirstChild("AlignPosition") and _G.flinging == true then
                    flinger.AngularVelocity = Vector3.new(0, 0, 0)
                end
            elseif table.find(automaticGuns, gun.Parent.Name) then
                --Fling Stuff
                if holdingSword == false and _G.flinging == true then
                    flinger.AngularVelocity = Vector3.new(10000, 10000, 10000)
                end
            elseif table.find(pistols, gun.Parent.Name) then
                --Fling Stuff
                if holdingSword == false and _G.flinging == true then
                    flinger.AngularVelocity = Vector3.new(10000, 10000, 10000)
                end
                
                --Functions
                GunShot(5298232020, 1, math.random(90,110)/100)
                Bullet(_G.pistolLifetime)
                
                --Wait
                wait(_G.pistolShootCooldown)
                
                shooting = false
                
                --Fling Stuff
                if holdingSword == false and not hrp:FindFirstChild("AlignPosition") and _G.flinging == true then
                    flinger.AngularVelocity = Vector3.new(0, 0, 0)
                end
            end
        end
        --------------------------------------------------------------------------------------
    end
end)

userInputService.InputEnded:Connect(function(key)
    if character1.Parent == game.Workspace then
        --Non VR Stop Shooting----------------------------------------------------------------
        if key.KeyCode == Enum.KeyCode.E and shooting == true and scriptLoaded == true and table.find(automaticGuns, gun.Parent.Name) and _G.primaryWeapon == true then
            shooting = false 
            
            --Fling Stuff
            if holdingSword == false and not hrp:FindFirstChild("AlignPosition") and _G.flinging == true then
                flinger.AngularVelocity = Vector3.new(0, 0, 0)
            end
        end
        --------------------------------------------------------------------------------------
        
        --VR----------------------------------------------------------------------------------
        --Unequip
        --Right Hand
        if key.KeyCode == Enum.KeyCode.ButtonR1 and scriptLoaded == true then
            --Gun
            if holdingGun == true and _G.gunAutoEquip == false and _G.leftHand == false and _G.primaryWeapon == true then
                --Stop Flinging
                gun.RightGripAttachment.Name = "BodyBackAttachment"
                
                local hatGrip = gun.BodyBackAttachment
                
                hatGrip.Orientation = gHolstRot
                hatGrip.Position = gHolstPos
                
                --Function
                Hats(gun)
                
                holdingGun = false
            end
            
            --Sword
            if holdingSword == true and _G.leftHand == true and _G.swordAutoEquip == false and _G.secondaryWeapon == true then
               --Stop Flinging
                sword.RightGripAttachment.Name = "BodyBackAttachment"
                
                local hatGrip = sword.BodyBackAttachment
                
                hatGrip.Orientation = sHolstRot
                hatGrip.Position = sHolstPos
                
                --Function
                Hats(sword)
                
                --Fling Stuff
                if _G.flinging == true then
                    flinger.AngularVelocity = Vector3.new(0, 0, 0)
                end
                
                holdingSword = false
            end
        end
        
        --Stop Shooting
        if key.KeyCode == Enum.KeyCode.ButtonR2 and shooting == true and _G.leftHand == false and scriptLoaded == true and table.find(automaticGuns, gun.Parent.Name) and _G.primaryWeapon == true then
            shooting = false 
            
            --Fling Stuff
            if holdingSword == false and not hrp:FindFirstChild("AlignPosition") and _G.flinging == true then
                flinger.AngularVelocity = Vector3.new(0, 0, 0)
            end
        end
        
        --Unequip
        --Left Hand
        if key.KeyCode == Enum.KeyCode.ButtonL1 and scriptLoaded == true then
            --Gun
            if holdingGun == true and _G.gunAutoEquip == false and _G.leftHand == true and _G.primaryWeapon == true then
                --Stop Flinging
                gun.LeftGripAttachment.Name = "BodyBackAttachment"
                
                local hatGrip = gun.BodyBackAttachment
                
                hatGrip.Orientation = gHolstRot
                hatGrip.Position = gHolstPos
                
                --Function
                Hats(gun)
                
                holdingGun = false
            end
            
            --Sword
            if holdingSword == true and _G.leftHand == false and _G.swordAutoEquip == false and _G.secondaryWeapon == true then
                --Stop Flinging
                sword.LeftGripAttachment.Name = "BodyBackAttachment"
                
                local hatGrip = sword.BodyBackAttachment
                
                hatGrip.Orientation = sHolstRot
                hatGrip.Position = sHolstPos
                
                --Function
                Hats(sword)
                
                --Fling Stuff
                if _G.flinging == true then
                    flinger.AngularVelocity = Vector3.new(0, 0, 0)
                end
                
                holdingSword = false
            end
        end
        
        --Stop Shooting
        if key.KeyCode == Enum.KeyCode.ButtonL2 and shooting == true and _G.leftHand == true and scriptLoaded == true and table.find(automaticGuns, gun.Parent.Name) and _G.primaryWeapon == true then
            shooting = false 
            
            --Fling Stuff
            if holdingSword == false and not hrp:FindFirstChild("AlignPosition") and _G.flinging == true then
                flinger.AngularVelocity = Vector3.new(0, 0, 0)
            end
        end
        --------------------------------------------------------------------------------------
    end
end)

-- CLOVR - FE FULL-BODY VR SCRIPT

-- April 21st Update - TOOL HOLDING ADDED

-- | made by 0866 and Abacaxl
-- | tysm unverified

--RagDollEnabled is set to true, DON'T set it to false or CLOVR won't work. Feel free to change the other settings though. -Abacaxl

--|| Settings:
local StudsOffset = 0 -- Character height (negative if you're too high)
local Smoothness = .5 -- Character interpolation (0.1 - 1 = smooth - rigid)
local AnchorCharacter = false -- Prevent physics from causing inconsistencies
local HideCharacter = false -- Hide character on a platform
local NoCollision = false -- Disable player collision
local ChatEnabled = true -- See chat on your left hand in-game
local ChatLocalRange = 75 -- Local chat range
local ViewportEnabled = true -- View nearby players in a frame
local ViewportRange = 30 -- Maximum distance players are updated
local RagdollEnabled = true -- Use your character instead of hats (NetworkOwner vulnerability)
local RagdollHeadMovement = true -- Move your head separately from your body (+9 second wait)
local AutoRun = false -- Run script on respawn
local AutoRespawn = true -- Kill your real body when your virtual body dies
local WearAllAccessories = true -- Use all leftover hats for the head
local AccurateHandPosition = true -- Move your Roblox hands according to your real hands
local AccessorySettings = {
    LeftArm = "",
    RightArm = "",
    LeftLeg = "",
    RightLeg = "",
    Torso = "",
    Head = true,
    BlockArms = true,
    BlockLegs = true,
    BlockTorso = true,
    LimbOffset = CFrame.Angles(math.rad(90), 0, 0)
}
local FootPlacementSettings = {
    RightOffset = Vector3.new(.5, 0, 0),
    LeftOffset = Vector3.new(-.5, 0, 0)
}
--|| Script:
local Script = nil
Script = function()
    --[[
 Variables
--]]
    local Players = game:GetService("Players")
    local Client = Players.LocalPlayer
    local Character = Client.Character or Client.CharacterAdded:Wait()
    local WeldBase = reanimation:WaitForChild("HumanoidRootPart")
    local ArmBase = Character:FindFirstChild("RightHand") or Character:FindFirstChild("Right Arm") or WeldBase
    local Backpack = Client:WaitForChild("Backpack")
    local Mouse = Client:GetMouse()
    local Camera = workspace.CurrentCamera
    local VRService = game:GetService("VRService")
    local VRReady = VRService.VREnabled
    local UserInputService = game:GetService("UserInputService")
    local RunService = game:GetService("RunService")
    local HttpService = game:GetService("HttpService")
    local StarterGui = game:GetService("StarterGui")
    local HeadAccessories = {}
    local UsedAccessories = {}
    local Pointer = false
    local Point1 = false
    local Point2 = false
    local VirtualRig = game:GetObjects("rbxassetid://4468539481")[1]
    local VirtualBody = game:GetObjects("rbxassetid://4464983829")[1]
    local Anchor = Instance.new("Part")
    Anchor.Anchored = true
    Anchor.Transparency = 1
    Anchor.CanCollide = false
    Anchor.Parent = workspace
    if RagdollEnabled then
        print("RagdollEnabled, thank you for using CLOVR!")
        --[[
        local NetworkAccess =
            coroutine.create(
            function()
                settings().Physics.AllowSleep = false
                while true do
                    game:GetService("RunService").RenderStepped:Wait()
                    for _, Players in next, game:GetService("Players"):GetChildren() do
                        if Players ~= game:GetService("Players").LocalPlayer then
                            Players.MaximumSimulationRadius = 0.1
                            Players.SimulationRadius = 0
                        end
                    end
                    game:GetService("Players").LocalPlayer.MaximumSimulationRadius = math.pow(math.huge, math.huge)
                    game:GetService("Players").LocalPlayer.SimulationRadius = math.huge * math.huge
                end
            end
        )
        coroutine.resume(NetworkAccess)
        ]]
    end
    StarterGui:SetCore("VRLaserPointerMode", 3)
    --[[
 Character Protection
--]]
    local CharacterCFrame = WeldBase.CFrame
    if not RagdollEnabled then
        Character.Humanoid.AnimationPlayed:Connect(
            function(Animation)
                Animation:Stop()
            end
        )
        for _, Track in next, Character.Humanoid:GetPlayingAnimationTracks() do
            Track:Stop()
        end
        if HideCharacter then
            local Platform = Instance.new("Part")
            Platform.Anchored = true
            Platform.Size = Vector3.new(100, 5, 100)
            Platform.CFrame = CFrame.new(0, 10000, 0)
            Platform.Transparency = 1
            Platform.Parent = workspace
            Character:MoveTo(Platform.Position + Vector3.new(0, 5, 0))
            wait(.5)
        end
        if AnchorCharacter then
            for _, Part in pairs(Character:GetChildren()) do
                if Part:IsA("BasePart") then
                    Part.Anchored = true
                end
            end
        end
    end
    --[[
 Functions
--]]
    function Tween(Object, Style, Direction, Time, Goal)
        local tweenInfo = TweenInfo.new(Time, Enum.EasingStyle[Style], Enum.EasingDirection[Direction])
        local tween = game:GetService("TweenService"):Create(Object, tweenInfo, Goal)
        tween.Completed:Connect(
            function()
                tween:Destroy()
            end
        )
        tween:Play()
        return tween
    end
    local function GetMotorForLimb(Limb)
        for _, Motor in next, Character:GetDescendants() do
            if Motor:IsA("Motor6D") and Motor.Part1 == Limb then
                return Motor
            end
        end
    end
    local function CreateAlignment(Limb, Part0)
        local Attachment0 = Instance.new("Attachment", Part0 or Anchor)
        local Attachment1 = Instance.new("Attachment", Limb)
        local Orientation = Instance.new("AlignOrientation")
        local Position = Instance.new("AlignPosition")
        Orientation.Attachment0 = Attachment1
        Orientation.Attachment1 = Attachment0
        Orientation.RigidityEnabled = false
        Orientation.MaxTorque = 20000
        Orientation.Responsiveness = 40
        Orientation.Parent = reanimation["HumanoidRootPart"]
        
        Orientation.Name = Limb.Name.."'s AlignRot"
        Orientation.MaxAngularVelocity = 100
        
        Position.Attachment0 = Attachment1
        Position.Attachment1 = Attachment0
        Position.RigidityEnabled = false
        Position.MaxForce = 40000
        Position.Responsiveness = 40
        Position.Parent = reanimation["HumanoidRootPart"]
        
        Position.Name = Limb.Name.."'s AlignPos"
        Position.MaxVelocity = 100
        
        Limb.Massless = false
        local Motor = GetMotorForLimb(Limb)
        if Motor then
            Motor:Destroy()
        end
        return function(CF, Local)
            if Local then
                Attachment0.CFrame = CF
            else
                Attachment0.WorldCFrame = CF
            end
        end
    end
    local function GetExtraTool()
        for _, Tool in next, Character:GetChildren() do
            if Tool:IsA("Tool") and not Tool.Name:match("LIMB_TOOL") then
                return Tool
            end
        end
    end
    local function GetGripForHandle(Handle)
        for _, Weld in next, Character:GetDescendants() do
            if Weld:IsA("Weld") and (Weld.Part0 == Handle or Weld.Part1 == Handle) then
                return Weld
            end
        end
        wait(.2)
        for _, Weld in next, Character:GetDescendants() do
            if Weld:IsA("Weld") and (Weld.Part0 == Handle or Weld.Part1 == Handle) then
                return Weld
            end
        end
    end
    local function CreateRightGrip(Handle)
        local RightGrip = Instance.new("Weld")
        RightGrip.Name = "RightGrip"
        RightGrip.Part1 = Handle
        RightGrip.Part0 = WeldBase
        RightGrip.Parent = WeldBase
        return RightGrip
    end
    local function CreateAccessory(Accessory, DeleteMeshes)
        if not Accessory then
            return
        end
        local HatAttachment = Accessory.Handle:FindFirstChildWhichIsA("Attachment")
        local HeadAttachment = VirtualRig:FindFirstChild(HatAttachment.Name, true)
        local BasePart = HeadAttachment.Parent
        local HatAtt = HatAttachment.CFrame
        local HeadAtt = HeadAttachment.CFrame
        if DeleteMeshes then
            if Accessory.Handle:FindFirstChild("Mesh") then
                Accessory.Handle.Mesh:Destroy()
            end
        end
        wait()
        local Handle = Accessory:WaitForChild("Handle")
        if Handle:FindFirstChildWhichIsA("Weld", true) then
            Handle:FindFirstChildWhichIsA("Weld", true):Destroy()
            Handle:BreakJoints()
        else
            Handle:BreakJoints()
        end
        Handle.Massless = true
        Handle.Transparency = 0.5
        UsedAccessories[Accessory] = true
        local RightGrip = CreateRightGrip(Handle)
        wait()
        for _, Object in pairs(Handle:GetDescendants()) do
            if not Object:IsA("BasePart") then
                pcall(
                    function()
                        Object.Transparency = 1
                    end
                )
                pcall(
                    function()
                        Object.Enabled = false
                    end
                )
            end
        end
        return Handle, RightGrip, HatAtt, HeadAtt, BasePart
    end
    local function GetHeadAccessories()
        for _, Accessory in next, Character:GetChildren() do
            if Accessory:IsA("Accessory") and not UsedAccessories[Accessory] then
                local Handle, RightGrip, HatAtt, HeadAtt, BasePart = CreateAccessory(Accessory)
                table.insert(HeadAccessories, {Handle, RightGrip, HatAtt, HeadAtt, BasePart})
                do
                    Handle.Transparency = 1
                end
                if not WearAllAccessories then
                    break
                end
            end
        end
    end
    --[[
 VR Replication Setup
--]]
    if not RagdollEnabled then
        LeftHandle, LeftHandGrip =
            CreateAccessory(Character:FindFirstChild(AccessorySettings.LeftArm), AccessorySettings.BlockArms)
        RightHandle, RightHandGrip =
            CreateAccessory(Character:FindFirstChild(AccessorySettings.RightArm), AccessorySettings.BlockArms)
        LeftHipHandle, LeftLegGrip =
            CreateAccessory(Character:FindFirstChild(AccessorySettings.LeftLeg), AccessorySettings.BlockLegs)
        RightHipHandle, RightLegGrip =
            CreateAccessory(Character:FindFirstChild(AccessorySettings.RightLeg), AccessorySettings.BlockLegs)
        TorsoHandle, TorsoGrip =
            CreateAccessory(Character:FindFirstChild(AccessorySettings.Torso), AccessorySettings.BlockTorso)
        GetHeadAccessories()
    elseif RagdollEnabled then
        if RagdollHeadMovement then
            Permadeath()
            MoveHead = CreateAlignment(reanimation["Head"])
        end
        MoveRightArm = CreateAlignment(reanimation["Right Arm"])
        MoveLeftArm = CreateAlignment(reanimation["Left Arm"])
        MoveRightLeg = CreateAlignment(reanimation["Right Leg"])
        MoveLeftLeg = CreateAlignment(reanimation["Left Leg"])
        MoveTorso = CreateAlignment(reanimation["Torso"])
        MoveRoot = CreateAlignment(reanimation["HumanoidRootPart"])
        --
        if RagdollHeadMovement then
            for _, Accessory in next, reanimation:GetChildren() do
                if Accessory:IsA("Accessory") and Accessory:FindFirstChild("Handle") then
                    local Attachment1 = Accessory.Handle:FindFirstChildWhichIsA("Attachment")
                    local Attachment0 = reanimation:FindFirstChild(tostring(Attachment1), true)
                    local Orientation = Instance.new("AlignOrientation")
                    local Position = Instance.new("AlignPosition")
                    print(Attachment1, Attachment0, Accessory)
                    
                    Orientation.Attachment0 = Attachment1
                    Orientation.Attachment1 = Attachment0
                    Orientation.RigidityEnabled = false
                    Orientation.ReactionTorqueEnabled = true
                    Orientation.MaxTorque = 20000
                    Orientation.Responsiveness = 40
                    Orientation.Parent = reanimation["Head"]
                    Orientation.Name = (Accessory.Name.."'s AlignRot")
                    
                    Position.Attachment0 = Attachment1
                    Position.Attachment1 = Attachment0
                    Position.RigidityEnabled = false
                    Position.ReactionForceEnabled = true
                    Position.MaxForce = 40000
                    Position.Responsiveness = 40
                    Position.Parent = reanimation["Head"]
                    Position.Name = (Accessory.Name.."'s AlignPos")
                    
                    Accessory.Handle:FindFirstChildWhichIsA("Weld"):Destroy()
                end
            end
        end
        
    end
    --[[
 Movement
--]]
    VirtualRig.Name = "VirtualRig"
    VirtualRig.RightFoot.BodyPosition.Position = CharacterCFrame.p
    VirtualRig.LeftFoot.BodyPosition.Position = CharacterCFrame.p
    VirtualRig.Parent = workspace
    VirtualRig:SetPrimaryPartCFrame(CharacterCFrame)
    VirtualRig.Humanoid.Health = 0
    VirtualRig:BreakJoints()
    for i,v in pairs(VirtualRig:GetChildren()) do
        if v:IsA("BasePart") then
            v.CFrame = character1.HumanoidRootPart.CFrame
        end
    end
    --
    VirtualBody.Parent = workspace
    VirtualBody.Name = "VirtualBody"
    VirtualBody.Humanoid.WalkSpeed = 8
    VirtualBody.Humanoid.CameraOffset = Vector3.new(0, StudsOffset, 0)
    VirtualBody:SetPrimaryPartCFrame(CharacterCFrame)
    VirtualBody.Humanoid.Died:Connect(
        function()
            print("Virtual death")
            if AutoRespawn then
                Character:BreakJoints()
                if RagdollHeadMovement and RagdollEnabled then
                    --Network:Unclaim()
                    Respawn()
                end
            end
        end
    )
    --
    Camera.CameraSubject = VirtualBody.Humanoid
    Character.Humanoid.WalkSpeed = 0
    Character.Humanoid.JumpPower = 1
    for _, Part in next, VirtualBody:GetChildren() do
        if Part:IsA("BasePart") then
            Part.Transparency = 1
        end
    end
    for _, Part in next, VirtualRig:GetChildren() do
        if Part:IsA("BasePart") then
            Part.Transparency = 1
        end
    end
    if not VRReady then
        VirtualRig.RightUpperArm.ShoulderConstraint.RigidityEnabled = true
        VirtualRig.LeftUpperArm.ShoulderConstraint.RigidityEnabled = true
    end
    local OnMoving =
        RunService.Stepped:Connect(
        function()
            local Direction = Character.Humanoid.MoveDirection
            local Start = VirtualBody.HumanoidRootPart.Position
            local Point = Start + Direction * 6
            VirtualBody.Humanoid:MoveTo(Point)
        end
    )
    Character.Humanoid.Jumping:Connect(
        function()
            VirtualBody.Humanoid.Jump = true
        end
    )
    UserInputService.JumpRequest:Connect(
        function()
            VirtualBody.Humanoid.Jump = true
        end
    )
    --[[
 VR Replication
--]]
    if RagdollEnabled then
        for _, Part in pairs(Character:GetDescendants()) do
            if Part:IsA("BasePart") and Part.Name == "Handle" and Part.Parent:IsA("Accessory") then
                Part.LocalTransparencyModifier = 0
                
                if Part:FindFirstChild("HatAttachment") or Part:FindFirstChild("HairAttachment") or Part:FindFirstChild("FaceFrontAttachment") or Part:FindFirstChild("FaceCenterAttachment") then
                    Part.LocalTransparencyModifier = 1
                end
                
            elseif Part:IsA("BasePart") and Part.Transparency < 0.5 and Part.Name ~= "Head" then
                Part.LocalTransparencyModifier = bodyTransparency
            elseif Part:IsA("BasePart") and Part.Name == "Head" then
                Part.LocalTransparencyModifier = 1
            end
            if not Part:IsA("BasePart") and not Part:IsA("AlignPosition") and not Part:IsA("AlignOrientation") then
                pcall(
                    function()
                        Part.Transparency = 1
                    end
                )
                pcall(
                    function()
                        Part.Enabled = false
                    end
                )
            end
        end
    end
    local FootUpdateDebounce = tick()
    local function FloorRay(Part, Distance)
        local Position = Part.CFrame.p
        local Target = Position - Vector3.new(0, Distance, 0)
        local Line = Ray.new(Position, (Target - Position).Unit * Distance)
        local FloorPart, FloorPosition, FloorNormal =
            workspace:FindPartOnRayWithIgnoreList(Line, {VirtualRig, VirtualBody, Character})
        if FloorPart then
            return FloorPart, FloorPosition, FloorNormal, (FloorPosition - Position).Magnitude
        else
            return nil, Target, Vector3.new(), Distance
        end
    end
    local function Flatten(CF)
        local X, Y, Z = CF.X, CF.Y, CF.Z
        local LX, LZ = CF.lookVector.X, CF.lookVector.Z
        return CFrame.new(X, Y, Z) * CFrame.Angles(0, math.atan2(LX, LZ), 0)
    end
    local FootTurn = 1
    local function FootReady(Foot, Target)
        local MaxDist
        if Character.Humanoid.MoveDirection.Magnitude > 0 then
            MaxDist = .5
        else
            MaxDist = 1
        end
        local PastThreshold = (Foot.Position - Target.Position).Magnitude > MaxDist
        local PastTick = tick() - FootUpdateDebounce >= 2
        if PastThreshold or PastTick then
            FootUpdateDebounce = tick()
        end
        return PastThreshold or PastTick
    end
    local function FootYield()
        local RightFooting = VirtualRig.RightFoot.BodyPosition
        local LeftFooting = VirtualRig.LeftFoot.BodyPosition
        local LowerTorso = VirtualRig.LowerTorso
        local Yield = tick()
        repeat
            RunService.Stepped:Wait()
            if
                (LowerTorso.Position - RightFooting.Position).Y > 4 or
                    (LowerTorso.Position - LeftFooting.Position).Y > 4 or
                    ((LowerTorso.Position - RightFooting.Position) * Vector3.new(1, 0, 1)).Magnitude > 4 or
                    ((LowerTorso.Position - LeftFooting.Position) * Vector3.new(1, 0, 1)).Magnitude > 4
             then
                break
            end
        until tick() - Yield >= .17
    end
    local function UpdateFooting()
        if not VirtualRig:FindFirstChild("LowerTorso") then
            wait()
            return
        end
        local Floor, FloorPosition, FloorNormal, Dist = FloorRay(VirtualRig.LowerTorso, 3)
        Dist = math.clamp(Dist, 0, 5)
        local FootTarget =
            VirtualRig.LowerTorso.CFrame * CFrame.new(FootPlacementSettings.RightOffset) - Vector3.new(0, Dist, 0) +
            Character.Humanoid.MoveDirection * (VirtualBody.Humanoid.WalkSpeed / 8) * 2
        if FootReady(VirtualRig.RightFoot, FootTarget) then
            VirtualRig.RightFoot.BodyPosition.Position = FootTarget.p
            VirtualRig.RightFoot.BodyGyro.CFrame = Flatten(VirtualRig.LowerTorso.CFrame)
        end
        FootYield()
        local FootTarget =
            VirtualRig.LowerTorso.CFrame * CFrame.new(FootPlacementSettings.LeftOffset) - Vector3.new(0, Dist, 0) +
            Character.Humanoid.MoveDirection * (VirtualBody.Humanoid.WalkSpeed / 8) * 2
        if FootReady(VirtualRig.LeftFoot, FootTarget) then
            VirtualRig.LeftFoot.BodyPosition.Position = FootTarget.p
            VirtualRig.LeftFoot.BodyGyro.CFrame = Flatten(VirtualRig.LowerTorso.CFrame)
        end
    end
    local function UpdateTorsoPosition()
        if not RagdollEnabled then
            if TorsoHandle then
                local Positioning = VirtualRig.UpperTorso.CFrame
                if not TorsoGrip or not TorsoGrip.Parent then
                    TorsoGrip = CreateRightGrip(TorsoHandle)
                end
                local Parent = TorsoGrip.Parent
                TorsoGrip.C1 = CFrame.new()
                TorsoGrip.C0 =
                    TorsoGrip.C0:Lerp(
                    WeldBase.CFrame:ToObjectSpace(Positioning * CFrame.new(0, -0.25, 0) * AccessorySettings.LimbOffset),
                    Smoothness
                )
                TorsoGrip.Parent = nil
                TorsoGrip.Parent = Parent
            end
        else
            local Positioning = VirtualRig.UpperTorso.CFrame
            MoveTorso(Positioning * CFrame.new(0, -0.25, 0))
            MoveRoot(Positioning * CFrame.new(0, -0.25, 0))
        end
    end
    local function UpdateLegPosition()
        if not RagdollEnabled then
            if RightHipHandle then
                local Positioning =
                    VirtualRig.RightLowerLeg.CFrame:Lerp(VirtualRig.RightFoot.CFrame, 0.5) + Vector3.new(0, 0.5, 0)
                if not RightHipHandle or not RightHipHandle.Parent then
                    RightLegGrip = CreateRightGrip(RightHipHandle)
                end
                local Parent = RightLegGrip.Parent
                RightLegGrip.C1 = CFrame.new()
                RightLegGrip.C0 =
                    RightLegGrip.C0:Lerp(
                    WeldBase.CFrame:ToObjectSpace(Positioning * AccessorySettings.LimbOffset),
                    Smoothness
                )
                RightLegGrip.Parent = nil
                RightLegGrip.Parent = Parent
            end
            if LeftHipHandle then
                local Positioning =
                    VirtualRig.LeftLowerLeg.CFrame:Lerp(VirtualRig.LeftFoot.CFrame, 0.5) + Vector3.new(0, 0.5, 0)
                if not LeftLegGrip or not LeftLegGrip.Parent then
                    LeftLegGrip = CreateRightGrip(LeftHipHandle)
                end
                local Parent = LeftLegGrip.Parent
                LeftLegGrip.C1 = CFrame.new()
                LeftLegGrip.C0 =
                    LeftLegGrip.C0:Lerp(
                    WeldBase.CFrame:ToObjectSpace(Positioning * AccessorySettings.LimbOffset),
                    Smoothness
                )
                LeftLegGrip.Parent = nil
                LeftLegGrip.Parent = Parent
            end
        else
            do
                local Positioning =
                    VirtualRig.RightLowerLeg.CFrame:Lerp(VirtualRig.RightFoot.CFrame, 0.5) *
                    CFrame.Angles(0, math.rad(180), 0) +
                    Vector3.new(0, 0.5, 0)
                MoveRightLeg(Positioning)
            end
            do
                local Positioning =
                    VirtualRig.LeftLowerLeg.CFrame:Lerp(VirtualRig.LeftFoot.CFrame, 0.5) *
                    CFrame.Angles(0, math.rad(180), 0) +
                    Vector3.new(0, 0.5, 0)
                MoveLeftLeg(Positioning)
            end
        end
    end
    warn("VRReady is", VRReady)
    local function OnUserCFrameChanged(UserCFrame, Positioning, IgnoreTorso)
        local Positioning = Camera.CFrame * Positioning
        if not IgnoreTorso then
            UpdateTorsoPosition()
            UpdateLegPosition()
        end
        if not RagdollEnabled then
            if UserCFrame == Enum.UserCFrame.Head and AccessorySettings.Head then
                for _, Table in next, HeadAccessories do
                    local Handle, RightGrip, HatAtt, HeadAtt, BasePart = unpack(Table)
                    local LocalPositioning = Positioning
                    if not RightGrip or not RightGrip.Parent then
                        RightGrip = CreateRightGrip(Handle)
                        Table[2] = RightGrip
                    end
                    local Parent = RightGrip.Parent
                    if BasePart then
                        LocalPositioning = BasePart.CFrame * HeadAtt
                    end
                    RightGrip.C1 = HatAtt
                    RightGrip.C0 = RightGrip.C0:Lerp(WeldBase.CFrame:ToObjectSpace(LocalPositioning), Smoothness)
                    RightGrip.Parent = nil
                    RightGrip.Parent = Parent
                end
            elseif RightHandle and UserCFrame == Enum.UserCFrame.RightHand and AccessorySettings.RightArm then
                local HandPosition = Positioning
                local LocalPositioning = Positioning
                if not RightHandGrip or not RightHandGrip.Parent then
                    RightHandGrip = CreateRightGrip(RightHandle)
                end
                if AccurateHandPosition then
                    HandPosition = HandPosition * CFrame.new(0, 0, 1)
                end
                if not VRReady then
                    local HeadRotation = Camera.CFrame - Camera.CFrame.p
                    HandPosition =
                        VirtualRig.RightUpperArm.CFrame:Lerp(VirtualRig.RightLowerArm.CFrame, 0.5) *
                        AccessorySettings.LimbOffset
                    --LocalPositioning = (HeadRotation + (HandPosition * CFrame.new(0, 0, 1)).p) * CFrame.Angles(math.rad(-45), 0, 0)
                    LocalPositioning = HandPosition * CFrame.new(0, 0, 1) * CFrame.Angles(math.rad(-180), 0, 0)
                    if Point2 then
                        VirtualRig.RightUpperArm.Aim.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
                        VirtualRig.RightUpperArm.Aim.CFrame = Camera.CFrame * AccessorySettings.LimbOffset
                    elseif VirtualRig.RightUpperArm.Aim.MaxTorque ~= Vector3.new(0, 0, 0) then
                        VirtualRig.RightUpperArm.Aim.MaxTorque = Vector3.new(0, 0, 0)
                    end
                elseif AccurateHandPosition then
                    LocalPositioning = HandPosition
                end
                local Parent = RightHandGrip.Parent
                RightHandGrip.C1 = CFrame.new()
                RightHandGrip.C0 = RightHandGrip.C0:Lerp(WeldBase.CFrame:ToObjectSpace(HandPosition), Smoothness)
                RightHandGrip.Parent = nil
                RightHandGrip.Parent = Parent
                --
                local EquippedTool = GetExtraTool()
                if EquippedTool and EquippedTool:FindFirstChild("Handle") then
                    local EquippedGrip = GetGripForHandle(EquippedTool.Handle)
                    local Parent = EquippedGrip.Parent
                    local ArmBaseCFrame = ArmBase.CFrame
                    if ArmBase.Name == "Right Arm" then
                        ArmBaseCFrame = ArmBaseCFrame
                    end
                    EquippedGrip.C1 = EquippedTool.Grip
                    EquippedGrip.C0 = EquippedGrip.C0:Lerp(ArmBaseCFrame:ToObjectSpace(LocalPositioning), Smoothness)
                    EquippedGrip.Parent = nil
                    EquippedGrip.Parent = Parent
                end
            elseif LeftHandle and UserCFrame == Enum.UserCFrame.LeftHand and AccessorySettings.LeftArm then
                local HandPosition = Positioning
                if not LeftHandGrip or not LeftHandGrip.Parent then
                    LeftHandGrip = CreateRightGrip(LeftHandle)
                end
                if AccurateHandPosition then
                    HandPosition = HandPosition * CFrame.new(0, 0, 1)
                end
                if not VRReady then
                    HandPosition =
                        VirtualRig.LeftUpperArm.CFrame:Lerp(VirtualRig.LeftLowerArm.CFrame, 0.5) *
                        AccessorySettings.LimbOffset
                    --warn("Setting HandPosition to hands")
                    if Point1 then
                        VirtualRig.LeftUpperArm.Aim.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
                        VirtualRig.LeftUpperArm.Aim.CFrame = Camera.CFrame * AccessorySettings.LimbOffset
                    elseif VirtualRig.LeftUpperArm.Aim.MaxTorque ~= Vector3.new(0, 0, 0) then
                        VirtualRig.LeftUpperArm.Aim.MaxTorque = Vector3.new(0, 0, 0)
                    end
                end
                local Parent = LeftHandGrip.Parent
                LeftHandGrip.C1 = CFrame.new()
                LeftHandGrip.C0 = LeftHandGrip.C0:Lerp(WeldBase.CFrame:ToObjectSpace(HandPosition), Smoothness)
                LeftHandGrip.Parent = nil
                LeftHandGrip.Parent = Parent
            end
        end
        if RagdollEnabled then
            if UserCFrame == Enum.UserCFrame.Head and RagdollHeadMovement then
                MoveHead(Positioning)
            elseif UserCFrame == Enum.UserCFrame.RightHand then
                local Positioning = Positioning
                if not VRReady then
                    Positioning = VirtualRig.RightUpperArm.CFrame:Lerp(VirtualRig.RightLowerArm.CFrame, 0.5)
                elseif AccurateHandPosition then
                    Positioning = Positioning * CFrame.new(0, 0, 1)
                end
                if VRReady then
                    Positioning = Positioning * AccessorySettings.LimbOffset
                end
                MoveRightArm(Positioning)
                if Point2 then
                    VirtualRig.RightUpperArm.Aim.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
                    VirtualRig.RightUpperArm.Aim.CFrame = Camera.CFrame * AccessorySettings.LimbOffset
                elseif VirtualRig.RightUpperArm.Aim.MaxTorque ~= Vector3.new(0, 0, 0) then
                    VirtualRig.RightUpperArm.Aim.MaxTorque = Vector3.new(0, 0, 0)
                end
            elseif UserCFrame == Enum.UserCFrame.LeftHand then
                local Positioning = Positioning
                if not VRReady then
                    Positioning = VirtualRig.LeftUpperArm.CFrame:Lerp(VirtualRig.LeftLowerArm.CFrame, 0.5)
                elseif AccurateHandPosition then
                    Positioning = Positioning * CFrame.new(0, 0, 1)
                end
                if VRReady then
                    Positioning = Positioning * AccessorySettings.LimbOffset
                end
                MoveLeftArm(Positioning)
                if Point1 then
                    VirtualRig.LeftUpperArm.Aim.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
                    VirtualRig.LeftUpperArm.Aim.CFrame = Camera.CFrame * AccessorySettings.LimbOffset
                elseif VirtualRig.LeftUpperArm.Aim.MaxTorque ~= Vector3.new(0, 0, 0) then
                    VirtualRig.LeftUpperArm.Aim.MaxTorque = Vector3.new(0, 0, 0)
                end
            end
        end
        if UserCFrame == Enum.UserCFrame.Head then
            VirtualRig.Head.CFrame = Positioning
        elseif UserCFrame == Enum.UserCFrame.RightHand and VRReady then
            VirtualRig.RightHand.CFrame = Positioning
        elseif UserCFrame == Enum.UserCFrame.LeftHand and VRReady then
            VirtualRig.LeftHand.CFrame = Positioning
        end
        if not VRReady and VirtualRig.LeftHand.Anchored then
            VirtualRig.RightHand.Anchored = false
            VirtualRig.LeftHand.Anchored = false
        elseif VRReady and not VirtualRig.LeftHand.Anchored then
            VirtualRig.RightHand.Anchored = true
            VirtualRig.LeftHand.Anchored = true
        end
    end
    local CFrameChanged = VRService.UserCFrameChanged:Connect(OnUserCFrameChanged)
    local OnStepped =
        RunService.Stepped:Connect(
        function()
            for _, Part in pairs(VirtualRig:GetChildren()) do
                if Part:IsA("BasePart") then
                    Part.CanCollide = false
                end
            end
            if RagdollEnabled then
                for _, Part in pairs(Character:GetChildren()) do
                    if Part:IsA("BasePart") then
                        Part.CanCollide = false
                    end
                end
            end
            if NoCollision then
                for _, Player in pairs(Players:GetPlayers()) do
                    if Player ~= Client and Player.Character then
                        local Descendants = Player.Character:GetDescendants()
                        for i = 1, #Descendants do
                            local Part = Descendants[i]
                            if Part:IsA("BasePart") then
                                Part.CanCollide = false
                                Part.Velocity = Vector3.new()
                                Part.RotVelocity = Vector3.new()
                            end
                        end
                    end
                end
            end
        end
    )
    local OnRenderStepped =
        RunService.Stepped:Connect(
        function()
            Camera.CameraSubject = VirtualBody.Humanoid
            if RagdollEnabled then
                reanimation["HumanoidRootPart"].CFrame = VirtualRig.UpperTorso.CFrame
                reanimation["HumanoidRootPart"].Velocity = Vector3.new(0, 0, 0)
            end
            if not VRReady then
                OnUserCFrameChanged(Enum.UserCFrame.Head, CFrame.new(0, 0, 0))
                OnUserCFrameChanged(Enum.UserCFrame.RightHand, CFrame.new(0, 0, 0), true)
                OnUserCFrameChanged(Enum.UserCFrame.LeftHand, CFrame.new(0, 0, 0), true)
            end
        end
    )
    spawn(
        function()
            while Character and Character.Parent do
                FootYield()
                UpdateFooting()
            end
        end
    )
    --[[
 Non-VR Support + VR Mechanics
--]]
    local OnInput =
        UserInputService.InputBegan:Connect(
        function(Input, Processed)
            if not Processed then
                if _G.changeSomeStuff == false then
                    if Input.KeyCode == Enum.KeyCode.LeftControl or Input.KeyCode == Enum.KeyCode.ButtonL2 then
                        Tween(
                            VirtualBody.Humanoid,
                            "Elastic",
                            "Out",
                            1,
                            {
                                CameraOffset = Vector3.new(0, StudsOffset - 1.5, 0)
                            }
                        )
                    end
                else
                    if Input.KeyCode == Enum.KeyCode.LeftControl or Input.KeyCode == Enum.KeyCode.ButtonL3 then
                        Tween(
                            VirtualBody.Humanoid,
                            "Elastic",
                            "Out",
                            1,
                            {
                                CameraOffset = Vector3.new(0, StudsOffset - 1.5, 0)
                            }
                        )
                    end
                end
                if Input.KeyCode == Enum.KeyCode.X then
                    if RagdollEnabled and RagdollHeadMovement then
                        --Network:Unclaim()
                        Respawn()
                    end
                end
                if Input.KeyCode == Enum.KeyCode.C then
                    VirtualBody:MoveTo(Mouse.Hit.p)
                    VirtualRig:MoveTo(Mouse.Hit.p)
                end
            end
            if _G.changeSomeStuff == false then
                if Input.KeyCode == Enum.KeyCode.LeftShift or Input.KeyCode == Enum.KeyCode.ButtonR2 then
                    Tween(
                        VirtualBody.Humanoid,
                        "Sine",
                        "Out",
                        1,
                        {
                            WalkSpeed = 16
                        }
                    )
                end
            else
                if Input.KeyCode == Enum.KeyCode.LeftShift or Input.KeyCode == Enum.KeyCode.ButtonR3 then
                    Tween(
                        VirtualBody.Humanoid,
                        "Sine",
                        "Out",
                        1,
                        {
                            WalkSpeed = 16
                        }
                    )
                end
            end
            if not VRReady and Input.UserInputType == Enum.UserInputType.MouseButton1 then
                Point1 = true
            end
            if not VRReady and Input.UserInputType == Enum.UserInputType.MouseButton2 then
                Point2 = true
            end
            if VRReady and Input.KeyCode == Enum.KeyCode.ButtonY then
                Character:BreakJoints()
                if RagdollEnabled and RagdollHeadMovement then
                    if _G.changeSomeStuff == true then
                        player1.CameraMaxZoomDistance = maxZoom
                        player1.CameraMinZoomDistance = minZoom
                        player1.CameraMode = cameraMode
                    end
                    --Network:Unclaim()
                    Respawn()
                end
            end
        end
    )
    local OnInputEnded =
        UserInputService.InputEnded:Connect(
        function(Input, Processed)
            if not Processed then
                if _G.changeSomeStuff == false then
                    if Input.KeyCode == Enum.KeyCode.LeftControl or Input.KeyCode == Enum.KeyCode.ButtonL2 then
                        Tween(
                            VirtualBody.Humanoid,
                            "Elastic",
                            "Out",
                            1,
                            {
                                CameraOffset = Vector3.new(0, StudsOffset, 0)
                            }
                        )
                    end
                else
                    if Input.KeyCode == Enum.KeyCode.LeftControl or Input.KeyCode == Enum.KeyCode.ButtonL3 then
                        Tween(
                            VirtualBody.Humanoid,
                            "Elastic",
                            "Out",
                            1,
                            {
                                CameraOffset = Vector3.new(0, StudsOffset, 0)
                            }
                        )
                    end
                end
            end
            if _G.changeSomeStuff == false then
                if Input.KeyCode == Enum.KeyCode.LeftShift or Input.KeyCode == Enum.KeyCode.ButtonR2 then
                    Tween(
                        VirtualBody.Humanoid,
                        "Sine",
                        "Out",
                        1,
                        {
                            WalkSpeed = 8
                        }
                    )
                end
            else
                if Input.KeyCode == Enum.KeyCode.LeftShift or Input.KeyCode == Enum.KeyCode.ButtonR3 then
                    Tween(
                        VirtualBody.Humanoid,
                        "Sine",
                        "Out",
                        1,
                        {
                            WalkSpeed = 8
                        }
                    )
                end
            end
            if not VRReady and Input.UserInputType == Enum.UserInputType.MouseButton1 then
                Point1 = false
            end
            if not VRReady and Input.UserInputType == Enum.UserInputType.MouseButton2 then
                Point2 = false
            end
        end
    )
    --[[
 Proper Cleanup
--]]
    local OnReset
    OnReset =
        Client.CharacterAdded:Connect(
        function()
            OnReset:Disconnect()
            CFrameChanged:Disconnect()
            OnStepped:Disconnect()
            OnRenderStepped:Disconnect()
            OnMoving:Disconnect()
            OnInput:Disconnect()
            OnInputEnded:Disconnect()
            VirtualRig:Destroy()
            VirtualBody:Destroy()
            if RagdollEnabled then
                --Network:Unclaim()
            end
            if AutoRun then
                delay(
                    2,
                    function()
                        Script()
                    end
                )
            end
        end
    )
    if ChatEnabled then
        spawn(ChatHUDFunc)
    end
    if ViewportEnabled then
        spawn(ViewHUDFunc)
    end
    do
        --[[
 Functions
 --]]
        local Players = game:GetService("Players")
        local Client = Players.LocalPlayer
        local VRService = game:GetService("VRService")
        local VRReady = VRService.VREnabled
        local UserInputService = game:GetService("UserInputService")
        local RunService = game:GetService("RunService")
        local Camera = workspace.CurrentCamera
        --[[
 Code
 --]]
        if VRReady then
            local Pointer = game:GetObjects("rbxassetid://4476173280")[1]
            Pointer.Parent = workspace
            Pointer.Beam.Enabled = false
            Pointer.Target.ParticleEmitter.Enabled = false
            local RenderStepped =
                RunService.RenderStepped:Connect(
                function()
                    if Pointer.Beam.Enabled then
                        local RightHand = Camera.CFrame * VRService:GetUserCFrame(Enum.UserCFrame.RightHand)
                        local Target = RightHand * CFrame.new(0, 0, -10)
                        local Line = Ray.new(RightHand.p, (Target.p - RightHand.p).Unit * 128)
                        local Part, Position =
                            workspace:FindPartOnRayWithIgnoreList(Line, {VirtualRig, VirtualBody, Character, Pointer})
                        local Distance = (Position - RightHand.p).Magnitude
                        Pointer.Target.Position = Vector3.new(0, 0, -Distance)
                        Pointer.CFrame = RightHand
                    end
                end
            )
            local Input =
                UserInputService.InputBegan:Connect(
                function(Input)
                    if Input.KeyCode == Enum.KeyCode.ButtonB then
                        Pointer.Beam.Enabled = not Pointer.Beam.Enabled
                        Pointer.Target.ParticleEmitter.Enabled = not Pointer.Target.ParticleEmitter.Enabled
                    end
                end
            )
            --
            local CharacterAdded
            CharacterAdded =
                Client.CharacterAdded:Connect(
                function()
                    RenderStepped:Disconnect()
                    Input:Disconnect()
                    CharacterAdded:Disconnect()
                    Pointer:Destroy()
                    Pointer = nil
                end
            )
        else
            return
        end
    end
end
Permadeath = function()
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
    wait(game.Players.RespawnTime/2)
    warn("50%")
    game.Players.LocalPlayer.Character = ch
    wait(game.Players.RespawnTime/2 + 0.5)
    warn("100%")
end
Respawn = function()
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
    wait(game.Players.RespawnTime)
    game.Players.LocalPlayer.Character = ch
end
ChatHUDFunc = function()
    --[[
 Variables
 --]]
    local UserInputService = game:GetService("UserInputService")
    local RunService = game:GetService("RunService")
    local VRService = game:GetService("VRService")
    local VRReady = VRService.VREnabled
    local Players = game:GetService("Players")
    local Client = Players.LocalPlayer
    local ChatHUD = game:GetObjects("rbxassetid://4476067885")[1]
    local GlobalFrame = ChatHUD.GlobalFrame
    local Template = GlobalFrame.Template
    local LocalFrame = ChatHUD.LocalFrame
    local Global = ChatHUD.Global
    local Local = ChatHUD.Local
    local Camera = workspace.CurrentCamera
    Template.Parent = nil
    ChatHUD.Parent = game:GetService("CoreGui")
    --[[
 Code
 --]]
    local Highlight = Global.Frame.BackgroundColor3
    local Deselected = Local.Frame.BackgroundColor3
    local OpenGlobalTab = function()
        Global.Frame.BackgroundColor3 = Highlight
        Local.Frame.BackgroundColor3 = Deselected
        Global.Font = Enum.Font.SourceSansBold
        Local.Font = Enum.Font.SourceSans
        GlobalFrame.Visible = true
        LocalFrame.Visible = false
    end
    local OpenLocalTab = function()
        Global.Frame.BackgroundColor3 = Deselected
        Local.Frame.BackgroundColor3 = Highlight
        Global.Font = Enum.Font.SourceSans
        Local.Font = Enum.Font.SourceSansBold
        GlobalFrame.Visible = false
        LocalFrame.Visible = true
    end
    Global.MouseButton1Down:Connect(OpenGlobalTab)
    Local.MouseButton1Down:Connect(OpenLocalTab)
    Global.MouseButton1Click:Connect(OpenGlobalTab)
    Local.MouseButton1Click:Connect(OpenLocalTab)
    OpenLocalTab()
    --
    local function GetPlayerDistance(Sender)
        if Sender.Character and Sender.Character:FindFirstChild("Head") then
            return math.floor((Sender.Character.Head.Position - Camera:GetRenderCFrame().p).Magnitude + 0.5)
        end
    end
    local function NewGlobal(Message, Sender, Color)
        local Frame = Template:Clone()
        Frame.Text = ("[%s]: %s"):format(Sender.Name, Message)
        Frame.User.Text = ("[%s]:"):format(Sender.Name)
        Frame.User.TextColor3 = Color
        Frame.BackgroundColor3 = Color
        Frame.Parent = GlobalFrame
        delay(
            60,
            function()
                Frame:Destroy()
            end
        )
    end
    local function NewLocal(Message, Sender, Color, Dist)
        local Frame = Template:Clone()
        Frame.Text = ("(%s) [%s]: %s"):format(tostring(Dist), Sender.Name, Message)
        Frame.User.Text = ("(%s) [%s]:"):format(tostring(Dist), Sender.Name)
        Frame.User.TextColor3 = Color
        Frame.BackgroundColor3 = Color
        Frame.Parent = LocalFrame
        delay(
            60,
            function()
                Frame:Destroy()
            end
        )
    end
    local function OnNewChat(Message, Sender, Color)
        if not ChatHUD or not ChatHUD.Parent then
            return
        end
        NewGlobal(Message, Sender, Color)
        local Distance = GetPlayerDistance(Sender)
        if Distance and Distance <= ChatLocalRange then
            NewLocal(Message, Sender, Color, Distance)
        end
    end
    local function OnPlayerAdded(Player)
        if not ChatHUD or not ChatHUD.Parent then
            return
        end
        local Color = BrickColor.Random().Color
        Player.Chatted:Connect(
            function(Message)
                OnNewChat(Message, Player, Color)
            end
        )
    end
    Players.PlayerAdded:Connect(OnPlayerAdded)
    for _, Player in pairs(Players:GetPlayers()) do
        OnPlayerAdded(Player)
    end
    --
    local ChatPart = ChatHUD.Part
    ChatHUD.Adornee = ChatPart
    if VRReady then
        ChatHUD.Parent = game:GetService("CoreGui")
        ChatHUD.Enabled = true
        ChatHUD.AlwaysOnTop = true
        local OnInput =
            UserInputService.InputBegan:Connect(
            function(Input, Processed)
                if not Processed then
                    if Input.KeyCode == Enum.KeyCode.ButtonX then
                        ChatHUD.Enabled = not ChatHUD.Enabled
                    end
                end
            end
        )
        local RenderStepped =
            RunService.RenderStepped:Connect(
            function()
                local LeftHand = VRService:GetUserCFrame(Enum.UserCFrame.LeftHand)
                ChatPart.CFrame = Camera.CFrame * LeftHand
            end
        )
        local CharacterAdded
        CharacterAdded =
            Client.CharacterAdded:Connect(
            function()
                OnInput:Disconnect()
                RenderStepped:Disconnect()
                CharacterAdded:Disconnect()
                ChatHUD:Destroy()
                ChatHUD = nil
            end
        )
    end
    wait(9e9)
end
ViewHUDFunc = function()
    --[[
 Variables
 --]]
    local ViewportRange = ViewportRange or 32
    local UserInputService = game:GetService("UserInputService")
    local RunService = game:GetService("RunService")
    local VRService = game:GetService("VRService")
    local VRReady = VRService.VREnabled
    local Players = game:GetService("Players")
    local Client = Players.LocalPlayer
    local Mouse = Client:GetMouse()
    local Camera = workspace.CurrentCamera
    local CameraPort = Camera.CFrame
    local ViewHUD = script:FindFirstChild("ViewHUD") or game:GetObjects("rbxassetid://4480405425")[1]
    local Viewport = ViewHUD.Viewport
    local Viewcam = Instance.new("Camera")
    local ViewPart = ViewHUD.Part
    ViewHUD.Parent = game:GetService("CoreGui")
    Viewcam.Parent = Viewport
    Viewcam.CameraType = Enum.CameraType.Scriptable
    Viewport.CurrentCamera = Viewcam
    Viewport.BackgroundTransparency = 1
    --[[
 Code
 --]]
    local function Clone(Character)
        local Arc = Character.Archivable
        local Clone
        Character.Archivable = true
        Clone = Character:Clone()
        Character.Archivable = Arc
        return Clone
    end
    local function GetPart(Name, Parent, Descendants)
        for i = 1, #Descendants do
            local Part = Descendants[i]
            if Part.Name == Name and Part.Parent.Name == Parent then
                return Part
            end
        end
    end
    local function OnPlayerAdded(Player)
        if not ViewHUD or not ViewHUD.Parent then
            return
        end
        local function CharacterAdded(Character)
            if not ViewHUD or not ViewHUD.Parent then
                return
            end
            Character:WaitForChild("Head")
            Character:WaitForChild("Humanoid")
            wait(3)
            local FakeChar = Clone(Character)
            local Root = FakeChar:FindFirstChild("HumanoidRootPart") or FakeChar:FindFirstChild("Head")
            local RenderConnection
            local Descendants = FakeChar:GetDescendants()
            local RealDescendants = Character:GetDescendants()
            local Correspondents = {}
            FakeChar.Humanoid.DisplayDistanceType = "None"
            for i = 1, #Descendants do
                local Part = Descendants[i]
                local Real = Part:IsA("BasePart") and GetPart(Part.Name, Part.Parent.Name, RealDescendants)
                if Part:IsA("BasePart") and Real then
                    Part.Anchored = true
                    Part:BreakJoints()
                    if Part.Parent:IsA("Accessory") then
                        Part.Transparency = 0
                    end
                    table.insert(Correspondents, {Part, Real})
                end
            end
            RenderConnection =
                RunService.RenderStepped:Connect(
                function()
                    if not Character or not Character.Parent then
                        RenderConnection:Disconnect()
                        FakeChar:Destroy()
                        return
                    end
                    if
                        (Root and (Root.Position - Camera.CFrame.p).Magnitude <= ViewportRange) or Player == Client or
                            not Root
                     then
                        for i = 1, #Correspondents do
                            local Part, Real = unpack(Correspondents[i])
                            if Part and Real and Part.Parent and Real.Parent then
                                Part.CFrame = Real.CFrame
                            elseif Part.Parent and not Real.Parent then
                                Part:Destroy()
                            end
                        end
                    end
                end
            )
            FakeChar.Parent = Viewcam
        end
        Player.CharacterAdded:Connect(CharacterAdded)
        if Player.Character then
            spawn(
                function()
                    CharacterAdded(Player.Character)
                end
            )
        end
    end
    local PlayerAdded = Players.PlayerAdded:Connect(OnPlayerAdded)
    for _, Player in pairs(Players:GetPlayers()) do
        OnPlayerAdded(Player)
    end
    ViewPart.Size = Vector3.new()
    if VRReady then
        Viewport.Position = UDim2.new(.62, 0, .89, 0)
        Viewport.Size = UDim2.new(.3, 0, .3, 0)
        Viewport.AnchorPoint = Vector2.new(.5, 1)
    else
        Viewport.Size = UDim2.new(0.3, 0, 0.3, 0)
    end
    local RenderStepped =
        RunService.RenderStepped:Connect(
        function()
            local Render = Camera.CFrame
            local Scale = Camera.ViewportSize
            if VRReady then
                Render = Render * VRService:GetUserCFrame(Enum.UserCFrame.Head)
            end
            CameraPort = CFrame.new(Render.p + Vector3.new(5, 2, 0), Render.p)
            Viewport.Camera.CFrame = CameraPort
            ViewPart.CFrame = Render * CFrame.new(0, 0, -16)
            ViewHUD.Size = UDim2.new(0, Scale.X - 6, 0, Scale.Y - 6)
        end
    )
    --
    local CharacterAdded
    CharacterAdded =
        Client.CharacterAdded:Connect(
        function()
            RenderStepped:Disconnect()
            CharacterAdded:Disconnect()
            PlayerAdded:Disconnect()
            ViewHUD:Destroy()
            ViewHUD = nil
        end
    )
    
    ------------------------Part of modification------------------------
    for i,v in pairs(character1:GetDescendants()) do
        if v:IsA("Motor6D") then
            v:Destroy()
        end
        
        if v:IsA("Weld") and v.Parent.Parent.Parent ~= reanimation then
            v:Destroy()
        end
    end
    
    --Netless
    game:GetService("RunService").Heartbeat:Connect(function()
        if character1.Humanoid.RigType == Enum.HumanoidRigType.R15 then
            --Head
            if character1:FindFirstChild("Head") then
                character1.Head.CFrame = reanimation.Head.CFrame
            end
            
            --Torso
            if character1:FindFirstChild("UpperTorso") then
                character1.UpperTorso.CFrame = reanimation.Torso.CFrame * CFrame.new(0, 0.185, 0)
            end
            if character1:FindFirstChild("LowerTorso") then
                character1.LowerTorso.CFrame = reanimation.Torso.CFrame * CFrame.new(0, -0.8, 0)
            end
            
            --HumanoidRootPart
            --if character1:FindFirstChild("HumanoidRootPart") then
                --character1.HumanoidRootPart.CFrame = cHRP.CFrame
            --end
            
            --Left Arm
            if character1:FindFirstChild("LeftUpperArm") then
                character1.LeftUpperArm.CFrame = reanimation["Left Arm"].CFrame * CFrame.new(0, 0.4, 0)
            end
            if character1:FindFirstChild("LeftLowerArm") then
                character1.LeftLowerArm.CFrame = reanimation["Left Arm"].CFrame * CFrame.new(0, -0.19, 0)
            end
            if character1:FindFirstChild("LeftHand") then
                character1.LeftHand.CFrame = reanimation["Left Arm"].CFrame * CFrame.new(0, -0.84, 0)
            end
            
            --Right Arm
            if character1:FindFirstChild("RightUpperArm") then
                character1.RightUpperArm.CFrame = reanimation["Right Arm"].CFrame * CFrame.new(0, 0.4, 0)
            end
            if character1:FindFirstChild("RightLowerArm") then
                character1.RightLowerArm.CFrame = reanimation["Right Arm"].CFrame * CFrame.new(0, -0.19, 0)
            end
            if character1:FindFirstChild("RightHand") then
                character1.RightHand.CFrame = reanimation["Right Arm"].CFrame * CFrame.new(0, -0.84, 0)
            end
            
            --Left Leg
            if character1:FindFirstChild("LeftUpperLeg") then
                character1.LeftUpperLeg.CFrame = reanimation["Left Leg"].CFrame * CFrame.new(0, 0.55, 0)
            end
            if character1:FindFirstChild("LeftLowerLeg") then
                character1.LeftLowerLeg.CFrame = reanimation["Left Leg"].CFrame * CFrame.new(0, -0.19, 0)
            end
            if character1:FindFirstChild("LeftFoot") then
                character1.LeftFoot.CFrame = reanimation["Left Leg"].CFrame * CFrame.new(0, -0.85, 0)
            end
            
            --Right Leg
            if character1:FindFirstChild("RightUpperLeg") then
                character1.RightUpperLeg.CFrame = reanimation["Right Leg"].CFrame * CFrame.new(0, 0.55, 0)
            end
            if character1:FindFirstChild("RightLowerLeg") then
                character1.RightLowerLeg.CFrame = reanimation["Right Leg"].CFrame * CFrame.new(0, -0.19, 0)
            end
            if character1:FindFirstChild("RightFoot") then
                character1.RightFoot.CFrame = reanimation["Right Leg"].CFrame * CFrame.new(0, -0.85, 0)
            end
        end
            
        for i,v in pairs(character1:GetChildren()) do
            if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" and v.Name ~= "fake" and reanimation:FindFirstChild(v.Name) then
                v.Velocity = Vector3.new(_G.bodyVelocity[1], _G.bodyVelocity[2], _G.bodyVelocity[3])
                if character1.Humanoid.RigType == Enum.HumanoidRigType.R6 then
                    v.CFrame = reanimation:FindFirstChild(v.Name).CFrame
                end
            end
            
            if v.Name == "HumanoidRootPart" then
                --hrp.Position = sword.Position
                v.Velocity = Vector3.new(_G.hrpVelocity[1], _G.hrpVelocity[2], _G.hrpVelocity[3])
            end
            
            if v:IsA("Accessory") then
                v.Handle.Velocity = Vector3.new(_G.hatVelocity[1], _G.hatVelocity[2], _G.hatVelocity[3])
                v.Handle.CFrame = reanimation:FindFirstChild(v.Name).Handle.CFrame
            end
            
            if v.Name == "fake" then
                v.Velocity = Vector3.new(0,0,0)
            end
            
            if v:IsA("Tool") then
                v.Handle.Velocity = Vector3.new(_G.toolVelocity[1], _G.toolVelocity[2], _G.toolVelocity[3])
                if v.Handle.CanCollide == true then
                    v.Handle.CanCollide = false
                end
            end
        end
    end)
    
    --Collision
    game:GetService("RunService").Stepped:Connect(function()
        for i,v in pairs(reanimation:GetChildren()) do
            if v:IsA("BasePart") then
                v.CanCollide = false
            end
        end
    end)
    
    scriptLoaded = true
    
    while character1.Parent == game.Workspace do
        if shooting == false and not hrp:FindFirstChild("AlignPosition") then
            if _G.secondaryWeapon == true and _G.flinging == true then
                hrp.Position = sword.Position
            elseif _G.primaryWeapon == true and _G.flinging == true then
                hrp.Position = gun.Position
            else
                if _G.flinging == true then
                    hrp.Position = reanimation.Torso.Position
                else
                    hrp.CFrame = reanimation.Torso.CFrame
                end
            end
            if holdingSword == false and flinger.AngularVelocity == Vector3.new(10000, 10000, 10000) and _G.flinging == true then
                flinger.AngularVelocity = Vector3.new(0, 0, 0)
            end
        else
            if table.find(automaticGuns, gun.Parent.Name) and shooting == true and _G.primaryWeapon == true then
                GunShot(1583819337, 1, math.random(90,110)/100)
                Bullet(_G.automaticLifetime)
                wait(0.1)
            end
        end
        game:GetService("RunService").Heartbeat:wait()
    end
    --------------------------------------------------------------------
end
Script()
wait(2)
local Players = game:GetService("Players")
local lp = Players.LocalPlayer
local character = reanimation--lp.Character
local A0LL = Instance.new("Attachment", character["Left Leg"])
A0LL.Position = Vector3.new(0, 1, 0)
local A1LL = Instance.new("Attachment", character["Torso"])
A1LL.Position = Vector3.new(-0.5, -1, 0)
local socket1 = Instance.new("BallSocketConstraint", character["Left Leg"])
socket1.Attachment0 = A0LL
socket1.Attachment1 = A1LL
local A0RL = Instance.new("Attachment", character["Right Leg"])
A0RL.Position = Vector3.new(0, 1, 0)
local A1RL = Instance.new("Attachment", character["Torso"])
A1RL.Position = Vector3.new(0.5, -1, 0)
local socket2 = Instance.new("BallSocketConstraint", character["Right Leg"])
socket2.Attachment0 = A0RL
socket2.Attachment1 = A1RL
local A0H = Instance.new("Attachment", character["Head"])
A0H.Position = Vector3.new(0, -0.5, 0)
local A1H = Instance.new("Attachment", character["Torso"])
A1H.Position = Vector3.new(0, 1, 0)
local socket5 = Instance.new("BallSocketConstraint", character["Head"])
socket5.Attachment0 = A0H
socket5.Attachment1 = A1H
-----------------------------------------------------------

local character = game.Players.LocalPlayer.Character
print(character.Humanoid:GetFullName())
character.Humanoid.BreakJointsOnDeath = false

local function Align(Part1,Part0,CFrameOffset) 
	local AlignPos = Instance.new('AlignPosition', Part1);
	AlignPos.Parent.CanCollide = false;
	AlignPos.ApplyAtCenterOfMass = false;
	AlignPos.MaxForce = 67752;
	AlignPos.MaxVelocity = math.huge/9e110;
	AlignPos.ReactionForceEnabled = false;
	AlignPos.Responsiveness = 200;
	AlignPos.RigidityEnabled = true;
	local AlignOri = Instance.new('AlignOrientation', Part1);
	AlignOri.MaxAngularVelocity = math.huge/9e110;
	AlignOri.MaxTorque = 67752;
	AlignOri.PrimaryAxisOnly = false;
	AlignOri.ReactionTorqueEnabled = false;
	AlignOri.Responsiveness = 200;
	AlignOri.RigidityEnabled = true;
	local AttachmentA=Instance.new('Attachment',Part1);
	local AttachmentB=Instance.new('Attachment',Part0);
	AttachmentB.CFrame = AttachmentA.CFrame * CFrameOffset
	AlignPos.Attachment0 = AttachmentA;
	AlignPos.Attachment1 = AttachmentB;
	AlignOri.Attachment0 = AttachmentA;
	AlignOri.Attachment1 = AttachmentB;
end

character.ChildAdded:Connect(function(v)
    if not v:IsA("Tool") then return end
    wait(0.2)
    local fake = v.Handle:Clone()
    fake.Name = "fake"
    fake.Parent = character
    fake.Massless = true
    fake.Transparency = 0.5
    for i = 1,10 do
        v.Handle.CFrame = fake.CFrame
    end
    wait()
    local weld = Instance.new("Weld",fake)
    weld.C0 = CFrame.new(0, -1, 0, 1, 0, -0, 0, 0, 1, 0, -1, -0)
    weld.C1 = v.Grip
    weld.Part0 = cRArm
    weld.Part1 = fake
    for i,v in pairs(v.Handle:GetChildren()) do if v:IsA("AlignPosition") or v:IsA("AlignOrientation") or v:IsA("Attachment") then v:remove() end end
    Align(v.Handle, fake, CFrame.new(0,0,0))
    v.AncestryChanged:Connect(function()
        fake:remove()
    end)
end)
