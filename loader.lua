-- GUI Xperia HUB by ARMANSYAH112
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()
local Window = OrionLib:MakeWindow({
	Name = "🔷 XPERIA HUB | Script Executor by ARMANSYAH112",
	HidePremium = false,
	SaveConfig = false,
	IntroEnabled = true
})

local ScriptTab = Window:MakeTab({
	Name = "📜 All Scripts",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

-- Ambil daftar script dari scripts.lua (repo kamu)
local scriptList = loadstring(game:HttpGet("https://raw.githubusercontent.com/ARMANSYAH112/XperiaHub/main/scripts.lua"))()

for _, script in pairs(scriptList) do
	ScriptTab:AddButton({
		Name = script.name,
		Callback = function()
			loadstring(game:HttpGet(script.url))()
		end
	})
end

OrionLib:MakeNotification({
	Name = "XPERIA HUB",
	Content = "Berhasil memuat semua script buatan ARMANSYAH112!",
	Time = 4
})
