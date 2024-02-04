--[[
Keybinds:
Insert = Turn on/off the ESP
Home = Hide/Show the GUI
]]

--// Instance

local OakESP = Instance.new("ScreenGui")
local Borders = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local UICorner = Instance.new("UICorner")
local Main = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local Line = Instance.new("Frame")
local List = Instance.new("ScrollingFrame")
local UICorner_3 = Instance.new("UICorner")
local Template = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local OreName = Instance.new("TextLabel")
local Indicator = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local Button = Instance.new("TextButton")
local UIListLayout = Instance.new("UIListLayout")

--// Properties
local letters = [[abcdefghijklmnopqrstubwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ&é(-è_çà)=1234567890~#{[|_@+$¨%µ*ù£]}¤§!:/;.,? ]]
local gamingname = ""
for i = 1, 64 do
	local rng = math.random(1, #letters)
	gamingname=gamingname..string.sub(letters,rng,rng)
end

OakESP.Name = gamingname
OakESP.Parent = gethui()
OakESP.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
OakESP.ResetOnSpawn = false

Borders.Name = "Borders"
Borders.Parent = OakESP
Borders.Active = true
Borders.Draggable = true
Borders.AnchorPoint = Vector2.new(0.5, 0.5)
Borders.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Borders.Position = UDim2.new(0.102, 0, 0.756, 0)
Borders.Size = UDim2.new(0, 250, 0, 300)

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(20, 8, 60)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(10, 30, 60))}
UIGradient.Rotation = 45
UIGradient.Parent = Borders

UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = Borders

Main.Name = "Main"
Main.Parent = Borders
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(3, 4, 30)
Main.Position = UDim2.new(0.5, 0, 0.5, 0)
Main.Size = UDim2.new(0, 240, 0, 290)

UICorner_2.CornerRadius = UDim.new(0, 5)
UICorner_2.Parent = Main

Title.Name = "Title"
Title.Parent = Main
Title.AnchorPoint = Vector2.new(0.5, 0.5)
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0.5, 0, 0, 20)
Title.Size = UDim2.new(0, 240, 0, 30)
Title.Font = Enum.Font.SourceSans
Title.Text = "very legit skills"
Title.TextColor3 = Color3.fromRGB(239, 212, 255)
Title.TextScaled = true
Title.TextSize = 14
Title.TextWrapped = true

Line.Name = "Line"
Line.Parent = Main
Line.AnchorPoint = Vector2.new(0.5, 0.5)
Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Line.BorderSizePixel = 0
Line.Position = UDim2.new(0.5, 0, 0.15, 0)
Line.Size = UDim2.new(0, 220, 0, 1)

List.Name = "List"
List.Parent = Main
List.Active = true
List.AnchorPoint = Vector2.new(0.5, 0)
List.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
List.BackgroundTransparency = 1.000
List.Position = UDim2.new(0.5, 0, 0.2, 0)
List.Size = UDim2.new(0, 220, 0, 220)
List.CanvasSize = UDim2.new(0, 0, 0, 0)
List.ScrollBarThickness = 0
List.AutomaticCanvasSize = Enum.AutomaticSize.Y

UICorner_3.CornerRadius = UDim.new(0, 4)
UICorner_3.Parent = List

Template.Name = "Template"
--Template.Parent = nil
Template.BackgroundColor3 = Color3.fromRGB(20, 8, 60)
Template.BorderSizePixel = 0
Template.Size = UDim2.new(1, 0, 0, 40)

UICorner_4.CornerRadius = UDim.new(0, 4)
UICorner_4.Parent = Template

OreName.Name = "OreName"
OreName.Parent = Template
OreName.AnchorPoint = Vector2.new(1, 0.5)
OreName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
OreName.BackgroundTransparency = 1
OreName.Position = UDim2.new(0.98, 0, 0.46, 0)
OreName.Size = UDim2.new(0, 175, 0.8, 0)
OreName.Font = Enum.Font.SourceSansSemibold
OreName.Text = "OreName [Template]"
OreName.TextColor3 = Color3.fromRGB(255, 255, 255)
OreName.TextScaled = true
OreName.TextSize = 14
OreName.TextWrapped = true
OreName.TextXAlignment = Enum.TextXAlignment.Left

Indicator.Name = "Indicator"
Indicator.Parent = Template
Indicator.BackgroundColor3 = Color3.fromRGB(255, 150, 150)
Indicator.Position = UDim2.new(0.06, 0, 0.3, 0)
Indicator.Size = UDim2.new(0, 15, 0, 15)

UICorner_5.CornerRadius = UDim.new(0, 3)
UICorner_5.Parent = Indicator

Button.Name = "Button"
Button.Parent = Template
Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button.BackgroundTransparency = 1
Button.BorderSizePixel = 0
Button.Size = UDim2.new(1, 0, 1, 0)
Button.Font = Enum.Font.SourceSans
Button.Text = ""
Button.TextColor3 = Color3.fromRGB(0, 0, 0)
Button.TextSize = 14

UIListLayout.Parent = List
UIListLayout.Padding = UDim.new(0, 5)

--// Init

local uis=game:GetService("UserInputService")
local show, key = true, "Insert" -- keycodes: https://create.roblox.com/docs/reference/engine/enums/KeyCode
local hidden, hidekey = false, "Home"

local ores={
	[Color3.fromRGB(90, 166, 165)] = {OreName="Mythril";EspEnabled=true}; -- mythril
	[Color3.fromRGB(255, 152, 220)] = {OreName="Rosa Flama Quartz";EspEnabled=true}; -- rosa flama quartz
	[Color3.fromRGB(89, 50, 165)] = {OreName="Magnetite";EspEnabled=true}; -- magnetite
	[Color3.fromRGB(209, 53, 53)] = {OreName="Adurite";EspEnabled=true}; -- adurite
	[Color3.fromRGB(125, 222, 2)] = {OreName="Greeb";EspEnabled=true}; -- greeb
	[Color3.fromRGB(93, 125, 159)] = {OreName="Bluesteel";EspEnabled=true}; -- bluesteel
	[Color3.fromRGB(23,19,82)] = {OreName="Obsidian";EspEnabled=true}; -- obsidian
	[Color3.fromRGB(70, 81, 50)] = {OreName="Uranium";EspEnabled=true}; -- uranium
	[Color3.fromRGB(207, 165, 15)] = {OreName="Pyrite";EspEnabled=false}; -- pyrite
	[Color3.fromRGB(229, 228, 223)] = {OreName="Tin";EspEnabled=false}; -- tin
	[Color3.fromRGB(111, 107, 118)] = {OreName="Iron";EspEnabled=false}; -- iron
	[Color3.fromRGB(221, 146, 17)] = {OreName="Gold";EspEnabled=false}; -- gold
	[Color3.fromRGB(33, 33, 33)] = {OreName="Inkstone";EspEnabled=false}; -- inkstone
	[Color3.fromRGB(206, 98, 35)] = {OreName="Copper";EspEnabled=false}; -- copper
	[Color3.fromRGB(255, 162, 139)] = {OreName="Rose Gold";EspEnabled=false}; -- rose gold
	[Color3.fromRGB(255, 255, 255)] = {OreName="Quartz";EspEnabled=false}; --quartz 
	[Color3.fromRGB(254, 243, 187)] = {OreName="Sand";EspEnabled=false}; -- sand / glass
	[Color3.fromRGB(199, 175, 146)] = {OreName="Cobalt";EspEnabled=false}; -- cobalt
	[Color3.fromRGB(199, 134, 76)] = {OreName="Palladium";EspEnabled=true}; -- palladium
	[Color3.fromRGB(116, 116, 116)] = {OreName="Lithium";EspEnabled=false}; -- lithium
	[Color3.fromRGB(180, 188, 203)] = {OreName="Zinc";EspEnabled=false}; -- zinc

	Other = {OreName="Other";EspEnabled=false};
}

local history={}

local _settings={
	IndicatorColors = {
		IndicatorOn = Color3.fromRGB(150, 255, 150);
		IndicatorOff = Color3.fromRGB(255, 150, 150);
	}
}


local numOfKeys = 0; for _, __ in pairs(ores) do numOfKeys+=1 end

--// Script


local function esp(p)

	if not p or not p:IsA("BasePart") or p == nil or p.Parent == nil or p.Parent.Parent == nil then return end

	local cam = workspace.CurrentCamera
	local vector, onScreen = cam:WorldToViewportPoint(p.Parent.Parent.Position)
	local waittime = .75

	local line = Drawing.new("Line")
	line.Visible=false
	line.From=Vector2.new(cam.ViewportSize.X/2,cam.ViewportSize.Y)
	line.To=Vector2.new(vector.X, vector.Y)
	line.Color=p.Color
	line.Thickness=2
	
	local oredata
	for i, v in pairs(ores) do
		local r,g,b=p.Color.R*255,p.Color.G*255,p.Color.B*255
		if i == Color3.fromRGB(r,g,b) then
			oredata = v
			break
		else
			oredata = ores.Other
		end
	end
	
	local f
	--local stop=false
	f=game:GetService("RunService").RenderStepped:Connect(function()
		pcall(function()
			local vector, onScreen = cam:WorldToViewportPoint(p.Parent.Parent.Position)
			if onScreen == true and oredata.EspEnabled==true then
				line.To=Vector2.new(vector.X, vector.Y)
				line.From=Vector2.new(cam.ViewportSize.X/2,cam.ViewportSize.Y)
				line.Visible=show
			else
				line.Visible=false
			end
		end)
		if oredata.EspEnabled==false then
			pcall(function() line:Destroy() end)
			table.remove(history, table.find(history, p.Parent.Parent))
			--stop=true
			f:Disconnect()
		end
	end)

	coroutine.wrap(function()
		while(wait(.5))do
			local c=0
			for i, v in pairs(workspace.World.RockRegions:GetDescendants()) do
				if v==p then
					c=1
				end
			end
			if c==0 then
				pcall(function() line:Destroy() end)
				f:Disconnect()
				break
			end
		end
	end)()
	
	--[[coroutine.wrap(function()
		while(wait(32))do
			history={}
			if stop==true then break end
		end
	end)()]]

end


local function isOreValid(v, r)
	if v.Name=="XD" then
		if r == nil then
			for k, val in pairs(ores) do
				if k == v.Color then
					r = k
				end
			end
		end
		if v.Color == r and not table.find(history, v.Parent.Parent) then
			table.insert(history, v.Parent.Parent)
			return true
		elseif r == "Other" and not table.find(history, v.Parent.Parent) then
			local c = 0
			for i, v in pairs(ores) do
				if i ~= r then
					c+=1
				end
			end
			if c<numOfKeys then
				table.insert(history, v.Parent.Parent)
				return true
			end
		--[[elseif r==nil then
			for i, v in pairs(ores) do
				if i == v.Color
			end]]
		end
	end
end


--[[for i, v in pairs(workspace.World.RockRegions:GetDescendants()) do
	if isOreValid(v) then
		esp(v)
	end
end]]

workspace.World.RockRegions.DescendantAdded:Connect(function(v)
	if isOreValid(v) then
		esp(v)
	end
end)

uis.InputBegan:Connect(function(k)
	if k.KeyCode==Enum.KeyCode[key] then
		if show then show=false else show=true end
	elseif k.KeyCode==Enum.KeyCode[hidekey] then
		if hidden == true then
			hidden = false
			OakESP.Enabled=true
		else
			hidden = true
			OakESP.Enabled=false
		end
	end
end)

for i, v in pairs(ores) do
	local b = Template:Clone()
	b.Name = v.OreName=="Other" and v.OreName or "!"..v.OreName
	b.Parent = List
	b.OreName.Text = v.OreName
	
	if v.EspEnabled == true then
		
		for _, _v in pairs(workspace.World.RockRegions:GetDescendants()) do
			if isOreValid(_v, i) then
				esp(_v)
			end
		end
		
		b.Indicator.BackgroundColor3 = _settings.IndicatorColors.IndicatorOn
	else
		b.Indicator.BackgroundColor3 = _settings.IndicatorColors.IndicatorOff
	end
	b.Button.MouseButton1Click:Connect(function()
		if v.EspEnabled == true then
			v.EspEnabled = false
			b.Indicator.BackgroundColor3 = _settings.IndicatorColors.IndicatorOff
		else
			v.EspEnabled = true
			
			for _, _v in pairs(workspace.World.RockRegions:GetDescendants()) do
				if isOreValid(_v, i) then
					esp(_v)
				end
			end
			
			b.Indicator.BackgroundColor3 = _settings.IndicatorColors.IndicatorOn
		end
	end)
end