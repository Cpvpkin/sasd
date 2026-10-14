pcall(function()
game:GetService("StarterGui"):SetCore("SendNotification", {
Title ="Big Hub",
Text ="Script laeuft, lade UI...",
Duration = 4,
})
end)local _0xA92F ="BigHub_rayfield.lua"local function _0xC3EA(_0x7E3E, quelle, _0x55A1)
local _0xAFC7, _0x17DA = loadstring(_0x7E3E)
if not _0xAFC7 then
table.insert(_0x55A1, quelle ..": Kompilierfehler ".. tostring(_0x17DA))
return nil
end
local _0x6CDC, _0xC566 = pcall(_0xAFC7)
if _0x6CDC and type(_0xC566) =="table"then
print("[BigHub] UI-Bibliothek geladen (".. quelle ..")")
return _0xC566
end
table.insert(_0x55A1, quelle ..": Laufzeitfehler ".. tostring(_0xC566))
return nil
end
local function _0xAAB1()
local _0x55A1 = {}for versuch = 1, 3 do
local _0xB6DD, _0x7E3E = pcall(function()
return game:HttpGet("https://sirius.menu/gen2")
end)
if _0xB6DD and type(_0x7E3E) =="string"and #_0x7E3E > 2000 then
local _0xC566 = _0xC3EA(_0x7E3E,"Netz, Versuch ".. versuch, _0x55A1)
if _0xC566 then
pcall(function()
if writefile then
writefile(_0xA92F, _0x7E3E)
end
end)
return _0xC566
end
else
table.insert(_0x55A1,"Versuch ".. versuch ..": HttpGet ".. tostring(_0x7E3E):sub(1, 120))
end
task.wait(1)
endlocal _0x654A, _0x7E3E = pcall(function()
if isfile and isfile(_0xA92F) and readfile then
return readfile(_0xA92F)
end
return nil
end)
if _0x654A and type(_0x7E3E) =="string"and #_0x7E3E > 2000 then
print("[BigHub] Netz ging nicht, nehme die lokale Kopie")
local _0xC566 = _0xC3EA(_0x7E3E,"lokale Kopie", _0x55A1)
if _0xC566 then
return _0xC566
end
else
table.insert(_0x55A1,"keine lokale Kopie vorhanden")
end
return nil, table.concat(_0x55A1," | ")
end
local _0xA51E, _0xB118 = _0xAAB1()
if not _0xA51E then
warn("[BigHub] UI-Bibliothek nicht ladbar: ".. tostring(_0xB118))
pcall(function()
if setclipboard then
setclipboard("BigHub: UI nicht ladbar - ".. tostring(_0xB118))
end
end)
pcall(function()
game:GetService("StarterGui"):SetCore("SendNotification", {
Title ="Big Hub",
Text ="UI nicht ladbar. Grund in der Zwischenablage, einfach einfuegen.",
Duration = 15,
})
end)
return
end
local _0x425B = game:GetService("Players")
local _0x400B = game:GetService("StarterGui")
local _0x5F11 = game:GetService("ReplicatedStorage")
local _0xC2D2 = _0x425B.LocalPlayerpcall(function()
print("[BigHub] ==== Script gestartet ====")
print("[BigHub] Spieler ".. tostring(_0xC2D2 and _0xC2D2.Name)
.."  PlaceId ".. tostring(game.PlaceId))
print("[BigHub] getconnections=".. tostring(type(getconnections) =="function")
.."  setclipboard=".. tostring(type(setclipboard) =="function")
.."  gethui=".. tostring(type(gethui) =="function")
.."  hookmetamethod=".. tostring(type(hookmetamethod) =="function"))
end)local _0x7CDD = {
Name ="Big Hub",
Subtitle ="v5.5  -  Made by waaizy9",
Author ="waaizy9",
Theme ="default",Sidebar = true,RequireKey = true,
VisualLock = false,
KeyFile ="BigHub_key.txt",KeySave = true,
Keys = {"BigHub2026","testkey"},
KeyUrl = nil,KeyLink ="https://discord.gg/aaZC9gYksz",KeyTimeout = 120,AfterKey = {
Tab ="Mailbox",Send = true,Delay = 3,},
Areas = {
{ _0x1566 ="Area 1 - Starter", _0xD1B3 = Vector3.new(0, 10, 0), _0x0133 ="Area1"},
{ _0x1566 ="Area 2 - Forest", _0xD1B3 = Vector3.new(250, 10, 0), _0x0133 ="Area2"},
{ _0x1566 ="Area 3 - Desert", _0xD1B3 = Vector3.new(500, 10, 0), _0x0133 ="Area3"},
{ _0x1566 ="Area 4 - Volcano", _0xD1B3 = Vector3.new(750, 10, 0), _0x0133 ="Area4"},
},_0x5D7D = {Recipient ="Bruderhaus1234",
Message ="",FramePath = nil,SendRemote ="Mailbox: Send",
RequestRemote ="Mailbox: Request",UseRemote = true,RelayRemote ="EF_Relay",
ItemClass ="Pet",
SendDelay = 0.6,Verify = true,
VerifyDelay = 1.2,StopOnFailure = false,MemoryScan = false,Mode ="whitelist",Pets = {{ _0x1566 ="Titanic", match ="contains", _0xB2AA = {"any"}, shinyOnly = false, max = 999, priority = 100 },
{ _0x1566 ="Huge", match ="contains", _0xB2AA = {"any"}, shinyOnly = false, max = 999, priority = 50 },},
MaxPerMail = 0,SkipLocked = false,MaxRejects = 5,UnlockLocked = true,UnlockRemote ="Pets_Unlock",UnlockAlways = true,UnlockMode ="both",
UnlockWords = {"freischalten","unlock","entsperren","aufschliessen","unlocken","frei schalten"},AutoOpenInventory = false,
InventoryFramePath ="",KeepInventoryOpen = true,
InventoryWords = {"inventory","inventar","backpack","rucksack","bag"},LockKey ="",
SkipEquipped = true,AutoConfirm = true,DryRun = false,StepDelay = 0.12,VariantIds = { golden = 1, rainbow = 2 },
},_0xF61A = {Breakables = {
Interval = 0.8,Radius = 400,Height = 6,StayTime = 2.5,Container = nil,Damage = true,HitsPerSecond = 5,DamageRemote ="Breakables_PlayerDealDamage",
Smooth = true,FlySpeed = 140,},Orbs = {
Interval = 0.6,
Radius = 250,Batch = 40,Remote ="Orbs: Collect",
},Zones = {
Interval = 8,
OnlyUnlocked = true,Order = {},},Webhook = {
Url ="",Mode ="rare",
Words = {"huge","titanic","exclusive"},
Batch = 10,Name ="Big Hub",
Ping ="",SendStart = false,SendFirst = true,},Eggs = {
Interval = 2,EggName ="Manor Egg",
Amount = 28,Mode ="both",
GoToEgg = true,ClickMenu = true,
RefreshEvery = 8,EnableRemote ="AutoHatch_Enable",
DisableRemote ="AutoHatch_Disable",
HatchRemote ="CustomEggs_Hatch",
EggUid ="",},Halloween = {
Interval = 1.0,
Instance = nil,Action = nil,Remote ="Instancing_InvokeCustomFromClient",UsePrompts = true,PromptWords = {"treat","trick","open","oeffnen","candy","knock","klopf"},
PromptRadius = 500,HouseWords = {"house","haus","door","tuer","treat","candy","pumpkin","pillar","bucket","spooky","tot_"},HouseNames = {},
BossWords = {"boss","monster","enemy","gegner"},
MaxHouses = 8,HouseTime = 1.6,PressTries = 6,PressRadius = 30,Key ="E",BossTime = 120,BossWait = 15,Cooldown = 720,FlySpeed = 120,AfkAtEgg = true,
EggTarget ="",},
FarmingWorld = {
Interval = 2.0,
Plant = true,
Water = true,
Harvest = true,
Remote = nil,
},
},
}local _0x5FA8 = _0x7CDD.Mailbox
local _0x0689 = {
Master = true,
FarmEnabled = false,
FarmArea = _0x7CDD.Areas[1] and _0x7CDD.Areas[1].name or"Area 1",
FarmAutoTP = true,
FarmDelay = 1,
FarmRange = 50,
FarmTargets = {"Typ A"},
FarmAfkOnly = false,
FarmAutoCollect= true,
FarmAutoSell = false,
EggsEnabled = false,
EggType ="Common",
EggAmount = 10,
EggInterval = 1,
EggStopFull = true,
EggLog = true,MailTo = _0x5FA8.Recipient,
MailMessage = _0x5FA8.Message,
}local _0x2EE1 = {}
local _0x34F3 = 600local function _0x95EB(line)
local _0x7366 = os.date("[%H:%M:%S] ") .. tostring(line)
pcall(print,"[BigHub] ".. _0x7366)
table.insert(_0x2EE1, _0x7366)
if #_0x2EE1 > _0x34F3 then
table.remove(_0x2EE1, 1)
end
end
local _0xD731 = {
_0x3EFE = _0x2EE1,
_0xD166 = _0x95EB,
notify = function() end,
toast = function() end,
_0xE22C = function() end,
_0xEBA6 = function() end,
_0x9494 = function() end,
countAction = function() end,
_0xE8B3 = function() end,
}local function _0xDA9B(_0xE8B1, _0x7366, _0x0B31)
pcall(function()
_0x400B:SetCore("SendNotification", {
Title = tostring(_0xE8B1 or"Big Hub"),
Text = tostring(_0x7366 or""),
Duration = _0x0B31 or 6,
})
end)
endlocal _0xD6D1 = {}
function _0xD6D1.character()
return _0xC2D2 and _0xC2D2.Character
end
function _0xD6D1.root()
local _0xA8DB = _0xD6D1.character()
return _0xA8DB and _0xA8DB:FindFirstChild("HumanoidRootPart")
end
function _0xD6D1.teleport(_0xD1B3)
local _0x4CD1 = _0xD6D1.root()
if not _0x4CD1 then
return false
end
_0x4CD1.CFrame = CFrame.new(_0xD1B3)
return true
end
function _0xD6D1.distanceTo(_0xD1B3)
local _0x4CD1 = _0xD6D1.root()
if not _0x4CD1 then
return math.huge
end
return (_0x4CD1.Position - _0xD1B3).Magnitude
end
function _0xD6D1.area(_0x1566)
for _0x036B, _0xED58 in ipairs(_0x7CDD.Areas) do
if _0xED58.name == _0x1566 then
return _0xED58
end
end
return nil
end
function _0xD6D1.areaNames()
local _0x7DEF = {}
for _0x036B, _0xED58 in ipairs(_0x7CDD.Areas) do
table.insert(_0x7DEF, _0xED58.name)
end
return _0x7DEF
end
function _0xD6D1.wanted(typeName)
for _0x036B, t in ipairs(_0x0689.FarmTargets or {}) do
if t == typeName then
return true
end
end
return false
end
local function _0x0F4A(_0x946B)
local _0x49ED = tostring(_0x946B or""):lower()
_0x49ED = _0x49ED:gsub("^%s+",""):gsub("%s+$","")
return _0x49ED
end
local function _0x8635(_0x946B)
local _0x49ED = tostring(_0x946B or"")
_0x49ED = _0x49ED:gsub("^%s+",""):gsub("%s+$","")
return _0x49ED
end
local function _0x49FA(_0x7366, word)
return _0x0F4A(_0x7366):find(word, 1, true) ~= nil
endlocal _0x8373 = {}
_0x8373.enabled = true
_0x8373.rows = {}
_0x8373.spinnerIndex = 1
local _0x6F8B = {"|","/","-","\\"}
local _0xFF17 = {
{ _0x783B ="status", _0xA996 ="Status"},
{ _0x783B ="loops", _0xA996 ="Aktiv"},
{ _0x783B ="target", _0xA996 ="Ziel"},
{ _0x783B ="actions", _0xA996 ="Aktionen"},
{ _0x783B ="last", _0xA996 ="Letztes"},
}
function _0x8373.build()if _0x8373.broken then
return nil
end
local _0xCB58, _0x946F = pcall(function()
return _0x8373.gui and _0x8373.gui.Parent and _0x8373.gui or nil
end)
if _0xCB58 and _0x946F then
return _0x946F
end
local _0x515A, _0x0F54 = pcall(function()
if type(gethui) =="function"then
local _0xA6CD, _0x437E = pcall(gethui)
if _0xA6CD and _0x437E then
return _0x437E
end
end
return _0xC2D2:FindFirstChildOfClass("PlayerGui")
end)
if not _0x515A then
_0x8373.broken = true
warn("[BigHub] Overlay aus: ".. tostring(_0x0F54))
return nil
end
if not _0x0F54 then
return nil
end
local _0xA49E, _0x3110 = pcall(function()
local _0xFFAE = Instance.new("ScreenGui")
_0xFFAE.Name ="BigHubOverlay"_0xFFAE.ResetOnSpawn = false
_0xFFAE.IgnoreGuiInset = true
_0xFFAE.DisplayOrder = 9999
_0xFFAE.Parent = _0x0F54
local _0x3A60 = Instance.new("Frame")
_0x3A60.Name ="Panel"_0x3A60.AnchorPoint = Vector2.new(0, 0)
_0x3A60.Position = UDim2.new(0, 12, 0, 90)
_0x3A60.Size = UDim2.new(0, 330, 0, 0)
_0x3A60.AutomaticSize = Enum.AutomaticSize.Y
_0x3A60.BackgroundColor3 = Color3.fromRGB(16, 16, 22)
_0x3A60.BackgroundTransparency = 0.25
_0x3A60.BorderSizePixel = 0
_0x3A60.Parent = _0xFFAE
local _0xAB57 = Instance.new("UICorner")
_0xAB57.CornerRadius = UDim.new(0, 10)
_0xAB57.Parent = _0x3A60
local _0x53EE = Instance.new("UIStroke")
_0x53EE.Color = Color3.fromRGB(139, 92, 246)
_0x53EE.Thickness = 1.5
_0x53EE.Transparency = 0.2
_0x53EE.Parent = _0x3A60
local _0x1E04 = Instance.new("UIPadding")
_0x1E04.PaddingTop = UDim.new(0, 8)
_0x1E04.PaddingBottom = UDim.new(0, 8)
_0x1E04.PaddingLeft = UDim.new(0, 10)
_0x1E04.PaddingRight = UDim.new(0, 10)
_0x1E04.Parent = _0x3A60
local _0xCA77 = Instance.new("UIListLayout")
_0xCA77.FillDirection = Enum.FillDirection.Vertical
_0xCA77.SortOrder = Enum.SortOrder.LayoutOrder
_0xCA77.Padding = UDim.new(0, 2)
_0xCA77.Parent = _0x3A60
local _0xE8B1 = Instance.new("TextLabel")
_0xE8B1.Name ="Title"_0xE8B1.LayoutOrder = 0
_0xE8B1.Size = UDim2.new(1, 0, 0, 20)
_0xE8B1.BackgroundTransparency = 1
_0xE8B1.Font = Enum.Font.GothamBold
_0xE8B1.TextSize = 15
_0xE8B1.TextColor3 = Color3.fromRGB(190, 160, 255)
_0xE8B1.TextXAlignment = Enum.TextXAlignment.Left
_0xE8B1.Text = _0x7CDD.Name .."  |  bereit"_0xE8B1.Parent = _0x3A60
_0x8373.title = _0xE8B1
for _0xBE19, _0x5833 in ipairs(_0xFF17) do
local _0xA996 = Instance.new("TextLabel")
_0xA996.Name = _0x5833.key
_0xA996.LayoutOrder = _0xBE19
_0xA996.Size = UDim2.new(1, 0, 0, 16)
_0xA996.BackgroundTransparency = 1
_0xA996.Font = Enum.Font.Code
_0xA996.TextSize = 13
_0xA996.TextColor3 = Color3.fromRGB(225, 225, 235)
_0xA996.TextXAlignment = Enum.TextXAlignment.Left
_0xA996.TextTruncate = Enum.TextTruncate.AtEnd
_0xA996.Text = _0x5833.label ..": -"_0xA996.Parent = _0x3A60
_0x8373.rows[_0x5833.key] = _0xA996
end
return _0xFFAE
end)
if not _0xA49E then
_0x8373.broken = true
warn("[BigHub] Overlay konnte nicht gebaut werden: ".. tostring(_0x3110))
return nil
end
_0x8373.gui = _0x3110
return _0x3110
endfunction _0x8373.set(_0x783B, _0x7366)
if not _0x8373.enabled or _0x8373.broken then
return
end
pcall(function()
if not _0x8373.build() then
return
end
local _0xA996 = _0x8373.rows[_0x783B]
if not _0xA996 then
return
end
for _0x036B, _0x5833 in ipairs(_0xFF17) do
if _0x5833.key == _0x783B then
_0xA996.Text = _0x5833.label ..": ".. tostring(_0x7366)
return
end
end
end)
endfunction _0x8373.pulse(what)
if not _0x8373.enabled or _0x8373.broken then
return
end
pcall(function()
if not _0x8373.build() then
return
end
_0x8373.spinnerIndex = (_0x8373.spinnerIndex % #_0x6F8B) + 1
_0x8373.title.Text = _0x7CDD.Name .."  ".. _0x6F8B[_0x8373.spinnerIndex]
.."  ".. tostring(what or"laeuft")
end)
end
function _0x8373.setVisible(_0x946B)
_0x8373.enabled = _0x946B
if _0x8373.gui then
pcall(function()
_0x8373.gui.Enabled = _0x946B
end)
end
if _0x946B then
_0x8373.build()
end
endlocal _0x8643 = {}local function _0x670A()
local _0x46D7, _0x6F5A = pcall(function()
return _0xC2D2:FindFirstChildOfClass("PlayerGui")
end)
if _0x46D7 and _0x6F5A then
return _0x6F5A,"PlayerGui"end
if type(gethui) =="function"then
local _0xA49E, _0x437E = pcall(gethui)
if _0xA49E and _0x437E then
return _0x437E,"gethui"end
end
return nil,"kein Ort fuer die GUI"endlocal _0x5423 = {
bg = Color3.fromRGB(20, 23, 32),
surface = Color3.fromRGB(31, 37, 51),
accent = Color3.fromRGB(64, 132, 244),
_0x7366 = Color3.fromRGB(240, 243, 250),
muted = Color3.fromRGB(138, 149, 171),
_0x53EE = Color3.fromRGB(52, 63, 86),
thickness = 1,
_0xAB57 = UDim.new(0, 10),
bgAlpha = 0,
font = Enum.Font.Gotham,
fontBold = Enum.Font.GothamBold,
}
local function _0x31F1(_0x0F54, _0x85A1, _0x7366, _0x0201, _0x0397, _0x6AB1, bold)
local _0xA996 = Instance.new("TextLabel")
_0xA996.LayoutOrder = _0x85A1
_0xA996.Size = UDim2.new(1, 0, 0, _0x0201 + 6)
_0xA996.BackgroundTransparency = 1
_0xA996.Font = bold and _0x6AB1.fontBold or _0x6AB1.font
_0xA996.TextSize = _0x0201
_0xA996.TextColor3 = _0x0397
_0xA996.TextXAlignment = Enum.TextXAlignment.Left
_0xA996.TextWrapped = true
_0xA996.Text = _0x7366
_0xA996.Parent = _0x0F54
return _0xA996
end
function _0x8643.close()
if _0x8643.gui then
pcall(function()
_0x8643.gui:Destroy()
end)
_0x8643.gui = nil
end
endfunction _0x8643.build(cfg)
cfg = cfg or {}
_0x8643.close()
local _0x6AB1 = {}
for _0x783B, _0x946B in pairs(_0x5423) do
_0x6AB1[_0x783B] = _0x946B
end
for _0x783B, _0x946B in pairs(cfg.theme or {}) do
if _0x946B ~= nil then
_0x6AB1[_0x783B] = _0x946B
end
end
local _0x0F54, _0xA2CB = _0x670A()
if not _0x0F54 then
_0xD731.log("key: ".. tostring(_0xA2CB))
return nil
end
_0xD731.log("key: Fenster kommt in ".. tostring(_0xA2CB))
local _0xA49E, _0xC566 = pcall(function()
local _0xFFAE = Instance.new("ScreenGui")
_0xFFAE.Name ="BigHubKey"_0xFFAE.ResetOnSpawn = false
_0xFFAE.IgnoreGuiInset = true
_0xFFAE.DisplayOrder = 99999
_0xFFAE.Parent = _0x0F54
local _0x3A60 = Instance.new("Frame")
_0x3A60.AnchorPoint = Vector2.new(0.5, 0.5)
_0x3A60.Position = UDim2.new(0.5, 0, 0.5, 0)
_0x3A60.Size = UDim2.new(0, 410, 0, 0)
_0x3A60.AutomaticSize = Enum.AutomaticSize.Y
_0x3A60.BackgroundColor3 = _0x6AB1.bg
_0x3A60.BackgroundTransparency = _0x6AB1.bgAlpha
_0x3A60.BorderSizePixel = 0
_0x3A60.Active = true
_0x3A60.Draggable = true
_0x3A60.Parent = _0xFFAE
local _0xAB57 = Instance.new("UICorner")
_0xAB57.CornerRadius = _0x6AB1.corner
_0xAB57.Parent = _0x3A60
local _0x53EE = Instance.new("UIStroke")
_0x53EE.Color = _0x6AB1.stroke
_0x53EE.Thickness = _0x6AB1.thickness
_0x53EE.Parent = _0x3A60
local _0x1E04 = Instance.new("UIPadding")
_0x1E04.PaddingTop = UDim.new(0, 16)
_0x1E04.PaddingBottom = UDim.new(0, 16)
_0x1E04.PaddingLeft = UDim.new(0, 18)
_0x1E04.PaddingRight = UDim.new(0, 18)
_0x1E04.Parent = _0x3A60
local _0xCA77 = Instance.new("UIListLayout")
_0xCA77.SortOrder = Enum.SortOrder.LayoutOrder
_0xCA77.Padding = UDim.new(0, 6)
_0xCA77.Parent = _0x3A60_0x31F1(_0x3A60, 1, _0x7CDD.Name, 19, _0x6AB1.text, _0x6AB1, true)
_0x31F1(_0x3A60, 2, _0x7CDD.Subtitle or"", 12, _0x6AB1.muted, _0x6AB1)
local _0xAD40 = Instance.new("Frame")
_0xAD40.LayoutOrder = 3
_0xAD40.Size = UDim2.new(1, 0, 0, 1)
_0xAD40.BackgroundColor3 = _0x6AB1.stroke
_0xAD40.BackgroundTransparency = 0.3
_0xAD40.BorderSizePixel = 0
_0xAD40.Parent = _0x3A60
local _0x6CEA = Instance.new("Frame")
_0x6CEA.LayoutOrder = 4
_0x6CEA.Size = UDim2.new(1, 0, 0, 4)
_0x6CEA.BackgroundTransparency = 1
_0x6CEA.Parent = _0x3A60
_0x31F1(_0x3A60, 5,"Enter your license key", 15, _0x6AB1.text, _0x6AB1, true)
_0x31F1(_0x3A60, 6,"You can get it from this Discord server:", 12,
_0x6AB1.muted, _0x6AB1)
_0x31F1(_0x3A60, 7, cfg.link or"", 12, _0x6AB1.accent, _0x6AB1)
local _0x0F4F = Instance.new("TextBox")
_0x0F4F.LayoutOrder = 8
_0x0F4F.Size = UDim2.new(1, 0, 0, 34)
_0x0F4F.BackgroundColor3 = _0x6AB1.surface
_0x0F4F.BorderSizePixel = 0
_0x0F4F.Font = _0x6AB1.font
_0x0F4F.TextSize = 14
_0x0F4F.TextColor3 = _0x6AB1.text
_0x0F4F.PlaceholderColor3 = _0x6AB1.muted
_0x0F4F.PlaceholderText ="license key"_0x0F4F.Text =""_0x0F4F.ClearTextOnFocus = false
_0x0F4F.Parent = _0x3A60
local _0xF6C2 = Instance.new("UICorner")
_0xF6C2.CornerRadius = UDim.new(0, math.max(_0x6AB1.corner.Offset - 4, 4))
_0xF6C2.Parent = _0x0F4F
local _0xBAB8 = Instance.new("UIStroke")
_0xBAB8.Color = _0x6AB1.stroke
_0xBAB8.Thickness = 1
_0xBAB8.Transparency = 0.4
_0xBAB8.Parent = _0x0F4F
local _0xE22C = _0x31F1(_0x3A60, 11,"", 12, _0x6AB1.muted, _0x6AB1)
local function _0x1509()
local _0x7366 = _0x0F4F.Text
if _0x7366 ==""then
_0xE22C.TextColor3 = _0x6AB1.muted
_0xE22C.Text ="Kein Key eingegeben."return
end
local _0x283A = cfg.onSubmit and cfg.onSubmit(_0x7366) or false
if not _0x283A then
_0xE22C.TextColor3 = Color3.fromRGB(235, 110, 110)
_0xE22C.Text ="Wrong key. Try again."_0x0F4F.Text =""end
end
_0x0F4F.FocusLost:Connect(function(enterPressed)
if enterPressed then
_0x1509()
end
end)
local _0x5833 = Instance.new("Frame")
_0x5833.LayoutOrder = 9
_0x5833.Size = UDim2.new(1, 0, 0, 34)
_0x5833.BackgroundTransparency = 1
_0x5833.Parent = _0x3A60
local _0xDA9C = Instance.new("UIListLayout")
_0xDA9C.FillDirection = Enum.FillDirection.Horizontal
_0xDA9C.Padding = UDim.new(0, 8)
_0xDA9C.Parent = _0x5833
local function _0xB269(_0x7366, width, _0x0397, textColor)
local _0xA8B8 = Instance.new("TextButton")
_0xA8B8.Size = UDim2.new(0, width, 1, 0)
_0xA8B8.BackgroundColor3 = _0x0397
_0xA8B8.BorderSizePixel = 0
_0xA8B8.Font = _0x6AB1.fontBold
_0xA8B8.TextSize = 13
_0xA8B8.TextColor3 = textColor
_0xA8B8.Text = _0x7366
_0xA8B8.AutoButtonColor = true
_0xA8B8.Parent = _0x5833
local _0x45E0 = Instance.new("UICorner")
_0x45E0.CornerRadius = UDim.new(0, math.max(_0x6AB1.corner.Offset - 4, 4))
_0x45E0.Parent = _0xA8B8
local _0x49ED = Instance.new("UIStroke")
_0x49ED.Color = _0x6AB1.stroke
_0x49ED.Thickness = 1
_0x49ED.Transparency = 0.5
_0x49ED.Parent = _0xA8B8
return _0xA8B8
end
local _0xB5A9 = _0xB269("Unlock", 140, _0x6AB1.accent,
Color3.fromRGB(255, 255, 255))
_0xB5A9.MouseButton1Click:Connect(_0x1509)
local _0x751A = _0xB269("Copy Discord link", 180, _0x6AB1.surface, _0x6AB1.text)
_0x751A.MouseButton1Click:Connect(function()
if type(setclipboard) =="function"then
pcall(setclipboard, cfg.link or"")
_0xE22C.TextColor3 = Color3.fromRGB(130, 215, 145)
_0xE22C.Text ="Link kopiert."else
_0xE22C.TextColor3 = Color3.fromRGB(235, 185, 115)
_0xE22C.Text ="Dein Executor kann nicht kopieren."end
end)
_0x31F1(_0x3A60, 12,"Enter druecken oder auf Unlock klicken.", 11,
_0x6AB1.muted, _0x6AB1)
task.defer(function()
pcall(function()
_0x0F4F:CaptureFocus()
end)
end)
return _0xFFAE
end)
if not _0xA49E then
warn("[BigHub] Key-Fenster konnte nicht gebaut werden: ".. tostring(_0xC566))
return nil
end
_0x8643.gui = _0xC566
return _0xC566
endlocal _0x66B5 = { E = 0x45, F = 0x46, Q = 0x51, R = 0x52, T = 0x54, Space = 0x20 }
function _0xD6D1.pressKey(_0x002B, _0xDA90)
_0x002B = _0x002B or"E"_0xDA90 = _0xDA90 or 0.12
local _0xAFEB = Enum.KeyCode[_0x002B] or Enum.KeyCode.E
local _0x4BD8 = pcall(function()
local _0x52F4 = game:GetService("VirtualInputManager")
_0x52F4:SendKeyEvent(true, _0xAFEB, false, game)
task.wait(_0xDA90)
_0x52F4:SendKeyEvent(false, _0xAFEB, false, game)
end)
if _0x4BD8 then
return true,"VirtualInputManager"end
local _0x9656 = _0x66B5[_0x002B]
if _0x9656 and type(keypress) =="function"then
local _0x5370 = pcall(function()
keypress(_0x9656)
task.wait(_0xDA90)
if type(keyrelease) =="function"then
keyrelease(_0x9656)
end
end)
if _0x5370 then
return true,"keypress"end
end
return false,"Executor kann keine Tasten schicken"endfunction _0xD6D1.glide(_0xD1B3, speed)
local _0x4CD1 = _0xD6D1.root()
if not _0x4CD1 then
return false
end
local _0x4847 = _0x4CD1.Position
local _0xFDE4 = (_0xD1B3 - _0x4847).Magnitude
if _0xFDE4 < 1 then
return true
end
local _0x0B31 = math.clamp(_0xFDE4 / math.max(speed or 140, 10), 0.05, 2)
local _0xB5DD = os.clock()
while true do
local _0xE562 = (os.clock() - _0xB5DD) / _0x0B31
if _0xE562 >= 1 then
break
end
local _0xBD80 = _0xD6D1.root()
if not _0xBD80 then
return false
end
local _0x964A = _0x4847:Lerp(_0xD1B3, _0xE562)
local _0x1461 = pcall(function()
_0xBD80.CFrame = CFrame.new(_0x964A, _0xD1B3)
end)
if not _0x1461 then
_0xBD80.CFrame = CFrame.new(_0x964A)
end
task.wait(0.03)
end
local _0x3E62 = _0xD6D1.root()
if _0x3E62 then
pcall(function()
_0x3E62.CFrame = CFrame.new(_0xD1B3, _0xD1B3 + (_0xD1B3 - _0x4847).Unit)
end)
end
return true
endlocal _0xF61A
local _0x5D7D = {}
_0x5D7D.lastReasons = {}_0x5D7D.sentUids = {}_0x5D7D.cannotMail = {}
function _0x5D7D.canClick()
return (type(getconnections) =="function") or (type(firesignal) =="function")
end
local _0xA6F6 = {"MouseButton1Click","Activated","MouseButton1Down","MouseButton1Up"}
local function _0x1C3C(_0xA8B8)
if not _0xA8B8 then
return false,"kein Button"end
local _0xDB81 = 0
if type(getconnections) =="function"then
for _0x036B, signalName in ipairs(_0xA6F6) do
local _0x8C7C, _0xAC7D = pcall(function()
return _0xA8B8[signalName]
end)
if _0x8C7C and _0xAC7D then
local _0x6852, _0xF7C2 = pcall(getconnections, _0xAC7D)
if _0x6852 and type(_0xF7C2) =="table"then
for _0x036B, connection in ipairs(_0xF7C2) do
pcall(function()
connection:Fire()
end)
_0xDB81 += 1
end
end
end
end
end
if _0xDB81 == 0 and type(firesignal) =="function"then
if pcall(firesignal, _0xA8B8.MouseButton1Click) then
_0xDB81 += 1
end
end
if _0xDB81 == 0 then
return false,"Executor kann keine GUI-Klicks senden"end
return true
endlocal function _0x8C02(_0x0F4F, _0x946B)
if not _0x0F4F then
return false,"Feld fehlt"end
if not _0x0F4F:IsA("TextBox") then
_0x0F4F = _0x0F4F:FindFirstChildWhichIsA("TextBox", true)
if not _0x0F4F then
return false,"keine TextBox"end
end
_0x946B = tostring(_0x946B or"")
pcall(function()
_0x0F4F:CaptureFocus()
end)
_0x0F4F.Text = _0x946B
task.wait(0.05)
_0x0F4F.Text = _0x946B
pcall(function()
_0x0F4F:ReleaseFocus(true)end)
task.wait(0.05)
return _0x0F4F.Text == _0x946B, _0x0F4F.Text
endlocal _0x0A5E
local function _0x3FCF()
if _0x0A5E then
return _0x0A5E
end
local _0x2D01 = {
{"Library -> .Client", function()
local _0x9248 = require(_0x5F11.Library)
return type(_0x9248) =="table"and _0x9248.Client or nil
end },
{"Library.Client", function()
return require(_0x5F11.Library.Client)
end },
{"Library.Client.Save", function()
local _0x1085 = require(_0x5F11.Library.Client.Save)
return type(_0x1085) =="table"and { Save = _0x1085 } or nil
end },
{"Library (Save drin)", function()
local _0x9248 = require(_0x5F11.Library)
if type(_0x9248) =="table"and _0x9248.Save then
return { Save = _0x9248.Save }
end
return nil
end },
{"geladene Module", function()
if type(getloadedmodules) ~="function"then
return nil
end
for _0x036B, module in ipairs(getloadedmodules()) do
if module.Name =="Client"and module.Parent and module.Parent.Name =="Library"then
local _0xA49E, _0xC566 = pcall(require, module)
if _0xA49E and type(_0xC566) =="table"then
return _0xC566
end
end
end
return nil
end },
}
local _0x55A1 = {}
for _0x036B, attempt in ipairs(_0x2D01) do
local _0xA49E, _0xC566 = pcall(attempt[2])
if _0xA49E and type(_0xC566) =="table"then
_0xD731.log("library: geladen ueber '".. attempt[1] .."'")
_0x0A5E = _0xC566
return _0xC566
end
table.insert(_0x55A1, attempt[1] .." -> ".. tostring(_0xC566))
end
return nil, table.concat(_0x55A1," | ")
endlocal function _0xF32A()
if not _0x5FA8.MemoryScan then
return nil,"Speicher-Scan aus (CONFIG.Mailbox.MemoryScan = true)"end
if type(getgc) ~="function"then
return nil,"getgc fehlt"end
local _0xA49E, _0xB090 = pcall(getgc, true)
if not _0xA49E or type(_0xB090) ~="table"then
return nil,"getgc lieferte nichts"end
local _0xAA11 = 0
for _0x036B, obj in ipairs(_0xB090) do
if type(obj) =="table"then
_0xAA11 += 1
local _0x43CE, _0xA303 = pcall(function()
return rawget(obj,"Inventory")
end)
if _0x43CE and type(_0xA303) =="table"then
local _0x81FA = rawget(_0xA303,"pets") or rawget(_0xA303,"Pets")
if type(_0x81FA) =="table"and next(_0x81FA) ~= nil then
_0xD731.log("save: im Speicher gefunden (nach ".. _0xAA11 .." Tabellen)")
return obj
end
end
end
if _0xAA11 > 400000 then
break
end
end
return nil,"kein Save-Table im Speicher"endlocal function _0x3E98()
local _0x2D01 = {
function()
return require(_0x5F11.Library.Client.GUI)
end,
function()
local _0x30E1 = _0x3FCF()
return _0x30E1 and _0x30E1.GUI
end,
}
local _0x9560
for _0x036B, _0x7AA5 in ipairs(_0x2D01) do
local _0xA49E, _0xC566 = pcall(_0x7AA5)
if _0xA49E and type(_0xC566) =="table"then
_0x9560 = _0xC566
break
end
end
if not _0x9560 then
return nil,"Library.Client.GUI nicht ladbar"end
local _0xA49E, _0xD10F = pcall(function()
if type(_0x9560.MailboxMachine) =="function"then
return _0x9560.MailboxMachine()
end
return _0x9560.MailboxMachine
end)
if not _0xA49E or type(_0xD10F) ~="table"or not _0xD10F.Frame then
return nil,"MailboxMachine ohne Frame"end
return _0xD10F.Frame, nil
end
local function _0x09A0()
return _0xC2D2:FindFirstChildOfClass("PlayerGui")
endlocal function _0xD58C(_0x3110)
local _0x4CD1 = _0x09A0()
local _0x5C7E, _0x66F6 = {}, _0x3110
while _0x66F6 and _0x66F6 ~= _0x4CD1 do
table.insert(_0x5C7E, 1, _0x66F6.Name)
_0x66F6 = _0x66F6.Parent
end
return table.concat(_0x5C7E,".")
endlocal function _0xB989()
local _0xA639 = _0x5FA8.FramePath
if not _0xA639 or _0x8635(_0xA639) ==""then
return nil,"FramePath nicht gesetzt"end
local _0x4CD1 = _0x09A0()
if not _0x4CD1 then
return nil,"keine PlayerGui"end
local _0x66F6 = _0x4CD1
for _0x645E in tostring(_0xA639):gmatch("[^%.]+") do
local _0x4E8C = _0x0F4A(_0x645E)
if _0x4E8C ~="playergui"and _0x4E8C ~="game"and _0x4E8C ~="players"then
local _0xFA4E = _0x66F6:FindFirstChild(_0x645E)
if not _0xFA4E then
return nil,"'".. _0x645E .."' nicht unter ".. _0x66F6.Name
end
_0x66F6 = _0xFA4E
end
end
return _0x66F6, nil
endlocal function _0x5030(_0x3110)
local _0x66F6 = _0x3110
while _0x66F6 and _0x66F6:IsA("GuiObject") do
if not _0x66F6.Visible then
return false
end
_0x66F6 = _0x66F6.Parent
end
if _0x66F6 and _0x66F6:IsA("LayerCollector") then
return _0x66F6.Enabled
end
return true
end
local function _0x4834()
local _0x4CD1 = _0x09A0()
if not _0x4CD1 then
return {}
end
local _0xBD62 = {}
for _0x036B, child in ipairs(_0x4CD1:GetDescendants()) do
if child:IsA("TextBox") and _0x5030(child) then
table.insert(_0xBD62, child)
end
end
return _0xBD62
endlocal function _0x1FEC(_0x3110)
local _0x66F6 = _0x3110
while _0x66F6.Parent and _0x66F6.Parent:IsA("GuiObject")
and not _0x66F6.Parent:IsA("LayerCollector") do
_0x66F6 = _0x66F6.Parent
end
return _0x66F6
endlocal _0xBDBC = {"mailbox","mail","postbox","post"}
local _0xD76C = {"freegift","giftbag","balloon","chat","codes","settings","shop","teleport","map","search"}local function _0x8C7E(_0x3A60)
for _0x036B, child in ipairs(_0x3A60:GetDescendants()) do
if child:IsA("GuiButton") then
if _0x49FA(child.Name,"send") or _0x49FA(child.Name,"senden") then
return true
end
if child:IsA("TextButton")
and (_0x49FA(child.Text,"send") or _0x49FA(child.Text,"senden")) then
return true
end
for _0x036B, _0x66F6 in ipairs(child:GetChildren()) do
if _0x66F6:IsA("TextLabel")
and (_0x49FA(_0x66F6.Text,"send") or _0x49FA(_0x66F6.Text,"senden")) then
return true
end
end
end
end
return false
end
local function _0xC321()
local _0x4CD1 = _0x09A0()
if not _0x4CD1 then
return {}
end
local _0xBD62 = {}
for _0x036B, child in ipairs(_0x4CD1:GetDescendants()) do
if child:IsA("TextBox") then
table.insert(_0xBD62, child)
end
end
return _0xBD62
endlocal function _0xBBF9()
local _0x5B57, _0xCB9A = {}, {}
for _0x036B, _0x0F4F in ipairs(_0xC321()) do
local _0x3A60 = _0x1FEC(_0x0F4F)
local _0xA639 = _0x3A60:GetFullName()
if not _0x5B57[_0xA639] then
_0x5B57[_0xA639] = true
local _0xAAF2 = 0
for _0x036B, child in ipairs(_0x3A60:GetDescendants()) do
if child:IsA("GuiButton") then
_0xAAF2 += 1
end
end
local _0xC567 = false
local _0x66F6 = _0x0F4F
while _0x66F6 and _0x66F6:IsA("GuiObject") and not _0xC567 do
for _0x036B, word in ipairs(_0xBDBC) do
if _0x49FA(_0x66F6.Name, word) then
_0xC567 = true
break
end
end
_0x66F6 = _0x66F6.Parent
end
local _0x4FA8 = false
for _0x036B, word in ipairs(_0xD76C) do
if _0x49FA(_0xA639, word) then
_0x4FA8 = true
break
end
end
local _0x5AF1 = _0x5030(_0x0F4F)
local _0xB1A2 = _0x8C7E(_0x3A60)
local _0x7A50 = math.min(_0xAAF2, 150)
if _0x5AF1 then
_0x7A50 += 1000
end
if _0xC567 then
_0x7A50 += 500
end
if _0xB1A2 then
_0x7A50 += 800
end
if _0x4FA8 then
_0x7A50 -= 2000
end
table.insert(_0xCB9A, {
_0x3A60 = _0x3A60,
_0xA639 = _0xA639,
_0x7A50 = _0x7A50,
_0xAAF2 = _0xAAF2,
_0x5AF1 = _0x5AF1,
_0xC567 = _0xC567,
_0xB1A2 = _0xB1A2,usable = (_0xC567 or _0xB1A2) and not _0x4FA8,
})
end
end
table.sort(_0xCB9A, function(a, b)
return a.score > b.score
end)
return _0xCB9A
end
_0x5D7D.candidates = _0xBBF9
local function _0xF3E9()
local _0xCB9A = _0xBBF9()
if #_0xCB9A == 0 then
return nil,"kein Fenster mit Textfeld in der PlayerGui"end
for _0x036B, _0x2F35 in ipairs(_0xCB9A) do
if _0x2F35.usable then
return _0x2F35.frame, nil
end
end
return nil,"kein Fenster mit Senden-Knopf oder mail im Namen (bestes war ".. _0xCB9A[1].path ..")"end
local function _0x7381(_0x3A60)
local _0x76AC = _0x3A60:FindFirstChild("SendFrame") or _0x3A60:FindFirstChild("Send")
if _0x76AC then
return _0x76AC
end
for _0x036B, child in ipairs(_0x3A60:GetDescendants()) do
if child:IsA("GuiObject") and _0x49FA(child.Name,"send") then
return child
end
endfor _0x036B, child in ipairs(_0x3A60:GetDescendants()) do
if child:IsA("TextBox") then
return child.Parent and child.Parent.Parent or child.Parent
end
end
return nil
end
function _0x5D7D.frames()
local _0x2D01 = {
{ _0x1566 ="Config-Pfad", _0x7AA5 = _0xB989 },
{ _0x1566 ="Library", _0x7AA5 = _0x3E98 },
{ _0x1566 ="Fenster-Scan", _0x7AA5 = _0xF3E9 },
}
local _0x55A1 = {}
for _0x036B, attempt in ipairs(_0x2D01) do
local _0xA49E, _0x3A60, _0x1C43 = pcall(attempt.fn)
if _0xA49E and _0x3A60 then
return _0x3A60, _0x7381(_0x3A60), nil, attempt.name
end
table.insert(_0x55A1, attempt.name .." -> ".. tostring(_0xA49E and _0x1C43 or _0x3A60))
end
return nil, nil, table.concat(_0x55A1," | "), nil
end
function _0x5D7D.isOpen()
local _0x3A60 = _0x5D7D.frames()
if not _0x3A60 then
return false
end
local _0xA49E, _0x3BAA = pcall(function()
return _0x3A60.Visible
end)
return _0xA49E and _0x3BAA == true
end
function _0x5D7D.inputs(_0x4643)
local _0xBD62 = {}
for _0x036B, child in ipairs(_0x4643:GetDescendants()) do
if child:IsA("TextBox") then
table.insert(_0xBD62, child)
end
end
local _0xB9EB, _0x6942
for _0x036B, _0x0F4F in ipairs(_0xBD62) do
local _0xA639 = _0x0F4F:GetFullName()
if not _0xB9EB and (_0x49FA(_0xA639,"username") or _0x49FA(_0xA639,"user") or _0x49FA(_0xA639,"player")) then
_0xB9EB = _0x0F4F
end
end
for _0x036B, _0x0F4F in ipairs(_0xBD62) do
if _0x0F4F ~= _0xB9EB and not _0x6942
and (_0x49FA(_0x0F4F:GetFullName(),"message") or _0x49FA(_0x0F4F:GetFullName(),"note")) then
_0x6942 = _0x0F4F
end
end
_0xB9EB = _0xB9EB or _0xBD62[1]
if not _0x6942 then
for _0x036B, _0x0F4F in ipairs(_0xBD62) do
if _0x0F4F ~= _0xB9EB then
_0x6942 = _0x0F4F
break
end
end
end
return _0xB9EB, _0x6942, _0xBD62
endlocal _0x9A86 = {"id","Id","ID","name","Name","petId","PetId"}
local _0xB83D = {"sh","shiny","Shiny","isShiny"}
local _0x7B67 = {"pt","variant","Variant","vt","type"}
local _0xBBC7 = {"am","amount","Amount","count","Count","qty"}
local _0xD15E = {"lk","l","lock","locked","Locked","lck","lo","favorite","Favorite","fav","Fav","f"}
local _0x8D88 = {"eq","equipped","Equipped"}
local _0x8936 = {"uid","UID","Uid","guid","unique"}
local function _0xC1C1(_0x2F35, keys)
for _0x036B, _0x783B in ipairs(keys) do
local _0x946B = _0x2F35[_0x783B]
if _0x946B ~= nil then
return _0x946B, _0x783B
end
end
return nil, nil
end
local function _0x4A5D(raw)
if raw == nil or raw == 0 or raw == false then
return"normal"end
for _0x1566, _0xFDAF in pairs(_0x5FA8.VariantIds or {}) do
if raw == _0xFDAF or _0x0F4A(raw) == _0x0F4A(_0x1566) then
return _0x0F4A(_0x1566)
end
end
return"unbekannt(".. tostring(raw) ..")"end
function _0x5D7D.petInfo(_0x2F35, _0x783B)
if type(_0x2F35) ~="table"then
return nil
end
local _0x1566 = _0xC1C1(_0x2F35, _0x9A86)
if _0x1566 == nil then
return nil
endlocal _0x457E, _0x9099
if _0x5FA8.LockKey and _0x5FA8.LockKey ~=""then
_0x457E, _0x9099 = _0x2F35[_0x5FA8.LockKey], _0x5FA8.LockKey
else
_0x457E, _0x9099 = _0xC1C1(_0x2F35, _0xD15E)
end
return {
_0x1566 = tostring(_0x1566),
_0x783B = _0x0F4A(_0x1566),
_0x39AC = _0xC1C1(_0x2F35, _0x8936) or _0x783B,
shiny = _0xC1C1(_0x2F35, _0xB83D) and true or false,
variant = _0x4A5D(_0xC1C1(_0x2F35, _0x7B67)),
_0xC1AB = tonumber(_0xC1C1(_0x2F35, _0xBBC7)) or 1,
_0xC593 = (_0x457E ~= nil and _0x457E ~= false and _0x457E ~= 0),
lockField = _0x9099,
equipped = _0xC1C1(_0x2F35, _0x8D88) and true or false,
raw = _0x2F35,
}
end
local _0x0025 = {
{"Inventory","Pet"},{"Inventory","pets"},
{"Inventory","Pets"},
{"inventory","pets"},
{"Pets"},
{"pets"},
}
function _0x5D7D.save()
local _0x30E1, _0x48C9 = _0x3FCF()
if _0x30E1 then
local _0xA49E, _0xE65E = pcall(function()
if type(_0x30E1.Save) =="table"and type(_0x30E1.Save.Get) =="function"then
return _0x30E1.Save.Get()
end
if type(_0x30E1.Save) =="function"then
return _0x30E1.Save()
end
return _0x30E1.Data or _0x30E1.save
end)
if _0xA49E and type(_0xE65E) =="table"then
return _0xE65E
end
_0x48C9 ="Save.Get() -> ".. tostring(_0xE65E)
endlocal _0xE65E, _0x2A77 = _0xF32A()
if _0xE65E then
return _0xE65E
end
return nil,"Spieldaten nicht lesbar. ".. tostring(_0x48C9) .." | Speicher: ".. tostring(_0x2A77)
endlocal function _0x3EC8(_0x946B)
if type(_0x946B) ~="table"then
return 0
end
local _0x58C6, _0x7248 = 0, 0
for _0x036B, item in pairs(_0x946B) do
_0x58C6 += 1
if type(item) =="table"and _0xC1C1(item, _0x9A86) ~= nil then
_0x7248 += 1
end
if _0x58C6 >= 12 then
break
end
end
if _0x58C6 == 0 then
return 0
end
return _0x7248 / _0x58C6
endlocal function _0x07D8(_0xE65E)
local _0x3819, _0x4D75, _0x9218 = nil, nil, 0
local _0xC096 = {}
local _0xB29C = { { _0x66F6 = _0xE65E, _0xA639 ="save", depth = 0 } }
local _0xBE19 = 1
while _0xBE19 <= #_0xB29C do
local _0xBD80 = _0xB29C[_0xBE19]
_0xBE19 += 1
if type(_0xBD80.node) =="table"and not _0xC096[_0xBD80.node] then
_0xC096[_0xBD80.node] = true
for _0x783B, _0x946B in pairs(_0xBD80.node) do
if type(_0x946B) =="table"then
local _0xD450 = _0xBD80.path ..".".. tostring(_0x783B)
local _0x2B74 = 0
for _0x036B in pairs(_0x946B) do
_0x2B74 += 1
end
local _0x8C4C = _0x3EC8(_0x946B)
if _0x8C4C >= 0.5 and _0x2B74 > 0 then
local _0x7A50 = _0x8C4C * 100 + math.min(_0x2B74, 100)
if _0x49FA(tostring(_0x783B),"pet") then
_0x7A50 += 150
end
if _0x7A50 > _0x9218 then
_0x3819, _0x4D75, _0x9218 = _0x946B, _0xD450, _0x7A50
end
end
if _0xBD80.depth < 3 then
table.insert(_0xB29C, {
_0x66F6 = _0x946B,
_0xA639 = _0xD450,
depth = _0xBD80.depth + 1,
})
end
end
end
end
end
return _0x3819, _0x4D75
end
function _0x5D7D.petContainer()
local _0xE65E, _0x1C43 = _0x5D7D.save()
if not _0xE65E then
return nil, _0x1C43
endfor _0x036B, _0xA639 in ipairs(_0x0025) do
local _0x66F6 = _0xE65E
local _0xA49E = true
for _0x036B, step in ipairs(_0xA639) do
if type(_0x66F6) =="table"and _0x66F6[step] ~= nil then
_0x66F6 = _0x66F6[step]
else
_0xA49E = false
break
end
end
if _0xA49E and type(_0x66F6) =="table"and next(_0x66F6) ~= nil then
return _0x66F6, nil, table.concat(_0xA639,".")
end
endlocal _0x97BB, _0x88CF = _0x07D8(_0xE65E)
if _0x97BB then
_0xD731.log("pets: Liste gefunden unter ".. tostring(_0x88CF))
return _0x97BB, nil, _0x88CF
end
return nil,"Pet-Liste in den Spieldaten nicht gefunden ".."('Debug: Spieldaten dumpen' zeigt den Aufbau)"end
function _0x5D7D.pets()
local _0x1A66, _0x1C43, _0xA639 = _0x5D7D.petContainer()
if not _0x1A66 then
return nil, _0x1C43
end
local _0x81FA = {}
for _0x783B, _0x2F35 in pairs(_0x1A66) do
local _0xB92B = _0x5D7D.petInfo(_0x2F35, _0x783B)
if _0xB92B then
table.insert(_0x81FA, _0xB92B)
end
end
table.sort(_0x81FA, function(a, b)
return a.name < b.name
end)
return _0x81FA, nil, _0xA639
endfunction _0x5D7D.ownsUid(_0x39AC)
_0x39AC = tostring(_0x39AC or"")
if _0x39AC ==""then
return nil
endlocal _0x1A66 = _0x5D7D.petContainer()
if type(_0x1A66) ~="table"then
return nil
end
for _0x783B, _0x2F35 in pairs(_0x1A66) do
if tostring(_0x783B) == _0x39AC then
return true
end
if type(_0x2F35) =="table"then
local _0x9CA3 = _0xC1C1(_0x2F35, _0x8936)
if _0x9CA3 ~= nil and tostring(_0x9CA3) == _0x39AC then
return true
end
end
end
return false
end_0x5D7D.unlockRecipe = nil
function _0x5D7D.petByUid(_0x39AC)
_0x39AC = tostring(_0x39AC or"")
local _0x81FA = _0x5D7D.pets()
if not _0x81FA then
return nil
end
for _0x036B, _0xB92B in ipairs(_0x81FA) do
if tostring(_0xB92B.uid) == _0x39AC then
return _0xB92B
end
end
return nil
end
function _0x5D7D.isLocked(_0x39AC)
local _0xB92B = _0x5D7D.petByUid(_0x39AC)
if not _0xB92B then
return nil
end
return _0xB92B.locked == true
end
function _0x5D7D.lockRemotes()
local _0xCB9A = {}
local _0x5B57 = {}local _0x5C09 = {"lock","favorite","favourite","fav"}local _0xCC0C = {"delete","remove","sell","destroy","trash","discard","craft","fuse","upgrade","enchant","buy","purchase","claim"}
local function _0xF3DE(_0x46FA)
if not _0x46FA or _0x5B57[_0x46FA] then
return
end
local _0x1566 = _0x0F4A(_0x46FA.Name)
local _0xE302 = false
for _0x036B, word in ipairs(_0x5C09) do
if _0x1566:find(word, 1, true) then
_0xE302 = true
break
end
end
if not _0xE302 then
return
end
for _0x036B, word in ipairs(_0xCC0C) do
if _0x1566:find(word, 1, true) then
return
end
end
_0x5B57[_0x46FA] = truelocal _0x7A50 = 0
if _0x1566:find("lock", 1, true) then
_0x7A50 += 20
end
if _0x1566:find("pet", 1, true) then
_0x7A50 += 10
end
if _0x1566:find("inventory", 1, true) or _0x1566:find("item", 1, true) then
_0x7A50 += 5
end
table.insert(_0xCB9A, { _0x46FA = _0x46FA, _0x7A50 = _0x7A50 })
end
if _0x5FA8.UnlockRemote and _0x8635(_0x5FA8.UnlockRemote) ~=""then
local _0x76AC = _0xF61A.remoteByName(_0x5FA8.UnlockRemote)
if _0x76AC then
return { { _0x46FA = _0x76AC, _0x7A50 = 99 } }
end
end
local _0x1374 = _0x5F11:FindFirstChild("Network")
if _0x1374 then
for _0x036B, child in ipairs(_0x1374:GetChildren()) do
_0xF3DE(child)
end
end
for _0x036B, child in ipairs(_0x5F11:GetDescendants()) do
if child:IsA("RemoteEvent") or child:IsA("RemoteFunction")
or child:IsA("UnreliableRemoteEvent") then
_0xF3DE(child)
end
end
for _0x1566, _0x46FA in pairs(_0x5D7D.seenRemotes or {}) do
if _0x46FA and _0x46FA.Parent then
_0xF3DE(_0x46FA)
end
end
table.sort(_0xCB9A, function(a, b)
return a.score > b.score
end)
return _0xCB9A
endlocal function _0x7A8B(_0x39AC)
return {
{ _0xA996 ="(uid, false)", _0x24E9 = { _0x39AC, false } },
{ _0xA996 ="(uid)", _0x24E9 = { _0x39AC } },
{ _0xA996 ="({uid}, false)", _0x24E9 = { { _0x39AC }, false } },
{ _0xA996 ="({uid})", _0x24E9 = { { _0x39AC } } },
{ _0xA996 ="(uid, 0)", _0x24E9 = { _0x39AC, 0 } },
}
end
local function _0xF06B(_0x46FA, _0x24E9)
return pcall(function()
if _0x46FA:IsA("RemoteFunction") then
return _0x46FA:InvokeServer(table.unpack(_0x24E9))
end
return _0x46FA:FireServer(table.unpack(_0x24E9))
end)
endlocal _0x0569 = {"MouseButton2Click"}
local function _0x3C20(_0xA8B8)
if not _0xA8B8 then
return false,"kein Button"end
local _0xDB81 = 0
if type(getconnections) =="function"then
for _0x036B, signalName in ipairs(_0x0569) do
local _0x8C7C, _0xAC7D = pcall(function()
return _0xA8B8[signalName]
end)
if _0x8C7C and _0xAC7D then
local _0x6852, _0xF7C2 = pcall(getconnections, _0xAC7D)
if _0x6852 and type(_0xF7C2) =="table"then
for _0x036B, connection in ipairs(_0xF7C2) do
pcall(function()
connection:Fire()
end)
_0xDB81 += 1
end
end
end
end
end
if _0xDB81 == 0 and type(firesignal) =="function"then
if pcall(firesignal, _0xA8B8.MouseButton2Click) then
_0xDB81 += 1
end
end
if _0xDB81 == 0 then
return false,"Rechtsklick nicht moeglich"end
return true
endfunction _0x5D7D.petEntryButton(_0xB92B)
local _0x4CD1 = _0x09A0()
if not _0x4CD1 then
return nil,"keine PlayerGui"end
local _0x39AC = tostring(_0xB92B.uid or"")
local _0x60D1local _0xDD00 = {"equip","hotbar","slot","team","loadout","best"}
for _0x036B, child in ipairs(_0x4CD1:GetDescendants()) do
if child:IsA("GuiButton") and _0x5030(child) then
local _0xA639 = _0x0F4A(child:GetFullName())
local _0xE433 = false
for _0x036B, word in ipairs(_0xDD00) do
if _0xA639:find(word, 1, true) then
_0xE433 = true
break
end
end
if _0xE433 then
continue
endif _0x39AC ~=""then
if child.Name == _0x39AC then
return child,"UID im Namen"end
local _0x926F, _0xA8B7 = pcall(function()
return child:FindFirstChild(_0x39AC, true)
end)
if _0x926F and _0xA8B7 then
return child,"UID im Eintrag"end
endif not _0x60D1 then
for _0x036B, _0xA996 in ipairs(child:GetChildren()) do
if _0xA996:IsA("TextLabel") and _0xA996.Text ~=""and _0x49FA(_0xA996.Text, _0xB92B.name) then
_0x60D1 = child
break
end
end
end
end
end
if _0x60D1 then
return _0x60D1,"Pet-Name im Text"end
return nil,"kein Eintrag im Inventar gefunden"endfunction _0x5D7D.unlockButton()
local _0x4CD1 = _0x09A0()
if not _0x4CD1 then
return nil
end
for _0x036B, child in ipairs(_0x4CD1:GetDescendants()) do
if child:IsA("GuiButton") and _0x5030(child) then
local _0x7366 = child.Name
if child:IsA("TextButton") and child.Text ~=""then
_0x7366 = _0x7366 .." ".. child.Text
end
for _0x036B, _0xA996 in ipairs(child:GetDescendants()) do
if _0xA996:IsA("TextLabel") and _0xA996.Text ~=""then
_0x7366 = _0x7366 .." ".. _0xA996.Text
end
endlocal _0x4E8C = _0x0F4A(_0x7366)
local _0x9CBB = false
for _0x036B, word in ipairs({"equip","ablegen","abnehmen","anlegen","sell","verkauf","delete","loesch"}) do
if _0x4E8C:find(word, 1, true) then
_0x9CBB = true
break
end
end
if not _0x9CBB then
for _0x036B, word in ipairs(_0x5FA8.UnlockWords or {}) do
if _0x49FA(_0x7366, word) then
return child, _0x7366
end
end
end
end
end
return nil
endlocal _0x4ED5 = {"inventory","inventar","backpack","rucksack"}
function _0x5D7D.inventoryFrame()
local _0x4CD1 = _0x09A0()
if not _0x4CD1 then
return nil
end
for _0x036B, child in ipairs(_0x4CD1:GetDescendants()) do
if child:IsA("GuiObject") and child.Visible then
local _0x1566 = _0x0F4A(child.Name)
local _0xA8B7 = false
for _0x036B, word in ipairs(_0x4ED5) do
if _0x1566:find(word, 1, true) then
_0xA8B7 = true
break
end
end
if _0xA8B7 and _0x5030(child) thenlocal _0x6784, _0x0201 = pcall(function()
return child.AbsoluteSize
end)
if _0x6784 and _0x0201 and _0x0201.X > 200 and _0x0201.Y > 150 then
return child
end
end
end
end
return nil
endfunction _0x5D7D.inventoryOpen()
local _0x3A60 = _0x5D7D.inventoryFrame()
if _0x3A60 then
return true,"Fenster ".. _0x3A60.Name
end
local _0x81FA = _0x5D7D.pets()
if not _0x81FA or #_0x81FA == 0 then
return false,"keine Pets lesbar"end
if _0x5D7D.petEntryButton(_0x81FA[1]) then
return true,"Pet-Eintraege sichtbar"end
if _0x81FA[2] and _0x5D7D.petEntryButton(_0x81FA[2]) then
return true,"Pet-Eintraege sichtbar"end
return false,"kein Inventarfenster und keine Eintraege"endlocal _0x7A73 = {"shop","buy","kaufen","trade","settings","einstell","quest","index","gift","code","mail","equip","ablegen","abnehmen","anlegen","sell","verkauf","delete","loesch","craft","fuse","all","alle","best","team","hotbar","slot"}
function _0x5D7D.inventoryButtons()
local _0x4CD1 = _0x09A0()
if not _0x4CD1 then
return {}
end
local _0xA155 = {}
for _0x036B, child in ipairs(_0x4CD1:GetDescendants()) do
if child:IsA("GuiButton") and _0x5030(child) thenlocal _0x7366 = child.Name
if child:IsA("TextButton") and child.Text ~=""then
_0x7366 = _0x7366 .." ".. child.Text
end
local _0x4E8C = _0x0F4A(_0x7366)
local _0x6456 = false
for _0x036B, word in ipairs(_0x7A73) do
if _0x4E8C:find(word, 1, true) then
_0x6456 = true
break
end
end
if not _0x6456 then
for _0xBE19, word in ipairs(_0x5FA8.InventoryWords or {}) do
if _0x4E8C:find(word, 1, true) thentable.insert(_0xA155, {
_0xA8B8 = child,
_0x7A50 = 100 - _0xBE19,
_0x7366 = _0x7366,
_0xA639 = child:GetFullName(),
})
break
end
end
end
end
end
table.sort(_0xA155, function(a, b)
return a.score > b.score
end)
return _0xA155
endlocal function _0x36FA(_0xA639)
local _0x4CD1 = _0x09A0()
if not _0x4CD1 or not _0xA639 or _0x8635(_0xA639) ==""then
return nil
end
local _0x66F6 = _0x4CD1
for _0x645E in tostring(_0xA639):gmatch("[^%.]+") do
if _0x0F4A(_0x645E) ~="playergui"then
_0x66F6 = _0x66F6:FindFirstChild(_0x645E)
if not _0x66F6 then
return nil,"'".. _0x645E .."' nicht gefunden"end
end
end
return _0x66F6
endfunction _0x5D7D.learnInventory(seconds)
seconds = tonumber(seconds) or 15
local _0x4CD1 = _0x09A0()
if not _0x4CD1 then
_0xD731.log("lernen: keine PlayerGui")
return
end
local function _0x1D26()
local _0xC913 = {}
for _0x036B, child in ipairs(_0x4CD1:GetDescendants()) do
if child:IsA("GuiObject") and child.Visible and _0x5030(child) then
local _0x6784, _0x0201 = pcall(function()
return child.AbsoluteSize
end)
if _0x6784 and _0x0201 and _0x0201.X > 250 and _0x0201.Y > 200 then
_0xC913[child] = true
end
end
end
return _0xC913
end
local _0xD6AA = _0x1D26()
_0xD731.log("=== Inventar lernen, ".. seconds .."s ===")
_0xD731.log("Oeffne JETZT das Inventar im Spiel, von Hand.")
_0xDA9B("Big Hub","Inventar jetzt im Spiel oeffnen (".. seconds .."s).", 10)
local _0x11FB = os.clock() + seconds
local _0x97BB
while os.clock() < _0x11FB and not _0x97BB do
task.wait(0.3)
for _0x66F6 in pairs(_0x1D26()) do
if not _0xD6AA[_0x66F6] then
_0x97BB = _0x66F6
break
end
end
end
if not _0x97BB then
_0xD731.log("lernen: kein neues Fenster gesehen")
_0xDA9B("Big Hub","Nichts gelernt. Nochmal versuchen.", 7)
return
endlocal _0x5C7E, _0x66F6 = {}, _0x97BB
while _0x66F6 and _0x66F6 ~= _0x4CD1 do
table.insert(_0x5C7E, 1, _0x66F6.Name)
_0x66F6 = _0x66F6.Parent
end
local _0xA639 = table.concat(_0x5C7E,".")
_0x5FA8.InventoryFramePath = _0xA639
_0xD731.log("lernen: Inventar ist ".. _0x97BB:GetFullName())
_0xD731.log('Trag das in die Config ein:  InventoryFramePath = "'.. _0xA639 ..'",')
_0xD731.log("Fuer diese Sitzung ist es schon gesetzt.")
_0xDA9B("Big Hub","Inventar gelernt. Pfad steht im Log.", 9)
end
function _0x5D7D.openInventory()local _0x8583, _0x876F = _0x5D7D.inventoryOpen()
if _0x8583 then
return true,"war schon offen (".. tostring(_0x876F) ..")"endif _0x8635(_0x5FA8.InventoryFramePath) ~=""then
local _0x3A60, _0x8F23 = _0x36FA(_0x5FA8.InventoryFramePath)
if _0x3A60 then
local _0xA49E = pcall(function()
local _0x66F6 = _0x3A60
while _0x66F6 and _0x66F6:IsA("GuiObject") do
_0x66F6.Visible = true
_0x66F6 = _0x66F6.Parent
end
if _0x66F6 and _0x66F6:IsA("LayerCollector") then
_0x66F6.Enabled = true
end
end)
task.wait(0.3)
if _0x5D7D.inventoryOpen() then
return true,"ueber den gelernten Pfad sichtbar gemacht"end
return false,"gelerntes Fenster liess sich nicht zeigen (".. tostring(_0xA49E) ..")"end
_0xD731.log("inventar: gelernter Pfad passt nicht mehr - ".. tostring(_0x8F23))
endif not _0x5FA8.AutoOpenInventory then
return false,"Inventar bitte im Spiel oeffnen (Auto-Klick ist aus)"end
local _0x3C00 = _0x5D7D.inventoryButtons()
if #_0x3C00 == 0 then
return false,"kein Inventar-Knopf im HUD gefunden"end
for _0xBE19 = 1, math.min(#_0x3C00, 4) do
local _0xA611 = _0x3C00[_0xBE19]
local _0xA49E = _0x1C3C(_0xA611.button)
_0xD731.log("inventar: klicke '".. _0xA611.text:sub(1, 30) .."' -> ".. (_0xA49E and"ok"or"ging nicht"))
if _0xA49E then
for _0x036B = 1, 6 do
task.wait(0.15)
if _0x5D7D.inventoryOpen() then
return true,"geoeffnet ueber '".. _0xA611.text:sub(1, 30) .."'"end
end
end
end
return false,"Inventar liess sich nicht oeffnen"end_0x5D7D.keepOpen = false
function _0x5D7D.keepInventoryOpen(_0x946B)
if _0x946B == false then
_0x5D7D.keepOpen = false
return
end
if _0x5D7D.keepOpen then
return
end
_0x5D7D.keepOpen = true
_0xD731.log("inventar: Waechter an, haelt es offen")
task.spawn(function()
local _0x50E3 = 0
while _0x5D7D.keepOpen do
task.wait(1)
if not _0x5D7D.keepOpen then
break
end
local _0xE491 = _0x5D7D.inventoryOpen()
if not _0xE491 then
_0x50E3 += 1
_0xD731.log("inventar: war zu, oeffne wieder (".. _0x50E3 ..")")
local _0xA49E, _0xA594 = _0x5D7D.openInventory()
if not _0xA49E then
_0xD731.log("inventar: ".. tostring(_0xA594))
end
end
end
_0xD731.log("inventar: Waechter aus, ".. _0x50E3 .." mal nachgeoeffnet")
end)
end
function _0x5D7D.dumpInventoryButtons()
local _0x3C00 = _0x5D7D.inventoryButtons()
_0xD731.log("--- Moegliche Inventar-Knoepfe (".. #_0x3C00 ..") ---")
for _0xBE19, _0x2F35 in ipairs(_0x3C00) do
if _0xBE19 > 12 then
break
end
_0xD731.log("  ".. _0xBE19 ..". ".. _0x2F35.text:sub(1, 40))
_0xD731.log("      ".. _0x2F35.path)
end
local _0xE491, _0x876F = _0x5D7D.inventoryOpen()
_0xD731.log("Inventar offen: ".. tostring(_0xE491) .."  ".. tostring(_0x876F or""))
_0xD731.log("--- Ende ---")
_0xDA9B("Big Hub", #_0x3C00 .." Kandidaten, offen: ".. tostring(_0xE491), 7)
endfunction _0x5D7D.unlockViaGui(_0xB92B)
local _0x2F35, _0x93D8 = _0x5D7D.petEntryButton(_0xB92B)if not _0x2F35 and _0x5FA8.AutoOpenInventory then
local _0xDCD0, _0xA594 = _0x5D7D.openInventory()
_0xD731.log("inventar: ".. tostring(_0xA594))
if _0xDCD0 then
_0x2F35, _0x93D8 = _0x5D7D.petEntryButton(_0xB92B)
end
end
if not _0x2F35 then
return false, tostring(_0x93D8) .." (Inventar im Spiel offen?)"end
local _0x1064, _0xD488 = _0x3C20(_0x2F35)
if not _0x1064 then
return false, tostring(_0xD488)
endfor attempt = 1, 8 do
task.wait(0.12)
local _0xA8B8, _0x7366 = _0x5D7D.unlockButton()
if _0xA8B8 then
local _0x9D4F, _0xB6C8 = _0x1C3C(_0xA8B8)
if _0x9D4F then
return true,"per Rechtsklick (".. tostring(_0x93D8) ..") -> ".. tostring(_0x7366):sub(1, 40)
end
return false,"Freischalten-Knopf gefunden, Klick ging nicht: ".. tostring(_0xB6C8)
end
end
return false,"kein 'Freischalten' aufgetaucht (Eintrag ueber ".. tostring(_0x93D8) ..")"end
function _0x5D7D.dumpPetEntries()
local _0x81FA = _0x5D7D.pets() or {}
_0xD731.log("--- Pet-Eintraege im Inventar ---")
local _0x97BB, _0x690E = 0, 0
for _0xBE19 = 1, math.min(#_0x81FA, 8) do
local _0xB92B = _0x81FA[_0xBE19]
local _0x2F35, _0x93D8 = _0x5D7D.petEntryButton(_0xB92B)
if _0x2F35 then
_0x97BB += 1
_0xD731.log("  ".. _0xB92B.name .."  -> ".. tostring(_0x93D8)
.."  ".. _0x2F35:GetFullName())
else
_0x690E += 1
_0xD731.log("  ".. _0xB92B.name .."  -> ".. tostring(_0x93D8))
end
end
local _0xA8B8, _0x7366 = _0x5D7D.unlockButton()
_0xD731.log("Freischalten-Knopf gerade sichtbar: ".. (_0xA8B8 and ("ja  [".. tostring(_0x7366):sub(1, 50) .."]") or"nein"))
_0xD731.log("Rechtsklick moeglich: ".. tostring(type(getconnections) =="function"or type(firesignal) =="function"))
_0xD731.log("--- Ende (".. _0x97BB .." gefunden, ".. _0x690E .." nicht) ---")
_0xDA9B("Big Hub", _0x97BB .." Pet-Eintraege gefunden.", 7)
endfunction _0x5D7D.unlockAlways(_0xB92B)
local _0x39AC = tostring(_0xB92B.uid or"")
if _0x39AC ==""then
return false,"keine UID"end
local _0x8C3D = _0x0F4A(_0x5FA8.UnlockMode)if _0x8C3D =="gui"then
return _0x5D7D.unlockViaGui(_0xB92B)
end
local _0x46FA = _0xF61A.remoteByName(_0x5FA8.UnlockRemote)
if not _0x46FA then
if _0x8C3D =="both"then
return _0x5D7D.unlockViaGui(_0xB92B)
end
return false,"Remote '".. tostring(_0x5FA8.UnlockRemote) .."' nicht gefunden"endlocal _0x2E06 = 0
for _0x036B, _0x24E9 in ipairs({ { _0x39AC }, { { _0x39AC } } }) do
local _0xA49E = pcall(function()
if _0x46FA:IsA("RemoteFunction") then
return _0x46FA:InvokeServer(table.unpack(_0x24E9))
end
return _0x46FA:FireServer(table.unpack(_0x24E9))
end)
if _0xA49E then
_0x2E06 += 1
end
task.wait(0.08)
end
if _0x2E06 == 0 then
if _0x8C3D =="both"then
return _0x5D7D.unlockViaGui(_0xB92B)
end
return false,"Aufruf fehlgeschlagen"endif _0x8C3D =="both"and _0x5D7D.isLocked(_0x39AC) == true then
local _0xFA66, _0x017F = _0x5D7D.unlockViaGui(_0xB92B)
if _0xFA66 then
return true, _0x46FA.Name .." + ".. tostring(_0x017F)
end
end
return true, _0x46FA.Name .." (".. _0x2E06 .." Formen)"endfunction _0x5D7D.unlock(_0xB92B)
local _0x39AC = tostring(_0xB92B.uid or"")
if _0x39AC ==""then
return false,"keine UID"end
if _0x5D7D.isLocked(_0x39AC) == false then
return true,"war schon offen"endif _0x5D7D.unlockRecipe then
local _0x5600 = _0x5D7D.unlockRecipe
if _0x5600.remote and _0x5600.remote.Parent then
local _0x24E9 = {}
for _0x036B, _0x946B in ipairs(_0x5600.template) do
if _0x946B =="__UID__"then
table.insert(_0x24E9, _0x39AC)
elseif _0x946B =="__UIDLIST__"then
table.insert(_0x24E9, { _0x39AC })
else
table.insert(_0x24E9, _0x946B)
end
end
_0xF06B(_0x5600.remote, _0x24E9)
task.wait(0.35)
if _0x5D7D.isLocked(_0x39AC) == false then
return true, _0x5600.label
end
end
endlocal _0x3C00 = _0x5D7D.lockRemotes()
if #_0x3C00 == 0 then
return false,"kein Remote mit 'lock' im Namen gefunden"end
for _0x036B, _0xA611 in ipairs(_0x3C00) do
for _0x036B, attempt in ipairs(_0x7A8B(_0x39AC)) do
local _0xA49E = _0xF06B(_0xA611.remote, attempt.args)
if _0xA49E then
task.wait(0.35)
if _0x5D7D.isLocked(_0x39AC) == false thenlocal _0x496E = {}
for _0x036B, _0x946B in ipairs(attempt.args) do
if _0x946B == _0x39AC then
table.insert(_0x496E,"__UID__")
elseif type(_0x946B) =="table"then
table.insert(_0x496E,"__UIDLIST__")
else
table.insert(_0x496E, _0x946B)
end
end
_0x5D7D.unlockRecipe = {
_0x46FA = _0xA611.remote,
_0x496E = _0x496E,
_0xA996 = _0xA611.remote.Name .." ".. attempt.label,
}
_0xD731.log("unlock: funktioniert mit ".. _0x5D7D.unlockRecipe.label)
return true, _0x5D7D.unlockRecipe.label
end
end
end
end
return false,"keine Kombination hat das Schloss geoeffnet"endfunction _0x5D7D.dumpPetRaw()
local _0x81FA, _0x1C43 = _0x5D7D.pets()
if not _0x81FA or #_0x81FA == 0 then
_0xD731.log("rohdaten: ".. tostring(_0x1C43 or"keine Pets"))
_0xDA9B("Big Hub","Keine Pets lesbar.", 7)
return
endlocal _0xC075, _0x85A1 = {}, {}
for _0x036B, _0xB92B in ipairs(_0x81FA) do
for _0x783B, _0x946B in pairs(_0xB92B.raw) do
local _0x2F35 = _0xC075[_0x783B]
if not _0x2F35 then
_0x2F35 = { _0x2B74 = 0, truthy = 0, _0x5BC8 = {} }
_0xC075[_0x783B] = _0x2F35
table.insert(_0x85A1, _0x783B)
end
_0x2F35.count += 1
if _0x946B ~= false and _0x946B ~= nil and _0x946B ~= 0 then
_0x2F35.truthy += 1
end
if #_0x2F35.samples < 3 then
table.insert(_0x2F35.samples, tostring(_0x946B) .." (".. typeof(_0x946B) ..")")
end
end
endtable.sort(_0x85A1, function(a, b)
return tostring(a) < tostring(b)
end)
_0xD731.log("--- Pet-Felder ueber ".. #_0x81FA .." Pets ---")
for _0x036B, _0x783B in ipairs(_0x85A1) do
local _0x2F35 = _0xC075[_0x783B]
_0xD731.log("  ".. tostring(_0x783B) .."  in ".. _0x2F35.count .." Pets, ".. _0x2F35.truthy .." davon gesetzt   z.B. ".. table.concat(_0x2F35.samples," | "))
end_0xD731.log("Verdaechtig fuer das Schloss (wenige Pets, Wert gesetzt):")
for _0x036B, _0x783B in ipairs(_0x85A1) do
local _0x2F35 = _0xC075[_0x783B]
if _0x2F35.truthy > 0 and _0x2F35.truthy < #_0x81FA then
local _0xAC7E = _0x2F35.samples[1] or""if _0xAC7E:find("boolean") or _0xAC7E:find("1 %(number%)") then
_0xD731.log("  LockKey = \"".. _0x783B .."\",   -> ".. _0x2F35.truthy
.." von ".. #_0x81FA .." Pets")
end
end
end_0xD731.log("Erste Pets vollstaendig:")
for _0xBE19 = 1, math.min(#_0x81FA, 3) do
local _0xB92B = _0x81FA[_0xBE19]
_0xD731.log("  ".. _0xB92B.name .."  (locked laut Hub: ".. tostring(_0xB92B.locked)
..", Feld ".. tostring(_0xB92B.lockField) ..")")
for _0x783B, _0x946B in pairs(_0xB92B.raw) do
_0xD731.log("      ".. tostring(_0x783B) .." = ".. tostring(_0x946B))
end
end
local _0xC593 = 0
for _0x036B, _0xB92B in ipairs(_0x81FA) do
if _0xB92B.locked then
_0xC593 += 1
end
end
_0xD731.log("Der Hub haelt ".. _0xC593 .." von ".. #_0x81FA .." Pets fuer gesperrt.")
_0xD731.log("--- Ende Rohdaten ---")
_0xDA9B("Big Hub", _0xC593 .." von ".. #_0x81FA .." gelten als gesperrt.", 8)
end
function _0x5D7D.dumpLockRemotes()
local _0xCB9A = _0x5D7D.lockRemotes()
_0xD731.log("--- Remotes mit 'lock' im Namen (".. #_0xCB9A ..") ---")
for _0xBE19, _0x2F35 in ipairs(_0xCB9A) do
if _0xBE19 > 15 then
break
end
_0xD731.log("  ".. _0x2F35.remote.ClassName .."  ".. _0x2F35.remote:GetFullName())
end
if #_0xCB9A == 0 then
_0xD731.log("  keine. Dann einmal 'ALLES mitlesen' starten und ein Pet")
_0xD731.log("  per Hand sperren/entsperren - danach steht es im Log.")
end
local _0x81FA = _0x5D7D.pets()
local _0xC593 = 0
for _0x036B, _0xB92B in ipairs(_0x81FA or {}) do
if _0xB92B.locked then
_0xC593 += 1
end
end
_0xD731.log("gesperrte Pets im Inventar: ".. _0xC593)
_0xD731.log("--- Ende ---")
_0xDA9B("Big Hub", #_0xCB9A .." Lock-Remotes, ".. _0xC593 .." gesperrte Pets.", 7)
endfunction _0x5D7D.rule(petName)
local _0xF891 = _0x0F4A(petName)
for _0x036B, _0x68B1 in ipairs(_0x5FA8.Pets or {}) do
local _0x33BC = _0x0F4A(_0x68B1.name)
if _0x33BC ~=""then
if _0x0F4A(_0x68B1.match) =="contains"then
if _0xF891:find(_0x33BC, 1, true) then
return _0x68B1
end
elseif _0x33BC == _0xF891 then
return _0x68B1
end
end
end
return nil
end
function _0x5D7D.wanted(_0xB92B)
if _0xB92B.locked then
if _0x5FA8.SkipLocked then
return false,"gesperrt"end
if not _0x5FA8.UnlockLocked then
return false,"gesperrt (UnlockLocked ist aus)"end_0xB92B.needsUnlock = true
end
if _0x5FA8.SkipEquipped and _0xB92B.equipped then
return false,"angelegt"end
local _0x8C3D = _0x0F4A(_0x5FA8.Mode)
local _0x68B1 = _0x5D7D.rule(_0xB92B.name)
if _0x8C3D =="all"then
return true, nil, { max = math.huge }
end
if _0x8C3D =="blacklist"then
if _0x68B1 then
return false,"auf der Blacklist"end
return true, nil, { max = math.huge }
end
if not _0x68B1 then
return false,"nicht in CONFIG.Mailbox.Pets"end
if _0x68B1.shinyOnly and not _0xB92B.shiny then
return false,"nicht shiny"end
local _0xB2AA = _0x68B1.variants
if type(_0xB2AA) =="table"and #_0xB2AA > 0 then
local _0xA8B7 = false
for _0x036B, want in ipairs(_0xB2AA) do
local _0x397F = _0x0F4A(want)
if _0x397F =="any"or _0x397F =="alle"or _0x397F == _0xB92B.variant then
_0xA8B7 = true
break
end
end
if not _0xA8B7 then
return false,"Variante ".. _0xB92B.variant .." nicht in der Liste"end
end
return true, nil, _0x68B1
end
function _0x5D7D.collect()
local _0x81FA, _0x1C43 = _0x5D7D.pets()
if not _0x81FA then
return nil, _0x1C43
end
local _0xD9A1, _0x1CA1 = {}, {}for _0x036B, _0xB92B in ipairs(_0x81FA) do
local _0xA49E, _0x876F, _0x68B1 = _0x5D7D.wanted(_0xB92B)
if not _0xA49E then
_0x1CA1[_0xB92B.name] = _0x876F
elseif _0x5D7D.sentUids[tostring(_0xB92B.uid)] then
_0x1CA1[_0xB92B.name] ="in dieser Sitzung schon gesendet"elseif _0x5D7D.cannotMail[tostring(_0xB92B.uid)] then
_0x1CA1[_0xB92B.name] ="Server: ".. tostring(_0x5D7D.cannotMail[tostring(_0xB92B.uid)])
else
_0xB92B.priority = tonumber(_0x68B1 and _0x68B1.priority) or 0
table.insert(_0xD9A1, _0xB92B)
end
endtable.sort(_0xD9A1, function(a, b)
if a.priority ~= b.priority then
return a.priority > b.priority
end
return a.name < b.name
end)local _0x0229, _0x1BE0 = {}, {}
local _0x4DC4 = tonumber(_0x5FA8.MaxPerMail) or 0
if _0x4DC4 <= 0 then
_0x4DC4 = math.huge
end
for _0x036B, _0xB92B in ipairs(_0xD9A1) do
if #_0x0229 >= _0x4DC4 then
_0x1CA1[_0xB92B.name] ="Grenze MaxPerMail (".. tostring(_0x5FA8.MaxPerMail) ..") erreicht"else
local _0x68B1 = _0x5D7D.rule(_0xB92B.name)
local _0x359F = tonumber(_0x68B1 and _0x68B1.max) or math.huge
local _0x3AE5 = _0x1BE0[_0xB92B.key] or 0
if _0x3AE5 < _0x359F then
_0x1BE0[_0xB92B.key] = _0x3AE5 + 1
table.insert(_0x0229, _0xB92B)
else
_0x1CA1[_0xB92B.name] ="max ".. tostring(_0x359F) .." erreicht"end
end
end
_0x5D7D.lastReasons = _0x1CA1
return _0x0229, nil, #_0x81FA
endlocal function _0xFF7F(instance)
for _0x036B, child in ipairs(instance:GetDescendants()) do
if child:IsA("TextLabel") and _0x8635(child.Text) ~=""then
return child.Text
end
end
return nil
end
function _0x5D7D.slots()
local _0x3A60, _0x4643, _0x1C43 = _0x5D7D.frames()
if not _0x3A60 then
return nil, _0x1C43
end
local _0xC06F = {}
if _0x4643 then
table.insert(_0xC06F, _0x4643)
end
table.insert(_0xC06F, _0x3A60)
for _0x036B, _0x4CD1 in ipairs(_0xC06F) do
local _0x59E6 = {}
for _0x036B, child in ipairs(_0x4CD1:GetDescendants()) do
if child:IsA("GuiButton") then
local _0x7366 = _0xFF7F(child) or child.Name
if _0x7366 and _0x8635(_0x7366) ~=""then
table.insert(_0x59E6, {
_0xA8B8 = child,
_0x7366 = _0x7366,
_0x783B = _0x0F4A(_0x7366),
_0x1566 = _0x0F4A(child.Name),
})
end
end
end
if #_0x59E6 > 0 then
return _0x59E6
end
end
return nil,"keine anklickbaren Elemente gefunden"end
function _0x5D7D.slotFor(_0xB92B, _0x59E6)
for _0x036B, _0xB24C in ipairs(_0x59E6) do
if _0xB24C.key == _0xB92B.key or _0xB24C.key:find(_0xB92B.key, 1, true) then
return _0xB24C
end
end
return nil
end
local _0x4F71 = {"senden","versenden","send","confirm","bestaetigen"}
local _0xB4DF = {"confirm","bestaetigen","ja","yes","ok"}
local function _0xB801(_0x59E6, _0x7F81)
for _0x036B, _0xB24C in ipairs(_0x59E6) do
for _0x036B, word in ipairs(_0x7F81) do
if _0xB24C.key:find(word, 1, true) or _0xB24C.name:find(word, 1, true) then
return _0xB24C
end
end
end
return nil
endfunction _0x5D7D.prepare()
local _0x3D9E = _0x8635((_0x5FA8.Recipient ~=""and _0x5FA8.Recipient) or _0x0689.MailTo)
if _0x3D9E ==""then
_0xD731.status("Abbruch: kein Empfaenger eingetragen")
_0xDA9B("Big Hub","Kein Empfaenger. Username im Mailbox-Tab eintragen.", 6)
return false
end
local _0x6942 = (_0x5FA8.Message ~=""and _0x5FA8.Message) or _0x0689.MailMessage or""if tostring(_0x6942):find("[^\32-\126]") then
_0xD731.status("Abbruch: Nachricht hat Sonderzeichen")
_0xDA9B("Big Hub","Nachricht enthaelt ungueltige Zeichen.", 6)
return false
end
local _0x3A60, _0x4643, _0x1C43, _0xF344 = _0x5D7D.frames()
if not _0x3A60 then
_0xD731.status("Abbruch: Mailbox-Fenster nicht gefunden (".. tostring(_0x1C43) ..")")
_0xDA9B("Big Hub","Mailbox-Fenster nicht gefunden. Debug-Dump schicken.", 8)
return false
end
_0xD731.log("mailbox: Fenster gefunden ueber ".. tostring(_0xF344) .." -> ".. _0x3A60:GetFullName())
local _0xD807, _0x3BAA = pcall(function()
return _0x3A60.Visible
end)
if _0xD807 and _0x3BAA == false then
_0xD731.status("Abbruch: Mailbox ist im Spiel nicht offen")
_0xDA9B("Big Hub","Mailbox erst im Spiel am Postkasten oeffnen.", 6)
return false
end
if not _0x4643 then
_0xD731.status("Abbruch: Sendebereich nicht gefunden")
_0xDA9B("Big Hub","Sendebereich nicht gefunden. Debug-Dump schicken.", 8)
return false
end
local _0xF906, _0x2D76, _0xBD62 = _0x5D7D.inputs(_0x4643)
_0xD731.log("mailbox: ".. #_0xBD62 .." Textfelder im Sendebereich")
if not _0xF906 then
_0xD731.status("Abbruch: kein Textfeld fuer den Empfaenger")
_0xDA9B("Big Hub","Kein Eingabefeld gefunden. Debug-Dump schicken.", 8)
return false
end
local _0xF2DB, _0x9309 = _0x8C02(_0xF906, _0x3D9E)
_0xD731.log("mailbox: Empfaenger -> ".. tostring(_0x9309) .. (_0xF2DB and" (ok)"or" (NICHT uebernommen)"))
if _0x2D76 and _0x6942 ~=""then
_0x8C02(_0x2D76, _0x6942)
end
return true
endlocal function _0xA83A(_0x1566)
local _0x1374 = _0x5F11:FindFirstChild("Network")
if _0x1374 then
local _0x76AC = _0x1374:FindFirstChild(_0x1566)
if _0x76AC then
return _0x76AC
end
end
for _0x036B, child in ipairs(_0x5F11:GetDescendants()) do
if child.Name == _0x1566
and (child:IsA("RemoteFunction") or child:IsA("RemoteEvent")) then
return child
end
end
return nil
endfunction _0x5D7D.relay()
if _0x5D7D.relayInstance and _0x5D7D.relayInstance.Parent then
return _0x5D7D.relayInstance
end
local _0x46FA = _0xA83A(_0x5FA8.RelayRemote)
if _0x46FA then
_0x5D7D.relayInstance = _0x46FA
_0xD731.log("relay: ".. _0x46FA:GetFullName() .." <".. _0x46FA.ClassName ..">")
return _0x46FA
end
return nil,"Remote '".. tostring(_0x5FA8.RelayRemote) .."' nicht gefunden"end
function _0x5D7D.sendViaRemote()
_0xD731.log("=== Senden per Remote ===")
_0xD731.status("laeuft...")
_0xDA9B("Big Hub","Senden gestartet...", 3)
local _0x3D9E = _0x8635((_0x5FA8.Recipient ~=""and _0x5FA8.Recipient) or _0x0689.MailTo)
if _0x3D9E ==""then
_0xD731.status("Abbruch: kein Empfaenger")
_0xDA9B("Big Hub","Kein Empfaenger eingetragen.", 6)
return false
end
local _0x46FA, _0xA1A8 = _0x5D7D.relay()if not _0x46FA then
_0xD731.log("relay: ".. tostring(_0xA1A8) .." - versuche '".. tostring(_0x5FA8.SendRemote) .."'")
_0x46FA = _0xF61A.remoteByName(_0x5FA8.SendRemote)
end
if not _0x46FA then
_0xD731.status("Abbruch: kein Sende-Remote gefunden")
_0xD731.log("mailbox: weder '".. tostring(_0x5FA8.RelayRemote) .."' noch '".. tostring(_0x5FA8.SendRemote) .."' gefunden")
_0xD731.log("  -> 'Debug: ALLES mitlesen' starten und ein Pet per Hand senden,")
_0xD731.log("     dann merkt sich der Hub das richtige Remote.")
_0xDA9B("Big Hub","Kein Sende-Remote gefunden. Siehe Log.", 10)
return false
end
_0xD731.log("mailbox: sende ueber ".. _0x46FA:GetFullName()
.." <".. _0x46FA.ClassName ..">")
if not _0x46FA:IsA("RemoteFunction") then
_0xD731.log("relay: ist ein ".. _0x46FA.ClassName ..", erwartet war RemoteFunction")
endif _0x5FA8.UnlockLocked then
local _0xDCD0, _0xA594 = _0x5D7D.openInventory()
_0xD731.log("inventar: ".. tostring(_0xA594))
if not _0xDCD0 then
_0xD731.log("inventar: bitte im Spiel oeffnen, sonst bleiben Schloesser dran")
end
if _0x5FA8.KeepInventoryOpen then
_0x5D7D.keepInventoryOpen(true)
end
end
local _0x0229, _0xC789, _0x0A9D = _0x5D7D.collect()
if not _0x0229 then
_0xD731.status("Abbruch: ".. tostring(_0xC789))
_0xDA9B("Big Hub", tostring(_0xC789), 8)
return false
end
_0xD731.log("mailbox: ".. #_0x0229 .." von ".. tostring(_0x0A9D) .." Pets passen zur Config")
if #_0x0229 == 0 then
local _0xEC64 = 0
for _0x1566, _0x876F in pairs(_0x5D7D.lastReasons) do
_0xD731.log("  - ".. _0x1566 ..": ".. tostring(_0x876F))
_0xEC64 += 1
if _0xEC64 >= 10 then
break
end
end
_0xD731.status("kein Pet passt zur Config")
_0xDA9B("Big Hub","Kein Pet passt zu CONFIG.Mailbox.Pets.", 7)
return false
end
local _0x6942 = (_0x5FA8.Message ~=""and _0x5FA8.Message) or _0x0689.MailMessage or""local _0x2E06, _0x9C40, _0x8494, _0x3E29, _0x3049 = 0, 0, 0, 0, 0
local _0x1A94 = 0
local _0x226C = 0
local _0x827D = {}
for _0x036B, _0xB92B in ipairs(_0x0229) do
local _0x39AC = tostring(_0xB92B.uid or"")if #_0x39AC < 8 then
_0x3E29 += 1
_0xD731.log("  uebersprungen: ".. _0xB92B.name .." - keine brauchbare UID ('".. _0x39AC .."')")
elseif _0x5FA8.DryRun then
_0xD731.log("  TESTLAUF: ".. _0xB92B.name .."  uid=".. _0x39AC)
else
local _0xA996 = _0xB92B.name .." [".. _0xB92B.variant
.. (_0xB92B.shiny and", shiny"or"") .."]"if _0xB92B.needsUnlock or _0xB92B.locked thenlocal _0x31A4, _0xA594 = _0x5D7D.unlockAlways(_0xB92B)
if not _0x31A4 then
_0x31A4, _0xA594 = _0x5D7D.unlock(_0xB92B)
end
_0xD731.log("  Schloss bei ".. _0xA996 ..": ".. (_0x31A4 and ("offen (".. tostring(_0xA594) ..")")
or ("bleibt zu - ".. tostring(_0xA594))))
if not _0x31A4 then
_0x3E29 += 1
_0x8373.set("target","Schloss bei ".. _0xB92B.name .." nicht offen")
continue
end
elseif _0x5FA8.UnlockLocked and _0x5FA8.UnlockAlways thenlocal _0x4D1B, _0xA594 = _0x5D7D.unlockAlways(_0xB92B)if _0x1A94 < 3 then
_0x1A94 += 1
_0xD731.log("  vorsorglich entsperrt: ".. _0xA996 .." -> ".. (_0x4D1B and tostring(_0xA594) or ("ging nicht: ".. tostring(_0xA594))))
end
endlocal _0x3FEE = table.pack(pcall(function()
return _0x46FA:InvokeServer(_0x3D9E, _0x6942, _0x5FA8.ItemClass, _0x39AC, 1)
end))
if not _0x3FEE[1] then
_0x8494 += 1
_0xD731.log("  FEHLER bei ".. _0xA996 ..": ".. tostring(_0x3FEE[2]))
if _0x5FA8.StopOnFailure then
_0xD731.log("  -> Abbruch (StopOnFailure)")
break
end
else
local _0x863F = {}
for _0xBE19 = 2, _0x3FEE.n do
table.insert(_0x863F, tostring(_0x3FEE[_0xBE19])
.." (".. typeof(_0x3FEE[_0xBE19]) ..")")
end
local _0x4FD8 = #_0x863F > 0 and table.concat(_0x863F,", ") or"nichts"_0xD731.log("  Aufruf durch: ".. _0xA996 .."  uid=".. _0x39AC
.."  antwort=".. _0x4FD8)if _0x5FA8.Verify then
task.wait(_0x5FA8.VerifyDelay or 1.2)
local _0xCE0D = _0x5D7D.ownsUid(_0x39AC)
if _0xCE0D == false then
_0x2E06 += 1
_0x226C = 0
_0x5D7D.sentUids[_0x39AC] = true
_0xD731.log("    bestaetigt: Pet ist aus dem Inventar verschwunden")
_0xD731.countAction()
elseif _0xCE0D == true then
_0x9C40 += 1
_0x226C += 1local _0x6CF1 = _0x4FD8
_0x827D[_0x6CF1] = (_0x827D[_0x6CF1] or 0) + 1
if _0x0F4A(_0x6CF1):find("can't mail", 1, true)
or _0x0F4A(_0x6CF1):find("cant mail", 1, true) then
_0x5D7D.cannotMail[_0x39AC] = _0x6CF1
end
_0xD731.log("    ABGELEHNT (".. _0x226C .." in Folge): ".. _0xB92B.name .." bleibt im Inventar")
if _0x5FA8.StopOnFailure or _0x226C >= (tonumber(_0x5FA8.MaxRejects) or 5) then
_0xD731.log("    -> Abbruch nach ".. _0x226C
.." Ablehnungen in Folge")
break
end
else
_0x3049 += 1
_0xD731.log("    unklar: Inventar nicht pruefbar")
end
else
_0x2E06 += 1
_0x5D7D.sentUids[_0x39AC] = true
_0xD731.countAction()
end
end
task.wait(_0x5FA8.SendDelay or 0.6)
end
end
local _0x19E1
if _0x5FA8.DryRun then
_0x19E1 ="Testlauf: ".. #_0x0229 .." Pets waeren rausgegangen"else
_0x19E1 = _0x2E06 .." bestaetigt verschickt"if _0x9C40 > 0 then
_0x19E1 = _0x19E1 ..", ".. _0x9C40 .." vom Server abgelehnt"end
if _0x8494 > 0 then
_0x19E1 = _0x19E1 ..", ".. _0x8494 .." Aufruf-Fehler"end
if _0x3E29 > 0 then
_0x19E1 = _0x19E1 ..", ".. _0x3E29 .." ohne UID"end
if _0x3049 > 0 then
_0x19E1 = _0x19E1 ..", ".. _0x3049 .." unklar"end
end_0x5D7D.keepInventoryOpen(false)
_0xD731.log("=== ".. _0x19E1 .." ===")
_0xD731.status(_0x19E1)
_0xDA9B("Big Hub", _0x19E1 .." an ".. _0x3D9E, 8)local _0xB40F = false
for _0x6CF1, _0x2B74 in pairs(_0x827D) do
_0xB40F = true
_0xD731.log("Server-Antwort ".. _0x2B74 .."x: ".. tostring(_0x6CF1))
end
if _0x9C40 > 0 and _0x2E06 == 0 then
_0xD731.log("Der Server nimmt die Sendung nicht an. Haeufigste Gruende:")
_0xD731.log("  1. Pet ist ANGELEGT - angelegte Pets kann man nicht mailen")
_0xD731.log("  2. Pet ist gesperrt und das Schloss ging nicht weg")
_0xD731.log("  3. Pet ist nicht handelbar (Event- oder Exklusiv-Pets)")
_0xD731.log("  4. Tageslimit der Mailbox - 'Debug: MailLog dumpen'")
_0xD731.log("  5. Empfaenger falsch geschrieben: '".. _0x3D9E .."'")
if _0xB40F then
_0xD731.log("Die Server-Antwort oben sagt, welcher Grund es ist.")
end
end
return _0x2E06 > 0 or _0x5FA8.DryRun
endfunction _0x5D7D.sendViaGui()
_0xD731.log("=== Senden gestartet (UI-Weg) ===")
_0xD731.status("laeuft...")
_0xDA9B("Big Hub","Senden gestartet...", 3)
if not _0x5D7D.prepare() then
return false
end
local _0x0229, _0x1C43, _0x0A9D = _0x5D7D.collect()
if not _0x0229 then
_0xD731.status("Abbruch: ".. tostring(_0x1C43))
_0xDA9B("Big Hub", tostring(_0x1C43), 8)
return false
end
_0xD731.log("mailbox: ".. #_0x0229 .." von ".. tostring(_0x0A9D) .." Pets passen zur Config")
for _0x036B, _0xB92B in ipairs(_0x0229) do
_0xD731.log("  + ".. _0xB92B.name .." [".. _0xB92B.variant .. (_0xB92B.shiny and", shiny"or"") .."]")
end
if #_0x0229 == 0 then
local _0xEC64 = 0
for _0x1566, _0x876F in pairs(_0x5D7D.lastReasons) do
_0xD731.log("  - ".. _0x1566 ..": ".. tostring(_0x876F))
_0xEC64 += 1
if _0xEC64 >= 10 then
break
end
end
_0xD731.status("kein Pet passt zur Config")
_0xDA9B("Big Hub","Kein Pet passt zur Liste in CONFIG.Mailbox.Pets.", 7)
return false
end
if _0x5FA8.DryRun then
_0xD731.status("Testlauf: ".. #_0x0229 .." Pets wuerden raus")
_0xDA9B("Big Hub","Testlauf: ".. #_0x0229 .." Pets. Nichts angeklickt.", 6)
return true
end
if not _0x5D7D.canClick() then
_0xD731.status("Felder gefuellt, Executor kann nicht klicken")
_0xDA9B("Big Hub","Felder sind gefuellt. Pets und Senden musst du selbst klicken.", 8)
return false
end
local _0x59E6, _0x97AC = _0x5D7D.slots()
if not _0x59E6 then
_0xD731.status("Abbruch: ".. tostring(_0x97AC))
_0xDA9B("Big Hub","Pet-Slots nicht gefunden. Debug-Dump schicken.", 8)
return false
end
_0xD731.log("mailbox: ".. #_0x59E6 .." anklickbare Elemente")
local _0x7B87, _0x415E = 0, {}
for _0x036B, _0xB92B in ipairs(_0x0229) do
local _0xB24C = _0x5D7D.slotFor(_0xB92B, _0x59E6)
if _0xB24C then
local _0x9D4F, _0xB6C8 = _0x1C3C(_0xB24C.button)
if _0x9D4F then
_0x7B87 += 1
_0xD731.countAction()
else
_0xD731.log("mailbox: Klick auf ".. _0xB92B.name .." fehlgeschlagen: ".. tostring(_0xB6C8))
end
else
table.insert(_0x415E, _0xB92B.name)
end
task.wait(_0x5FA8.StepDelay or 0.12)
end
_0xD731.log("mailbox: ".. _0x7B87 .." Pets angehaengt")
if #_0x415E > 0 then
_0xD731.log("mailbox: kein Slot fuer: ".. table.concat(_0x415E,", "))
end
if _0x7B87 == 0 then
_0xD731.status("nichts angehaengt, Slots passen nicht")
_0xDA9B("Big Hub","Pets im Fenster nicht gefunden. Debug-Dump schicken.", 8)
return false
end
if not _0x5FA8.AutoConfirm then
_0xD731.status(_0x7B87 .." Pets ausgewaehlt, Senden klickst du")
_0xDA9B("Big Hub", _0x7B87 .." Pets ausgewaehlt. Jetzt Senden klicken.", 7)
return true
end
local _0x9B65 = _0xB801(_0x59E6, _0x4F71)
if not _0x9B65 then
_0xD731.status(_0x7B87 .." Pets dran, Senden-Knopf nicht gefunden")
_0xDA9B("Big Hub", _0x7B87 .." Pets dran. Senden selbst klicken.", 7)
return false
end
local _0x71ED, _0x2F6A = _0x1C3C(_0x9B65.button)
_0xD731.log("mailbox: Senden geklickt (".. _0x9B65.text ..") -> ".. tostring(_0x71ED))task.wait(0.4)
local _0x98AF = _0x5D7D.slots()
if _0x98AF then
local _0xCF01 = _0xB801(_0x98AF, _0xB4DF)
if _0xCF01 and _0xCF01.button ~= _0x9B65.button then
_0x1C3C(_0xCF01.button)
_0xD731.log("mailbox: Bestaetigung geklickt (".. _0xCF01.text ..")")
end
end
_0xD731.status(_0x71ED and ("abgeschickt: ".. _0x7B87 .." Pets") or ("Senden fehlgeschlagen: ".. tostring(_0x2F6A)))
_0xDA9B("Big Hub", _0x71ED and (_0x7B87 .." Pets an ".. _0x8635((_0x5FA8.Recipient ~=""and _0x5FA8.Recipient) or _0x0689.MailTo)) or tostring(_0x2F6A), 6)
return _0x71ED
endfunction _0x5D7D.send()
if _0x5FA8.UseRemote then
return _0x5D7D.sendViaRemote()
end
return _0x5D7D.sendViaGui()
endlocal function _0x884C(instance, depth, maxDepth, _0x3EFE, _0x4DC4)
if #_0x3EFE >= _0x4DC4 then
return
end
for _0x036B, child in ipairs(instance:GetChildren()) do
if #_0x3EFE >= _0x4DC4 then
return
end
local _0x7366 =""if child:IsA("TextLabel") or child:IsA("TextBox") or child:IsA("TextButton") then
_0x7366 =' "'.. tostring(child.Text) ..'"'end
table.insert(_0x3EFE, string.rep("  ", depth) .. child.Name
.." <".. child.ClassName ..">".. _0x7366)
if depth < maxDepth then
_0x884C(child, depth + 1, maxDepth, _0x3EFE, _0x4DC4)
end
end
end
function _0x5D7D.dumpGui()
local _0x3A60, _0x4643, _0x1C43, _0xF344 = _0x5D7D.frames()
if not _0x3A60 then
_0xD731.log("dump: ".. tostring(_0x1C43))
_0xDA9B("Big Hub","Mailbox-Fenster nicht gefunden.", 6)
return
end
_0xD731.log("--- Mailbox GUI (".. tostring(_0xF344) ..") ---")
_0xD731.log("frame: ".. _0x3A60:GetFullName())
_0xD731.log("sendFrame: ".. (_0x4643 and _0x4643:GetFullName() or"FEHLT"))
local _0x3EFE = {}
_0x884C(_0x4643 or _0x3A60, 0, 4, _0x3EFE, 220)
for _0x036B, line in ipairs(_0x3EFE) do
_0xD731.log(line)
end
_0xD731.log("--- Ende GUI (".. #_0x3EFE .." Zeilen) ---")
_0xDA9B("Big Hub","GUI-Dump in der Konsole (Main-Tab).", 5)
endfunction _0x5D7D.dumpCandidates()
local _0xCB9A = _0x5D7D.candidates()
_0xD731.log("--- Fenster-Kandidaten (".. #_0xCB9A ..") ---")
for _0xBE19, _0x2F35 in ipairs(_0xCB9A) do
if _0xBE19 > 10 then
break
end
_0xD731.log(_0xBE19 ..". punkte=".. _0x2F35.score
.."  offen=".. tostring(_0x2F35.rendered)
.."  name=".. tostring(_0x2F35.nameHit)
.."  sendeknopf=".. tostring(_0x2F35.sendHit)
.."  brauchbar=".. tostring(_0x2F35.usable)
.."  knoepfe=".. _0x2F35.buttons)
_0xD731.log("    ".. _0x2F35.path)
_0xD731.log('    FramePath = "'.. _0xD58C(_0x2F35.frame) ..'",')
end
_0xD731.log("--- Ende Kandidaten ---")
_0xDA9B("Big Hub", #_0xCB9A .." Kandidaten in der Konsole.", 5)
endfunction _0x5D7D.listGuis()
local _0x4CD1 = _0x09A0()
if not _0x4CD1 then
_0xD731.log("keine PlayerGui")
return
end
_0xD731.log("--- Fenster in der PlayerGui ---")
local _0x0E80 = 0
for _0x036B, _0xFFAE in ipairs(_0x4CD1:GetChildren()) do
if _0xFFAE:IsA("LayerCollector") and _0x0E80 < 120 then
local _0xAEB1 = false
for _0x036B, child in ipairs(_0xFFAE:GetChildren()) do
if child:IsA("GuiObject") and _0x0E80 < 120 then
local _0xBD62, _0xAAF2 = 0, 0
for _0x036B, _0x66F6 in ipairs(child:GetDescendants()) do
if _0x66F6:IsA("TextBox") then
_0xBD62 += 1
elseif _0x66F6:IsA("GuiButton") then
_0xAAF2 += 1
end
end
if _0xBD62 > 0 or child.Visible then
if not _0xAEB1 then
_0xD731.log(_0xFFAE.Name .."  (enabled=".. tostring(_0xFFAE.Enabled) ..")")
_0xAEB1 = true
_0x0E80 += 1
end
_0xD731.log("    ".. child.Name
.."  sichtbar=".. tostring(child.Visible)
.."  textfelder=".. _0xBD62
.."  knoepfe=".. _0xAAF2)
_0x0E80 += 1
end
end
end
end
end
_0xD731.log("--- Ende Fenster (".. _0x0E80 .." Zeilen) ---")
_0xDA9B("Big Hub","Fensterliste in der Konsole.", 5)
endfunction _0x5D7D.watch(seconds)
seconds = tonumber(seconds) or 20
local _0x4CD1 = _0x09A0()
if not _0x4CD1 then
_0xD731.log("keine PlayerGui")
return
end
_0xD731.status("Scanner laeuft - Mailbox JETZT oeffnen")
_0xDA9B("Big Hub","Scanner laeuft ".. seconds .."s. Mailbox JETZT im Spiel oeffnen!", 8)
_0xD731.log("--- Fenster-Scanner, ".. seconds .."s ---")
local _0x5B57 = {}
for _0x036B, _0x0F4F in ipairs(_0x4834()) do
_0x5B57[_0x0F4F] = true
end
_0xD731.log("beim Start sichtbar: ".. #_0x4834() .." Textfelder")
local _0x11FB = os.clock() + seconds
local _0x97BB = 0
while os.clock() < _0x11FB do
for _0x036B, _0x0F4F in ipairs(_0x4834()) do
if not _0x5B57[_0x0F4F] then
_0x5B57[_0x0F4F] = true
_0x97BB += 1
local _0xA611 = _0x1FEC(_0x0F4F)
_0xD731.log("NEU sichtbar: ".. _0x0F4F:GetFullName())
_0xD731.log('   -> FramePath = "'.. _0xD58C(_0xA611) ..'",')
end
end
task.wait(0.4)
end
_0xD731.log("--- Scanner fertig, ".. _0x97BB .." neue Textfelder ---")
if _0x97BB == 0 then
_0xD731.log("Nichts gefunden. Moeglich: Mailbox war schon offen, oder das")
_0xD731.log("Fenster hat kein Textfeld. Dann 'Fenster auflisten' benutzen.")
end
_0xD731.status("Scanner fertig, ".. _0x97BB .." Treffer")
_0xDA9B("Big Hub","Scanner fertig: ".. _0x97BB .." Treffer. Konsole kopieren.", 7)
endfunction _0x5D7D.dumpSave()
local _0xE65E, _0x1C43 = _0x5D7D.save()
if not _0xE65E then
_0xD731.log("save: ".. tostring(_0x1C43))
_0xDA9B("Big Hub", tostring(_0x1C43), 8)
return
end
local function _0x7A16(_0x946B)
local _0x2B74 = 0
for _0x036B in pairs(_0x946B) do
_0x2B74 += 1
end
return _0x2B74
end
_0xD731.log("--- Aufbau der Spieldaten ---")
for _0x783B, _0x946B in pairs(_0xE65E) do
if type(_0x946B) =="table"then
_0xD731.log("  ".. tostring(_0x783B) .." = table (".. _0x7A16(_0x946B) .." Eintraege)")
local _0xEC64 = 0
for subKey, subValue in pairs(_0x946B) do
_0xEC64 += 1
if _0xEC64 > 10 then
_0xD731.log("      ... weitere")
break
end
if type(subValue) =="table"then
_0xD731.log("      ".. tostring(subKey) .." = table (".. _0x7A16(subValue) ..")  petartig=".. string.format("%.2f", _0x3EC8(subValue)))
else
_0xD731.log("      ".. tostring(subKey) .." = ".. tostring(subValue))
end
end
else
_0xD731.log("  ".. tostring(_0x783B) .." = ".. tostring(_0x946B)
.."  (".. type(_0x946B) ..")")
end
end
local _0x97BB, _0x88CF = _0x07D8(_0xE65E)
_0xD731.log("Pet-Liste laut Suche: ".. tostring(_0x88CF or"nichts gefunden"))
_0xD731.log("--- Ende Spieldaten ---")
_0xDA9B("Big Hub","Aufbau der Spieldaten in der Konsole.", 5)
end
function _0x5D7D.dumpPets()
local _0x81FA, _0x1C43, _0xA639 = _0x5D7D.pets()
if not _0x81FA then
_0xD731.log("dump: ".. tostring(_0x1C43))
_0xDA9B("Big Hub", tostring(_0x1C43), 7)
return
end
_0xD731.log("--- Inventar (".. #_0x81FA .." Pets, Pfad ".. tostring(_0xA639) ..") ---")
for _0xBE19, _0xB92B in ipairs(_0x81FA) do
if _0xBE19 > 20 then
_0xD731.log("  ... ".. (#_0x81FA - 20) .." weitere")
break
end
_0xD731.log(string.format("  %s | variante=%s shiny=%s locked=%s equipped=%s",
_0xB92B.name, _0xB92B.variant, tostring(_0xB92B.shiny), tostring(_0xB92B.locked), tostring(_0xB92B.equipped)))
end
local _0xE63F = _0x81FA[1]
if _0xE63F then
_0xD731.log("Rohdaten des ersten Pets:")
for _0x783B, _0x946B in pairs(_0xE63F.raw) do
_0xD731.log("  ".. tostring(_0x783B) .." = ".. tostring(_0x946B) .." (".. type(_0x946B) ..")")
end
end
_0xD731.log("--- Ende Inventar ---")
_0xDA9B("Big Hub", #_0x81FA .." Pets gelesen, Details in der Konsole.", 5)
end
function _0x5D7D.dumpRemotes()
_0xD731.log("--- Remotes mit mail/gift/send/trade ---")
local _0x7F81 = {"mail","gift","send","trade"}
local _0x97BB = 0
for _0x036B, child in ipairs(_0x5F11:GetDescendants()) do
if child:IsA("RemoteEvent") or child:IsA("RemoteFunction")
or child:IsA("UnreliableRemoteEvent") then
local _0x1566 = _0x0F4A(child.Name)
for _0x036B, word in ipairs(_0x7F81) do
if _0x1566:find(word, 1, true) then
_0xD731.log("  ".. child.ClassName .."  ".. child:GetFullName())
_0x97BB += 1
break
end
end
end
if _0x97BB >= 40 then
break
end
end
_0xD731.log("--- Ende Remotes (".. _0x97BB ..") ---")
_0xDA9B("Big Hub", _0x97BB .." passende Remotes, siehe Konsole.", 5)
endlocal function _0x2735(_0x1566)
local _0x1374 = _0x5F11:FindFirstChild("Network")
if not _0x1374 then
return nil,"ReplicatedStorage.Network fehlt"end
local _0x46FA = _0x1374:FindFirstChild(_0x1566)
if not _0x46FA then
return nil,"Remote '".. tostring(_0x1566) .."' fehlt"end
return _0x46FA
end
_0x5D7D.networkRemote = _0x2735local function _0xE4BA(_0x946B, indent, depth)
indent = indent or"  "depth = depth or 0
if typeof(_0x946B) ~="table"then
_0xD731.log(indent .. tostring(_0x946B) .."  (".. typeof(_0x946B) ..")")
return
end
if depth >= 4 then
_0xD731.log(indent .."{ ... noch tiefer }")
return
end
local _0x2B74 = 0
for _0x783B, item in pairs(_0x946B) do
_0x2B74 += 1
if _0x2B74 > 30 then
_0xD731.log(indent .."... weitere Eintraege")
break
end
if typeof(item) =="table"then
_0xD731.log(indent .."[".. tostring(_0x783B) .."] = table")
_0xE4BA(item, indent .."  ", depth + 1)
else
_0xD731.log(indent .."[".. tostring(_0x783B) .."] = ".. tostring(item)
.."  (".. typeof(item) ..")")
end
end
if _0x2B74 == 0 then
_0xD731.log(indent .."(leere Tabelle)")
end
endfunction _0x5D7D.dumpRequest()
local _0x46FA, _0x1C43 = _0x2735(_0x5FA8.RequestRemote)
if not _0x46FA then
_0xD731.log("request: ".. tostring(_0x1C43))
_0xDA9B("Big Hub", tostring(_0x1C43), 7)
return
end
_0xD731.log("--- ".. _0x46FA.Name ..":InvokeServer() ---")
local _0xA49E, _0xC566 = pcall(function()
return _0x46FA:InvokeServer()
end)
if not _0xA49E then
_0xD731.log("fehler: ".. tostring(_0xC566))
else
_0xE4BA(_0xC566,"  ", 0)
end
_0xD731.log("--- Ende ---")
_0xDA9B("Big Hub","Mailbox-Daten in der Konsole.", 5)
endfunction _0x5D7D.dumpMailLog()
local _0xE65E, _0x1C43 = _0x5D7D.save()
if not _0xE65E then
_0xD731.log("maillog: ".. tostring(_0x1C43))
_0xDA9B("Big Hub", tostring(_0x1C43), 8)
return
end
local _0xD166 = _0xE65E.MailLog or _0xE65E.Mail or _0xE65E.Mailbox
if type(_0xD166) ~="table"then
_0xD731.log("maillog: kein MailLog in den Spieldaten")
_0xDA9B("Big Hub","Kein MailLog gefunden.", 6)
return
end
_0xD731.log("--- MailLog ---")
_0xE4BA(_0xD166,"  ", 0)local _0xB9EE = os.time()
local _0x0264, _0x3DDE, _0x5B7E = 0, 0, 0
for _0x036B, _0x2F35 in pairs(_0xD166) do
if type(_0x2F35) =="table"and tostring(_0x2F35.Type) =="Sent"then
_0x0264 += 1
local _0x182C = tonumber(_0x2F35.Timestamp) or 0
if _0x182C > _0x5B7E then
_0x5B7E = _0x182C
end
if _0xB9EE - _0x182C < 86400 then
_0x3DDE += 1
end
end
end
_0xD731.log("Sendungen im Log: ".. _0x0264 ..", davon letzte 24h: ".. _0x3DDE)
if _0x5B7E > 0 then
_0xD731.log("letzte Sendung vor ".. math.floor((_0xB9EE - _0x5B7E) / 60) .." Minuten")
end
local _0x085E = tonumber(_0xE65E.MailboxResetTime)
if _0x085E then
local _0xAE8E = _0x085E - _0xB9EE
if _0xAE8E > 0 then
_0xD731.log("MailboxResetTime: in ".. math.floor(_0xAE8E / 60) .." Minuten")
else
_0xD731.log("MailboxResetTime: vor ".. math.floor(-_0xAE8E / 60) .." Minuten (abgelaufen)")
end
end
if _0xE65E.IsTradeBanned ~= nil then
_0xD731.log("IsTradeBanned: ".. tostring(_0xE65E.IsTradeBanned))
end
_0xD731.log("--- Ende MailLog ---")
_0xDA9B("Big Hub", _0x3DDE .." Sendungen in 24h, siehe Konsole.", 6)
endfunction _0x5D7D.directoryNames()
local _0x3C5A = _0x5F11:FindFirstChild("__DIRECTORY")
local _0x81FA = _0x3C5A and _0x3C5A:FindFirstChild("Pets")
if not _0x81FA then
return {},"__DIRECTORY.Pets nicht gefunden"end
local _0x7DEF = {}
for _0x036B, child in ipairs(_0x81FA:GetChildren()) do
table.insert(_0x7DEF, child.Name)
endif #_0x7DEF == 0 and _0x81FA:IsA("ModuleScript") then
local _0xA49E, _0xE65E = pcall(require, _0x81FA)
if _0xA49E and type(_0xE65E) =="table"then
for _0x783B, _0x946B in pairs(_0xE65E) do
if type(_0x783B) =="string"then
table.insert(_0x7DEF, _0x783B)
elseif type(_0x946B) =="table"then
local _0x1566 = _0xC1C1(_0x946B, _0x9A86)
if _0x1566 then
table.insert(_0x7DEF, tostring(_0x1566))
end
end
end
end
end
table.sort(_0x7DEF)
return _0x7DEF
end
function _0x5D7D.dumpDirectory()
local _0x3C5A = _0x5F11:FindFirstChild("__DIRECTORY")
if not _0x3C5A then
_0xD731.log("directory: ReplicatedStorage.__DIRECTORY fehlt")
_0xDA9B("Big Hub","__DIRECTORY nicht gefunden.", 7)
return
end
_0xD731.log("--- __DIRECTORY ---")
for _0x036B, child in ipairs(_0x3C5A:GetChildren()) do
_0xD731.log("  ".. child.Name .." <".. child.ClassName ..">  kinder=".. #child:GetChildren())
end
local _0x81FA = _0x3C5A:FindFirstChild("Pets")
if not _0x81FA then
_0xD731.log("  (kein Unterordner 'Pets')")
_0xD731.log("--- Ende ---")
return
end
local _0x91C3 = _0x81FA:GetChildren()
_0xD731.log("Pets <".. _0x81FA.ClassName ..">: ".. #_0x91C3 .." Eintraege")
for _0xBE19, child in ipairs(_0x91C3) do
if _0xBE19 > 25 then
_0xD731.log("  ... weitere ".. (#_0x91C3 - 25))
break
end
_0xD731.log("  ".. child.Name .." <".. child.ClassName ..">")
endlocal _0xE63F = _0x91C3[1]
if _0xE63F then
_0xD731.log("Aufbau von '".. _0xE63F.Name .."':")
if _0xE63F:IsA("ModuleScript") then
local _0xA49E, _0xE65E = pcall(require, _0xE63F)
if _0xA49E then
_0xE4BA(_0xE65E,"    ", 0)
else
_0xD731.log("    require fehlgeschlagen: ".. tostring(_0xE65E))
end
end
local _0xA2D3, _0x6F13 = pcall(function()
return _0xE63F:GetAttributes()
end)
if _0xA2D3 and type(_0x6F13) =="table"then
for _0x783B, _0x946B in pairs(_0x6F13) do
_0xD731.log("    attribut ".. tostring(_0x783B) .." = ".. tostring(_0x946B))
end
end
for _0x036B, child in ipairs(_0xE63F:GetChildren()) do
_0xD731.log("    kind ".. child.Name .." <".. child.ClassName ..">")
end
end
_0xD731.log("--- Ende __DIRECTORY ---")
_0xDA9B("Big Hub", #_0x91C3 .." Pets im Katalog, siehe Konsole.", 5)
endfunction _0x5D7D.checkNames()
local _0x7DEF, _0x1C43 = _0x5D7D.directoryNames()
if #_0x7DEF == 0 then
_0xD731.log("namen: ".. tostring(_0x1C43 or"Katalog leer"))
_0xDA9B("Big Hub","Pet-Katalog nicht lesbar.", 7)
return
end
_0xD731.log("--- Config gegen ".. #_0x7DEF .." Pets im Spiel ---")
for _0x036B, _0x68B1 in ipairs(_0x5FA8.Pets or {}) do
local _0x33BC = _0x0F4A(_0x68B1.name)
local _0x01DA = _0x0F4A(_0x68B1.match) =="contains"local _0x7248 = {}
for _0x036B, _0x1566 in ipairs(_0x7DEF) do
local _0xF891 = _0x0F4A(_0x1566)
local _0xA8B7
if _0x01DA then
_0xA8B7 = _0xF891:find(_0x33BC, 1, true) ~= nil
else
_0xA8B7 = _0xF891 == _0x33BC
end
if _0xA8B7 then
table.insert(_0x7248, _0x1566)
end
end
_0xD731.log('"'.. tostring(_0x68B1.name) ..'" ('.. (_0x01DA and"contains"or"exact")
..") -> ".. #_0x7248 .." Treffer")
for _0xBE19 = 1, math.min(#_0x7248, 6) do
_0xD731.log("    ".. _0x7248[_0xBE19])
end
if #_0x7248 > 6 then
_0xD731.log("    ... und ".. (#_0x7248 - 6) .." weitere")
end
end
_0xD731.log("--- Ende ---")
_0xDA9B("Big Hub","Namensabgleich in der Konsole.", 5)
end_0x5D7D.spyActive = false
_0x5D7D.spyInstalled = false
_0x5D7D.spyAllUntil = nil_0x5D7D.seenRemotes = {}_0x5D7D.learnedInstancing = {}local _0xADE7 = {"position","replicate","ping","heartbeat","render","camera","character","animation","chat","stats","tick",
}
function _0x5D7D.spy(enable, quiet)
if type(hookmetamethod) ~="function"or type(getnamecallmethod) ~="function"then
_0xD731.log("spion: Executor hat kein hookmetamethod/getnamecallmethod")
if not quiet then
_0xDA9B("Big Hub","Dein Executor kann nicht mitlesen.", 7)
end
return false
end
_0x5D7D.spyActive = enable ~= false
if _0x5D7D.spyInstalled then
_0xD731.log("spion: ".. (_0x5D7D.spyActive and"an"or"aus"))
if not quiet then
_0xDA9B("Big Hub","Spion ".. (_0x5D7D.spyActive and"an"or"aus") ..".", 4)
end
return true
end
local _0xF142 = false
local _0x5E80
_0x5E80 = hookmetamethod(game,"__namecall", function(self, ...)
local _0x4358 = _0x5D7D.learnUntil and os.clock() < _0x5D7D.learnUntil
if (_0x5D7D.spyActive or _0x5D7D.spyAllUntil or _0x5D7D.recordUntil or _0x4358)
and not _0xF142 then
local _0xB749, _0xC48F = pcall(getnamecallmethod)
if _0xB749 and (_0xC48F =="InvokeServer"or _0xC48F =="FireServer") then
local _0x1C0E, _0x1566 = pcall(function()
return self.Name
end)
if _0x1C0E and type(_0x1566) =="string"then_0x5D7D.seenRemotes[_0x1566] = selfif _0x49FA(_0x1566,"instancing") then
local _0xAD64, _0x98B2, _0xFDAF = ...
if type(_0xAD64) =="string"and type(_0x98B2) =="string"then
local _0x2F35 = _0x5D7D.learnedInstancing[_0xAD64]
if not _0x2F35 then
_0x2F35 = { _0x2B74 = 0, actions = {} }
_0x5D7D.learnedInstancing[_0xAD64] = _0x2F35
end
_0x2F35.count += 1
_0x2F35.action = _0x98B2
_0x2F35.lastId = _0xFDAF
_0x2F35.actions[_0x98B2] = (_0x2F35.actions[_0x98B2] or 0) + 1
end
endif _0x5D7D.recordUntil then
if os.clock() < _0x5D7D.recordUntil then
local _0x6D1C = false
for _0x036B, noise in ipairs(_0xADE7) do
if _0x49FA(_0x1566, noise) then
_0x6D1C = true
break
end
endif _0x5D7D.focusPattern then
_0x6D1C = not _0x49FA(_0x1566, _0x5D7D.focusPattern)
end
if not _0x6D1C then
local _0x2F35 = _0x5D7D.recorded[_0x1566]
if not _0x2F35 then
_0x2F35 = {
_0x2B74 = 0,
_0xC48F = _0xC48F,
n = select("#", ...),
_0x24E9 = { ... },
_0x5BC8 = {},
}
_0x5D7D.recorded[_0x1566] = _0x2F35
end
_0x2F35.count += 1
if _0x5D7D.focusPattern and #_0x2F35.samples < 12 then
table.insert(_0x2F35.samples, { n = select("#", ...), _0x24E9 = { ... } })
end
end
else
_0x5D7D.recordUntil = nil
end
end
local _0xB832 = _0x5D7D.spyActive and _0x49FA(_0x1566,"mailbox")if not _0xB832 and _0x5D7D.spyAllUntil then
if os.clock() < _0x5D7D.spyAllUntil then
_0xB832 = true
for _0x036B, noise in ipairs(_0xADE7) do
if _0x49FA(_0x1566, noise) then
_0xB832 = false
break
end
end
else
_0x5D7D.spyAllUntil = nil
end
end
if _0xB832 then
_0xF142 = true
local _0x2B74 = select("#", ...)
local _0x24E9 = { ... }if _0x1566 == _0x5FA8.RelayRemote then
_0x5D7D.relayInstance = self
end
pcall(function()
local _0xA639 = _0x1566
local _0xA36F, _0xD4D5 = pcall(function()
return self:GetFullName()
end)
if _0xA36F then
_0xA639 = _0xD4D5
end
_0xD731.log("### SPION: ".. _0xA639 ..":".. tostring(_0xC48F)
.."  ".. _0x2B74 .." Argument(e)")
for _0xBE19 = 1, _0x2B74 do
_0xD731.log("  Argument ".. _0xBE19 ..":")
_0xE4BA(_0x24E9[_0xBE19],"    ", 0)
end
_0xD731.log("### Ende Spion")
end)
if _0x49FA(_0x1566,"mailbox") then
_0x5D7D.lastSpyArgs = _0x24E9
end
_0xF142 = false
end
end
end
end
return _0x5E80(self, ...)
end)
_0x5D7D.spyInstalled = true
if quiet then
_0xD731.log("spion: still installiert (lernt Remote-Instanzen)")
else
_0xD731.log("spion: installiert und an")
_0xD731.log("Jetzt EIN Pet per Hand ueber die Spiel-Mailbox verschicken.")
_0xDA9B("Big Hub","Spion an. Jetzt EIN Pet per Hand verschicken.", 9)
end
return true
end_0x5D7D.recorded = {}
_0x5D7D.recordUntil = nil
_0x5D7D.focusPattern = nilfunction _0x5D7D.recordFocus(pattern, seconds)
_0x5D7D.focusPattern = _0x0F4A(pattern)
_0xD731.log("rekorder: Fokus auf Remotes mit '".. tostring(pattern) .."' im Namen")
_0x5D7D.record(seconds or 45)
end
function _0x5D7D.record(seconds)
seconds = tonumber(seconds) or 60if _0x5D7D.recordUntil and os.clock() < _0x5D7D.recordUntil then
_0x5D7D.recordUntil = os.clock() + seconds
_0xD731.log("rekorder: laeuft schon, um ".. seconds .."s verlaengert")
_0xDA9B("Big Hub","Rekorder verlaengert.", 5)
return
end
if not _0x5D7D.spyInstalled then
if not _0x5D7D.spy(false) then
return
end
_0x5D7D.spyActive = false
end
_0x5D7D.recorded = {}
_0x5D7D.recordUntil = os.clock() + seconds
_0xD731.log("=== Rekorder laeuft ".. seconds .."s ===")
_0xD731.log("Mach jetzt im Spiel die Aktionen, die der Hub lernen soll:")
_0xD731.log("  Egg oeffnen, Halloween-Runde, saeen/waessern/ernten, Orb einsammeln")
_0xDA9B("Big Hub","Rekorder laeuft ".. seconds .."s. Jetzt spielen!", 10)
task.delay(seconds, function()if _0x5D7D.recordUntil and os.clock() < _0x5D7D.recordUntil - 0.5 then
return
end
_0x5D7D.recordUntil = nil
local _0xCB9A = {}
for _0x1566, _0x2F35 in pairs(_0x5D7D.recorded) do
table.insert(_0xCB9A, { _0x1566 = _0x1566, _0x2F35 = _0x2F35 })
end
table.sort(_0xCB9A, function(a, b)
return a.entry.count > b.entry.count
end)
_0xD731.log("=== Rekorder fertig: ".. #_0xCB9A .." verschiedene Remotes ===")
for _0xBE19, item in ipairs(_0xCB9A) do
if _0xBE19 > 25 then
_0xD731.log("... ".. (#_0xCB9A - 25) .." weitere")
break
end
_0xD731.log(_0xBE19 ..". ".. item.name .."  (".. item.entry.method
..", ".. item.entry.count .."x, ".. item.entry.n .." Argumente)")
local _0x5BC8 = item.entry.samples or {}
if #_0x5BC8 > 0 thenfor sampleIndex, _0xAC7E in ipairs(_0x5BC8) do
_0xD731.log("   Aufruf ".. sampleIndex ..":")
for argIndex = 1, _0xAC7E.n do
_0xE4BA(_0xAC7E.args[argIndex],"       ", 2)
end
end
else
for argIndex = 1, item.entry.n do
_0xD731.log("     Argument ".. argIndex ..":")
_0xE4BA(item.entry.args[argIndex],"       ", 1)
end
end
end
_0xD731.log("=== Ende Rekorder ===")
_0x5D7D.focusPattern = nil
_0xDA9B("Big Hub","Rekorder fertig: ".. #_0xCB9A .." Remotes. Konsole kopieren.", 8)
end)
endfunction _0x5D7D.spyEverything(seconds)
seconds = tonumber(seconds) or 25
if not _0x5D7D.spyInstalled then
if not _0x5D7D.spy(false) then
return
end
_0x5D7D.spyActive = false
end
_0x5D7D.spyAllUntil = os.clock() + seconds
_0xD731.log("--- Alles-Mitleser an, ".. seconds .."s ---")
_0xD731.log("JETZT die Mailbox oeffnen und ein Pet verschicken.")
_0xDA9B("Big Hub","Mitleser an (".. seconds .."s). Jetzt senden!", 9)
task.delay(seconds, function()
_0x5D7D.spyAllUntil = nil
_0xD731.log("--- Alles-Mitleser aus ---")
_0xDA9B("Big Hub","Mitleser aus. Konsole kopieren.", 6)
end)
endlocal _0x4FF2 = {}
local _0x1DD7 = _0x7CDD.Farm.Webhook
local _0x5CA5 = game:GetService("HttpService")
_0x4FF2.queue = {}
_0x4FF2.lastFlush = 0
_0x4FF2.firstSent = false
_0x4FF2.totalSeen = 0local function _0x57FF()
if type(http_request) =="function"then
return http_request
end
if syn and type(syn.request) =="function"then
return syn.request
end
if http and type(http.request) =="function"then
return http.request
end
if fluxus and type(fluxus.request) =="function"then
return fluxus.request
end
if type(request) =="function"then
return request
end
return nil
end
function _0x4FF2.ready()
return _0x57FF() ~= nil and _0x8635(_0x1DD7.Url) ~=""endfunction _0x4FF2.masked()
local _0x6D9E = _0x8635(_0x1DD7.Url)
if _0x6D9E ==""then
return"(leer)"end
local _0x270C = _0x6D9E:sub(-4)
return"....".. _0x270C .." (".. #_0x6D9E .." Zeichen)"end
function _0x4FF2.post(_0x4353)
local _0x7AA5 = _0x57FF()
if not _0x7AA5 then
return false,"Executor hat keine request-Funktion"end
local _0x6D9E = _0x8635(_0x1DD7.Url)
if _0x6D9E ==""then
return false,"keine Webhook-URL gesetzt"end
local _0x1D9F, _0x7E3E = pcall(function()
return _0x5CA5:JSONEncode(_0x4353)
end)
if not _0x1D9F then
return false,"JSON fehlgeschlagen: ".. tostring(_0x7E3E)
end
local _0xA49E, _0x855E = pcall(_0x7AA5, {
Url = _0x6D9E,
Method ="POST",
Headers = { ["Content-Type"] ="application/json"},
Body = _0x7E3E,
})
if not _0xA49E then
return false, tostring(_0x855E)
end
local _0x9656 = 0
if type(_0x855E) =="table"then
_0x9656 = tonumber(_0x855E.StatusCode) or tonumber(_0x855E.Status) or 0
end
if _0x9656 >= 200 and _0x9656 < 300 then
return true, _0x9656
end
return false,"HTTP ".. tostring(_0x9656)
end
local function _0x6F03(_0xB92B)
local _0xD84D = {}
if _0xB92B.variant and _0xB92B.variant ~="normal"then
table.insert(_0xD84D, _0xB92B.variant)
end
if _0xB92B.shiny then
table.insert(_0xD84D,"shiny")
end
if #_0xD84D > 0 then
return _0xB92B.name .." [".. table.concat(_0xD84D,", ") .."]"end
return _0xB92B.name
end
function _0x4FF2.isRare(_0xB92B)
for _0x036B, word in ipairs(_0x1DD7.Words or {}) do
if _0x49FA(_0xB92B.name, word) then
return true
end
end
return false
end
function _0x4FF2.sendPet(_0xB92B, _0x6CF1)
local _0x77F5 = _0x4FF2.isRare(_0xB92B)
local _0x4353 = {
username = _0x1DD7.Name or"Big Hub",
_0x21E5 = (_0x77F5 and _0x8635(_0x1DD7.Ping) ~="") and _0x1DD7.Ping or nil,
embeds = { {
_0xE8B1 = _0x6F03(_0xB92B),
description = _0x77F5 and"**Seltenes Pet geschluepft!**"or"Pet geschluepft",
_0x0397 = _0x77F5 and 16755200 or 9126655,
_0xC075 = {
{ _0x1566 ="Variante", _0x946B = tostring(_0xB92B.variant), inline = true },
{ _0x1566 ="Shiny", _0x946B = _0xB92B.shiny and"ja"or"nein", inline = true },
{ _0x1566 ="Egg", _0x946B = tostring(_0x7CDD.Farm.Eggs.EggName), inline = true },
},
footer = { _0x7366 ="Big Hub  |  ".. tostring(_0xC2D2.Name)
.. (_0x6CF1 and ("  |  ".. _0x6CF1) or"") },
} },
}
local _0xA49E, _0x1C43 = _0x4FF2.post(_0x4353)
if _0xA49E then
_0xD731.log("webhook: '".. _0x6F03(_0xB92B) .."' gemeldet")
else
_0xD731.log("webhook: senden fehlgeschlagen - ".. tostring(_0x1C43))
end
return _0xA49E
end
function _0x4FF2.flush(force)
if #_0x4FF2.queue == 0 then
return
end
local _0xB9EE = os.clock()
if not force and (_0xB9EE - _0x4FF2.lastFlush) < (tonumber(_0x1DD7.Batch) or 10) then
return
end
_0x4FF2.lastFlush = _0xB9EElocal _0x730D, _0x85A1 = {}, {}
for _0x036B, _0xB92B in ipairs(_0x4FF2.queue) do
local _0x783B = _0x6F03(_0xB92B)
if not _0x730D[_0x783B] then
_0x730D[_0x783B] = 0
table.insert(_0x85A1, _0x783B)
end
_0x730D[_0x783B] += 1
end
_0x4FF2.queue = {}
local _0x3EFE = {}
for _0x036B, _0x783B in ipairs(_0x85A1) do
table.insert(_0x3EFE, _0x730D[_0x783B] .."x  ".. _0x783B)
end
local _0x7366 = table.concat(_0x3EFE,"\n")
if #_0x7366 > 1800 then
_0x7366 = _0x7366:sub(1, 1800) .."\n..."end
local _0xA49E, _0x1C43 = _0x4FF2.post({
username = _0x1DD7.Name or"Big Hub",
embeds = { {
_0xE8B1 = #_0x85A1 .." verschiedene Pets",
description = _0x7366,
_0x0397 = 9126655,
footer = { _0x7366 ="Big Hub  |  ".. tostring(_0xC2D2.Name)
.."  |  insgesamt ".. _0x4FF2.totalSeen },
} },
})
if not _0xA49E then
_0xD731.log("webhook: Sammelmeldung fehlgeschlagen - ".. tostring(_0x1C43))
end
endfunction _0x4FF2.report(_0xCB9A)
local _0x8C3D = _0x0F4A(_0x1DD7.Mode)
if _0x8C3D =="off"then
return
end
for _0x036B, _0xB92B in ipairs(_0xCB9A) do
_0x4FF2.totalSeen += 1
local _0xE63F = _0x1DD7.SendFirst and not _0x4FF2.firstSent
if _0xE63F then
_0x4FF2.firstSent = true
_0x4FF2.sendPet(_0xB92B,"erstes Pet dieser Sitzung")
elseif _0x4FF2.isRare(_0xB92B) then
_0x4FF2.sendPet(_0xB92B)
elseif _0x8C3D =="all"then
table.insert(_0x4FF2.queue, _0xB92B)
end
end
_0x4FF2.flush(false)
end
function _0x4FF2.sendStart(_0xC05C, _0xC1AB)
if not _0x1DD7.SendStart or not _0x4FF2.ready() then
return
end
_0x4FF2.post({
username = _0x1DD7.Name or"Big Hub",
embeds = { {
_0xE8B1 ="Auto-Hatch gestartet",
description ="Egg: **".. tostring(_0xC05C) .."**  x".. tostring(_0xC1AB),
_0x0397 = 5793266,
footer = { _0x7366 ="Big Hub  |  ".. tostring(_0xC2D2.Name) },
} },
})
endfunction _0x4FF2.testPet()
local _0x81FA, _0x1C43 = _0x5D7D.pets()
if not _0x81FA or #_0x81FA == 0 then
_0xD731.log("webhook: kein Pet im Inventar lesbar - ".. tostring(_0x1C43))
_0xDA9B("Big Hub","Keine Pets lesbar: ".. tostring(_0x1C43), 8)
return
endlocal _0xC1C1 = _0x81FA[#_0x81FA]
for _0x036B, _0xB92B in ipairs(_0x81FA) do
if _0x4FF2.isRare(_0xB92B) then
_0xC1C1 = _0xB92B
break
end
end
_0xD731.log("webhook: Testmeldung fuer '".. _0xC1C1.name .."' (rare=".. tostring(_0x4FF2.isRare(_0xC1C1)) ..", Modus ".. tostring(_0x1DD7.Mode) ..")")
local _0xA49E = _0x4FF2.sendPet(_0xC1C1,"Testmeldung")
_0xDA9B("Big Hub", _0xA49E and ("Pet-Meldung gesendet: ".. _0xC1C1.name)
or"Pet-Meldung fehlgeschlagen, siehe Konsole", 8)
end
function _0x4FF2.test()
if _0x8635(_0x1DD7.Url) ==""then
_0xD731.log("webhook: keine URL eingetragen")
_0xDA9B("Big Hub","Keine Webhook-URL eingetragen.", 7)
return
end
if not _0x57FF() then
_0xD731.log("webhook: Executor hat keine request-Funktion")
_0xDA9B("Big Hub","Dein Executor kann kein HTTP senden.", 8)
return
end
local _0xA49E, _0x1C43 = _0x4FF2.post({
username = _0x1DD7.Name or"Big Hub",
embeds = { {
_0xE8B1 ="Test",
description ="Wenn du das liest, funktioniert der Webhook.",
_0x0397 = 5793266,
footer = { _0x7366 ="Big Hub  |  ".. tostring(_0xC2D2.Name) },
} },
})
_0xD731.log("webhook: Test -> ".. (_0xA49E and"ok"or tostring(_0x1C43))
.."  URL ".. _0x4FF2.masked())
_0xDA9B("Big Hub", _0xA49E and"Webhook-Test gesendet."or ("Webhook-Test fehlgeschlagen: ".. tostring(_0x1C43)), 8)
end_0xF61A = {}
local _0x7264 = _0x7CDD.Farm
_0xF61A.zones = {}
_0xF61A.lastTarget = nil
local function _0xC1E8(instance)
if not instance then
return nil
end
if instance:IsA("BasePart") then
return instance.Position
end
if instance:IsA("Model") then
if instance.PrimaryPart then
return instance.PrimaryPart.Position
end
local _0xA49E, _0xE328 = pcall(function()
return instance:GetPivot()
end)
if _0xA49E and _0xE328 then
return _0xE328.Position
end
local _0x645E = instance:FindFirstChildWhichIsA("BasePart", true)
return _0x645E and _0x645E.Position or nil
end
local _0x645E = instance:FindFirstChildWhichIsA("BasePart", true)
return _0x645E and _0x645E.Position or nil
endfunction _0xF61A.zoneNamesFromSave()
local _0xE65E = _0x5D7D.save()
if type(_0xE65E) ~="table"then
return {}
end
local _0x31A4 = _0xE65E.UnlockedZones
if type(_0x31A4) ~="table"then
return {}
end
local _0x7DEF = {}
for _0x1566, _0x946B in pairs(_0x31A4) do
if type(_0x1566) =="string"and (_0x946B == true or not _0x7264.Zones.OnlyUnlocked) then
table.insert(_0x7DEF, _0x1566)
end
end
table.sort(_0x7DEF)
return _0x7DEF
endlocal _0xD000 = {"zones","zone","areas","area","islands","worlds"}
function _0xF61A.zonesFromWorkspace()
local _0x3819, _0x0489
local function _0xF3DE(_0x66F6)
local _0x783B = _0x0F4A(_0x66F6.Name)if _0x783B:find("fake", 1, true) or _0x783B:find("break", 1, true)
or _0x783B:find("render", 1, true) then
return
end
for _0x036B, word in ipairs(_0xD000) do
if _0x783B == word or _0x783B:find(word, 1, true) then
local _0x2B74 = 0
for _0x036B, child in ipairs(_0x66F6:GetChildren()) do
if _0xC1E8(child) then
_0x2B74 += 1
end
end
if _0x2B74 >= 3 and (not _0x0489 or _0x2B74 > _0x0489) then
_0x3819, _0x0489 = _0x66F6, _0x2B74
end
return
end
end
end
for _0x036B, child in ipairs(workspace:GetChildren()) do
_0xF3DE(child)
for _0x036B, _0x7942 in ipairs(child:GetChildren()) do
_0xF3DE(_0x7942)
end
end
if not _0x3819 then
return {},"kein Zonen-Ordner in der Workspace"end
local _0xE14A = {}
for _0x036B, child in ipairs(_0x3819:GetChildren()) do
local _0xD1B3 = _0xC1E8(child)
if _0xD1B3 then
table.insert(_0xE14A, {
_0x1566 = child.Name,
_0xD1B3 = _0xD1B3,
_0xA639 = child:GetFullName(),
})
end
end
_0xD731.log("zonen: Ordner ".. _0x3819:GetFullName() .." mit ".. #_0xE14A .." Zonen")
return _0xE14A
endfunction _0xF61A.scanZones()local _0x8FBC = _0xF61A.zonesFromWorkspace()
if #_0x8FBC > 0 then
_0xF61A.zones = _0x8FBC
local _0x981C = {}
for _0x036B, _0xF747 in ipairs(_0x8FBC) do
table.insert(_0x981C, { _0x1566 = _0xF747.name, _0xD1B3 = _0xF747.position })
end
_0x7CDD.Areas = _0x981C
return _0x8FBC
end
local _0x7DEF = _0xF61A.zoneNamesFromSave()
if #_0x7DEF == 0 then
_0xD731.log("zonen: keine UnlockedZones in den Spieldaten")
return {}
end
local _0x5923 = {}
for _0x036B, _0x1566 in ipairs(_0x7DEF) do
_0x5923[_0x0F4A(_0x1566)] = _0x1566
end
local _0x97BB = {}
for _0x036B, child in ipairs(workspace:GetDescendants()) do
local _0x783B = _0x0F4A(child.Name)
if _0x5923[_0x783B] and not _0x97BB[_0x783B] then
local _0xD1B3 = _0xC1E8(child)
if _0xD1B3 then
_0x97BB[_0x783B] = {
_0x1566 = _0x5923[_0x783B],
_0xD1B3 = _0xD1B3,
_0xA639 = child:GetFullName(),
}
end
end
end
local _0xE14A = {}
for _0x036B, _0x1566 in ipairs(_0x7DEF) do
local _0x2F35 = _0x97BB[_0x0F4A(_0x1566)]
if _0x2F35 then
table.insert(_0xE14A, _0x2F35)
end
end
_0xF61A.zones = _0xE14A
_0xD731.log("zonen: ".. #_0xE14A .." von ".. #_0x7DEF .." in der Workspace gefunden")if #_0xE14A > 0 then
local _0x981C = {}
for _0x036B, _0xF747 in ipairs(_0xE14A) do
table.insert(_0x981C, { _0x1566 = _0xF747.name, _0xD1B3 = _0xF747.position })
end
_0x7CDD.Areas = _0x981C
end
return _0xE14A
end
function _0xF61A.zoneOrder()
if #_0xF61A.zones == 0 then
_0xF61A.scanZones()
end
if #(_0x7264.Zones.Order or {}) == 0 then
return _0xF61A.zones
end
local _0x60D1 = {}
for _0x036B, _0xF747 in ipairs(_0xF61A.zones) do
_0x60D1[_0x0F4A(_0xF747.name)] = _0xF747
end
local _0x7AA0 = {}
for _0x036B, _0x1566 in ipairs(_0x7264.Zones.Order) do
local _0xF747 = _0x60D1[_0x0F4A(_0x1566)]
if _0xF747 then
table.insert(_0x7AA0, _0xF747)
end
end
return #_0x7AA0 > 0 and _0x7AA0 or _0xF61A.zones
endlocal _0x5B91 = {"breakable","breakables","destructible","coinjar","jar"}function _0xF61A.breakableContainer()
if _0x7264.Breakables.Container then
local _0x66F6 = workspace
for _0x645E in tostring(_0x7264.Breakables.Container):gmatch("[^%.]+") do
_0x66F6 = _0x66F6:FindFirstChild(_0x645E)
if not _0x66F6 then
return nil,"Pfad '".. tostring(_0x7264.Breakables.Container) .."' nicht gefunden"end
end
return _0x66F6
end
if _0xF61A.breakableCache and _0xF61A.breakableCache.Parent then
return _0xF61A.breakableCache
end
local _0x3819, _0x0489 = nil, 0
local function _0xF3DE(_0x66F6)
local _0x783B = _0x0F4A(_0x66F6.Name)
for _0x036B, word in ipairs(_0x5B91) do
if _0x783B:find(word, 1, true) then
local _0x2B74 = #_0x66F6:GetChildren()
if _0x2B74 > _0x0489 then
_0x3819, _0x0489 = _0x66F6, _0x2B74
end
return
end
end
end
for _0x036B, child in ipairs(workspace:GetChildren()) do
_0xF3DE(child)
for _0x036B, _0x7942 in ipairs(child:GetChildren()) do
_0xF3DE(_0x7942)
for _0x036B, subsub in ipairs(_0x7942:GetChildren()) do
_0xF3DE(subsub)
end
end
end
if _0x3819 then
_0xF61A.breakableCache = _0x3819
_0xD731.log("breakables: Container ".. _0x3819:GetFullName() .." (".. _0x0489 .." Objekte)")
return _0x3819
end
return nil,"kein Breakable-Container in der Workspace gefunden"endfunction _0xF61A.nearestBreakable()
local _0x1A66, _0x1C43 = _0xF61A.breakableContainer()
if not _0x1A66 then
return nil, _0x1C43
end
local _0x4CD1 = _0xD6D1.root()
if not _0x4CD1 then
return nil,"kein Charakter"end
local _0xD05A = _0x4CD1.Position
local _0x3819, _0xE54D
for _0x036B, child in ipairs(_0x1A66:GetChildren()) do
local _0xD1B3 = _0xC1E8(child)
if _0xD1B3 then
local _0xFDE4 = (_0xD1B3 - _0xD05A).Magnitude
if _0xFDE4 <= (_0x7264.Breakables.Radius or 400)
and (not _0xE54D or _0xFDE4 < _0xE54D)
and child ~= _0xF61A.lastTarget then
_0x3819, _0xE54D = child, _0xFDE4
end
end
end
if not _0x3819 then
return nil,"kein Ziel im Radius ".. tostring(_0x7264.Breakables.Radius)
end
return _0x3819, nil, _0xE54D
endfunction _0xF61A.markTarget(instance)
if _0xF61A.marker then
pcall(function()
_0xF61A.marker:Destroy()
end)
_0xF61A.marker = nil
end
if not instance then
return
end
local _0xA49E, _0xD45F = pcall(function()
local _0xF6B3 = Instance.new("Highlight")
_0xF6B3.Name ="BigHubTarget"_0xF6B3.FillColor = Color3.fromRGB(139, 92, 246)
_0xF6B3.OutlineColor = Color3.fromRGB(255, 255, 255)
_0xF6B3.FillTransparency = 0.55
_0xF6B3.OutlineTransparency = 0
_0xF6B3.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
_0xF6B3.Adornee = instance
_0xF6B3.Parent = instance
return _0xF6B3
end)
if _0xA49E then
_0xF61A.marker = _0xD45F
return
endlocal _0x158E, _0x0F4F = pcall(function()
local _0x58B9 = Instance.new("SelectionBox")
_0x58B9.Name ="BigHubTarget"_0x58B9.Color3 = Color3.fromRGB(139, 92, 246)
_0x58B9.LineThickness = 0.08
_0x58B9.Adornee = instance
_0x58B9.Parent = instance
return _0x58B9
end)
_0xF61A.marker = _0x158E and _0x0F4F or nil
endlocal _0x32AA = {"orbs","orb"}
function _0xF61A.orbFolder()
if _0xF61A.orbCache and _0xF61A.orbCache.Parent then
return _0xF61A.orbCache
end
local _0x7E41 = workspace:FindFirstChild("__THINGS")
if _0x7E41 then
local _0x76AC = _0x7E41:FindFirstChild("Orbs")
if _0x76AC then
_0xF61A.orbCache = _0x76AC
return _0x76AC
end
end
local _0x3819, _0x0489
for _0x036B, child in ipairs(workspace:GetDescendants()) do
local _0x783B = _0x0F4A(child.Name)
for _0x036B, word in ipairs(_0x32AA) do
if _0x783B == word then
local _0x2B74 = #child:GetChildren()
if _0x2B74 > 0 and (not _0x0489 or _0x2B74 > _0x0489) then
_0x3819, _0x0489 = child, _0x2B74
end
end
end
end
_0xF61A.orbCache = _0x3819
return _0x3819
endlocal _0x47B9 = {"trickortreat","trick","treat","halloween","spooky","candy"}function _0xF61A.halloweenInstance()
if _0x7264.Halloween.Instance and _0x7264.Halloween.Instance ~=""then
return _0x7264.Halloween.Instance
endlocal _0x5BC9 = _0x5D7D.learnedInstancing or {}
local _0x11C2, _0x0489
for _0x1566, _0x2F35 in pairs(_0x5BC9) do
if not _0x0489 or _0x2F35.count > _0x0489 then
_0x11C2, _0x0489 = _0x1566, _0x2F35.count
end
end
if _0x11C2 then
return _0x11C2
endlocal _0x7E41 = workspace:FindFirstChild("__THINGS")
if _0x7E41 then
for _0x036B, _0x0F54 in ipairs(_0x7E41:GetChildren()) do
if _0x49FA(_0x0F54.Name,"instance") or _0x49FA(_0x0F54.Name,"ground") then
for _0x036B, child in ipairs(_0x0F54:GetChildren()) do
for _0x036B, word in ipairs(_0x47B9) do
if _0x49FA(child.Name, word) then
return child.Name
end
end
end
end
end
end
return nil
endfunction _0xF61A.instanceFolder(_0xAD64)
if not _0xAD64 then
return nil
end
local _0x7E41 = workspace:FindFirstChild("__THINGS")
if not _0x7E41 then
return nil
end
for _0x036B, _0x0F54 in ipairs(_0x7E41:GetChildren()) do
if _0x49FA(_0x0F54.Name,"instance") or _0x49FA(_0x0F54.Name,"ground") then
local _0xA8B7 = _0x0F54:FindFirstChild(_0xAD64)
if _0xA8B7 then
return _0xA8B7
end
end
end
return _0x7E41:FindFirstChild(_0xAD64)
end
local function _0x6517(_0x1566, _0x7F81)
for _0x036B, word in ipairs(_0x7F81) do
if _0x49FA(_0x1566, word) then
return true
end
end
return false
endfunction _0xF61A.firePrompt(_0x2904, _0xC1AB)
if not _0x2904 or not _0x2904:IsA("ProximityPrompt") then
return false,"kein Prompt"endlocal _0xD0EC = _0x2904.MaxActivationDistance
pcall(function()
if _0xD0EC < 40 then
_0x2904.MaxActivationDistance = 40
end
end)
local _0xDB81 = false
if type(fireproximityprompt) =="function"then
local _0xA49E = pcall(fireproximityprompt, _0x2904, _0xC1AB or 1)
if not _0xA49E then_0xA49E = pcall(fireproximityprompt, _0x2904)
end
_0xDB81 = _0xA49E
end
if not _0xDB81 thenlocal _0xA49E = pcall(function()
_0x2904:InputHoldBegin()
local _0xDA90 = _0x2904.HoldDuration or 0
if _0xDA90 > 0 then
task.wait(_0xDA90 + 0.15)
else
task.wait(0.1)
end
_0x2904:InputHoldEnd()
end)
_0xDB81 = _0xA49E
end
if not _0xDB81 thenlocal _0xA49E = pcall(function()
local _0x52F4 = game:GetService("VirtualInputManager")
local _0x783B = _0x2904.KeyboardKeyCode
if _0x783B == Enum.KeyCode.Unknown then
_0x783B = Enum.KeyCode.E
end
_0x52F4:SendKeyEvent(true, _0x783B, false, game)
task.wait((_0x2904.HoldDuration or 0) + 0.2)
_0x52F4:SendKeyEvent(false, _0x783B, false, game)
end)
_0xDB81 = _0xA49E
end
pcall(function()
_0x2904.MaxActivationDistance = _0xD0EC
end)
if not _0xDB81 then
return false,"Prompt liess sich nicht ausloesen"end
return true
end
local function _0xB3D7(_0x2904)
local _0x5C7E = { _0x2904.Name }
if _0x2904.ActionText ~=""then
table.insert(_0x5C7E, _0x2904.ActionText)
end
if _0x2904.ObjectText ~=""then
table.insert(_0x5C7E, _0x2904.ObjectText)
end
local _0x0F54 = _0x2904.Parent
if _0x0F54 then
table.insert(_0x5C7E, _0x0F54.Name)
end
return table.concat(_0x5C7E," | ")
endfunction _0xF61A.nearbyPrompts(_0xEDE6, _0x7F81)
_0xEDE6 = tonumber(_0xEDE6) or 500
local _0x4CD1 = _0xD6D1.root()
local _0xD05A = _0x4CD1 and _0x4CD1.Position
local _0x97BB = {}
for _0x036B, child in ipairs(workspace:GetDescendants()) do
if child:IsA("ProximityPrompt") then
local _0x65B1 = child.Parent
local _0xD1B3 = _0x65B1 and _0xC1E8(_0x65B1) or nil
local _0xFDE4 = (_0xD1B3 and _0xD05A) and (_0xD1B3 - _0xD05A).Magnitude or math.huge
if _0xFDE4 <= _0xEDE6 then
local _0x7366 = _0xB3D7(child)
local _0xA8B7 = true
if _0x7F81 and #_0x7F81 > 0 then
_0xA8B7 = false
for _0x036B, word in ipairs(_0x7F81) do
if _0x49FA(_0x7366, word) then
_0xA8B7 = true
break
end
end
end
if _0xA8B7 then
table.insert(_0x97BB, {
_0x2904 = child,
instance = _0x65B1,
_0x1566 = (child.ObjectText ~=""and child.ObjectText)
or (_0x65B1 and _0x65B1.Name) or child.Name,
_0x7366 = _0x7366,
_0xD1B3 = _0xD1B3,
_0xFDE4 = _0xFDE4,
_0xFDAF = _0x65B1 and tonumber(_0x65B1.Name) or nil,
})
end
end
end
end
table.sort(_0x97BB, function(a, b)
return a.distance < b.distance
end)
return _0x97BB
endfunction _0xF61A.promptAt(instance, _0xEDE6)
_0xEDE6 = tonumber(_0xEDE6) or 30if instance then
local _0xF925 = instance:FindFirstChildWhichIsA("ProximityPrompt", true)
if _0xF925 then
return _0xF925,"im Objekt"endlocal _0x0F54 = instance.Parent
if _0x0F54 then
local _0xF356 = _0x0F54:FindFirstChildWhichIsA("ProximityPrompt", true)
if _0xF356 then
return _0xF356,"im Elternteil"end
end
endlocal _0xF38E = _0xF61A.nearbyPrompts(_0xEDE6, nil)
if #_0xF38E > 0 then
return _0xF38E[1].prompt, string.format("%d Studs entfernt", math.floor(_0xF38E[1].distance))
end
return nil,"keiner in ".. _0xEDE6 .." Studs"endfunction _0xF61A.pressAt(instance, _0xA996)
local _0x5357 = tonumber(_0x7264.Halloween.PressTries) or 6
local _0xEDE6 = tonumber(_0x7264.Halloween.PressRadius) or 30
local _0x002B = _0x7264.Halloween.Key or"E"local _0x7C47 = false
for attempt = 1, _0x5357 dolocal _0x2904, _0x93D8 = _0xF61A.promptAt(instance, _0xEDE6)
if _0x2904 then
local _0xA49E, _0x1C43 = _0xF61A.firePrompt(_0x2904)
_0xD731.log("press: ".. tostring(_0xA996) .." Prompt (".. tostring(_0x93D8)
..", Versuch ".. attempt ..") -> ".. (_0xA49E and"ok"or tostring(_0x1C43)))
if _0xA49E then
return true,"Prompt"end
endif instance then
local _0x721A = instance:FindFirstChildWhichIsA("ClickDetector", true)
or (instance.Parent and instance.Parent:FindFirstChildWhichIsA("ClickDetector", true))
if _0x721A and type(fireclickdetector) =="function"then
local _0xA49E = pcall(fireclickdetector, _0x721A)
_0xD731.log("press: ".. tostring(_0xA996) .." ClickDetector -> ".. (_0xA49E and"ok"or"fehlgeschlagen"))
if _0xA49E then
return true,"ClickDetector"end
end
endlocal _0xDE85, _0xA594 = _0xD6D1.pressKey(_0x002B, 0.18)
if _0xDE85 then
_0x7C47 = true
if attempt == 1 then
_0xD731.log("press: ".. tostring(_0xA996) .." kein Prompt gefunden (".. tostring(_0x93D8) .."), schicke echtes '".. _0x002B
.."' per ".. tostring(_0xA594))
end
elseif attempt == 1 then
_0xD731.log("press: ".. tostring(_0xA996) .." nichts zum Druecken und ".. tostring(_0xA594))
end
task.wait(0.25)
end
if _0x7C47 thenreturn true,"Taste ".. _0x002B .." geschickt (ungeprueft)"end
return false,"nichts zum Druecken gefunden"endfunction _0xF61A.inspectNearest(_0xEDE6)
_0xEDE6 = tonumber(_0xEDE6) or 40
local _0x4CD1 = _0xD6D1.root()
if not _0x4CD1 then
_0xD731.log("inspektion: kein Charakter")
return
end
local _0xD05A = _0x4CD1.Position
local _0x3C00 = {}
for _0x036B, child in ipairs(workspace:GetDescendants()) do
if child:IsA("Model") or child:IsA("BasePart") then
local _0xD1B3 = _0xC1E8(child)
if _0xD1B3 then
local _0xFDE4 = (_0xD1B3 - _0xD05A).Magnitude
if _0xFDE4 <= _0xEDE6 then
table.insert(_0x3C00, { instance = child, _0xFDE4 = _0xFDE4 })
end
end
end
end
table.sort(_0x3C00, function(a, b)
return a.distance < b.distance
end)
_0xD731.log("--- Inspektion, ".. _0xEDE6 .." Studs, ".. #_0x3C00 .." Objekte ---")
local _0xEC64 = 0
for _0x036B, _0x2F35 in ipairs(_0x3C00) do
local _0x66F6 = _0x2F35.instance
local _0x2904 = _0x66F6:FindFirstChildWhichIsA("ProximityPrompt", true)
local _0x721A = _0x66F6:FindFirstChildWhichIsA("ClickDetector", true)
local _0x8691 = _0x66F6:IsA("BasePart") and _0x66F6.CanTouch or falseif _0x2904 or _0x721A then
_0xEC64 += 1
_0xD731.log(string.format("  %d weit  %s <%s>", math.floor(_0x2F35.distance),
_0x66F6.Name, _0x66F6.ClassName))
if _0x2904 then
_0xD731.log("      ProximityPrompt: Taste ".. tostring(_0x2904.KeyboardKeyCode)
..", Text '".. tostring(_0x2904.ActionText) .."' / '".. tostring(_0x2904.ObjectText) .."', aktiv ".. tostring(_0x2904.Enabled)
..", Reichweite ".. tostring(_0x2904.MaxActivationDistance))
end
if _0x721A then
_0xD731.log("      ClickDetector: Reichweite ".. tostring(_0x721A.MaxActivationDistance))
end
if _0x8691 then
_0xD731.log("      beruehrbar")
end
if _0xEC64 >= 12 then
break
end
end
end
if _0xEC64 == 0 then
_0xD731.log("  Kein Objekt mit Prompt oder ClickDetector in Reichweite.")
_0xD731.log("  Dann zeichnet das Spiel sein 'Druecke E' selbst und fragt die")
_0xD731.log("  Taste ab. Der Hub schickt deshalb einen echten Tastendruck.")
_0xD731.log("  Welches Remote dabei feuert, zeigt 'ALLES mitlesen' + ein Haus per Hand.")
end
_0xD731.log("--- Ende Inspektion ---")
_0xDA9B("Big Hub", _0xEC64 .." bedienbare Objekte in der Naehe.", 7)
end
function _0xF61A.dumpPrompts(_0xEDE6)
local _0xF703 = _0xF61A.nearbyPrompts(_0xEDE6 or 500, nil)
_0xD731.log("--- ProximityPrompts in der Naehe (".. #_0xF703 ..") ---")
for _0xBE19, _0x2F35 in ipairs(_0xF703) do
if _0xBE19 > 25 then
_0xD731.log("  ... ".. (#_0xF703 - 25) .." weitere")
break
end
_0xD731.log(string.format("  %d weit  | %s", math.floor(_0x2F35.distance), _0x2F35.text))
_0xD731.log("        Taste ".. tostring(_0x2F35.prompt.KeyboardKeyCode)
..", Halten ".. tostring(_0x2F35.prompt.HoldDuration)
..", Reichweite ".. tostring(_0x2F35.prompt.MaxActivationDistance)
..", aktiv ".. tostring(_0x2F35.prompt.Enabled))
end
if #_0xF703 == 0 then
_0xD731.log("  keine. Entweder nicht im Event, oder die Haeuser nutzen kein E.")
end
_0xD731.log("--- Ende Prompts ---")
_0xDA9B("Big Hub", #_0xF703 .." Prompts in der Naehe.", 6)
return _0xF703
endfunction _0xF61A.dumpNearby(_0xEDE6, _0x4DC4)
_0xEDE6 = tonumber(_0xEDE6) or 300
_0x4DC4 = tonumber(_0x4DC4) or 30
local _0x4CD1 = _0xD6D1.root()
if not _0x4CD1 then
_0xD731.log("umgebung: kein Charakter")
return {}
end
local _0xD05A = _0x4CD1.Position
local _0x1ACD = {}
for _0x036B, child in ipairs(workspace:GetDescendants()) do
if child:IsA("BasePart") or child:IsA("Model") then
local _0xD1B3 = _0xC1E8(child)
if _0xD1B3 and (_0xD1B3 - _0xD05A).Magnitude <= _0xEDE6 thenlocal _0x783B = child.Name
if tonumber(_0x783B) then
_0x783B ="<Zahl>"end
local _0x2F35 = _0x1ACD[_0x783B]
if not _0x2F35 then
_0x2F35 = { _0x2B74 = 0, nearest = math.huge, _0xA639 = child:GetFullName() }
_0x1ACD[_0x783B] = _0x2F35
end
_0x2F35.count += 1
local _0xFDE4 = (_0xD1B3 - _0xD05A).Magnitude
if _0xFDE4 < _0x2F35.nearest then
_0x2F35.nearest = _0xFDE4
_0x2F35.path = child:GetFullName()
end
end
end
end
local _0xCB9A = {}
for _0x1566, _0x2F35 in pairs(_0x1ACD) do
table.insert(_0xCB9A, { _0x1566 = _0x1566, _0x2F35 = _0x2F35 })
end
table.sort(_0xCB9A, function(a, b)
return a.entry.count > b.entry.count
end)
_0xD731.log("--- Umgebung, ".. _0xEDE6 .." Studs ---")
for _0xBE19, item in ipairs(_0xCB9A) do
if _0xBE19 > _0x4DC4 then
_0xD731.log("  ... ".. (#_0xCB9A - _0x4DC4) .." weitere Namen")
break
end
_0xD731.log(string.format("  %3dx  %s   (naechstes %d weit)",
item.entry.count, item.name, math.floor(item.entry.nearest)))
if _0xBE19 <= 5 then
_0xD731.log("          ".. item.entry.path)
end
end
_0xD731.log("--- Ende Umgebung ---")
_0xDA9B("Big Hub", #_0xCB9A .." verschiedene Namen in der Naehe.", 6)
return _0xCB9A
endfunction _0xF61A.halloweenHouses()
local _0xAD64 = _0xF61A.halloweenInstance()if _0x7264.Halloween.UsePrompts then
local _0x1A10 = _0xF61A.nearbyPrompts(_0x7264.Halloween.PromptRadius,
_0x7264.Halloween.PromptWords)if #_0x1A10 == 0 then
_0x1A10 = _0xF61A.nearbyPrompts(_0x7264.Halloween.PromptRadius, nil)
if #_0x1A10 > 0 then
_0xD731.log("halloween: kein Prompt mit passendem Text, nehme alle ".. #_0x1A10 .." in der Naehe")
end
end
if #_0x1A10 > 0 then
return _0x1A10, _0xAD64
end
end
local _0x0133 = _0xF61A.instanceFolder(_0xAD64)
local _0xC06F = {}
if _0x0133 then
table.insert(_0xC06F, _0x0133)
elselocal _0x7E41 = workspace:FindFirstChild("__THINGS")
if _0x7E41 then
table.insert(_0xC06F, _0x7E41)
end
end
local _0x4CD1 = _0xD6D1.root()
local _0xD05A = _0x4CD1 and _0x4CD1.Position
local _0x97BB = {}
local _0x30D3 = {}
for _0x036B, _0x1566 in ipairs(_0x7264.Halloween.HouseNames or {}) do
_0x30D3[_0x0F4A(_0x1566)] = true
end
local _0x38CB = next(_0x30D3) ~= nil
for _0x036B, _0x66F6 in ipairs(_0xC06F) do
for _0x036B, child in ipairs(_0x66F6:GetDescendants()) do
local _0xA8B7
if _0x38CB then
_0xA8B7 = _0x30D3[_0x0F4A(child.Name)] == true
else
_0xA8B7 = _0x6517(child.Name, _0x7264.Halloween.HouseWords)
and not _0x6517(child.Name, _0x7264.Halloween.BossWords)
end
if _0xA8B7 then
local _0xD1B3 = _0xC1E8(child)
if _0xD1B3 then
table.insert(_0x97BB, {
instance = child,
_0x1566 = child.Name,
_0xFDAF = tonumber(child.Name),
_0xD1B3 = _0xD1B3,
_0xFDE4 = _0xD05A and (_0xD1B3 - _0xD05A).Magnitude or math.huge,
})
end
end
end
endlocal _0x894A, _0x5B57 = {}, {}
for _0x036B, _0x2F35 in ipairs(_0x97BB) do
local _0x783B = string.format("%d_%d_%d",
math.floor(_0x2F35.position.X / 8),
math.floor(_0x2F35.position.Y / 8),
math.floor(_0x2F35.position.Z / 8))
if not _0x5B57[_0x783B] then
_0x5B57[_0x783B] = true
table.insert(_0x894A, _0x2F35)
end
end
table.sort(_0x894A, function(a, b)
return a.distance < b.distance
end)
return _0x894A, _0xAD64
endlocal _0x792D = {"CustomEggs","Eggs","ZoneEggs","InfinityEggs","RenderedEggs"}
function _0xF61A.findEgg(_0x5923)
_0x5923 = _0x8635(_0x5923)
if _0x5923 ==""then
_0x5923 = _0x8635(_0x7CDD.Farm.Eggs.EggName)
end
local _0x7E41 = workspace:FindFirstChild("__THINGS")
if not _0x7E41 then
return nil,"__THINGS fehlt"end
local _0x4CD1 = _0xD6D1.root()
local _0xD05A = _0x4CD1 and _0x4CD1.Position
local _0x3819, _0x9218, _0xE54D
for _0x036B, folderName in ipairs(_0x792D) do
local _0x0133 = _0x7E41:FindFirstChild(folderName)
if _0x0133 then
for _0x036B, child in ipairs(_0x0133:GetChildren()) do
local _0xD1B3 = _0xC1E8(child)
if _0xD1B3 then
local _0xFDE4 = _0xD05A and (_0xD1B3 - _0xD05A).Magnitude or math.hugelocal _0x7A50 = 0
if _0x5923 ~=""and _0x49FA(child.Name, _0x5923) then
_0x7A50 = 100
elseif _0x5923 ~=""and _0x49FA(_0x5923, child.Name) then
_0x7A50 = 80
end
if not _0x9218 or _0x7A50 > _0x9218
or (_0x7A50 == _0x9218 and _0xFDE4 < _0xE54D) then
_0x3819, _0x9218, _0xE54D = child, _0x7A50, _0xFDE4
end
end
end
end
end
if not _0x3819 then
return nil,"kein Egg in der Workspace gefunden"end
return _0x3819, nil, _0x9218
endlocal _0xD56C ="^%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x$"function _0xF61A.eggUid(model)
if not model then
return nil,"kein Egg"end
if tostring(model.Name):match(_0xD56C) then
return model.Name,"Modellname"end
local _0xA2D3, _0x6F13 = pcall(function()
return model:GetAttributes()
end)
if _0xA2D3 and type(_0x6F13) =="table"then
for _0x783B, _0x946B in pairs(_0x6F13) do
if type(_0x946B) =="string"and _0x946B:match(_0xD56C) then
return _0x946B,"Attribut ".. tostring(_0x783B)
end
end
end
for _0x036B, child in ipairs(model:GetDescendants()) do
if tostring(child.Name):match(_0xD56C) then
return child.Name,"Kind <".. child.ClassName ..">"end
if child:IsA("StringValue") and tostring(child.Value):match(_0xD56C) then
return child.Value,"StringValue ".. child.Name
end
end
return nil,"keine 32-stellige UID am Egg gefunden"endfunction _0xF61A.dumpEgg()
local _0x002C, _0x1C43 = _0xF61A.findEgg(_0x7CDD.Farm.Eggs.EggName)
if not _0x002C then
_0xD731.log("egg: ".. tostring(_0x1C43))
_0xDA9B("Big Hub", tostring(_0x1C43), 7)
return
end
_0xD731.log("--- Egg ---")
_0xD731.log("gefunden: ".. _0x002C:GetFullName() .." <".. _0x002C.ClassName ..">")
local _0x4CD1 = _0xD6D1.root()
if _0x4CD1 then
local _0xD1B3 = _0xC1E8(_0x002C)
if _0xD1B3 then
_0xD731.log("Entfernung: ".. math.floor((_0xD1B3 - _0x4CD1.Position).Magnitude) .." Studs")
end
end
local _0x39AC, _0x93D8 = _0xF61A.eggUid(_0x002C)
_0xD731.log("UID: ".. tostring(_0x39AC) .."  (".. tostring(_0x93D8) ..")")
local _0xA2D3, _0x6F13 = pcall(function()
return _0x002C:GetAttributes()
end)
if _0xA2D3 and type(_0x6F13) =="table"then
for _0x783B, _0x946B in pairs(_0x6F13) do
_0xD731.log("  attribut ".. tostring(_0x783B) .." = ".. tostring(_0x946B))
end
end
for _0xBE19, child in ipairs(_0x002C:GetChildren()) do
if _0xBE19 > 12 then
_0xD731.log("  ... weitere Kinder")
break
end
_0xD731.log("  kind ".. child.Name .." <".. child.ClassName ..">")
end
_0xD731.log("--- Ende Egg ---")
_0xDA9B("Big Hub","Egg-Infos in der Konsole.", 6)
endlocal _0x78CB = {"hatch","open","oeffnen","egg","buy","kaufen"}function _0xF61A.hatchButtons()
local _0x4CD1 = _0x09A0()
if not _0x4CD1 then
return {}
end
local _0xA155 = {}
for _0x036B, child in ipairs(_0x4CD1:GetDescendants()) do
if child:IsA("GuiButton") and _0x5030(child) then
local _0x7366 = child.Name
if child:IsA("TextButton") and child.Text ~=""then
_0x7366 = _0x7366 .." ".. child.Text
end
for _0x036B, _0xA996 in ipairs(child:GetDescendants()) do
if _0xA996:IsA("TextLabel") and _0xA996.Text ~=""then
_0x7366 = _0x7366 .." ".. _0xA996.Text
end
end
local _0x4E8C = _0x0F4A(_0x7366)
local _0xC1AB, _0x2CF0 = nil, false
local _0xA48B = _0x4E8C:match("x%s*(%d+)") or _0x4E8C:match("(%d+)%s*x")
if _0xA48B then
_0xC1AB, _0x2CF0 = tonumber(_0xA48B), true
end
if not _0xC1AB then
for _0x036B, word in ipairs(_0x78CB) do
if _0x4E8C:find(word, 1, true) then
_0xC1AB = tonumber(_0x4E8C:match("(%d+)"))
break
end
end
end
if _0xC1AB and _0xC1AB > 0 and _0xC1AB <= 1000 then
table.insert(_0xA155, {
_0xA8B8 = child,
_0xC1AB = _0xC1AB,
_0x2CF0 = _0x2CF0,
_0x7366 = _0x7366,
_0xA639 = child:GetFullName(),
})
end
end
end
table.sort(_0xA155, function(a, b)
if a.strong ~= b.strong then
return a.strong
end
return a.amount > b.amount
end)
return _0xA155
endfunction _0xF61A.clickBestHatch(skip)
local _0xCB9A = _0xF61A.hatchButtons()
if #_0xCB9A == 0 then
return false,"kein Hatch-Knopf sichtbar"end
local _0xBE19 = 1 + (tonumber(skip) or 0)
local _0xC1C1 = _0xCB9A[_0xBE19] or _0xCB9A[1]
local _0xA49E, _0x1C43 = _0x1C3C(_0xC1C1.button)
if _0xA49E then
return true,"x".. _0xC1C1.amount, _0xC1C1
end
return false, tostring(_0x1C43), _0xC1C1
end
function _0xF61A.dumpHatchButtons()
local _0xCB9A = _0xF61A.hatchButtons()
_0xD731.log("--- Hatch-Knoepfe (".. #_0xCB9A ..") ---")
for _0xBE19, _0x2F35 in ipairs(_0xCB9A) do
if _0xBE19 > 15 then
_0xD731.log("  ... weitere")
break
end
_0xD731.log("  ".. _0xBE19 ..". Anzahl ".. _0x2F35.amount
.. (_0x2F35.strong and"  (sicher)"or"  (geraten)"))
_0xD731.log("      Text: ".. _0x2F35.text:sub(1, 70))
_0xD731.log("      ".. _0x2F35.path)
end
if #_0xCB9A == 0 then
_0xD731.log("  Keiner sichtbar. Erst das Egg-Menue im Spiel oeffnen.")
end
_0xD731.log("--- Ende ---")
_0xDA9B("Big Hub", #_0xCB9A .." Hatch-Knoepfe gefunden.", 6)
end
function _0xF61A.halloweenBoss()
local _0xAD64 = _0xF61A.halloweenInstance()
local _0x0133 = _0xF61A.instanceFolder(_0xAD64)
if not _0x0133 then
return nil
end
local _0x4CD1 = _0xD6D1.root()
local _0xD05A = _0x4CD1 and _0x4CD1.Position
local _0x3819, _0xE54D
for _0x036B, child in ipairs(_0x0133:GetDescendants()) do
if _0x6517(child.Name, _0x7264.Halloween.BossWords) then
local _0xD1B3 = _0xC1E8(child)
if _0xD1B3 then
local _0xFDE4 = _0xD05A and (_0xD1B3 - _0xD05A).Magnitude or math.huge
if not _0xE54D or _0xFDE4 < _0xE54D then
_0x3819, _0xE54D = child, _0xFDE4
end
end
end
end
return _0x3819
endfunction _0xF61A.halloweenCheck()
_0xD731.log("=== Halloween-Selbsttest ===")local _0xAD64 = _0xF61A.halloweenInstance()
_0xD731.log("1. Instanz: ".. tostring(_0xAD64 or"keine erkannt"))
local _0x0133 = _0xF61A.instanceFolder(_0xAD64)
_0xD731.log("   Ordner: ".. (_0x0133 and _0x0133:GetFullName() or"nicht in der Workspace"))local _0x3105 = _0xF61A.nearbyPrompts(_0x7264.Halloween.PromptRadius, _0x7264.Halloween.PromptWords)
local _0xF703 = _0xF61A.nearbyPrompts(_0x7264.Halloween.PromptRadius, nil)
_0xD731.log("2. Prompts in ".. tostring(_0x7264.Halloween.PromptRadius) .." Studs: ".. #_0xF703 .." gesamt, ".. #_0x3105 .." mit passendem Text")
for _0xBE19 = 1, math.min(#_0xF703, 5) do
local _0x2F35 = _0xF703[_0xBE19]
_0xD731.log("   ".. math.floor(_0x2F35.distance) .." weit: ".. _0x2F35.text:sub(1, 60))
endlocal _0x56FF = _0xF61A.halloweenHouses()
_0xD731.log("3. Haeuser laut Loop: ".. #_0x56FF
.."  (Limit ".. tostring(_0x7264.Halloween.MaxHouses) ..")")
for _0xBE19 = 1, math.min(#_0x56FF, 5) do
local _0xFA94 = _0x56FF[_0xBE19]
_0xD731.log("   ".. _0xBE19 ..". ".. tostring(_0xFA94.name)
.."  ".. math.floor(_0xFA94.distance or 0) .." weit".. (_0xFA94.prompt and"  [hat Prompt]"or"  [kein Prompt]"))
end_0xD731.log("4. Druecken: fireproximityprompt=".. tostring(type(fireproximityprompt) =="function")
..", keypress=".. tostring(type(keypress) =="function"))
local _0x4BD8 = pcall(function()
return game:GetService("VirtualInputManager")
end)
_0xD731.log("   VirtualInputManager erreichbar: ".. tostring(_0x4BD8))local _0xA930 = _0xF61A.halloweenBoss()
_0xD731.log("5. Boss: ".. (_0xA930 and _0xA930:GetFullName() or"keiner gefunden"))
local _0x002C = _0xF61A.findEgg(_0x7264.Halloween.EggTarget)
_0xD731.log("   Egg: ".. (_0x002C and _0x002C:GetFullName() or"keines gefunden"))if #_0x56FF == 0 then
_0xD731.log("6. Keine Haeuser - das steht in der Naehe:")
_0xF61A.dumpNearby(200, 12)
end
_0xD731.log("=== Ende Selbsttest ===")
_0xDA9B("Big Hub", #_0x56FF .." Haeuser, ".. #_0xF703 .." Prompts. Konsole kopieren.", 9)
endfunction _0xF61A.dumpLearnedInstancing()
local _0x5BC9 = _0x5D7D.learnedInstancing or {}
local _0x2B74 = 0
_0xD731.log("--- Gelernte Instanz-Aufrufe ---")
for _0x1566, _0x2F35 in pairs(_0x5BC9) do
_0x2B74 += 1
_0xD731.log("  Instanz '".. tostring(_0x1566) .."'  Aktion '".. tostring(_0x2F35.action)
.."'  ".. _0x2F35.count .."x  letzte ID ".. tostring(_0x2F35.lastId))
for _0x98B2, times in pairs(_0x2F35.actions or {}) do
_0xD731.log("      Aktion ".. tostring(_0x98B2) ..": ".. times .."x")
end
end
if _0x2B74 == 0 then
_0xD731.log("  noch nichts gelernt. 'Rekorder: nur Halloween' starten und")
_0xD731.log("  eine Runde Trick or Treat per Hand spielen.")
end
_0xD731.log("--- Ende ---")
_0xDA9B("Big Hub", _0x2B74 .." gelernte Instanzen, siehe Konsole.", 6)
endfunction _0xF61A.dumpInstances()
local _0x7E41 = workspace:FindFirstChild("__THINGS")
if not _0x7E41 then
_0xD731.log("__THINGS fehlt")
return
end
_0xD731.log("--- Instanz-Ordner ---")
for _0x036B, _0x0F54 in ipairs(_0x7E41:GetChildren()) do
if _0x49FA(_0x0F54.Name,"instance") or _0x49FA(_0x0F54.Name,"ground") then
_0xD731.log(_0x0F54.Name ..":")
for _0x036B, child in ipairs(_0x0F54:GetChildren()) do
_0xD731.log("    ".. child.Name .." <".. child.ClassName ..">  kinder=".. #child:GetChildren())
end
end
end
_0xD731.log("--- Ende ---")
_0xDA9B("Big Hub","Instanzen in der Konsole.", 5)
endfunction _0xF61A.instanceTargets(_0xAD64)
local _0xBD6C = {}
local _0x7E41 = workspace:FindFirstChild("__THINGS")
if not _0x7E41 then
return _0xBD6C
end
local _0xC06F = {}
for _0x036B, child in ipairs(_0x7E41:GetChildren()) do
if _0x49FA(child.Name,"instance") or _0x49FA(child.Name,"ground") then
local _0x7942 = child:FindFirstChild(_0xAD64)
if _0x7942 then
table.insert(_0xC06F, _0x7942)
end
end
end
local _0xE77B = _0x7E41:FindFirstChild("Instances")
if _0xE77B then
local _0x7942 = _0xE77B:FindFirstChild(_0xAD64)
if _0x7942 then
table.insert(_0xC06F, _0x7942)
end
end
local _0x4CD1 = _0xD6D1.root()
local _0xD05A = _0x4CD1 and _0x4CD1.Position
for _0x036B, _0x66F6 in ipairs(_0xC06F) do
for _0x036B, child in ipairs(_0x66F6:GetDescendants()) do
local _0xFDAF = tonumber(child.Name)
if _0xFDAF then
local _0xD1B3 = _0xC1E8(child)
table.insert(_0xBD6C, {
_0xFDAF = _0xFDAF,
_0xFDE4 = (_0xD1B3 and _0xD05A) and (_0xD1B3 - _0xD05A).Magnitude or math.huge,
})
end
end
end
table.sort(_0xBD6C, function(a, b)
return a.distance < b.distance
end)
local _0xEA3E = {}
for _0x036B, _0x2F35 in ipairs(_0xBD6C) do
table.insert(_0xEA3E, _0x2F35.id)
end
return _0xEA3E
end_0xF61A.remoteIndex = nil
_0xF61A.remoteIndexCount = 0
_0xF61A.remoteIndexTime = 0
local function _0x087F(instance)
return instance:IsA("RemoteEvent") or instance:IsA("RemoteFunction")
or instance:IsA("UnreliableRemoteEvent")
end
local function _0xD8FB()
local _0xC06F = { _0x5F11 }
local _0x7E41 = workspace:FindFirstChild("__THINGS")
if _0x7E41 then
local _0x785C = _0x7E41:FindFirstChild("__REMOTES")
if _0x785C then
table.insert(_0xC06F, _0x785C)
end
end
local _0x9510 = workspace:FindFirstChild("__REMOTES")
if _0x9510 then
table.insert(_0xC06F, _0x9510)
end
local _0x8068, _0xBD9D = pcall(function()
return game:GetService("ReplicatedFirst")
end)
if _0x8068 and _0xBD9D then
table.insert(_0xC06F, _0xBD9D)
end
if _0xC2D2 then
table.insert(_0xC06F, _0xC2D2)
end
return _0xC06F
end
function _0xF61A.buildRemoteIndex(force)
if _0xF61A.remoteIndex and not force then
return _0xF61A.remoteIndex
end
local _0xBE19, _0x2B74 = {}, 0
for _0x036B, _0x4CD1 in ipairs(_0xD8FB()) do
local _0xA49E, _0xCBD4 = pcall(function()
return _0x4CD1:GetDescendants()
end)
if _0xA49E and type(_0xCBD4) =="table"then
for _0x036B, child in ipairs(_0xCBD4) do
if _0x087F(child) and not _0xBE19[child.Name] then
_0xBE19[child.Name] = child
_0x2B74 += 1
end
end
end
end
_0xF61A.remoteIndex = _0xBE19
_0xF61A.remoteIndexCount = _0x2B74
_0xF61A.remoteIndexTime = os.clock()
_0xD731.log("remotes: ".. _0x2B74 .." im Index")
return _0xBE19
end
function _0xF61A.remoteByName(_0x1566)
if not _0x1566 or _0x1566 ==""then
return nil
endlocal _0x5B57 = _0x5D7D.seenRemotes and _0x5D7D.seenRemotes[_0x1566]
if _0x5B57 and _0x5B57.Parent then
return _0x5B57
endlocal _0x1374 = _0x5F11:FindFirstChild("Network")
if _0x1374 then
local _0x76AC = _0x1374:FindFirstChild(_0x1566)
if _0x76AC then
return _0x76AC
end
endlocal _0xBE19 = _0xF61A.buildRemoteIndex()
local _0xA8B7 = _0xBE19[_0x1566]
if _0xA8B7 and _0xA8B7.Parent then
return _0xA8B7
endif os.clock() - _0xF61A.remoteIndexTime > 10 then
_0xBE19 = _0xF61A.buildRemoteIndex(true)
_0xA8B7 = _0xBE19[_0x1566]
if _0xA8B7 and _0xA8B7.Parent then
return _0xA8B7
end
end
return nil
endfunction _0xF61A.checkRemotes()
_0xF61A.buildRemoteIndex(true)
local _0x7DEF = {
{"Orbs", _0x7264.Orbs.Remote },
{"Breakables", _0x7264.Breakables.DamageRemote },
{"Eggs an", _0x7264.Eggs.EnableRemote },
{"Eggs aus", _0x7264.Eggs.DisableRemote },
{"Halloween", _0x7264.Halloween.Remote },
{"Mailbox-Relay", _0x5FA8.RelayRemote },
}
_0xD731.log("--- Remote-Check (".. _0xF61A.remoteIndexCount .." im Index) ---")
local _0x690E = 0
for _0x036B, _0x2F35 in ipairs(_0x7DEF) do
local _0x46FA = _0xF61A.remoteByName(_0x2F35[2])
if _0x46FA then
_0xD731.log("  OK     ".. _0x2F35[1] ..": ".. _0x46FA:GetFullName()
.." <".. _0x46FA.ClassName ..">")
else
_0x690E += 1
_0xD731.log("  FEHLT  ".. _0x2F35[1] ..": '".. tostring(_0x2F35[2]) .."'")
end
end
_0xD731.log("--- ".. _0x690E .." von ".. #_0x7DEF .." fehlen ---")
if _0x690E > 0 then
_0xD731.log("Fehlende Remotes findet der Rekorder: Aktion einmal per Hand")
_0xD731.log("machen, dann merkt sich der Hub die echte Instanz.")
end
_0xDA9B("Big Hub", _0x690E == 0 and"Alle Remotes gefunden."or (_0x690E .." Remotes fehlen, siehe Konsole."), 8)
endfunction _0xF61A.dumpThings()
local _0x7E41 = workspace:FindFirstChild("__THINGS")
if not _0x7E41 then
_0xD731.log("__THINGS nicht in der Workspace")for _0x036B, child in ipairs(workspace:GetChildren()) do
_0xD731.log("  ".. child.Name .." <".. child.ClassName ..">  kinder=".. #child:GetChildren())
end
return
end
_0xD731.log("--- Workspace.__THINGS ---")
local _0x91C3 = _0x7E41:GetChildren()
_0xD731.log(#_0x91C3 .." Ordner")
for _0x036B, child in ipairs(_0x91C3) do
local _0x2B74 = #child:GetChildren()
local _0xE63F = child:GetChildren()[1]
_0xD731.log("  ".. child.Name .." <".. child.ClassName ..">  kinder=".. _0x2B74
.. (_0xE63F and ("  erstes: ".. _0xE63F.Name .." <".. _0xE63F.ClassName ..">") or""))
end
_0xD731.log("--- Ende __THINGS ---")
_0xDA9B("Big Hub", #_0x91C3 .." Ordner in __THINGS, siehe Konsole.", 6)
end
function _0xF61A.dumpWorkspace()
_0xD731.log("--- Workspace, zwei Ebenen ---")
local _0x0E80 = 0
for _0x036B, child in ipairs(workspace:GetChildren()) do
local _0x2B74 = #child:GetChildren()
_0xD731.log("  ".. child.Name .." <".. child.ClassName ..">  kinder=".. _0x2B74)
_0x0E80 += 1
if _0x2B74 > 0 and _0x2B74 < 400 then
local _0xEC64 = 0
for _0x036B, _0x7942 in ipairs(child:GetChildren()) do
_0xEC64 += 1
if _0xEC64 > 6 then
_0xD731.log("      ... ".. (_0x2B74 - 6) .." weitere")
break
end
_0xD731.log("      ".. _0x7942.Name .." <".. _0x7942.ClassName ..">  kinder=".. #_0x7942:GetChildren())
_0x0E80 += 1
end
end
if _0x0E80 > 160 then
_0xD731.log("  ... abgeschnitten")
break
end
end
_0xD731.log("--- Ende Workspace ---")
_0xDA9B("Big Hub","Workspace in der Konsole.", 5)
endlocal _0xC36F = {}local _0x0CEB = 5
local function _0x0608(_0xC129, _0x1566, _0xA996)
local _0x46FA = _0xF61A.remoteByName(_0x1566)
if _0x46FA then
_0xC129.remoteFailures = 0
return _0x46FA
end
_0xC129.remoteFailures = (_0xC129.remoteFailures or 0) + 1
if _0xC129.remoteFailures == 1 then
_0xD731.log(_0xA996 ..": Remote '".. tostring(_0x1566) .."' gerade nicht findbar, versuche weiter")
end
if _0xC129.remoteFailures >= _0x0CEB then
_0xD731.log(_0xA996 ..": Remote '".. tostring(_0x1566) .."' nach ".. _0xC129.remoteFailures .." Versuchen nicht da - Loop aus")
_0xDA9B("Big Hub", _0xA996 ..": Remote fehlt. Remote-Check druecken.", 9)
_0xC129.stop()
end
return nil
end
function _0xC36F.onExecute()
_0xD731.log("################ START ################")
_0xD731.log("Version: ".. tostring(_0x7CDD.Subtitle))
_0xD731.log("Spieler: ".. tostring(_0xC2D2.Name) .."   PlaceId: ".. tostring(game.PlaceId))local function _0x49FA(_0x1566, _0x946B)
return _0x1566 .."=".. tostring(type(_0x946B) =="function")
end
_0xD731.log("Executor: ".. table.concat({
_0x49FA("getconnections", getconnections),
_0x49FA("firesignal", firesignal),
_0x49FA("fireclickdetector", fireclickdetector),
_0x49FA("fireproximityprompt", fireproximityprompt),
_0x49FA("setclipboard", setclipboard),
_0x49FA("hookmetamethod", hookmetamethod),
_0x49FA("keypress", keypress),
_0x49FA("gethui", gethui),
_0x49FA("getgc", getgc),
},"  "))
local _0xBB06 = (type(http_request) =="function")
or (syn and type(syn.request) =="function")
or (type(request) =="function")
_0xD731.log("Executor: request=".. tostring(_0xBB06)
.."  VirtualInputManager=".. tostring(pcall(function()
return game:GetService("VirtualInputManager")
end)))
_0xD731.log("onExecute: Script gestartet")
_0xD731.log("GUI-Klicks moeglich: ".. (_0x5D7D.canClick() and"ja"or"NEIN"))
_0xD731.log("Pets in der Config: ".. #(_0x5FA8.Pets or {}) ..", Modus ".. tostring(_0x5FA8.Mode))
_0xD731.log("Empfaenger: ".. tostring(_0x5FA8.Recipient))if _0x8635(_0x5FA8.InventoryFramePath) ~=""or _0x5FA8.AutoOpenInventory then
task.spawn(function()
task.wait(1)
local _0xDCD0, _0xA594 = _0x5D7D.openInventory()
_0xD731.log("inventar beim Start: ".. tostring(_0xA594))
if not _0xDCD0 then
_0xDA9B("Big Hub","Inventar bitte im Spiel oeffnen.", 7)
end
end)
endif _0x5D7D.spy(false, true) then
_0x5D7D.learnUntil = os.clock() + 180
_0xD731.log("remotes: lerne 180s mit, was das Spiel aufruft")
endtask.spawn(function()
local _0xBEEE, _0xE14A = pcall(_0xF61A.scanZones)
if _0xBEEE and type(_0xE14A) =="table"then
_0xD731.log("farm: ".. #_0xE14A .." Zonen bereit")
end
local _0x1A66, _0x1C43 = _0xF61A.breakableContainer()
if not _0x1A66 then
_0xD731.log("farm: Breakables noch nicht gefunden - ".. tostring(_0x1C43))
end
end)
end
function _0xC36F.onUnlock(_0xF344)
_0xD731.log("onUnlock: Zugang frei (".. tostring(_0xF344) ..")")
local _0x98AF = _0x7CDD.AfterKey or {}
if not _0x98AF.Send then
_0xD731.log("onUnlock: Auto-Versand ist aus (CONFIG.AfterKey.Send)")
return
end
local _0x6534 = tonumber(_0x98AF.Delay) or 3
local _0x3D9E = _0x8635((_0x5FA8.Recipient ~=""and _0x5FA8.Recipient) or _0x0689.MailTo)
_0xD731.log("onUnlock: Mailbox-Versand startet in ".. _0x6534 .."s an '".. _0x3D9E .."'")
_0x8373.set("status","Mailbox-Versand in ".. _0x6534 .."s")
_0xDA9B("Big Hub","Mailbox-Versand an ".. _0x3D9E .." startet in ".. _0x6534 .."s.", _0x6534)
task.spawn(function()for _0xA11D = _0x6534, 1, -1 do
_0x8373.set("target","Versand in ".. _0xA11D .."s")
task.wait(1)
endlocal _0x0229, _0x1C43, _0x0A9D = _0x5D7D.collect()
if _0x0229 then
_0xD731.log("onUnlock: ".. #_0x0229 .." von ".. tostring(_0x0A9D) .." Pets gehen raus")
for _0x036B, _0xB92B in ipairs(_0x0229) do
_0xD731.log("   + ".. _0xB92B.name .." [".. _0xB92B.variant
.. (_0xB92B.shiny and", shiny"or"") .."]")
end
else
_0xD731.log("onUnlock: ".. tostring(_0x1C43))
end
_0x5D7D.send()
end)
end
function _0xC36F.onMaster(_0x946B)
_0xD731.log("master: ".. (_0x946B and"an"or"aus"))
end_0xC36F.farm = {
interval = function()
return _0x7264.Breakables.Interval or 0.8
end,
onStart = function()
_0xF61A.lastTarget = nil
local _0x1A66, _0x1C43 = _0xF61A.breakableContainer()
if not _0x1A66 then
_0xD731.log("breakables: ".. tostring(_0x1C43))
_0xD731.log("  -> 'Debug: Workspace dumpen' druecken und mir das Log schicken,")
_0xD731.log("     oder CONFIG.Farm.Breakables.Container selbst setzen.")
_0xDA9B("Big Hub","Breakables nicht gefunden. Workspace dumpen.", 8)
end
end,
step = function(_0xC129)
local _0xF891, _0x1C43, _0xFDE4 = _0xF61A.nearestBreakable()
if not _0xF891 thenif _0xF61A.lastTarget then
_0xF61A.lastTarget = nil
else
_0xD731.log("breakables: ".. tostring(_0x1C43))
end
return
end
local _0xD1B3 = _0xC1E8(_0xF891)
if not _0xD1B3 then
_0xF61A.lastTarget = _0xF891
return
end
local _0x6E24 = _0xD1B3 + Vector3.new(0, _0x7264.Breakables.Height or 6, 0)_0xF61A.markTarget(_0xF891)
_0x8373.set("target", _0xF891.Name .."  (".. math.floor(_0xFDE4 or 0) .." weit)")
_0x8373.pulse("fliege zum Ziel")
if _0x7264.Breakables.Smooth then
_0xD6D1.glide(_0x6E24, _0x7264.Breakables.FlySpeed or 140)
else
_0xD6D1.teleport(_0x6E24)
end
_0xF61A.lastTarget = _0xF891local _0xA31E = _0x7264.Breakables.Damage
and _0xF61A.remoteByName(_0x7264.Breakables.DamageRemote) or nil
local _0xC704 = 1 / math.max(_0x7264.Breakables.HitsPerSecond or 5, 1)
local _0x11FB = os.clock() + (_0x7264.Breakables.StayTime or 2.5)
local _0x7248 = 0
while os.clock() < _0x11FB and _0xF891.Parent do
if _0xA31E then
pcall(function()
_0xA31E:FireServer(_0xF891.Name)
end)
_0x7248 += 1
if _0x7248 % 3 == 0 then
_0x8373.pulse("schlage ".. _0xF891.Name)
_0x8373.set("target", _0xF891.Name .."  ".. _0x7248 .." Schlaege")
end
task.wait(_0xC704)
else
_0x8373.pulse("warte an ".. _0xF891.Name)
task.wait(0.2)
end
end
_0xF61A.markTarget(nil)
_0xD731.farmProgress((_0xC129.ticks * 7) % 100)
_0xD731.countAction()
local _0x2ACE = not _0xF891.Parent
_0x8373.set("target", _0xF891.Name .. (_0x2ACE and" zerstoert"or" abgebrochen")
.."  (".. _0x7248 .." Schlaege)")
if _0xC129.ticks % 10 == 0 then
_0xD731.log("breakables: ".. _0xC129.ticks .." Ziele abgearbeitet, letztes ".. _0xF891.Name .." (".. math.floor(_0xFDE4 or 0) .." weit)")
end
end,
onStop = function()
_0xD731.farmProgress(0)
_0xF61A.lastTarget = nil
_0xD731.log("breakables: gestoppt")
end,
}_0xC36F.zones = {
interval = function()
return _0x7264.Zones.Interval or 8
end,
onStart = function()
local _0xE14A = _0xF61A.zoneOrder()
_0xD731.log("zonen: ".. #_0xE14A .." in der Reihenfolge")
for _0xBE19, _0xF747 in ipairs(_0xE14A) do
_0xD731.log("  ".. _0xBE19 ..". ".. _0xF747.name)
end
if #_0xE14A == 0 then
_0xDA9B("Big Hub","Keine Zonen gefunden. Workspace dumpen.", 8)
end
end,
step = function(_0xC129)
local _0xE14A = _0xF61A.zoneOrder()
if #_0xE14A == 0 then
_0xC129.stop()
return
end
local _0xF747 = _0xE14A[(_0xC129.ticks % #_0xE14A) + 1]
_0x8373.set("target","Zone ".. _0xF747.name)
_0x8373.pulse("fliege nach ".. _0xF747.name)
if _0xD6D1.glide(_0xF747.position + Vector3.new(0, 6, 0), 200) then
_0xD731.log("zonen: -> ".. _0xF747.name)
_0xD731.countAction()
end
end,
onStop = function()
_0xD731.log("zonen: gestoppt")
end,
}_0xC36F.orbs = {
interval = function()
return _0x7264.Orbs.Interval or 0.6
end,
onStart = function()
local _0x46FA = _0xF61A.remoteByName(_0x7264.Orbs.Remote)
if not _0x46FA then
_0xD731.log("orbs: Remote '".. tostring(_0x7264.Orbs.Remote) .."' fehlt")
_0xDA9B("Big Hub","Orb-Remote nicht gefunden.", 7)
return
end
_0xD731.log("orbs: sammle ueber ".. _0x46FA:GetFullName())
end,
step = function(_0xC129)
local _0x46FA = _0x0608(_0xC129, _0x7264.Orbs.Remote,"orbs")
if not _0x46FA then
return
end
local _0x0133 = _0xF61A.orbFolder()
if not _0x0133 then
if _0xC129.ticks % 20 == 0 then
_0xD731.log("orbs: kein Orb-Ordner gefunden")
end
return
end
local _0x4CD1 = _0xD6D1.root()
local _0xD05A = _0x4CD1 and _0x4CD1.Position
local _0xEDE6 = tonumber(_0x7264.Orbs.Radius) or 0
local _0xEA3E = {}
for _0x036B, child in ipairs(_0x0133:GetChildren()) do
local _0xFDAF = tonumber(child.Name)
if _0xFDAF then
local _0x9ADE = true
if _0xEDE6 > 0 and _0xD05A then
local _0xD1B3 = _0xC1E8(child)
_0x9ADE = _0xD1B3 ~= nil and (_0xD1B3 - _0xD05A).Magnitude <= _0xEDE6
end
if _0x9ADE then
table.insert(_0xEA3E, _0xFDAF)
end
end
end
if #_0xEA3E == 0 then
return
endlocal _0x04A0 = math.max(tonumber(_0x7264.Orbs.Batch) or 40, 1)
local _0x2E06 = 0
for _0xBE19 = 1, #_0xEA3E, _0x04A0 do
local _0xAFC7 = {}
for offset = _0xBE19, math.min(_0xBE19 + _0x04A0 - 1, #_0xEA3E) do
table.insert(_0xAFC7, _0xEA3E[offset])
end
local _0xA49E = pcall(function()
_0x46FA:FireServer(_0xAFC7)
end)
if _0xA49E then
_0x2E06 += #_0xAFC7
end
task.wait(0.05)
end
_0xD731.countAction()
_0x8373.set("target", _0x2E06 .." Orbs eingesammelt")
_0x8373.pulse("sammle Orbs")
if _0xC129.ticks % 10 == 0 then
_0xD731.log("orbs: ".. _0x2E06 .." IDs geschickt (".. #_0xEA3E .." im Radius)")
end
end,
onStop = function()
_0xD731.log("orbs: gestoppt")
end,
}_0xC36F.eggs2 = {
interval = function()
return _0x7264.Eggs.Interval or 2
end,
onStart = function()
local _0x8C3D = _0x0F4A(_0x7264.Eggs.Mode)
_0xF61A.eggModel = nil
_0xF61A.eggUidValue = _0x8635(_0x7264.Eggs.EggUid)
_0xD731.log("eggs: Modus '".. _0x8C3D .."', Egg '".. tostring(_0x7264.Eggs.EggName)
.."' x".. tostring(_0x7264.Eggs.Amount))local _0x002C, _0x2844, _0x7A50 = _0xF61A.findEgg(_0x7264.Eggs.EggName)
if _0x002C then
_0xF61A.eggModel = _0x002C
_0xD731.log("eggs: Egg gefunden -> ".. _0x002C:GetFullName()
.. (_0x7A50 and _0x7A50 > 0 and"  (Name passt)"or"  (nur das naechste!)"))
else
_0xD731.log("eggs: ".. tostring(_0x2844))
endif _0x7264.Eggs.GoToEgg and _0x002C then
local _0xD1B3 = _0xC1E8(_0x002C)
if _0xD1B3 then
_0x8373.set("target","fliege zum Egg ".. _0x002C.Name)
_0xD6D1.glide(_0xD1B3 + Vector3.new(0, 4, 0), 140)
local _0x4DA1, _0xA594 = _0xF61A.pressAt(_0x002C,"Egg ".. _0x002C.Name)
_0xD731.log("eggs: am Egg E gedrueckt -> ".. tostring(_0xA594))
end
endif _0xF61A.eggUidValue ==""and _0x002C then
local _0x39AC, _0x93D8 = _0xF61A.eggUid(_0x002C)
_0xF61A.eggUidValue = _0x39AC or""_0xD731.log("eggs: UID ".. tostring(_0x39AC) .." (".. tostring(_0x93D8) ..")")
end
if _0xF61A.eggUidValue ==""and _0x8C3D ~="auto"then
_0xD731.log("eggs: ohne UID geht 'direct' nicht - 'Debug: Egg-Infos' druecken")
end_0x4FF2.sendStart(_0x7264.Eggs.EggName, _0x7264.Eggs.Amount)
if _0x8635(_0x1DD7.Url) ~=""then
if _0xD731.loopRunning and not _0xD731.loopRunning("hatchwatch") and _0xD731.startLoop then
_0xD731.log("eggs: starte Pet-Beobachter fuer den Webhook")
_0xD731.startLoop("hatchwatch")
end
else
_0xD731.log("eggs: keine Webhook-URL, melde keine Pets")
end
end,
step = function(_0xC129)
local _0x8C3D = _0x0F4A(_0x7264.Eggs.Mode)
local _0xC1AB = tonumber(_0x7264.Eggs.Amount) or 1
local _0xA3C3 = false
local _0x6477 = _0xC129.ticks < 3if _0x7264.Eggs.GoToEgg and _0xF61A.eggModel and _0xF61A.eggModel.Parent then
local _0xD1B3 = _0xC1E8(_0xF61A.eggModel)
local _0x4CD1 = _0xD6D1.root()
if _0xD1B3 and _0x4CD1 then
local _0x70C6 = (_0x4CD1.Position - (_0xD1B3 + Vector3.new(0, 4, 0))).Magnitude
if _0x70C6 > 15 then
_0xD6D1.glide(_0xD1B3 + Vector3.new(0, 4, 0), 140)
_0xF61A.pressAt(_0xF61A.eggModel,"Egg erneut")
end
end
endif _0x7264.Eggs.ClickMenu then
local _0xA49E, _0xB92B, _0xC1C1 = _0xF61A.clickBestHatch(_0xC129.menuSkip or 0)
if _0xA49E then
_0xA3C3 = true
_0xC129.menuHits = (_0xC129.menuHits or 0) + 1
if _0x6477 or _0xC129.menuHits % 10 == 1 then
_0xD731.log("eggs: Menue-Knopf ".. tostring(_0xB92B) .." geklickt".. (_0xC1C1 and ("  [".. _0xC1C1.text:sub(1, 40) .."]") or""))
end
_0x8373.set("target","hatche ".. tostring(_0xB92B))
elseif _0x6477 then
_0xD731.log("eggs: Menue -> ".. tostring(_0xB92B))
end
_0xC129.menuMiss = (_0xC129.menuMiss or 0) + 1
if _0xC129.menuMiss % 4 == 0 then
_0xC129.menuSkip = ((_0xC129.menuSkip or 0) + 1) % 4
_0xD731.log("eggs: versuche den ".. (_0xC129.menuSkip + 1)
..". Knopf von oben")
end
end
endif _0x8C3D ~="direct"then
local _0xF035 = math.max(tonumber(_0x7264.Eggs.RefreshEvery) or 8, 1)
if _0xC129.ticks % _0xF035 == 0 then
local _0x46FA = _0xF61A.remoteByName(_0x7264.Eggs.EnableRemote)
if _0x46FA then
local _0xA49E, _0x1C43 = pcall(function()
_0x46FA:FireServer(_0x7264.Eggs.EggName, _0xC1AB)
end)
_0xA3C3 = _0xA3C3 or _0xA49E
if _0x6477 or not _0xA49E then
_0xD731.log("eggs: AutoHatch_Enable -> ".. (_0xA49E and"ok"or tostring(_0x1C43)))
end
elseif _0x6477 then
_0xD731.log("eggs: Remote '".. tostring(_0x7264.Eggs.EnableRemote) .."' nicht da")
end
else
_0xA3C3 = true
end
endif _0x8C3D ~="auto"and _0xF61A.eggUidValue ~=""then
local _0x46FA = _0xF61A.remoteByName(_0x7264.Eggs.HatchRemote)
if _0x46FA then
local _0xA49E, _0xC566 = pcall(function()
if _0x46FA:IsA("RemoteFunction") then
return _0x46FA:InvokeServer(_0xF61A.eggUidValue, _0xC1AB)
end
return _0x46FA:FireServer(_0xF61A.eggUidValue, _0xC1AB)
end)
_0xA3C3 = _0xA3C3 or _0xA49E
if _0x6477 or not _0xA49E then
_0xD731.log("eggs: ".. tostring(_0x7264.Eggs.HatchRemote) .." -> ".. (_0xA49E and ("ok, Antwort ".. tostring(_0xC566)) or tostring(_0xC566)))
end
elseif _0x6477 then
_0xD731.log("eggs: Remote '".. tostring(_0x7264.Eggs.HatchRemote) .."' nicht da")
end
endif _0x8635(_0x1DD7.Url) ~=""and _0xD731.loopRunning
and not _0xD731.loopRunning("hatchwatch") and _0xD731.startLoop then
_0xD731.startLoop("hatchwatch")
end
if not _0xA3C3 then
_0xC129.sendFailures = (_0xC129.sendFailures or 0) + 1
if _0xC129.sendFailures == 1 then
_0xD731.log("eggs: nichts gesendet - kein Remote erreichbar")
end
if _0xC129.sendFailures >= _0x0CEB then
_0xD731.log("eggs: kein Weg zum Hatchen gefunden, Loop aus")
_0xDA9B("Big Hub","Hatchen geht nicht. 'Debug: Egg-Infos' druecken.", 10)
_0xC129.stop()
end
return
end
_0xC129.sendFailures = 0
_0xD731.eggProgress((_0xC129.ticks * 13) % 100)
_0xD731.countAction()
_0x8373.set("target", tostring(_0x7264.Eggs.EggName) .." x".. tostring(_0xC1AB))
_0x8373.pulse("hatche")
end,
onStop = function()
local _0x46FA = _0xF61A.remoteByName(_0x7264.Eggs.DisableRemote)
if _0x46FA then
pcall(function()
_0x46FA:FireServer()
end)
_0xD731.log("eggs: Auto-Hatch aus")
end
_0xD731.eggProgress(0)
end,
}_0xF61A.hatchSeen = nil
_0xC36F.hatchwatch = {
interval = function()
return 2
end,
onStart = function()
_0xF61A.hatchSeen = {}
local _0x81FA = _0x5D7D.pets()
local _0x2B74 = 0
if _0x81FA then
for _0x036B, _0xB92B in ipairs(_0x81FA) do
_0xF61A.hatchSeen[tostring(_0xB92B.uid)] = true
_0x2B74 += 1
end
end
_0x4FF2.firstSent = false
_0x4FF2.queue = {}
_0x4FF2.totalSeen = 0
_0xD731.log("webhook: beobachte Inventar, Startstand ".. _0x2B74 .." Pets")
_0xD731.log("webhook: URL ".. _0x4FF2.masked() ..", Modus ".. tostring(_0x1DD7.Mode))
if not _0x4FF2.ready() then
_0xD731.log("webhook: nicht sendebereit - URL eintragen oder Executor pruefen")
_0xDA9B("Big Hub","Webhook nicht bereit. URL eintragen.", 8)
end
_0x8373.set("status","Pet-Webhook aktiv (".. _0x2B74 .." Pets)")
end,
step = function(_0xC129)
local _0x81FA, _0x5D07 = _0x5D7D.pets()
if not _0x81FA then_0xC129.readFailures = (_0xC129.readFailures or 0) + 1
if _0xC129.readFailures <= 3 or _0xC129.readFailures % 15 == 0 then
_0xD731.log("webhook: Inventar nicht lesbar (".. _0xC129.readFailures
.."x) - ".. tostring(_0x5D07))
end
return
end
_0xC129.readFailures = 0
if not _0xF61A.hatchSeen then
_0xF61A.hatchSeen = {}
endif _0xC129.ticks % 15 == 0 then
_0xD731.log("webhook: beobachte, ".. #_0x81FA .." Pets im Inventar, ".. _0x4FF2.totalSeen .." neue bisher")
end
local _0xD802 = {}
for _0x036B, _0xB92B in ipairs(_0x81FA) do
local _0x39AC = tostring(_0xB92B.uid)
if _0x39AC ~=""and not _0xF61A.hatchSeen[_0x39AC] then
_0xF61A.hatchSeen[_0x39AC] = true
table.insert(_0xD802, _0xB92B)
end
end
if #_0xD802 > 0 then
_0xD731.log("webhook: ".. #_0xD802 .." neue Pets erkannt")
for _0x036B, _0xB92B in ipairs(_0xD802) do
_0xD731.log("   neu: ".. _0xB92B.name .." [".. _0xB92B.variant
.. (_0xB92B.shiny and", shiny"or"") .."]")
end
_0x8373.set("target","neu: ".. _0xD802[1].name
.. (#_0xD802 > 1 and (" +".. (#_0xD802 - 1)) or""))
_0x8373.pulse("Pet geschluepft")
_0x4FF2.report(_0xD802)
_0xD731.countAction()
else
_0x4FF2.flush(false)
end
end,
onStop = function()
_0x4FF2.flush(true)
_0xD731.log("webhook: Beobachter aus, ".. _0x4FF2.totalSeen .." Pets gesehen")
end,
}_0xF61A.hw = { phase ="houses", _0xBE19 = 1, _0x56FF = {}, nextRun = 0, bossUntil = 0 }
_0xC36F.halloween3 = {
interval = function()
return _0x7264.Halloween.Interval or 1
end,
onStart = function()
local _0x97DE = _0xF61A.hw
_0x97DE.phase ="houses"_0x97DE.index = 1
_0x97DE.opened = 0
_0x97DE.houses = {}
local _0x56FF, _0xAD64 = _0xF61A.halloweenHouses()
_0x97DE.houses = _0x56FF
_0x97DE.instanceName = _0xAD64
local _0x4DC4 = math.min(#_0x56FF, tonumber(_0x7264.Halloween.MaxHouses) or 6)
_0xD731.log("halloween: ".. #_0x56FF .." Ziele gefunden, nehme ".. _0x4DC4)
_0x8373.set("status","Halloween: ".. _0x4DC4 .." Haeuser")
if #_0x56FF > 0 and _0x56FF[1].prompt then
_0xD731.log("halloween: oeffne per 'Druecke E' (ProximityPrompt)")
_0xD731.log("  erstes Ziel: ".. tostring(_0x56FF[1].text))
end
local _0x98B2 = _0x7264.Halloween.Action
if not _0x98B2 then
local _0x5BC9 = _0x5D7D.learnedInstancing and _0xAD64
and _0x5D7D.learnedInstancing[_0xAD64]
_0x98B2 = _0x5BC9 and _0x5BC9.action or nil
end
_0x97DE.action = _0x98B2
if #_0x56FF == 0 then
_0xD731.log("halloween: nichts gefunden. Bist du im Event drin?")
_0xF61A.dumpPrompts(500)
_0xDA9B("Big Hub","Keine Haeuser. Prompts stehen in der Konsole.", 10)
end
end,
step = function(_0xC129)
local _0x97DE = _0xF61A.hw
local _0xB9EE = os.clock()
local _0x4DC4 = tonumber(_0x7264.Halloween.MaxHouses) or 6if _0x97DE.phase =="egg"then
local _0xA11D = math.max(_0x97DE.nextRun - _0xB9EE, 0)if _0x97DE.egg and _0x97DE.egg.Parent then
local _0xD1B3 = _0xC1E8(_0x97DE.egg)
local _0x4CD1 = _0xD6D1.root()
if _0xD1B3 and _0x4CD1 then
local _0x70C6 = (_0x4CD1.Position - (_0xD1B3 + Vector3.new(0, 4, 0))).Magnitude
if _0x70C6 > 12 then
_0xD6D1.glide(_0xD1B3 + Vector3.new(0, 4, 0), _0x7264.Halloween.FlySpeed or 120)
_0x97DE.eggOpened = false
end
endif not _0x97DE.eggOpened then
local _0xA49E = _0xF61A.pressAt(_0x97DE.egg,"Egg ".. _0x97DE.egg.Name)
_0x97DE.eggOpened = true
_0xD731.log("halloween: Egg geoeffnet -> ".. tostring(_0xA49E))
if _0xA49E then
_0xD731.countAction()
end
end
end
_0x8373.set("target", string.format("AFK am Egg, Haeuser in %d:%02d",
math.floor(_0xA11D / 60), math.floor(_0xA11D % 60)))
_0x8373.pulse("AFK am Egg")
if _0xC129.ticks % 30 == 0 then
_0xD731.log("halloween: AFK am Egg, noch ".. math.floor(_0xA11D) .."s")
end
if _0xA11D <= 0 then
_0x97DE.phase ="houses"_0x97DE.index = 1
_0x97DE.opened = 0
_0x97DE.houses = _0xF61A.halloweenHouses()
_0xD731.log("halloween: neue Runde, ".. #_0x97DE.houses .." Ziele")
_0x8373.set("status","Halloween: Haeuser")
end
return
endif _0x97DE.phase =="houses"then
if #_0x97DE.houses == 0 then
_0x97DE.houses = _0xF61A.halloweenHouses()
end
if #_0x97DE.houses == 0 then
_0x8373.set("target","keine Haeuser gefunden")
_0x8373.pulse("suche Haeuser")if _0xC129.ticks % 20 == 0 then
_0xD731.log("halloween: nichts gefunden. 'Halloween: Selbsttest' ".."druecken - der sagt, woran es liegt.")
end
return
end
if _0xC129.ticks < 3 then
_0xD731.log("halloween: Phase Haeuser, ".. #_0x97DE.houses .." Ziele, ".."bei Nummer ".. _0x97DE.index ..", ".. _0x97DE.opened .." offen")
end
local _0xFA94 = _0x97DE.houses[_0x97DE.index]
local _0x3E84 = not _0xFA94 or not _0xFA94.instance or not _0xFA94.instance.Parent
or (_0xFA94.prompt and not _0xFA94.prompt.Parent)
if _0x3E84 then
_0x97DE.index += 1
else
_0x8373.set("target","Haus ".. _0x97DE.index .."/".. math.min(#_0x97DE.houses, _0x4DC4)
.."  ".. tostring(_0xFA94.name))
_0x8373.pulse("laufe zu Haus ".. _0x97DE.index)
_0xF61A.markTarget(_0xFA94.instance)
_0xD6D1.glide(_0xFA94.position + Vector3.new(0, 4, 0), _0x7264.Halloween.FlySpeed or 120)local _0xDCD0, _0x876F = false, nil
if _0xFA94.prompt and _0xFA94.prompt.Parent then
_0xDCD0, _0x876F = _0xF61A.firePrompt(_0xFA94.prompt)
_0xD731.log("halloween: Haus ".. _0x97DE.index .." E -> ".. (_0xDCD0 and"ok"or tostring(_0x876F)))
end
if not _0xDCD0 then
_0xDCD0, _0x876F = _0xF61A.pressAt(_0xFA94.instance,"Haus ".. _0x97DE.index)
endif _0x97DE.action then
local _0x46FA = _0xF61A.remoteByName(_0x7264.Halloween.Remote)
if _0x46FA then
local _0xF891 = _0xFA94.id or _0xFA94.name
pcall(function()
_0x46FA:InvokeServer(_0x97DE.instanceName, _0x97DE.action, _0xF891, nil)
end)
end
end
if _0xDCD0 then
_0x97DE.opened += 1
end
task.wait(_0x7264.Halloween.HouseTime or 1.6)
_0xD731.countAction()
_0x97DE.index += 1
endif _0x97DE.opened >= _0x4DC4 or _0x97DE.index > math.min(#_0x97DE.houses, _0x4DC4) then
_0xF61A.markTarget(nil)
_0xD731.log("halloween: ".. _0x97DE.opened .." Haeuser geoeffnet, warte auf den Boss")
_0x8373.set("status","Halloween: letzter Boss")
_0x97DE.phase ="boss"_0x97DE.bossUntil = _0xB9EE + (_0x7264.Halloween.BossTime or 120)
_0x97DE.bossSearchUntil = _0xB9EE + (_0x7264.Halloween.BossWait or 15)
end
return
endif _0x97DE.phase =="boss"then
local _0xA930 = _0xF61A.halloweenBoss()
if not _0xA930 then
_0x8373.set("target","warte auf den Boss")
_0x8373.pulse("warte auf Boss")
if not _0x7264.Halloween.AfkAtEgg then
_0x97DE.egg = nil
end
if _0xB9EE >= _0x97DE.bossSearchUntil then
_0xD731.log("halloween: kein Boss aufgetaucht, gehe zum Egg")
_0x97DE.phase ="egg"_0x97DE.nextRun = _0xB9EE + (_0x7264.Halloween.Cooldown or 720)
_0x97DE.eggOpened = false
_0x97DE.egg = _0xF61A.findEgg(_0x7264.Halloween.EggTarget)
_0x8373.set("status","Halloween: AFK am Egg")
end
return
end
local _0xD1B3 = _0xC1E8(_0xA930)
if _0xD1B3 then
_0xF61A.markTarget(_0xA930)
_0x8373.set("target","Boss ".. _0xA930.Name)
_0x8373.pulse("kaempfe gegen Boss")
_0xD6D1.glide(_0xD1B3 + Vector3.new(0, 6, 0), _0x7264.Halloween.FlySpeed or 120)
local _0xA31E = _0xF61A.remoteByName(_0x7264.Breakables.DamageRemote)
if _0xA31E then
pcall(function()
_0xA31E:FireServer(_0xA930.Name)
end)
end
_0xD731.countAction()
end
if _0xB9EE >= _0x97DE.bossUntil or not _0xA930.Parent then
_0xF61A.markTarget(nil)
_0xD731.log("halloween: Boss ".. (_0xA930.Parent and"Zeit um"or"erledigt")
..", ".. math.floor((_0x7264.Halloween.Cooldown or 720) / 60)
.." Minuten AFK am Egg")
_0x97DE.phase ="egg"_0x97DE.nextRun = _0xB9EE + (_0x7264.Halloween.Cooldown or 720)
_0x97DE.eggOpened = false
if _0x7264.Halloween.AfkAtEgg then
local _0x002C, _0x2844 = _0xF61A.findEgg(_0x7264.Halloween.EggTarget)
_0x97DE.egg = _0x002C
if _0x002C then
_0xD731.log("halloween: Egg '".. _0x002C.Name .."' gefunden")
else
_0xD731.log("halloween: ".. tostring(_0x2844) .." - bleibe stehen")
end
else
_0x97DE.egg = nil
end
_0x8373.set("status","Halloween: AFK am Egg")
end
return
end
end,
onStop = function()
_0xF61A.markTarget(nil)
_0xD731.log("halloween: gestoppt in Phase ".. tostring(_0xF61A.hw.phase)
..", ".. tostring(_0xF61A.hw.opened or 0) .." Haeuser offen")
_0x8373.set("target","-")
end,
}_0xC36F.halloween2 = {
interval = function()
return _0x7264.Halloween.Interval or 0.8
end,
onStart = function()
local _0x46FA = _0xF61A.remoteByName(_0x7264.Halloween.Remote)
if not _0x46FA then
_0xD731.log("halloween: Remote '".. tostring(_0x7264.Halloween.Remote) .."' fehlt")
return
end
_0xD731.log("halloween: ".. tostring(_0x7264.Halloween.Instance) .." / ".. tostring(_0x7264.Halloween.Action))
local _0xBD6C = _0xF61A.instanceTargets(_0x7264.Halloween.Instance)
_0xD731.log("halloween: ".. #_0xBD6C .." Ziele in der Instanz")
if #_0xBD6C == 0 and not _0x7264.Halloween.Target then
_0xD731.log("  -> kein Ziel gefunden. Du musst im Event drin sein.")
_0xD731.log("  -> sonst 'Rekorder: nur Halloween' laufen lassen.")
_0xDA9B("Big Hub","Halloween: kein Ziel. Erst ins Event gehen.", 9)
end
end,
step = function(_0xC129)
local _0x46FA = _0xF61A.remoteByName(_0x7264.Halloween.Remote)
if not _0x46FA then
_0xD731.log("halloween: Remote '".. tostring(_0x7264.Halloween.Remote) .."' nicht gefunden")
_0xDA9B("Big Hub","Halloween: Remote fehlt. Remote-Check druecken.", 8)
_0xC129.stop()
return
end
local _0xF891 = _0x7264.Halloween.Target
if not _0xF891 then
local _0xBD6C = _0xF61A.instanceTargets(_0x7264.Halloween.Instance)
if #_0xBD6C == 0 then
if _0xC129.ticks % 15 == 0 then
_0xD731.log("halloween: kein Ziel in Reichweite")
end
return
end
_0xF891 = _0xBD6C[1]
end
local _0xA49E, _0xC566 = pcall(function()
return _0x46FA:InvokeServer(_0x7264.Halloween.Instance, _0x7264.Halloween.Action, _0xF891, nil)
end)
if not _0xA49E then
_0xD731.log("halloween: Fehler - ".. tostring(_0xC566))
_0xC129.stop()
return
end
_0xD731.countAction()
_0x8373.set("target", tostring(_0x7264.Halloween.Instance) .." -> ".. tostring(_0xF891))
_0x8373.pulse("Halloween grind")
if _0xC129.ticks % 10 == 0 then
_0xD731.log("halloween: ".. (_0xC129.ticks + 1) .." Aufrufe, Ziel ".. tostring(_0xF891)
..", Antwort ".. tostring(_0xC566))
end
end,
onStop = function()
_0xD731.log("halloween: gestoppt")
end,
}local function _0xCCB7(_0xA996, hint)
_0xD731.log(_0xA996 ..": Remote noch unbekannt.")
_0xD731.log("  -> 'Debug: Remote-Rekorder (60s)' starten, dann ".. hint
..", danach Konsole kopieren.")
_0xDA9B("Big Hub", _0xA996 ..": erst Remote-Rekorder laufen lassen.", 9)
end
_0xC36F.halloween = {
interval = function()
return _0x7264.Halloween.Interval or 1
end,
onStart = function()
if not _0x7264.Halloween.Remote then
_0xCCB7("halloween","im Event einmal eine Runde per Hand grinden")
end
end,
step = function(_0xC129)
if not _0x7264.Halloween.Remote then
_0xC129.stop()
return
end
local _0x46FA = _0xF61A.remoteByName(_0x7264.Halloween.Remote)
if not _0x46FA then
_0xD731.log("halloween: Remote '".. tostring(_0x7264.Halloween.Remote) .."' fehlt")
_0xC129.stop()
return
end
pcall(function()
_0x46FA:FireServer()
end)
_0xD731.countAction()
end,
onStop = function()
_0xD731.log("halloween: gestoppt")
end,
}
_0xC36F.farmingworld = {
interval = function()
return _0x7264.FarmingWorld.Interval or 2
end,
onStart = function()
if not _0x7264.FarmingWorld.Remote then
_0xCCB7("farmingworld","einmal saeen, waessern und ernten")
end
end,
step = function(_0xC129)
if not _0x7264.FarmingWorld.Remote then
_0xC129.stop()
return
end
_0xD731.countAction()
end,
onStop = function()
_0xD731.log("farmingworld: gestoppt")
end,
}
_0xC36F.eggs = {
interval = function()
return _0x0689.EggInterval
end,
onStart = function()
_0xD731.log("eggs start: ".. _0x0689.EggType .." x".. tostring(_0x0689.EggAmount))
end,
step = function(_0xC129)if not _0x7264.Eggs.Remote then
_0xCCB7("eggs","ein Egg per Hand oeffnen")
_0xC129.stop()
return
end
local _0x46FA = _0xF61A.remoteByName(_0x7264.Eggs.Remote)
if not _0x46FA then
_0xD731.log("eggs: Remote '".. tostring(_0x7264.Eggs.Remote) .."' fehlt")
_0xC129.stop()
return
end
local _0xC05C = _0x7264.Eggs.EggName ~=""and _0x7264.Eggs.EggName or _0x0689.EggType
local _0xA49E, _0x1C43 = pcall(function()
if _0x46FA:IsA("RemoteFunction") then
return _0x46FA:InvokeServer(_0xC05C)
end
return _0x46FA:FireServer(_0xC05C)
end)
if not _0xA49E then
_0xD731.log("eggs: Fehler - ".. tostring(_0x1C43))
_0xC129.stop()
return
end
_0xD731.eggProgress((_0xC129.ticks * 10) % 100)
_0xD731.countAction()
if _0x0689.EggAmount > 0 and _0xC129.ticks >= _0x0689.EggAmount then
_0xC129.stop()
_0xD731.notify({ _0xE8B1 ="Fertig", _0x21E5 = _0x0689.EggAmount .." Eggs geoeffnet."})
end
end,
onStop = function()
_0xD731.eggProgress(0)
_0xD731.log("eggs stop")
end,
}
function _0xC36F.teleportToArea(areaName)
local _0xED58 = _0xD6D1.area(areaName)
if not _0xED58 then
_0xD731.toast({ _0xE8B1 ="Unbekannte Area", subtitle = tostring(areaName) })
return
end
if _0xD6D1.teleport(_0xED58.position) then
_0xD731.log("teleport -> ".. _0xED58.name)
else
_0xD731.toast({ _0xE8B1 ="Kein Charakter", subtitle ="Spawn abwarten"})
end
end
function _0xC36F.onAreaChanged(areaName)
_0xD731.log("area: ".. tostring(areaName))
if _0x0689.FarmAutoTP and _0x0689.FarmEnabled then
_0xC36F.teleportToArea(areaName)
end
end
_0xC36F.buttons = {
{
_0x1566 ="Zum Spawn",
description ="Teleportiert zurueck zum Startpunkt",
icon ="flag",
run = function()
if _0xD6D1.teleport(Vector3.new(0, 10, 0)) then
_0xD731.notify({ _0xE8B1 ="Teleport", _0x21E5 ="Am Spawn."})
else
_0xD731.notify({ _0xE8B1 ="Kein Charakter", _0x21E5 ="Spawn abwarten."})
end
end,
},
{
_0x1566 ="Alles verkaufen",
description ="Einmaliger Verkauf",
icon ="coins",
run = function()
_0xD731.log("sell all")
_0xD731.notify({ _0xE8B1 ="Verkauft", _0x21E5 ="Einmal-Aktion ausgefuehrt."})
end,
},
{
_0x1566 ="Rejoin",
description ="Server neu betreten",
icon ="refresh-cw",
run = function()
_0xD731.notify({ _0xE8B1 ="Rejoin", _0x21E5 ="Server wird neu betreten."})
game:GetService("TeleportService"):Teleport(game.PlaceId, _0xC2D2)
end,
},
}local _0x31A4 = false
local function _0xC805()
return (not _0x7CDD.RequireKey) or _0x31A4
end
local _0xE991 = {}
_0xE991.__index = function(_0x036B, _0x783B)
if _0x783B =="value"then
return nil
end
return function() end
end
local function _0x6684()
return setmetatable({}, _0xE991)
end
local function _0xCAEF(t)
local _0xA155 = {}
for k, v in pairs(t) do
_0xA155[k] = v
end
return _0xA155
end
local _0x5733 = 0
local _0x163E = {}
local function _0xC340(_0x1A66, _0xC48F, cfg)
cfg = cfg and _0xCAEF(cfg) or {}
local _0x694A = cfg.locked == true
cfg.locked = nil
local _0x163C
local _0x8EE8 = cfg.callback
if type(_0x8EE8) =="function"then
cfg.callback = function(...)
if _0x694A and not _0xC805() then
_0xD731.toast({
_0xE8B1 ="Key benoetigt",
subtitle ='Tab "Key" oeffnen',
icon ="key-round",
_0x0B31 = 3,
})
_0xDA9B("Big Hub","Key benoetigt - Tab 'Key'.", 5)
if _0xC48F =="CreateToggle"and _0x163C then
pcall(function()
_0x163C:Set(false)
end)
end
return
end
local _0x24E9 = { ... }
local _0xA996 = tostring(cfg.name or _0xC48F)local _0xE0A8 = {}
for _0xBE19 = 1, math.min(#_0x24E9, 2) do
local _0x946B = _0x24E9[_0xBE19]
if type(_0x946B) ~="table"then
table.insert(_0xE0A8, tostring(_0x946B))
else
table.insert(_0xE0A8,"(".. #_0x946B .." Werte)")
end
end
_0xD731.log(">>> KLICK: ".. _0xA996
.. (#_0xE0A8 > 0 and ("  [".. table.concat(_0xE0A8,", ") .."]") or""))
task.spawn(function()
local _0xA49E, _0x1C43 = pcall(_0x8EE8, table.unpack(_0x24E9))
if _0xA49E then
_0xD731.log("<<< fertig: ".. _0xA996)
end
if not _0xA49E then
warn("[BigHub] Callback '".. _0xA996 .."': ".. tostring(_0x1C43))
_0xD731.log("fehler in '".. _0xA996 .."': ".. tostring(_0x1C43))
_0xD731.toast({
_0xE8B1 ="Fehler in ".. _0xA996,
subtitle ="Details in der Konsole",
icon ="octagon-alert",
_0x0B31 = 5,
})
_0xDA9B("Big Hub Fehler", _0xA996 ..": ".. tostring(_0x1C43), 10)
end
end)
end
end
local _0x7AA5 = _0x1A66[_0xC48F]
if type(_0x7AA5) ~="function"then
_0x5733 += 1
warn("[BigHub] ".. _0xC48F .." existiert nicht in dieser Rayfield-Version")
return _0x6684()
end
local _0xA49E, _0xC566 = pcall(_0x7AA5, _0x1A66, cfg)
if (not _0xA49E or not _0xC566) and cfg.icon ~= nil then
local _0xC703 = _0xCAEF(cfg)
_0xC703.icon = nil
local _0x29C5, _0xCC59 = pcall(_0x7AA5, _0x1A66, _0xC703)
if _0x29C5 and _0xCC59 then
warn("[BigHub] Icon '".. tostring(cfg.icon) .."' abgelehnt bei '".. tostring(cfg.name) .."'")
_0xA49E, _0xC566 = true, _0xCC59
end
end
if not _0xA49E or not _0xC566 then
_0x5733 += 1
warn("[BigHub] ".. _0xC48F .." fehlgeschlagen ('".. tostring(cfg.name)
.."'): ".. tostring(_0xC566))
return _0x6684()
end
_0x163C = _0xC566
if _0x694A and _0x7CDD.VisualLock and _0x7CDD.RequireKey
and _0xC48F ~="CreateButton"then
table.insert(_0x163E, _0x163C)
pcall(function()
_0x163C:Lock("Key benoetigt")
end)
end
return _0x163C
end
local _0xEACC
local function _0xF2E9(_0xC48F)
return type(_0xEACC) =="table"and type(_0xEACC[_0xC48F]) =="function"endlocal function _0x6468()
if _0x8643.rayfield and _0x8643.rayfield.Parent then
return _0x8643.rayfield
end
local _0x2769 = {}
if type(gethui) =="function"then
local _0xA49E, _0x437E = pcall(gethui)
if _0xA49E and _0x437E then
table.insert(_0x2769, _0x437E)
end
end
local _0x25D0, _0xE713 = pcall(function()
return game:GetService("CoreGui")
end)
if _0x25D0 and _0xE713 then
table.insert(_0x2769, _0xE713)
end
local _0x6F5A = _0xC2D2:FindFirstChildOfClass("PlayerGui")
if _0x6F5A then
table.insert(_0x2769, _0x6F5A)
end
local _0x7F81 = {"rayfield","sirius","gen2"}
for _0x036B, place in ipairs(_0x2769) do
local _0xA49E, _0x91C3 = pcall(function()
return place:GetChildren()
end)
if _0xA49E then
for _0x036B, child in ipairs(_0x91C3) do
if child:IsA("ScreenGui") and child.Name ~="BigHubKey"and child.Name ~="BigHubOverlay"then
local _0x1566 = _0x0F4A(child.Name)
for _0x036B, word in ipairs(_0x7F81) do
if _0x1566:find(word, 1, true) then
_0x8643.rayfield = child
return child
end
end
end
end
end
end
return nil
endlocal function _0x6317()
local _0x6AB1 = {}
local _0xFFAE = _0x6468()
if not _0xFFAE then
return _0x6AB1,"nicht gefunden, nehme Standardfarben"end
local _0xCBD4 = {}
local _0xAFF3 = pcall(function()
_0xCBD4 = _0xFFAE:GetDescendants()
end)
if not _0xAFF3 then
return _0x6AB1,"nicht lesbar"endlocal _0x3819, _0x6E2B
for _0x036B, child in ipairs(_0xCBD4) do
if child:IsA("Frame") and child.Visible and child.BackgroundTransparency < 0.95 then
local _0x0201 = child.AbsoluteSize
local _0xED58 = _0x0201.X * _0x0201.Y
if _0xED58 > (_0x6E2B or 0) then
_0x3819, _0x6E2B = child, _0xED58
end
end
end
if _0x3819 then
_0x6AB1.bg = _0x3819.BackgroundColor3
_0x6AB1.bgAlpha = _0x3819.BackgroundTransparency
local _0xAB57 = _0x3819:FindFirstChildOfClass("UICorner")
if _0xAB57 then
_0x6AB1.corner = _0xAB57.CornerRadius
end
local _0x53EE = _0x3819:FindFirstChildOfClass("UIStroke")
if _0x53EE then
_0x6AB1.stroke = _0x53EE.Color
_0x6AB1.thickness = _0x53EE.Thickness
end
endfor _0x036B, child in ipairs(_0xCBD4) do
if child:IsA("TextLabel") and child.Visible and _0x8635(child.Text) ~=""then
_0x6AB1.text = child.TextColor3
_0x6AB1.font = child.Font
break
end
end
for _0x036B, child in ipairs(_0xCBD4) do
if child:IsA("TextLabel") and child.Visible
and child.Font == Enum.Font.GothamBold then
_0x6AB1.fontBold = child.Font
break
end
endfor _0x036B, child in ipairs(_0xCBD4) do
if (child:IsA("TextButton") or child:IsA("TextBox") or child:IsA("ImageButton"))
and child.Visible and child.BackgroundTransparency < 0.9 then
_0x6AB1.surface = child.BackgroundColor3
break
end
endfor _0x036B, child in ipairs(_0xCBD4) do
if child:IsA("Frame") and child.Visible and child.BackgroundTransparency < 0.5 then
local _0x0397 = child.BackgroundColor3
local _0x036B, _0x5EF7, _0x946B = Color3.toHSV(_0x0397)
if _0x5EF7 > 0.4 and _0x946B > 0.4 then
_0x6AB1.accent = _0x0397
break
end
end
end
local _0x97BB = {}
for _0x783B in pairs(_0x6AB1) do
table.insert(_0x97BB, _0x783B)
end
return _0x6AB1,"vom Hauptmenue (".. table.concat(_0x97BB,", ") ..")"end
local function _0xD095(_0x946B)for _0x036B, _0xC48F in ipairs({ _0x946B and"Show"or"Hide","SetVisible","Toggle"}) do
if _0xF2E9(_0xC48F) then
local _0xA49E = pcall(function()
if _0xC48F =="SetVisible"or _0xC48F =="Toggle"then
_0xEACC[_0xC48F](_0xEACC, _0x946B)
else
_0xEACC[_0xC48F](_0xEACC)
end
end)
if _0xA49E then
return true, _0xC48F
end
end
end
local _0xFFAE = _0x6468()
if _0xFFAE then
local _0xA49E = pcall(function()
_0xFFAE.Enabled = _0x946B
end)
if _0xA49E then
return true,"ScreenGui ".. _0xFFAE.Name
end
end
return false,"Fenster nicht gefunden"end
local function _0xB471(cfg, fallback)
if _0xF2E9("Popup") then
local _0xA49E, _0x1C43 = pcall(_0xEACC.Popup, _0xEACC, cfg)
if _0xA49E then
return
end
warn("[BigHub] Popup abgelehnt: ".. tostring(_0x1C43))
end
_0xD731.log("popup nicht verfuegbar, fuehre direkt aus: ".. tostring(cfg.title))
if fallback then
fallback()
end
endlocal _0x6562 = {}
local _0x665A = {}
local _0x3322
local function _0x43FA(_0x1566, def)
local _0xC129 = {
_0x1566 = _0x1566,
def = def,
_0x8216 = false,
_0x903A = 0,
ticks = 0,
}
_0xC129.stop = function()
_0xC129.running = false
local _0x4948 = _0x665A[_0x1566]
if _0x4948 then
pcall(function()
_0x4948:Set(false)
end)
end
end
_0x6562[_0x1566] = _0xC129
return _0xC129
end
local function _0x2E8C(_0x1566)
local _0xC129 = _0x6562[_0x1566]
if not _0xC129 or _0xC129.running then
return
end
_0xC129.running = true
_0xC129.ticks = 0
_0xC129.token += 1
local _0x903A = _0xC129.token
_0xD731.log("loop '".. _0x1566 .."' gestartet")
_0xD731.toast({ _0xE8B1 = _0x1566 .." laeuft", subtitle ="Loop gestartet", icon ="play", _0x0B31 = 3 })
_0x8373.pulse(_0x1566 .." startet")
if _0xD731.refreshLoops then
_0xD731.refreshLoops()
end
_0xDA9B("Big Hub", _0x1566 .." laeuft", 3)
task.spawn(function()
if _0xC129.def.onStart then
local _0xA49E, _0x1C43 = pcall(_0xC129.def.onStart, _0xC129)
if not _0xA49E then
warn("[BigHub] onStart ".. _0x1566 ..": ".. tostring(_0x1C43))
_0xD731.log("fehler in ".. _0x1566 ..".onStart: ".. tostring(_0x1C43))
end
end
while _0xC129.running and _0xC129.token == _0x903A and not _0xEACC.unloaded do
local _0xA49E, _0x1C43 = pcall(_0xC129.def.step, _0xC129)
if not _0xA49E then
warn("[BigHub] step ".. _0x1566 ..": ".. tostring(_0x1C43))
_0xD731.log("fehler in ".. _0x1566 ..".step: ".. tostring(_0x1C43))
_0xD731.toast({
_0xE8B1 ="Fehler in ".. _0x1566,
subtitle ="Loop gestoppt, siehe Konsole",
icon ="octagon-alert",
_0x0B31 = 5,
})
_0xC129.stop()
break
end
_0xC129.ticks += 1
local _0x6534 = 1
if _0xC129.def.interval then
local _0x5C1A, _0x946B = pcall(_0xC129.def.interval)
if _0x5C1A and type(_0x946B) =="number"then
_0x6534 = _0x946B
end
end
task.wait(math.max(_0x6534, 0.05))
end
_0xC129.running = false
_0xD731.log("loop '".. _0x1566 .."' beendet nach ".. _0xC129.ticks .." Durchlaeufen")
if _0xD731.refreshLoops then
_0xD731.refreshLoops()
end
_0xDA9B("Big Hub", _0x1566 .." gestoppt nach ".. _0xC129.ticks .." Durchlaeufen", 4)
if _0xC129.def.onStop then
pcall(_0xC129.def.onStop, _0xC129)
end
end)
end
local function _0x3C10(_0x1566)
local _0xC129 = _0x6562[_0x1566]
if _0xC129 then
_0xC129.running = false
end
end
local function _0xE8B3()
for _0x1566 in pairs(_0x6562) do
local _0xC129 = _0x6562[_0x1566]
if _0xC129.running then
_0xC129.stop()
end
end
end_0xD731.startLoop = _0x2E8C
_0xD731.loopRunning = function(_0x1566)
local _0xC129 = _0x6562[_0x1566]
return _0xC129 ~= nil and _0xC129.running == true
end
_0x43FA("farm", _0xC36F.farm)
_0x43FA("orbs", _0xC36F.orbs)
_0x43FA("hatchwatch", _0xC36F.hatchwatch)
_0x43FA("eggs", _0xC36F.eggs2)_0x43FA("zones", _0xC36F.zones)
_0x43FA("halloween", _0xC36F.halloween3)_0x43FA("farmingworld", _0xC36F.farmingworld)
local function _0xDF10(_0x1566, _0x946B)
if _0x946B then
if not _0x0689.Master then
_0x0689.Master = true
if _0x3322 then
pcall(function()
_0x3322:Set(true)
end)
end
_0xD731.log("master automatisch an fuer '".. _0x1566 .."'")
end
_0x2E8C(_0x1566)
else
_0x3C10(_0x1566)
end
endlocal function _0x39EA()
if not _0x7CDD.KeyUrl then
return nil
end
local _0xA49E, _0x7E3E = pcall(game.HttpGet, game, _0x7CDD.KeyUrl)
if _0xA49E and type(_0x7E3E) =="string"then
return (_0x7E3E:gsub("%s+$",""))
end
return nil
end
local function _0xDCCA(input)
input = _0x8635(input)
if input ==""then
return false
end
local _0x46FA = _0x39EA()
if _0x46FA then
return input == _0x46FA
end
for _0x036B, k in ipairs(_0x7CDD.Keys) do
if input == k then
return true
end
end
return false
end
local function _0xC3FA()
if not _0x7CDD.KeySave then
return nil
end
local _0xA49E, _0x21E5 = pcall(function()
if isfile and isfile(_0x7CDD.KeyFile) then
return readfile(_0x7CDD.KeyFile)
end
return nil
end)
return _0xA49E and _0x21E5 or nil
end
local function _0x49D8(_0x783B)
if not _0x7CDD.KeySave then
return
end
pcall(function()
if writefile then
writefile(_0x7CDD.KeyFile, _0x783B)
end
end)
endlocal _0x5FE2 = false
local _0xDFFA = nil
if _0x7CDD.RequireKey then
local _0x748B = _0xC3FA()
if _0x748B and _0xDCCA(_0x748B) then
_0x5FE2 = true
_0xDFFA ="saved"_0xD731.log("key: gespeicherter Key akzeptiert")
else
local _0x283A = false
_0x8643.build({
link = _0x7CDD.KeyLink,
onSubmit = function(_0x7366)
if not _0xDCCA(_0x7366) then
_0xD731.log("key: falscher Key eingegeben")
return false
end
_0x49D8(_0x7366)
_0x283A = true
return true
end,
})local _0x3BAA = false
if _0x8643.gui then
task.wait(0.3)
local _0x6784, _0x0201 = pcall(function()
local _0x3A60 = _0x8643.gui:FindFirstChildWhichIsA("Frame")
return _0x3A60 and _0x3A60.AbsoluteSize or nil
end)
_0x3BAA = _0x6784 and _0x0201 ~= nil and _0x0201.X > 50 and _0x0201.Y > 50
_0xD731.log("key: Fenster sichtbar = ".. tostring(_0x3BAA)
.. (_0x0201 and ("  ".. math.floor(_0x0201.X) .."x".. math.floor(_0x0201.Y)) or""))
if not _0x3BAA then
_0xD731.log("key: Fenster ist nicht sichtbar, zeige stattdessen den Key-Tab")
_0x8643.close()
end
end
if _0x3BAA then
_0xDA9B("Big Hub","Enter your license key.", 10)
_0xD731.log("key: warte auf Eingabe, Hauptmenue wird noch nicht gebaut")local _0x8366 = os.clock() + (tonumber(_0x7CDD.KeyTimeout) or 120)
while not _0x283A do
if not _0x8643.gui or not _0x8643.gui.Parent then
_0xD731.log("key: Fenster ist verschwunden, kein Zugang")
break
end
if os.clock() > _0x8366 then
_0xD731.log("key: nach ".. tostring(_0x7CDD.KeyTimeout or 120)
.."s keine Eingabe, baue das Hauptmenue mit Key-Tab")
_0x8643.close()
break
end
task.wait(0.1)
end
if _0x283A then
_0x8643.close()
_0x5FE2 = true
_0xDFFA ="input"_0xD731.log("key: akzeptiert, baue das Hauptmenue")
end
else_0xD731.log("key: eigenes Fenster ging nicht, benutze den Key-Tab")
end
end
enddo
local _0xAAB6 = {
_0x1566 = _0x7CDD.Name,
subtitle = _0x7CDD.Subtitle,
icon ="layout-dashboard",
_0x6AB1 = _0x7CDD.Theme,
sidebarLayout = _0x7CDD.Sidebar,
profile = _0x7CDD.RequireKey and"Free"or"Premium",
showName = _0x7CDD.Name,
configuration = {
autoSave = true,
autoLoad = true,
fileName ="BigHub",
customFolder ="BigHub",
},
}
local _0xA49E, _0xC566 = pcall(_0xA51E.CreateWindow, _0xA51E, _0xAAB6)
if not _0xA49E or not _0xC566 then
warn("[BigHub] Window-Props abgelehnt (".. tostring(_0xC566) ..")")
_0xC566 = _0xA51E:CreateWindow({
_0x1566 = _0x7CDD.Name,
subtitle = _0x7CDD.Subtitle,
sidebarLayout = _0x7CDD.Sidebar,
})
end
_0xEACC = _0xC566
end
pcall(function()
_0xEACC:CreateTag({ _0x1566 = _0x7CDD.Author })
end)
local function _0x375F(_0x1566)
pcall(function()
_0xEACC:CreateSection({ _0x1566 = _0x1566 })
end)
end
local function _0xE005(_0x1566, icon)
return _0xC340(_0xEACC,"CreateTab", { _0x1566 = _0x1566, icon = icon })
end
if _0x7CDD.RequireKey then
_0x375F("Zugang")
end
local _0xCB00 = _0x7CDD.RequireKey and _0xE005("Key","key-round") or nil
_0x375F("Hub")
local _0xF043 = _0xE005("Main","home")
_0x375F("Features")
local _0xE816 = _0xE005("Farm","sprout")
local _0xDB8B = _0xE005("Eggs","egg")
local _0x43EF = _0xE005("Mailbox","mail")
local _0x2CFD = _0xE005("Actions","zap")
_0x375F("System")
local _0xE59E = _0xE005("Settings","settings")
_0xD731.log("start: Tabs erstellt, Fehler bisher: ".. _0x5733)
local function _0x8742(_0xF344)
if _0x31A4 then
return
end
_0x31A4 = true
for _0x036B, _0x163C in ipairs(_0x163E) do
pcall(function()
_0x163C:Unlock()
end)
end
pcall(function()
_0xEACC:SetProfile("Premium")
end)local _0xF891 = (_0x7CDD.AfterKey and _0x7CDD.AfterKey.Tab) or"Main"pcall(function()
_0xEACC:Navigate(_0xF891)
end)
_0xD731.notify({
_0xE8B1 ="Entsperrt",
_0x21E5 = _0xF344 =="saved"and"Gespeicherter Key akzeptiert."or"Key akzeptiert.",
icon ="check",
_0x0B31 = 4,
})
_0xDA9B("Big Hub","Key akzeptiert.", 3)
local _0xA49E, _0x1C43 = pcall(_0xC36F.onUnlock, _0xF344)
if not _0xA49E then
_0xD731.log("fehler in onUnlock: ".. tostring(_0x1C43))
end
endif _0xCB00 then
_0xC340(_0xCB00,"CreateText", {
_0x1566 ="Enter your key",
_0x7366 ="Key eingeben und mit Enter bestaetigen. Danach startet der ".."Mailbox-Versand von allein.",
icon ="key-round",
})
_0xC340(_0xCB00,"CreateInput", {
_0x1566 ="Enter your key",
placeholder ="Key hier einfuegen",
clearOnFocus = true,
forgetState = true,
callback = function(_0x7366)
if _0xDCCA(_0x7366) then
_0x49D8(_0x7366)
_0x8742("input")
else
_0xD731.toast({ _0xE8B1 ="Falscher Key", subtitle ="Nochmal versuchen", icon ="x", _0x0B31 = 3 })
end
end,
})
_0xC340(_0xCB00,"CreateButton", {
_0x1566 ="Gespeicherten Key loeschen",
description ="Entfernt ".. _0x7CDD.KeyFile,
icon ="trash-2",
callback = function()
if delfile then
delfile(_0x7CDD.KeyFile)
end
_0xD731.notify({ _0xE8B1 ="Geloescht", _0x21E5 ="Key-Datei entfernt."})
end,
})
end_0xC340(_0xF043,"CreateText", {
_0x1566 = _0x7CDD.Name,
_0x7366 ="Made by ".. _0x7CDD.Author .."  -  v5.5",
icon ="info",
})
_0xC340(_0xF043,"CreateButton", {
_0x1566 ="LOG KOPIEREN UND SCHICKEN",
description ="Alles seit dem Start in die Zwischenablage",
icon ="clipboard-copy",
callback = function()
local _0xA49E, _0x2B74 = _0xD731.copyLog(600)
if _0xA49E then
_0xD731.log("log: ".. tostring(_0x2B74) .." Zeilen kopiert")
end
end,
})
local _0x6FBD = _0xC340(_0xF043,"CreateStat", {
_0x1566 ="Laufzeit",
icon ="clock",
_0x946B = 0,
suffix ="s",
numberEasing = true,
})
local _0x1B21 = _0xC340(_0xF043,"CreateStat", {
_0x1566 ="Aktionen",
description ="Seit Start",
icon ="hash",
_0x946B = 0,
compact = true,
changeMode ="absolute",
})
_0xC340(_0xF043,"CreateDivider", { _0x7366 ="Steuerung"})
_0x3322 = _0xC340(_0xF043,"CreateToggle", {
_0x1566 ="Master",
description ="Kill-Switch - aus stoppt sofort alle Loops",
icon ="power",
_0x946B = _0x0689.Master,
flag ="Master",
callback = function(_0x946B)
_0x0689.Master = _0x946B
if not _0x946B then
_0xE8B3()
end
_0xC36F.onMaster(_0x946B)
end,
})
_0xC340(_0xF043,"CreateKeybind", {
_0x1566 ="Master umschalten",
icon ="command",
_0x946B = Enum.KeyCode.G,
flag ="MasterKey",
callback = function()
_0x3322:Set(not _0x3322.value)
end,
})
_0xC340(_0xF043,"CreateButton", {
_0x1566 ="Alle Loops stoppen",
description ="Panik-Knopf",
icon ="square",
callback = function()
_0xE8B3()
_0xD731.notify({ _0xE8B1 ="Gestoppt", _0x21E5 ="Alle Loops beendet."})
end,
})
_0xC340(_0xF043,"CreateDivider", { _0x7366 ="Log"})
local _0xF673 = _0xC340(_0xF043,"CreateConsole", {
_0x1566 ="Konsole",
description ="Letzte Ereignisse",
height = 150,
follow = true,
maxLines = 500,
})
_0xC340(_0xF043,"CreateButton", {
_0x1566 ="Selbsttest",
description ="Schreibt Diagnose in die Konsole",
icon ="stethoscope",
callback = function()
_0xD731.log("--- Selbsttest ---")
_0xD731.log("fehlgeschlagene Elemente: ".. _0x5733)
_0xD731.log("Key-Gate: ".. (_0x7CDD.RequireKey and"an"or"aus")
..", Zugang: ".. (_0xC805() and"frei"or"gesperrt"))
_0xD731.log("GUI-Klicks moeglich: ".. tostring(_0x5D7D.canClick()))
local _0x3A60, _0x4643, _0x1C43, _0xF344 = _0x5D7D.frames()
_0xD731.log("Mailbox-Fenster: ".. (_0x3A60 and (_0x3A60:GetFullName() .." via ".. tostring(_0xF344)) or tostring(_0x1C43)))
_0xD731.log("Sendebereich: ".. (_0x4643 and _0x4643:GetFullName() or"FEHLT"))
_0xD731.log("Mailbox offen: ".. tostring(_0x5D7D.isOpen()))
_0xD731.log("Sendeweg: ".. (_0x5FA8.UseRemote and"Remote"or"Spiel-UI"))
local _0xFFE3, _0xA1A8 = _0x5D7D.relay()
_0xD731.log("Relay: ".. (_0xFFE3 and _0xFFE3:GetFullName() or tostring(_0xA1A8)))
local _0xDA82, _0x2F6A = _0x5D7D.networkRemote(_0x5FA8.SendRemote)
_0xD731.log("Send-Remote: ".. (_0xDA82 and _0xDA82:GetFullName() or tostring(_0x2F6A)))
local _0x81FA, _0x5D07 = _0x5D7D.pets()
_0xD731.log("Pets lesbar: ".. (_0x81FA and (#_0x81FA .." Stueck") or tostring(_0x5D07)))
local _0x0229, _0x5D8F, _0x0A9D = _0x5D7D.collect()
_0xD731.log("passend zur Config: ".. (_0x0229 and (#_0x0229 .." von ".. tostring(_0x0A9D)) or tostring(_0x5D8F)))
local _0x690E = {}
for _0x036B, _0x1566 in ipairs({"Notify","Toast","Popup","Navigate","Set","Save","GetPath","Unload"}) do
if not _0xF2E9(_0x1566) then
table.insert(_0x690E, _0x1566)
end
end
_0xD731.log("fehlende Window-Methoden: ".. (#_0x690E > 0 and table.concat(_0x690E,", ") or"keine"))
_0xD731.log("--- Ende ---")
_0xDA9B("Big Hub","Selbsttest fertig, siehe Konsole.", 5)
end,
})
_0xC340(_0xF043,"CreateButton", {
_0x1566 ="Konsole leeren",
icon ="eraser",
callback = function()
_0xF673:Clear()
end,
})
_0xC340(_0xF043,"CreateButton", {
_0x1566 ="Log kopieren",
description ="Letzte 200 Zeilen in die Zwischenablage",
icon ="clipboard",
callback = function()
local _0xA49E = _0xD731.copyLog(200)
if not _0xA49E then
pcall(function()
_0xF673:Copy()
end)
end
end,
})
_0xC340(_0xF043,"CreateButton", {
_0x1566 ="Ganzes Log kopieren",
description ="Alles seit dem Start",
icon ="clipboard-list",
callback = function()
_0xD731.copyLog(600)
end,
})_0xC340(_0xE816,"CreateText", {
_0x1566 ="Farm",
_0x7366 ="Breakables und Zonen laufen ueber Teleports - deine Pets machen ".."den Schaden selbst. Halloween und Farming World brauchen noch ".."ihr Remote, dafuer der Rekorder unten.",
icon ="sprout",
})
_0xC340(_0xE816,"CreateDivider", { _0x7366 ="Breakables / Coins"})
_0x665A.farm = _0xC340(_0xE816,"CreateToggle", {
_0x1566 ="Breakables farmen",
description ="Springt zum naechsten Breakable, wartet bis es weg ist",
icon ="hammer",
_0x946B = false,
flag ="FarmEnabled",
callback = function(_0x946B)
_0x0689.FarmEnabled = _0x946B
_0xDF10("farm", _0x946B)
end,
})
_0xC340(_0xE816,"CreateSlider", {
_0x1566 ="Suchradius",
description ="Wie weit nach Zielen gesucht wird",
icon ="move",
range = { 50, 2000 },
_0x946B = _0x7CDD.Farm.Breakables.Radius,
flag ="FarmRadius",
callback = function(_0x946B)
_0x7CDD.Farm.Breakables.Radius = _0x946B
end,
})
_0xC340(_0xE816,"CreateSlider", {
_0x1566 ="Zeit pro Ziel",
description ="Sekunden, dann naechstes Ziel",
icon ="timer",
range = { 0.5, 10 },
_0x946B = _0x7CDD.Farm.Breakables.StayTime,
flag ="FarmStay",
callback = function(_0x946B)
_0x7CDD.Farm.Breakables.StayTime = _0x946B
end,
})
_0xC340(_0xE816,"CreateSlider", {
_0x1566 ="Hoehe ueber dem Ziel",
icon ="move-3d",
range = { 0, 30 },
_0x946B = _0x7CDD.Farm.Breakables.Height,
flag ="FarmHeight",
callback = function(_0x946B)
_0x7CDD.Farm.Breakables.Height = _0x946B
end,
})
_0xC340(_0xE816,"CreateToggle", {
_0x1566 ="Breakables schlagen",
description ="Schickt Schaden per Remote, nicht nur Pets",
icon ="swords",
_0x946B = _0x7CDD.Farm.Breakables.Damage,
flag ="FarmDamage",
callback = function(_0x946B)
_0x7CDD.Farm.Breakables.Damage = _0x946B
end,
})
_0xC340(_0xE816,"CreateSlider", {
_0x1566 ="Schlaege pro Sekunde",
description ="Hoeher ist schneller, aber auffaelliger",
icon ="zap",
range = { 1, 20 },
_0x946B = _0x7CDD.Farm.Breakables.HitsPerSecond,
flag ="FarmHits",
callback = function(_0x946B)
_0x7CDD.Farm.Breakables.HitsPerSecond = _0x946B
end,
})
_0xC340(_0xE816,"CreateDivider", { _0x7366 ="Orbs"})
_0x665A.orbs = _0xC340(_0xE816,"CreateToggle", {
_0x1566 ="Orbs einsammeln",
description ="Sammelt alle Orbs im Radius per Remote",
icon ="sparkles",
_0x946B = false,
flag ="OrbsEnabled",
callback = function(_0x946B)
_0xDF10("orbs", _0x946B)
end,
})
_0xC340(_0xE816,"CreateSlider", {
_0x1566 ="Orb-Radius",
description ="0 = alles, egal wie weit",
icon ="circle-dot",
range = { 0, 2000 },
_0x946B = _0x7CDD.Farm.Orbs.Radius,
flag ="OrbRadius",
callback = function(_0x946B)
_0x7CDD.Farm.Orbs.Radius = _0x946B
end,
})
_0xC340(_0xE816,"CreateDivider", { _0x7366 ="Zonen"})
_0x665A.zones = _0xC340(_0xE816,"CreateToggle", {
_0x1566 ="Zonen durchrotieren",
description ="Teleportiert der Reihe nach durch deine freien Zonen",
icon ="map",
_0x946B = false,
flag ="ZonesEnabled",
callback = function(_0x946B)
_0xDF10("zones", _0x946B)
end,
})
_0xC340(_0xE816,"CreateSlider", {
_0x1566 ="Sekunden pro Zone",
icon ="timer",
range = { 2, 120 },
_0x946B = _0x7CDD.Farm.Zones.Interval,
flag ="ZoneInterval",
callback = function(_0x946B)
_0x7CDD.Farm.Zones.Interval = _0x946B
end,
})
_0xC340(_0xE816,"CreateButton", {
_0x1566 ="Zonen einlesen",
description ="Sucht deine Zonen in der Workspace",
icon ="refresh-cw",
callback = function()
local _0xE14A = _0xF61A.scanZones()
_0xDA9B("Big Hub", #_0xE14A .." Zonen gefunden.", 6)
end,
})
_0xC340(_0xE816,"CreateDivider", { _0x7366 ="Halloween Event"})
_0x665A.halloween = _0xC340(_0xE816,"CreateToggle", {
_0x1566 ="Halloween Auto-Grind",
description ="HatchWar / SN_Settle - du musst im Event drin sein",
icon ="ghost",
_0x946B = false,
flag ="HalloweenEnabled",
callback = function(_0x946B)
_0xDF10("halloween", _0x946B)
end,
})
_0xC340(_0xE816,"CreateSlider", {
_0x1566 ="Haeuser pro Runde",
description ="Danach direkt zum Egg",
icon ="home",
range = { 1, 20 },
_0x946B = _0x7CDD.Farm.Halloween.MaxHouses,
flag ="HalloweenMaxHouses",
callback = function(_0x946B)
_0x7CDD.Farm.Halloween.MaxHouses = _0x946B
end,
})
_0xC340(_0xE816,"CreateSlider", {
_0x1566 ="AFK-Zeit am Egg",
description ="Minuten, bis die Haeuser wieder abgeklappert werden",
icon ="timer",
range = { 1, 30 },
_0x946B = 12,
flag ="HalloweenCooldown",
callback = function(_0x946B)
_0x7CDD.Farm.Halloween.Cooldown = _0x946B * 60
end,
})
_0xC340(_0xE816,"CreateToggle", {
_0x1566 ="Nach den Haeusern am Egg AFK",
description ="Aus = er bleibt stehen, wo er ist",
icon ="egg",
_0x946B = _0x7CDD.Farm.Halloween.AfkAtEgg,
flag ="HalloweenAfkEgg",
callback = function(_0x946B)
_0x7CDD.Farm.Halloween.AfkAtEgg = _0x946B
end,
})
_0xC340(_0xE816,"CreateButton", {
_0x1566 ="Halloween: Selbsttest",
description ="Im Event druecken - sagt in 10 Zeilen, woran es haengt",
icon ="stethoscope",
callback = function()
_0xF61A.halloweenCheck()
end,
})
_0xC340(_0xE816,"CreateButton", {
_0x1566 ="Debug: Wie bediene ich das?",
description ="Am Haus stehen und druecken - zeigt Prompt, Klick oder Taste",
icon ="help-circle",
callback = function()
_0xF61A.inspectNearest(40)
end,
})
_0xC340(_0xE816,"CreateButton", {
_0x1566 ="Debug: Prompts scannen",
description ="Zeigt jedes 'Druecke E' in der Naehe",
icon ="keyboard",
callback = function()
_0xF61A.dumpPrompts(500)
end,
})
_0xC340(_0xE816,"CreateButton", {
_0x1566 ="Test: E jetzt druecken",
description ="Schickt einmal die Taste, ohne Loop",
icon ="keyboard",
callback = function()
local _0xA49E, _0xA594 = _0xD6D1.pressKey(_0x7CDD.Farm.Halloween.Key or"E", 0.2)
_0xD731.log("test: Taste -> ".. (_0xA49E and ("ok per ".. tostring(_0xA594)) or tostring(_0xA594)))
_0xDA9B("Big Hub", _0xA49E and ("Taste geschickt per ".. tostring(_0xA594))
or tostring(_0xA594), 7)
end,
})
_0xC340(_0xE816,"CreateSlider", {
_0x1566 ="Sekunden pro Haus",
icon ="home",
range = { 0.5, 10 },
_0x946B = _0x7CDD.Farm.Halloween.HouseTime,
flag ="HalloweenHouseTime",
callback = function(_0x946B)
_0x7CDD.Farm.Halloween.HouseTime = _0x946B
end,
})
_0xC340(_0xE816,"CreateButton", {
_0x1566 ="Rekorder: nur Halloween (45s)",
description ="Druecken, dann EINE Runde per Hand spielen",
icon ="crosshair",
callback = function()
_0x5D7D.recordFocus("instancing", 45)
end,
})
_0xC340(_0xE816,"CreateButton", {
_0x1566 ="Debug: Umgebung scannen",
description ="Wie heissen die Objekte um dich herum wirklich?",
icon ="scan",
callback = function()
_0xF61A.dumpNearby(300, 30)
end,
})
_0xC340(_0xE816,"CreateButton", {
_0x1566 ="Debug: Instanzen zeigen",
description ="Wie heisst das Event wirklich?",
icon ="map-pinned",
callback = function()
_0xF61A.dumpInstances()
end,
})
_0xC340(_0xE816,"CreateButton", {
_0x1566 ="Debug: Gelerntes zeigen",
description ="Welche Instanz und Aktion der Hub mitbekommen hat",
icon ="graduation-cap",
callback = function()
_0xF61A.dumpLearnedInstancing()
end,
})
_0xC340(_0xE816,"CreateDivider", { _0x7366 ="Farming World"})
_0x665A.farmingworld = _0xC340(_0xE816,"CreateToggle", {
_0x1566 ="Farming World",
description ="Saeen, waessern, ernten - braucht erst den Rekorder",
icon ="leaf",
_0x946B = false,
flag ="FarmingWorldEnabled",
callback = function(_0x946B)
_0xDF10("farmingworld", _0x946B)
end,
})
_0xC340(_0xE816,"CreateDivider", { _0x7366 ="Lernen und Diagnose"})
_0xC340(_0xE816,"CreateText", {
_0x7366 ="Rekorder starten, dann im Spiel Egg oeffnen, Halloween-Runde ".."machen, saeen/ernten, Orb einsammeln. Eine Sitzung reicht fuer ".."alle Features. Danach Main-Tab -> Konsole kopieren.",
})
_0xC340(_0xE816,"CreateButton", {
_0x1566 ="Debug: Remote-Rekorder (60s)",
description ="Schreibt mit, welche Remotes feuern und mit welchen Argumenten",
icon ="radar",
callback = function()
_0x5D7D.record(60)
end,
})
_0xC340(_0xE816,"CreateButton", {
_0x1566 ="Remote-Check",
description ="Sagt fuer jedes Feature, ob sein Remote gefunden wird",
icon ="list-checks",
callback = function()
_0xF61A.checkRemotes()
end,
})
_0xC340(_0xE816,"CreateButton", {
_0x1566 ="Remotes weiter lernen (3 min)",
description ="Merkt sich echte Remote-Instanzen beim normalen Spielen",
icon ="graduation-cap",
callback = function()
if _0x5D7D.spy(false, true) then
_0x5D7D.learnUntil = os.clock() + 180
_0xD731.log("remotes: lerne weitere 180s mit")
_0xDA9B("Big Hub","Lerne 3 Minuten mit. Spiel normal weiter.", 7)
end
end,
})
_0xC340(_0xE816,"CreateButton", {
_0x1566 ="Debug: __THINGS dumpen",
description ="Zeigt alle Ordner, in denen PS99 seine Objekte haelt",
icon ="boxes",
callback = function()
_0xF61A.dumpThings()
end,
})
_0xC340(_0xE816,"CreateButton", {
_0x1566 ="Debug: Workspace dumpen",
description ="Oberste zwei Ebenen",
icon ="folder-tree",
callback = function()
_0xF61A.dumpWorkspace()
end,
})
local _0xEBA6 = _0xC340(_0xE816,"CreateProgress", {
_0x1566 ="Durchlauf",
icon ="loader",
range = { 0, 100 },
_0x946B = 0,
})
local _0x0E21 = _0xC340(_0xE816,"CreateStat", {
_0x1566 ="Ziele",
icon ="repeat",
_0x946B = 0,
compact = true,
changeMode ="absolute",
})_0xC340(_0xDB8B,"CreateText", {
_0x1566 ="Auto Hatch",
_0x7366 ="Benutzt die eingebaute Auto-Hatch des Spiels ".."(AutoHatch_Enable). Egg-Name und Anzahl stehen in ".."CONFIG.Farm.Eggs. Beim Ausschalten wird sie wieder deaktiviert.",
icon ="egg",
})
_0xC340(_0xDB8B,"CreateText", {
_0x1566 ="Aus der Config",
_0x7366 = tostring(_0x7CDD.Farm.Eggs.EggName) .."  x".. tostring(_0x7CDD.Farm.Eggs.Amount)
.."   Modus: ".. tostring(_0x7CDD.Farm.Eggs.Mode),
icon ="settings",
})
_0xC340(_0xDB8B,"CreateDropdown", {
_0x1566 ="Hatch-Weg",
description ="auto = Spiel hatcht, direct = jeder Durchlauf hatcht",
icon ="git-branch",
options = {"both","auto","direct"},
_0x946B = _0x7CDD.Farm.Eggs.Mode,
flag ="EggMode",
callback = function(choice)
_0x7CDD.Farm.Eggs.Mode = choice
_0xD731.log("eggs: Modus ".. tostring(choice))
end,
})
_0xC340(_0xDB8B,"CreateInput", {
_0x1566 ="Egg-Name",
description ="So heisst das Egg in der Welt",
placeholder ="Manor Egg",
icon ="egg",
_0x946B = _0x7CDD.Farm.Eggs.EggName,
flag ="EggName2",
callback = function(_0x7366)
_0x7CDD.Farm.Eggs.EggName = _0x8635(_0x7366 or"")
end,
})
_0xC340(_0xDB8B,"CreateToggle", {
_0x1566 ="Zum Egg fliegen und E druecken",
icon ="navigation",
_0x946B = _0x7CDD.Farm.Eggs.GoToEgg,
flag ="EggGoTo",
callback = function(_0x946B)
_0x7CDD.Farm.Eggs.GoToEgg = _0x946B
end,
})
_0xC340(_0xDB8B,"CreateToggle", {
_0x1566 ="Im Menue den groessten Knopf druecken",
description ="x28 vor x8 vor x3 - also immer so viele Eggs wie moeglich",
icon ="mouse-pointer-click",
_0x946B = _0x7CDD.Farm.Eggs.ClickMenu,
flag ="EggClickMenu",
callback = function(_0x946B)
_0x7CDD.Farm.Eggs.ClickMenu = _0x946B
end,
})
_0xC340(_0xDB8B,"CreateButton", {
_0x1566 ="Debug: Hatch-Knoepfe zeigen",
description ="Egg-Menue im Spiel offen lassen, dann druecken",
icon ="mouse-pointer-click",
callback = function()
_0xF61A.dumpHatchButtons()
end,
})
_0xC340(_0xDB8B,"CreateButton", {
_0x1566 ="Test: groessten Knopf klicken",
description ="Einmal klicken, ohne Loop",
icon ="hand",
callback = function()
local _0xA49E, _0xB92B, _0xC1C1 = _0xF61A.clickBestHatch(0)
_0xD731.log("test: Hatch-Knopf -> ".. (_0xA49E and ("geklickt ".. tostring(_0xB92B))
or tostring(_0xB92B)))
if _0xC1C1 then
_0xD731.log("test: ".. _0xC1C1.path)
end
_0xDA9B("Big Hub", _0xA49E and ("Geklickt: ".. tostring(_0xB92B))
or tostring(_0xB92B), 7)
end,
})
_0xC340(_0xDB8B,"CreateButton", {
_0x1566 ="Debug: Egg-Infos",
description ="Welches Egg wird gefunden, und wie lautet seine UID?",
icon ="info",
callback = function()
_0xF61A.dumpEgg()
end,
})
_0x665A.eggs = _0xC340(_0xDB8B,"CreateToggle", {
_0x1566 ="Auto Hatch",
description ="Haelt die Auto-Hatch des Spiels an",
icon ="play",
_0x946B = false,
flag ="EggsEnabled",
callback = function(_0x946B)
_0x0689.EggsEnabled = _0x946B
_0xDF10("eggs", _0x946B)
end,
})
_0xC340(_0xDB8B,"CreateDivider", { _0x7366 ="Discord-Webhook"})
_0xC340(_0xDB8B,"CreateText", {
_0x7366 ="URL hier einfuegen. Beim Start kommt eine Meldung, danach jedes ".."geschluepfte Pet nach der Einstellung unten. Das erste Pet wird ".."immer gemeldet. Gib die URL nicht weiter.",
icon ="webhook",
})
_0xC340(_0xDB8B,"CreateInput", {
_0x1566 ="Webhook-URL",
description ="https://discord.com/api/webhooks/...",
placeholder ="URL einfuegen",
icon ="link",
_0x946B = _0x7CDD.Farm.Webhook.Url,
flag ="WebhookUrl",
callback = function(_0x7366)
_0x7CDD.Farm.Webhook.Url = _0x8635(_0x7366 or"")
_0xD731.log("webhook: URL gesetzt ".. _0x4FF2.masked())
end,
})
_0xC340(_0xDB8B,"CreateDropdown", {
_0x1566 ="Was gemeldet wird",
description ="rare = nur Huge/Titanic/Exclusive",
icon ="filter",
options = {"rare","all","off"},
_0x946B = _0x7CDD.Farm.Webhook.Mode,
flag ="WebhookMode",
callback = function(choice)
_0x7CDD.Farm.Webhook.Mode = choice
_0xD731.log("webhook: Modus ".. tostring(choice))
end,
})
_0xC340(_0xDB8B,"CreateInput", {
_0x1566 ="Stichwoerter fuer 'rare'",
description ="mit Komma getrennt",
placeholder ="huge, titanic, exclusive",
icon ="tags",
_0x946B = table.concat(_0x7CDD.Farm.Webhook.Words,", "),
flag ="WebhookWords",
callback = function(_0x7366)
local _0x7F81 = {}
for word in tostring(_0x7366 or""):gmatch("[^,]+") do
local _0xA0B0 = _0x8635(word)
if _0xA0B0 ~=""then
table.insert(_0x7F81, _0xA0B0)
end
end
if #_0x7F81 > 0 then
_0x7CDD.Farm.Webhook.Words = _0x7F81
end
_0xD731.log("webhook: Stichwoerter ".. table.concat(_0x7CDD.Farm.Webhook.Words,", "))
end,
})
_0xC340(_0xDB8B,"CreateInput", {
_0x1566 ="Erwaehnung bei rare",
description ="z.B. <@123456789012345678>, leer = keine",
placeholder ="<@deine-id>",
icon ="at-sign",
_0x946B = _0x7CDD.Farm.Webhook.Ping,
flag ="WebhookPing",
callback = function(_0x7366)
_0x7CDD.Farm.Webhook.Ping = _0x8635(_0x7366 or"")
end,
})
_0x665A.hatchwatch = _0xC340(_0xDB8B,"CreateToggle", {
_0x1566 ="Pet-Webhook aktiv",
description ="Meldet geschluepfte Pets, auch beim Hatchen per Hand",
icon ="bell",
_0x946B = false,
flag ="HatchWatchEnabled",
callback = function(_0x946B)
_0xDF10("hatchwatch", _0x946B)
end,
})
_0xC340(_0xDB8B,"CreateToggle", {
_0x1566 ="Auch melden, welches Egg gestartet wurde",
description ="Aus = nur die gezogenen Pets",
icon ="egg",
_0x946B = _0x7CDD.Farm.Webhook.SendStart,
flag ="WebhookSendStart",
callback = function(_0x946B)
_0x7CDD.Farm.Webhook.SendStart = _0x946B
end,
})
_0xC340(_0xDB8B,"CreateButton", {
_0x1566 ="Webhook testen",
description ="Schickt eine Testnachricht",
icon ="send",
callback = function()
_0x4FF2.test()
end,
})
_0xC340(_0xDB8B,"CreateButton", {
_0x1566 ="Test: Pet-Meldung schicken",
description ="Nimmt ein Pet aus deinem Inventar und meldet es",
icon ="paw-print",
callback = function()
_0x4FF2.testPet()
end,
})
_0xC340(_0xDB8B,"CreateDivider", { _0x7366 ="Alt"})
_0xC340(_0xDB8B,"CreateDropdown", {
_0x1566 ="Egg-Typ (alt, ohne Funktion)",
icon ="egg",
options = {"Common","Rare","Epic","Legendary"},
_0x946B = _0x0689.EggType,
flag ="EggType",
callback = function(choice)
_0x0689.EggType = choice
end,
})
_0xC340(_0xDB8B,"CreateInput", {
_0x1566 ="Anzahl",
description ="0 = endlos",
icon ="hash",
numeric = true,
_0x946B = tostring(_0x0689.EggAmount),
flag ="EggAmount",
callback = function(_0x7366)
_0x0689.EggAmount = tonumber(_0x7366) or 0
end,
})
_0xC340(_0xDB8B,"CreateSlider", {
_0x1566 ="Intervall",
icon ="timer",
range = { 0, 3 },
_0x946B = _0x0689.EggInterval,
flag ="EggInterval",
callback = function(_0x946B)
_0x0689.EggInterval = _0x946B
end,
})
_0xC340(_0xDB8B,"CreateToggle", {
_0x1566 ="Bei voll stoppen",
icon ="octagon-alert",
_0x946B = _0x0689.EggStopFull,
flag ="EggStopFull",
callback = function(_0x946B)
_0x0689.EggStopFull = _0x946B
end,
})
local _0x9494 = _0xC340(_0xDB8B,"CreateProgress", {
_0x1566 ="Fortschritt",
icon ="loader",
range = { 0, 100 },
_0x946B = 0,
})
local _0x5692 = _0xC340(_0xDB8B,"CreateStat", {
_0x1566 ="Geoeffnet",
icon ="package-open",
_0x946B = 0,
compact = true,
changeMode ="absolute",
})_0xC340(_0x43EF,"CreateText", {
_0x1566 ="Pets versenden",
_0x7366 ="Empfaenger und Pet-Liste stehen oben im Script unter ".."CONFIG.Mailbox. Laeuft ueber das Remote - die Mailbox muss im ".."Spiel nicht offen sein. Erst 'Vorschau', dann 'Jetzt senden'.",
icon ="mail",
})
_0xC340(_0x43EF,"CreateText", {
_0x1566 ="Empfaenger (aus der Config)",
_0x7366 = (_0x5FA8.Recipient ~=""and _0x5FA8.Recipient or"NICHT GESETZT")
.."   |   Nachricht: ".. (_0x5FA8.Message ~=""and _0x5FA8.Message or"(leer)"),
icon ="user",
})
local _0x3C0B = _0xC340(_0x43EF,"CreateText", {
_0x1566 ="Status",
_0x7366 ="bereit",
icon ="activity",
})
_0xC340(_0x43EF,"CreateDivider", { _0x7366 ="Los"})
_0xC340(_0x43EF,"CreateButton", {
_0x1566 ="Vorschau: was wuerde raus",
description ="Liste in die Konsole, nichts wird angeklickt",
icon ="eye",
callback = function()
local _0x0229, _0x1C43, _0x0A9D = _0x5D7D.collect()
if not _0x0229 then
_0xD731.status("Vorschau fehlgeschlagen: ".. tostring(_0x1C43))
_0xDA9B("Big Hub", tostring(_0x1C43), 8)
return
end
_0xD731.log("--- Vorschau: ".. #_0x0229 .." von ".. tostring(_0x0A9D) .." ---")
for _0x036B, _0xB92B in ipairs(_0x0229) do
_0xD731.log("  + ".. _0xB92B.name .." [".. _0xB92B.variant
.. (_0xB92B.shiny and", shiny"or"") .."]".. (_0xB92B.locked and"  GESPERRT"or"")
.. (_0xB92B.equipped and"  ANGELEGT"or"")
.."  uid=".. tostring(_0xB92B.uid))
end
if #_0x0229 == 0 then
local _0xEC64 = 0
for _0x1566, _0x876F in pairs(_0x5D7D.lastReasons) do
_0xD731.log("  - ".. _0x1566 ..": ".. tostring(_0x876F))
_0xEC64 += 1
if _0xEC64 >= 12 then
break
end
end
end
_0xD731.status(#_0x0229 .." von ".. tostring(_0x0A9D) .." Pets passen")
_0xDA9B("Big Hub", #_0x0229 .." von ".. tostring(_0x0A9D) .." Pets passen zur Config.", 6)
end,
})
_0xC340(_0x43EF,"CreateToggle", {
_0x1566 ="Gesperrte Pets entsperren",
description ="Schloss weg, dann senden",
icon ="unlock",
_0x946B = _0x5FA8.UnlockLocked,
flag ="MailUnlock",
callback = function(_0x946B)
_0x5FA8.UnlockLocked = _0x946B
if _0x946B then
_0x5FA8.SkipLocked = false
end
end,
})
_0xC340(_0x43EF,"CreateButton", {
_0x1566 ="DIAGNOSE KOPIEREN",
description ="Prueft alles und legt das Ergebnis in die Zwischenablage",
icon ="clipboard-copy",
callback = function()
_0xDA9B("Big Hub","Diagnose laeuft...", 4)
_0x8373.set("status","Diagnose laeuft")
_0xD731.log("################ DIAGNOSE SCHLOSS ################")
local _0x81FA, _0x5D07 = _0x5D7D.pets()
_0xD731.log("Pets lesbar: ".. (_0x81FA and (#_0x81FA .." Stueck") or tostring(_0x5D07)))
_0x5D7D.dumpPetRaw()
_0x5D7D.dumpLockRemotes()local _0x0229, _0x5D8F, _0x0A9D = _0x5D7D.collect()
if _0x0229 then
_0xD731.log("passend zur Config: ".. #_0x0229 .." von ".. tostring(_0x0A9D))
for _0x036B, _0xB92B in ipairs(_0x0229) do
_0xD731.log("  + ".. _0xB92B.name .."  locked=".. tostring(_0xB92B.locked)
.."  uid=".. tostring(_0xB92B.uid))
end
local _0xEC64 = 0
for _0x1566, _0x876F in pairs(_0x5D7D.lastReasons) do
_0xD731.log("  - ".. _0x1566 ..": ".. tostring(_0x876F))
_0xEC64 += 1
if _0xEC64 >= 10 then
break
end
end
else
_0xD731.log("collect: ".. tostring(_0x5D8F))
end
_0xD731.log("Empfaenger: ".. tostring(_0x5FA8.Recipient))
_0xD731.log("UnlockLocked=".. tostring(_0x5FA8.UnlockLocked)
.."  SkipLocked=".. tostring(_0x5FA8.SkipLocked)
.."  LockKey='".. tostring(_0x5FA8.LockKey) .."'")
_0xD731.log("################ ENDE ################")
_0xD731.copyLog(220)
end,
})
_0xC340(_0x43EF,"CreateButton", {
_0x1566 ="Debug: Pet-Rohdaten",
description ="Zeigt die echten Feldnamen - daraus lesen wir das Schloss ab",
icon ="braces",
callback = function()
_0x5D7D.dumpPetRaw()
end,
})
_0xC340(_0x43EF,"CreateButton", {
_0x1566 ="Debug: Lock-Remotes zeigen",
description ="Welche Remotes mit 'lock' gibt es, wie viele Pets sind gesperrt",
icon ="lock",
callback = function()
_0x5D7D.dumpLockRemotes()
end,
})
_0xC340(_0x43EF,"CreateButton", {
_0x1566 ="Inventar lernen (15s)",
description ="Druecken, dann das Inventar im Spiel von Hand oeffnen",
icon ="graduation-cap",
callback = function()
_0x5D7D.learnInventory(15)
end,
})
_0xC340(_0x43EF,"CreateToggle", {
_0x1566 ="HUD-Knopf klicken (riskant)",
description ="Aus lassen: hat schon den Pets-Ablegen-Knopf getroffen",
icon ="triangle-alert",
_0x946B = _0x5FA8.AutoOpenInventory,
flag ="MailAutoInv",
callback = function(_0x946B)
_0x5FA8.AutoOpenInventory = _0x946B
if _0x946B then
_0xD731.log("inventar: Auto-Klick an - der Hub raet, welcher Knopf es ist")
end
end,
})
_0xC340(_0x43EF,"CreateToggle", {
_0x1566 ="Inventar offen halten",
description ="Macht es wieder auf, wenn das Spiel es schliesst",
icon ="pin",
_0x946B = _0x5FA8.KeepInventoryOpen,
flag ="MailKeepInv",
callback = function(_0x946B)
_0x5FA8.KeepInventoryOpen = _0x946B
_0x5D7D.keepInventoryOpen(_0x946B)
end,
})
_0xC340(_0x43EF,"CreateButton", {
_0x1566 ="Test: Inventar oeffnen",
description ="Klickt den Inventar-Knopf im Spiel",
icon ="backpack",
callback = function()
local _0xA49E, _0xA594 = _0x5D7D.openInventory()
_0xD731.log("test: Inventar -> ".. (_0xA49E and"offen"or"zu") .."  ".. tostring(_0xA594))
_0xDA9B("Big Hub", (_0xA49E and"Inventar offen: "or"Ging nicht: ")
.. tostring(_0xA594), 8)
end,
})
_0xC340(_0x43EF,"CreateButton", {
_0x1566 ="Debug: Inventar-Knoepfe zeigen",
description ="Welche Knoepfe im HUD koennten das Inventar sein?",
icon ="search",
callback = function()
_0x5D7D.dumpInventoryButtons()
end,
})
_0xC340(_0x43EF,"CreateButton", {
_0x1566 ="Test: Pet per Rechtsklick freischalten",
description ="Inventar im Spiel offen lassen, dann druecken",
icon ="mouse-pointer-2",
callback = function()
local _0x81FA = _0x5D7D.pets()
if not _0x81FA or #_0x81FA == 0 then
_0xDA9B("Big Hub","Keine Pets lesbar.", 7)
return
endlocal _0xF891
for _0x036B, _0xB92B in ipairs(_0x81FA) do
if _0xB92B.locked then
_0xF891 = _0xB92B
break
end
end
_0xF891 = _0xF891 or _0x81FA[1]
_0xD731.log("test: Rechtsklick-Entsperren fuer ".. _0xF891.name
.." uid=".. tostring(_0xF891.uid))
local _0xA49E, _0xA594 = _0x5D7D.unlockViaGui(_0xF891)
_0xD731.log("test: -> ".. (_0xA49E and"geklickt"or"ging nicht") .."  ".. tostring(_0xA594))
_0xDA9B("Big Hub", (_0xA49E and"Freischalten geklickt: "or"Ging nicht: ")
.. tostring(_0xA594), 9)
end,
})
_0xC340(_0x43EF,"CreateButton", {
_0x1566 ="Debug: Pet-Eintraege im Inventar",
description ="Findet der Hub die Pets in der Spiel-UI?",
icon ="list",
callback = function()
_0x5D7D.dumpPetEntries()
end,
})
_0xC340(_0x43EF,"CreateButton", {
_0x1566 ="Test: erstes gesperrtes Pet entsperren",
description ="Probiert die Kombinationen durch und prueft am Save",
icon ="key",
callback = function()
local _0x81FA = _0x5D7D.pets()
if not _0x81FA then
_0xDA9B("Big Hub","Inventar nicht lesbar.", 7)
return
end
for _0x036B, _0xB92B in ipairs(_0x81FA) do
if _0xB92B.locked then
_0xD731.log("test: entsperre ".. _0xB92B.name .." uid=".. tostring(_0xB92B.uid))
local _0xA49E, _0xA594 = _0x5D7D.unlock(_0xB92B)
_0xD731.log("test: -> ".. (_0xA49E and"offen"or"zu") .."  (".. tostring(_0xA594) ..")")
_0xDA9B("Big Hub", _0xA49E and ("Entsperrt: ".. _0xB92B.name)
or ("Ging nicht: ".. tostring(_0xA594)), 8)
return
end
end
_0xD731.log("test: kein gesperrtes Pet im Inventar")
_0xDA9B("Big Hub","Kein gesperrtes Pet gefunden.", 6)
end,
})
_0xC340(_0x43EF,"CreateButton", {
_0x1566 ="Merkliste leeren",
description ="Hebt die Sperre fuer schon gesendete Pets dieser Sitzung auf",
icon ="rotate-ccw",
callback = function()
local _0x2B74 = 0
for _0x036B in pairs(_0x5D7D.sentUids) do
_0x2B74 += 1
end
_0x5D7D.sentUids = {}
_0xD731.status("Merkliste geleert (".. _0x2B74 .." UIDs)")
_0xDA9B("Big Hub","Merkliste geleert: ".. _0x2B74 .." UIDs.", 5)
end,
})
_0xC340(_0x43EF,"CreateButton", {
_0x1566 ="Jetzt senden",
description ="Am Postkasten stehen. Prueft nach jedem Pet, ob es weg ist.",
icon ="send",
callback = function()
_0x5D7D.send()
end,
})
_0xC340(_0x43EF,"CreateButton", {
_0x1566 ="ENTSPERREN + SENDEN",
description ="Inventar auf, Schloesser weg, dann alles raus",
icon ="unlock-keyhole",
callback = function()
_0xD731.log("################ ENTSPERREN + SENDEN ################")
_0x8373.set("status","entsperren + senden")local _0xDCD0, _0xA594 = _0x5D7D.openInventory()
_0xD731.log("1. Inventar: ".. tostring(_0xA594))
_0x5D7D.keepInventoryOpen(true)local _0x0229, _0x1C43, _0x0A9D = _0x5D7D.collect()
if not _0x0229 then
_0xD731.log("2. ".. tostring(_0x1C43))
_0xDA9B("Big Hub", tostring(_0x1C43), 8)
return
end
_0xD731.log("2. ".. #_0x0229 .." von ".. tostring(_0x0A9D) .." Pets passen zur Config")
local _0x31A4, _0x8494 = 0, 0
for _0xBE19, _0xB92B in ipairs(_0x0229) do
local _0xA49E, _0x876F = _0x5D7D.unlockAlways(_0xB92B)
if _0xA49E then
_0x31A4 += 1
else
_0x8494 += 1
if _0x8494 <= 3 then
_0xD731.log("   Schloss bei ".. _0xB92B.name ..": ".. tostring(_0x876F))
end
end
if _0xBE19 % 10 == 0 then
_0x8373.set("target","entsperre ".. _0xBE19 .."/".. #_0x0229)
end
end
_0xD731.log("3. entsperrt: ".. _0x31A4 ..", fehlgeschlagen: ".. _0x8494)_0xD731.log("4. Versand startet")
_0x5D7D.send()
end,
})
_0xC340(_0x43EF,"CreateButton", {
_0x1566 ="Test: nur ein Pet",
description ="Schickt das erste Pet der Vorschau und prueft nach",
icon ="flask-conical",
callback = function()
local _0x8879 = _0x5FA8.MaxPerMail
_0x5FA8.MaxPerMail = 1
_0x5D7D.send()
_0x5FA8.MaxPerMail = _0x8879
end,
})
_0xC340(_0x43EF,"CreateDivider", { _0x7366 ="Debug"})
_0xC340(_0x43EF,"CreateText", {
_0x7366 ="Reihenfolge: 1. Spion an  2. EIN Pet per Hand ueber die ".."Spiel-Mailbox verschicken  3. Main-Tab -> Konsole kopieren. ".."Damit steht die genaue Form der Remote-Argumente fest.",
})
_0xC340(_0x43EF,"CreateButton", {
_0x1566 ="Debug: Remote-Spion an",
description ="Danach EIN Pet per Hand senden - zeigt die Argumente",
icon ="ear",
callback = function()
_0x5D7D.spy(true)
end,
})
_0xC340(_0x43EF,"CreateButton", {
_0x1566 ="Debug: ALLES mitlesen (25s)",
description ="Liest jeden Remote-Aufruf mit. Danach sofort senden.",
icon ="radar",
callback = function()
_0x5D7D.spyEverything(25)
end,
})
_0xC340(_0x43EF,"CreateButton", {
_0x1566 ="Debug: MailLog dumpen",
description ="Zeigt, wie das Spiel verschickte Items speichert",
icon ="history",
callback = function()
_0x5D7D.dumpMailLog()
end,
})
_0xC340(_0x43EF,"CreateButton", {
_0x1566 ="Debug: Mailbox-Daten lesen",
description ="Fragt 'Mailbox: Request' ab, aendert nichts",
icon ="inbox",
callback = function()
_0x5D7D.dumpRequest()
end,
})
_0xC340(_0x43EF,"CreateButton", {
_0x1566 ="Debug: Fenster-Scanner (20s)",
description ="Druecken, dann Mailbox im Spiel oeffnen",
icon ="scan-search",
callback = function()
_0x5D7D.watch(20)
end,
})
_0xC340(_0x43EF,"CreateButton", {
_0x1566 ="Debug: Kandidaten zeigen",
description ="Welche Fenster der Hub als Mailbox in Betracht zieht",
icon ="target",
callback = function()
_0x5D7D.dumpCandidates()
end,
})
_0xC340(_0x43EF,"CreateButton", {
_0x1566 ="Debug: Fenster auflisten",
description ="Alle Fenster mit Textfeldern",
icon ="layout-list",
callback = function()
_0x5D7D.listGuis()
end,
})
_0xC340(_0x43EF,"CreateButton", {
_0x1566 ="Debug: Mailbox dumpen",
description ="Aufbau des Sendefensters",
icon ="bug",
callback = function()
_0x5D7D.dumpGui()
end,
})
_0xC340(_0x43EF,"CreateButton", {
_0x1566 ="Pet-Namen pruefen",
description ="Vergleicht CONFIG.Mailbox.Pets mit dem Pet-Katalog",
icon ="spell-check",
callback = function()
_0x5D7D.checkNames()
end,
})
_0xC340(_0x43EF,"CreateButton", {
_0x1566 ="Debug: Pet-Katalog dumpen",
description ="ReplicatedStorage.__DIRECTORY.Pets",
icon ="book",
callback = function()
_0x5D7D.dumpDirectory()
end,
})
_0xC340(_0x43EF,"CreateButton", {
_0x1566 ="Debug: Spieldaten dumpen",
description ="Aufbau der Save-Daten, findet die Pet-Liste",
icon ="folder-tree",
callback = function()
_0x5D7D.dumpSave()
end,
})
_0xC340(_0x43EF,"CreateButton", {
_0x1566 ="Debug: Inventar dumpen",
description ="Echte Pet-Namen und Feldnamen",
icon ="database",
callback = function()
_0x5D7D.dumpPets()
end,
})
_0xC340(_0x43EF,"CreateButton", {
_0x1566 ="Debug: Remotes suchen",
description ="Remotes mit mail/gift/send/trade",
icon ="radio",
callback = function()
_0x5D7D.dumpRemotes()
end,
})_0xC340(_0x2CFD,"CreateText", {
_0x1566 ="Aktionen",
_0x7366 ="Einmalige Aktionen, kein Loop.",
icon ="zap",
})
for _0x036B, _0x2F35 in ipairs(_0xC36F.buttons) do
_0xC340(_0x2CFD,"CreateButton", {
_0x1566 = _0x2F35.name,
description = _0x2F35.description,
icon = _0x2F35.icon,
callback = function()
_0x2F35.run()
_0xD731.countAction()
end,
})
end_0xC340(_0xE59E,"CreateToggle", {
_0x1566 ="Overlay auf dem Bildschirm",
description ="Die Anzeige links oben mit Status, Ziel und Zaehler",
icon ="monitor",
_0x946B = true,
flag ="OverlayOn",
callback = function(_0x946B)
_0x8373.setVisible(_0x946B)
end,
})
_0xC340(_0xE59E,"CreateDropdown", {
_0x1566 ="Theme",
icon ="palette",
options = {"default","cobalt","ember"},
_0x946B = _0x7CDD.Theme,
flag ="Theme",
callback = function(choice)
if _0xF2E9("ChangeTheme") then
_0xEACC:ChangeTheme(choice)
else
_0xD731.log("ChangeTheme fehlt in dieser Version")
end
end,
})
_0xC340(_0xE59E,"CreateButton", {
_0x1566 ="Speichern",
icon ="save",
callback = function()
if not _0xF2E9("Save") then
_0xD731.notify({ _0xE8B1 ="Nicht verfuegbar", _0x21E5 ="window:Save fehlt."})
return
end
local _0xA49E = _0xEACC:Save()
_0xD731.notify({
_0xE8B1 = _0xA49E ~= false and"Gespeichert"or"Fehlgeschlagen",
_0x21E5 = _0xA49E ~= false and"Konfiguration geschrieben."or"Konnte nicht speichern.",
})
end,
})
local function _0x3F25()
_0xE8B3()
if _0xF2E9("Unload") then
_0xEACC:Unload()
else
_0xD731.notify({ _0xE8B1 ="Nicht verfuegbar", _0x21E5 ="window:Unload fehlt."})
end
end
_0xC340(_0xE59E,"CreateButton", {
_0x1566 ="UI entladen",
description ="Schliesst das Interface komplett",
icon ="power",
callback = function()
_0xB471({
_0xE8B1 ="Entladen?",
_0x21E5 ="Das Interface wird zerstoert.",
options = {
{ _0x7366 ="Abbrechen"},
{ _0x7366 ="Entladen", style ="danger", callback = _0x3F25 },
},
}, _0x3F25)
end,
})
_0xC340(_0xE59E,"CreateDivider", { _0x7366 ="Credits"})
_0xC340(_0xE59E,"CreateText", {
_0x1566 ="Made by ".. _0x7CDD.Author,
_0x7366 = _0x7CDD.Name .." v5.5",
icon ="user",
})local _0xBC32 = 0_0xD731.log = function(line)
local _0x7366 = os.date("[%H:%M:%S] ") .. tostring(line)
pcall(print,"[BigHub] ".. _0x7366)table.insert(_0x2EE1, _0x7366)
if #_0x2EE1 > _0x34F3 then
table.remove(_0x2EE1, 1)
end
pcall(function()
_0xF673:Append(_0x7366)
end)
pcall(function()
local _0x465E = tostring(line)
if #_0x465E > 44 then
_0x465E = _0x465E:sub(1, 44) .."..."end
_0x8373.set("last", _0x465E)
end)
endlocal function _0xBD84()
local _0x8216 = {}
for _0x1566, _0xC129 in pairs(_0x6562) do
if _0xC129.running then
table.insert(_0x8216, _0x1566)
end
end
table.sort(_0x8216)
_0x8373.set("loops", #_0x8216 > 0 and table.concat(_0x8216,", ") or"nichts")
if #_0x8216 == 0 then
pcall(function()
_0x8373.title.Text = _0x7CDD.Name .."  |  bereit"end)
end
end
_0xD731.refreshLoops = _0xBD84
_0xD731.notify = function(cfg)
cfg = cfg or {}
_0xD731.log("notify: ".. tostring(cfg.title) .." - ".. tostring(cfg.content))
if _0xF2E9("Notify") then
pcall(_0xEACC.Notify, _0xEACC, cfg)
else
_0xDA9B(cfg.title, cfg.content, cfg.duration)
end
end
_0xD731.toast = function(cfg)
cfg = cfg or {}
_0xD731.log("toast: ".. tostring(cfg.title) .." - ".. tostring(cfg.subtitle))
if _0xF2E9("Toast") then
pcall(_0xEACC.Toast, _0xEACC, cfg)
elseif _0xF2E9("Notify") then
pcall(_0xEACC.Notify, _0xEACC, { _0xE8B1 = cfg.title, _0x21E5 = cfg.subtitle, icon = cfg.icon })
else
_0xDA9B(cfg.title, cfg.subtitle, cfg.duration)
end
end_0xD731.status = function(_0x7366)
_0xD731.log("status: ".. tostring(_0x7366))
_0x8373.set("status", _0x7366)
for _0x036B, _0xC48F in ipairs({"Set","SetText","Update"}) do
if type(_0x3C0B[_0xC48F]) =="function"then
local _0xA49E = pcall(function()
_0x3C0B[_0xC48F](_0x3C0B, { _0x7366 = tostring(_0x7366) })
end)
if not _0xA49E then
_0xA49E = pcall(function()
_0x3C0B[_0xC48F](_0x3C0B, tostring(_0x7366))
end)
end
if _0xA49E then
return
end
end
end
end
_0xD731.farmProgress = function(_0x946B)
pcall(function()
_0xEBA6:Set(_0x946B)
_0x0E21:Set(_0x6562.farm.ticks)
end)
end
_0xD731.eggProgress = function(_0x946B)
pcall(function()
_0x9494:Set(_0x946B)
_0x5692:Set(_0x6562.eggs.ticks)
end)
end
_0xD731.countAction = function()
_0xBC32 += 1
pcall(function()
_0x1B21:Set(_0xBC32)
end)
_0x8373.set("actions", _0xBC32)
_0x8373.pulse()
end
_0xD731.stopAllLoops = _0xE8B3_0xD731.copyLog = function(_0x2B74)
_0x2B74 = tonumber(_0x2B74) or 200
local _0x4847 = math.max(#_0x2EE1 - _0x2B74 + 1, 1)
local _0x645E = {}
for _0xBE19 = _0x4847, #_0x2EE1 do
table.insert(_0x645E, _0x2EE1[_0xBE19])
end
local _0x7366 = table.concat(_0x645E,"\n")
if type(setclipboard) ~="function"then
_0xDA9B("Big Hub","Dein Executor kann nicht kopieren. Log steht im Main-Tab.", 9)
return false, 0
end
local _0xA49E = pcall(setclipboard, _0x7366)
if _0xA49E then
_0xDA9B("Big Hub", #_0x645E .." Zeilen kopiert. Jetzt einfuegen.", 8)
_0x8373.set("status", #_0x645E .." Zeilen kopiert")
else
_0xDA9B("Big Hub","Kopieren fehlgeschlagen.", 7)
end
return _0xA49E, #_0x645E
endtask.spawn(function()
local _0xB5DD = os.clock()
while not _0xEACC.unloaded do
task.wait(1)
if _0xEACC.unloaded then
break
end
pcall(function()
_0x6FBD:Set(math.floor(os.clock() - _0xB5DD))
end)local _0x0DF8 = false
for _0x036B, _0xC129 in pairs(_0x6562) do
if _0xC129.running then
_0x0DF8 = true
break
end
end
if _0x0DF8 then
_0x8373.pulse()
end
end
end)if _0x5733 > 0 then
warn("[BigHub] ".. _0x5733 .." Element(e) konnten nicht erstellt werden.")
_0xDA9B("Big Hub", _0x5733 .." UI-Elemente fehlen, siehe Warnungen.", 8)
else
_0xD731.log("start: alles geladen")
end_0x8373.build()
_0x8373.set("status","geladen, ".. _0x5733 .." Fehler")
_0x8373.set("loops","nichts")
_0x8373.set("actions", 0)
_0x8373.set("target","-")
_0xD731.log("Hub geladen, ".. _0x5733 .." Fehler")
_0xDA9B("Big Hub","v5.5 geladen".. (_0x5733 > 0 and (", ".. _0x5733 .." Fehler") or""), 4)
do
local _0xA49E, _0x1C43 = pcall(_0xC36F.onExecute)
if not _0xA49E then
_0xD731.log("fehler in onExecute: ".. tostring(_0x1C43))
end
end
if not _0x7CDD.RequireKey then
_0x31A4 = true
_0xD731.log("Key-Gate aus")
pcall(function()
_0xEACC:Navigate("Main")
end)
elseif _0x5FE2 then_0xD731.log("key: vor dem Menue akzeptiert (".. tostring(_0xDFFA) ..")")
_0x8742(_0xDFFA or"input")
else_0xD731.log("key: kein eigenes Fenster moeglich, benutze den Key-Tab")
_0x8373.set("status","Enter your license key")
_0xDA9B("Big Hub","Enter your license key - Tab 'Key'.", 8)
pcall(function()
_0xEACC:Navigate("Key")
end)
end
