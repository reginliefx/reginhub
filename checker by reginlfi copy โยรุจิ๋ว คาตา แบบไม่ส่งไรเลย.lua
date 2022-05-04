getgenv().Settings = {
    ["LineToken"] = "",
    ["CheckTask"] = {
        ["Fruit"] = "ไม่มีผลน้าบอุนจิ ❌",
        ["Money"] = "เงินยังไม่ครบ ❌",
        ["Yama"] = "No ❌",
        ["Buddy"] = "No ❌",
        ["Hallow"] = "No ❌",
        ["Dark Dagger"] = "No ❌",
        ["Spikey Trident"] = "No ❌",
        ["Success"] = "No ❌"
    }
}

local function SendNotify(message) 
    local response = syn.request({
        Url = "https://notify-api.line.me/api/notify",
        Method = "POST",
        Headers = {
            ["Authorization"] = "Bearer " .. getgenv().Settings['LineToken'],
            ["Content-Type"] = "application/x-www-form-urlencoded"
        },
        Body = "message=" .. message
    })
end

local function SendTask()
    local tasklist = game.Players.LocalPlayer.Name .. "\n"
    table.foreach(getgenv().Settings["CheckTask"], function(task, stat)
        tasklist = tasklist .. task .. " : " .. stat .. "\n"
    end)
    SendNotify(tasklist)
end

--find old ui
if game.CoreGui:FindFirstChild("hehe") then 
    game.CoreGui:FindFirstChild("hehe"):Destroy() 
end

--create ScreenGui
local className = "ScreenGui"
local parent = game.CoreGui
local part = Instance.new(className, parent)
part.Name = "hehe"

wait(.5)

--create TextLabel
local className = "TextLabel"
local parent = game.CoreGui.hehe
local Text = Instance.new(className, parent)

--setting TextLabel
Text.Name = "textname"
Text.Text = game:GetService("Players").LocalPlayer.Name
Text.Position = UDim2.new(0, 90, 0, 25)
Text.TextSize = 25
Text.TextColor3 = Color3.new(255,255,255)
Text.TextStrokeTransparency = 0

--create TextLabel
local className = "TextLabel"
local parent = game.CoreGui.hehe
local TextDF = Instance.new(className, parent)

--setting TextLabel
TextDF.Name = "TextDF"
TextDF.TextSize = 30
TextDF.TextStrokeTransparency = 0

--create TextLabel
local className = "TextLabel"
local parent = game.CoreGui.hehe
local TextMN = Instance.new(className, parent)

--setting TextLabel
TextMN.Name = "TextMN"
TextMN.TextSize = 30
TextMN.TextColor3 = Color3.new(255,255,255)
TextMN.TextStrokeTransparency = 0

--create TextLabel
local className = "TextLabel"
local parent = game.CoreGui.hehe
local TextFN = Instance.new(className, parent)

--setting TextLabel
TextFN.Name = "TextFN"
TextFN.TextSize = 30
TextFN.TextColor3 = Color3.new(255,255,255)
TextFN.TextStrokeTransparency = 0

--create TextLabel
local className = "TextLabel"
local parent = game.CoreGui.hehe
local TextYM = Instance.new(className, parent)

--setting TextLabel
TextYM.Name = "TextYM"
TextYM.TextSize = 30
TextYM.TextColor3 = Color3.new(255,255,255)
TextYM.TextStrokeTransparency = 0

--create TextLabel
local className = "TextLabel"
local parent = game.CoreGui.hehe
local TextBD = Instance.new(className, parent)

--setting TextLabel
TextBD.Name = "TextBD"
TextBD.TextSize = 30
TextBD.TextColor3 = Color3.new(255,255,255)
TextBD.TextStrokeTransparency = 0

--create TextLabel
local className = "TextLabel"
local parent = game.CoreGui.hehe
local TextHS = Instance.new(className, parent)

--setting TextLabel
TextHS.Name = "TextHS"
TextHS.TextSize = 30
TextHS.TextColor3 = Color3.new(255,255,255)
TextHS.TextStrokeTransparency = 0

--create TextLabel
local className = "TextLabel"
local parent = game.CoreGui.hehe
local TextDG = Instance.new(className, parent)

--setting TextLabel
TextDG.Name = "TextDG"
TextDG.TextSize = 30
TextDG.TextColor3 = Color3.new(255,255,255)
TextDG.TextStrokeTransparency = 0

--create TextLabel
local className = "TextLabel"
local parent = game.CoreGui.hehe
local TextST = Instance.new(className, parent)

--setting TextLabel
TextST.Name = "TextST"
TextST.TextSize = 30
TextST.TextColor3 = Color3.new(255,255,255)
TextST.TextStrokeTransparency = 0

function turnoffui()
    game:GetService("Players").LocalPlayer.PlayerGui.Main.Settings.Visible = false
    game:GetService("Players").LocalPlayer.PlayerGui.Main.Compass.Visible = false
    game:GetService("Players").LocalPlayer.PlayerGui.Main.Code.Visible = false
    game:GetService("Players").LocalPlayer.PlayerGui.Main.Mute.Visible = false
    game:GetService("Players").xl7omantic.PlayerGui.Main.CrewButton.Visible = false
end

function dfcheck()
    DFNAME = game:GetService("Players").LocalPlayer.Data.DevilFruit.Value
    --MAS = game:GetService("Players").LocalPlayer.Backpack[DFNAME].Level.Value
    print(DFNAME)
    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(DFNAME) then
    if DFNAME == "Soul-Soul" then
        DFMAS = 350
    elseif DFNAME == "Dragon-Dragon" then
        DFMAS = 350
    elseif DFNAME == "Venom-Venom" then
        DFMAS = 300
    elseif DFNAME == "Human-Human: Buddha" then
        DFMAS = 200
    elseif DFNAME == "Quake-Quake" then
        DFMAS = 150
    elseif DFNAME == "Dark-Dark" then
        DFMAS = 110
    elseif DFNAME == "Ice-Ice" then
        DFMAS = 110
    end
    MAS = game:GetService("Players").LocalPlayer.Backpack[DFNAME].Level.Value
    if MAS >= DFMAS then
        DFFN = true
        TextDF.Position = UDim2.new(0, 85, 0, 60)
        TextDF.TextColor3 = Color3.fromHex("#64ff64")
        TextDF.Text = "มาสผลครบ"
        getgenv().Settings["CheckTask"]["Fruit"] = "มาสผลครบ ✔️"
    else
        DFFN = false
        TextDF.Position = UDim2.new(0, 120, 0, 60)
        TextDF.TextColor3 = Color3.fromHex("#ff3232")
        TextDF.Text = "มาสผลยังไม่ครบ"
        getgenv().Settings["CheckTask"]["Fruit"] = "มาสผลยังไม่ครบ ❌"
    end
    else
        DFFN = false
        TextDF.Position = UDim2.new(0, 110, 0, 60)
        TextDF.TextColor3 = Color3.fromHex("#ff3232")
        TextDF.Text = "ไม่มีผลน้าบอุนจิ"
        getgenv().Settings["CheckTask"]["Fruit"] = "ไม่มีผลน้าบอุนจิ ❌"
    end
end

function moneycheck()
    MONEY = game:GetService("Players").LocalPlayer.Data.Beli.Value
    if MONEY >= 15000000 then
        MNFN = true
        TextMN.Position = UDim2.new(0, 90, 0, 95)
        TextMN.TextColor3 = Color3.fromHex("#64ff64")
        TextMN.Text = "เงินครบแล้ว"
        getgenv().Settings["CheckTask"]["Money"] = "เงินครบแล้ว ✔️"
    elseif MONEY <= 15000000 then
        MNFN = false
        TextMN.Position = UDim2.new(0, 97, 0, 95)
        TextMN.TextColor3 = Color3.fromHex("#ff3232")
        TextMN.Text = "เงินยังไม่ครบ"
        getgenv().Settings["CheckTask"]["Money"] = "เงินยังไม่ครบ ❌"
    end
end

function checkyama()
    game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Visible = true
    wait(0.3)
    nowYM = game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Container.Current.ScrollingFrame.Frame
    invenYM = game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Container.Stored.ScrollingFrame.Frame
    nowYAMA = nowYM:FindFirstChild("Yama")
    invenYAMA = invenYM:FindFirstChild("Yama")
    if nowYAMA then
        print("Have Yama in hand")
        YMFN = true
        TextYM.Position = UDim2.new(0, 55, 0, 130)
        TextYM.TextColor3 = Color3.fromHex("#64ff64")
        TextYM.Text = "มียามะ"
        getgenv().Settings["CheckTask"]["Yama"] = "Yes ✔️"
    elseif invenYAMA then
        print("Have Yama in inven")
        YMFN = true
        TextYM.Position = UDim2.new(0, 55, 0, 130)
        TextYM.TextColor3 = Color3.fromHex("#64ff64")
        TextYM.Text = "มียามะ"
        getgenv().Settings["CheckTask"]["Yama"] = "Yes ✔️"
    else
        print("No Yama Bitch")
        YMFN = false
        TextYM.Position = UDim2.new(0, 70, 0, 130)
        TextYM.TextColor3 = Color3.fromHex("#ff3232")
        TextYM.Text = "ไม่มียามะ"
        getgenv().Settings["CheckTask"]["Yama"] = "No ❌"
    end
    game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Visible = false
end

function checkbuddy()
    game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Visible = true
    wait(0.3)
    nowBD = game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Container.Current.ScrollingFrame.Frame
    invenBD = game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Container.Stored.ScrollingFrame.Frame
    nowBUD = nowBD:FindFirstChild("Buddy Sword")
    invenBUD = invenBD:FindFirstChild("Buddy Sword")
    if nowBUD then
        print("Have Buddy in hand")
        BDFN = true
        TextBD.Position = UDim2.new(0, 55, 0, 165)
        TextBD.TextColor3 = Color3.fromHex("#64ff64")
        TextBD.Text = "มีบัดดี้"
        getgenv().Settings["CheckTask"]["Buddy"] = "Yes ✔️"
    elseif invenBUD then
        print("Have Buddy in inven")
        BDFN = true
        TextBD.Position = UDim2.new(0, 55, 0, 165)
        TextBD.TextColor3 = Color3.fromHex("#64ff64")
        TextBD.Text = "มีบัดดี้"
        getgenv().Settings["CheckTask"]["Buddy"] = "Yes ✔️"
    else
        print("No Buddy Bitch")
        BDFN = false
        TextBD.Position = UDim2.new(0, 60, 0, 165)
        TextBD.TextColor3 = Color3.fromHex("#ff3232")
        TextBD.Text = "ไม่บัดดี้"
        getgenv().Settings["CheckTask"]["Buddy"] = "No ❌"
    end
    game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Visible = false
end

function checkhallow()
    game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Visible = true
    wait(0.3)
    nowHS = game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Container.Current.ScrollingFrame.Frame
    invenHS = game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Container.Stored.ScrollingFrame.Frame
    nowHSS = nowHS:FindFirstChild("Hallow Scythe")
    invenHSS = invenHS:FindFirstChild("Hallow Scythe")
    if nowHSS then
        print("Have Hallow in hand")
        HSFN = true
        TextHS.Position = UDim2.new(0, 70, 0, 200)
        TextHS.TextColor3 = Color3.fromHex("#64ff64")
        TextHS.Text = "มีเคียว"
        getgenv().Settings["CheckTask"]["Hallow"] = "Yes ✔️"
    elseif invenHSS then
        print("Have Hallow in inven")
        HSFN = true
        TextHS.Position = UDim2.new(0, 70, 0, 200)
        TextHS.TextColor3 = Color3.fromHex("#64ff64")
        TextHS.Text = "มีเคียว"
        getgenv().Settings["CheckTask"]["Hallow"] = "Yes ✔️"
    else
        print("No Hallow Bitch")
        HSFN = false
        TextHS.Position = UDim2.new(0, 75, 0, 200)
        TextHS.TextColor3 = Color3.fromHex("#ff3232")
        TextHS.Text = "ไม่มีเคียว"
        getgenv().Settings["CheckTask"]["Hallow"] = "No ❌"
    end
    game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Visible = false
end

function checkdagger()
    game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Visible = true
    wait(0.3)
    nowDG = game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Container.Current.ScrollingFrame.Frame
    invenDG = game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Container.Stored.ScrollingFrame.Frame
    nowDDG = nowHS:FindFirstChild("Dark Dagger")
    invenDDG = invenHS:FindFirstChild("Dark Dagger")
    if nowDDG then
        print("Have Dark Dag in hand")
        DGFN = true
        TextDG.Position = UDim2.new(0, 65, 0, 235)
        TextDG.TextColor3 = Color3.fromHex("#64ff64")
        TextDG.Text = "มีโยรุจิ๋ว"
        getgenv().Settings["CheckTask"]["Dark Dagger"] = "Yes ✔️"
    elseif invenDDG then
        print("Have Dark Dag in inven")
        DGFN = true
        TextDG.Position = UDim2.new(0, 65, 0, 235)
        TextDG.TextColor3 = Color3.fromHex("#64ff64")
        TextDG.Text = "มีโยรุจิ๋ว"
        getgenv().Settings["CheckTask"]["Dark Dagger"] = "Yes ✔️"
    else
        print("No Dark Dag Bitch")
        DGFN = false
        TextDG.Position = UDim2.new(0, 55, 0, 235)
        TextDG.TextColor3 = Color3.fromHex("#ff3232")
        TextDG.Text = "ไม่มีโยรุจิ๋ว"
        getgenv().Settings["CheckTask"]["Dark Dagger"] = "No ❌"
    end
    game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Visible = false
end

function checkspikey()
    game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Visible = true
    wait(0.3)
    nowST = game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Container.Current.ScrollingFrame.Frame
    invenST = game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Container.Stored.ScrollingFrame.Frame
    nowSST = nowHS:FindFirstChild("Spikey Trident")
    invenSST = invenHS:FindFirstChild("Spikey Trident")
    if nowSST then
        print("Have Spikey in hand")
        STFN = true
        TextST.Position = UDim2.new(0, 65, 0, 270)
        TextST.TextColor3 = Color3.fromHex("#64ff64")
        TextST.Text = "มีหอกคาตา"
        getgenv().Settings["CheckTask"]["Spikey Trident"] = "Yes ✔️"
    elseif invenSST then
        print("Have Spikey in inven")
        STFN = true
        TextST.Position = UDim2.new(0, 65, 0, 270)
        TextST.TextColor3 = Color3.fromHex("#64ff64")
        TextST.Text = "มีหอกคาตา"
        getgenv().Settings["CheckTask"]["Spikey Trident"] = "Yes ✔️"
    else
        print("No Spikey Bitch")
        STFN = false
        TextST.Position = UDim2.new(0, 107, 0, 270)
        TextST.TextColor3 = Color3.fromHex("#ff3232")
        TextST.Text = "ไม่มีหอกคาตา"
        getgenv().Settings["CheckTask"]["Spikey Trident"] = "No ❌"
    end
    game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Visible = false
end

function FNcheck()
    if DFFN and MNFN and YMFN and BDFN and HSFN and DGFN and STFN then
        TextFN.Position = UDim2.new(0, 155, 0, 305)
        TextFN.TextColor3 = Color3.fromHex("#64ff64")
        TextFN.Text = "ไก่โคตรครบ ปิดเลย"
        getgenv().Settings["CheckTask"]["Success"] = "Yes ✅"
    elseif DFFN and MNFN and YMFN and BDFN and HSFN and STFN then
        TextFN.Position = UDim2.new(0, 160, 0, 305)
        TextFN.TextColor3 = Color3.fromHex("#FFFF00")
        TextFN.Text = "ไก่ครบขาดแค่โยรุจิ๋ว"
        getgenv().Settings["CheckTask"]["Success"] = "Yes ✅"
    elseif DFFN and MNFN and YMFN and BDFN and STFN then
        TextFN.Position = UDim2.new(0, 160, 0, 305)
        TextFN.TextColor3 = Color3.fromHex("#FFFF00")
        TextFN.Text = "ขาดเคียวกับโยรุจิ๋ว"
        getgenv().Settings["CheckTask"]["Success"] = "Yes ✅"
    elseif DFFN and MNFN and YMFN and BDFN then
        TextFN.Position = UDim2.new(0, 160, 0, 305)
        TextFN.TextColor3 = Color3.fromHex("#FFFF00")
        TextFN.Text = "ขาดเคียว โยรุจิ๋ว คาตา"
    end
end

function Refresh()
    TextDF.Text = "Refresh.."
    TextDF.Position = UDim2.new(0, 100, 0, 130)
    TextDF.TextColor3 = Color3.fromHex("#ffffff")
    TextMN.Text = "Refresh.."
    TextMN.Position = UDim2.new(0, 100, 0, 95)
    TextMN.TextColor3 = Color3.fromHex("#ffffff")
    TextYM.Text = "Refresh.."
    TextYM.Position = UDim2.new(0, 100, 0, 130)
    TextYM.TextColor3 = Color3.fromHex("#ffffff")
    TextBD.Text = "Refresh.."
    TextBD.Position = UDim2.new(0, 100, 0, 165)
    TextBD.TextColor3 = Color3.fromHex("#ffffff")
    TextHS.Text = "Refresh.."
    TextHS.Position = UDim2.new(0, 100, 0, 200)
    TextHS.TextColor3 = Color3.fromHex("#ffffff")
    TextDG.Text = "Refresh.."
    TextDG.Position = UDim2.new(0, 100, 0, 235)
    TextDG.TextColor3 = Color3.fromHex("#ffffff")
    TextST.Text = "Refresh.."
    TextST.Position = UDim2.new(0, 100, 0, 270)
    TextST.TextColor3 = Color3.fromHex("#ffffff")
    TextFN.Text = "Refresh.."
    TextFN.Position = UDim2.new(0, 100, 0, 305)
    TextFN.TextColor3 = Color3.fromHex("#ffffff")
end

spawn(function()
    while wait() do
        pcall(function()
            turnoffui()
            dfcheck()
            moneycheck()
            checkyama()
            checkbuddy()
            checkhallow()
            checkdagger()
            checkspikey()
            FNcheck()
            wait(10)
            Refresh()
            wait(1)
        end)
    end
end)

spawn(function()
    repeat wait() until game:IsLoaded() and game.Players.LocalPlayer.Team ~= nil
    SendTask()
    while true do wait(3600)
        SendTask() 
    end
end)