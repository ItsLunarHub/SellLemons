local function fetch(url)
    local ok, res = pcall(game.HttpGet, game, url)
    return ok and res or nil
end

loadstring(fetch("https://raw.githubusercontent.com/ItsLunarHub/LunarHubSellLemons/main/Lunar1.lua"))()

repeat task.wait(0.1) until _G.LH ~= nil

local scripts = {
    "https://raw.githubusercontent.com/ItsLunarHub/LunarHubSellLemons/main/Lunar2.lua",
    "https://raw.githubusercontent.com/ItsLunarHub/LunarHubSellLemons/main/Lunar3.lua",
    "https://raw.githubusercontent.com/ItsLunarHub/LunarHubSellLemons/main/Lunar4.lua",
    "https://raw.githubusercontent.com/ItsLunarHub/LunarHubSellLemons/main/Lunar5.lua",
    "https://raw.githubusercontent.com/ItsLunarHub/LunarHubSellLemons/main/Lunar6.lua",
    "https://raw.githubusercontent.com/ItsLunarHub/LunarHubSellLemons/main/Lunar7.lua",
    "https://raw.githubusercontent.com/ItsLunarHub/LunarHubSellLemons/main/Lunar8.lua",
    "https://raw.githubusercontent.com/ItsLunarHub/LunarHubSellLemons/main/Lunar9.lua",
    "https://raw.githubusercontent.com/ItsLunarHub/LunarHubSellLemons/main/Lunar10.lua",
    "https://raw.githubusercontent.com/ItsLunarHub/LunarHubSellLemons/main/Lunar11.lua",
    "https://raw.githubusercontent.com/ItsLunarHub/LunarHubSellLemons/main/Lunar12.lua",
    "https://raw.githubusercontent.com/ItsLunarHub/LunarHubSellLemons/main/Lunar13.lua",
    "https://raw.githubusercontent.com/ItsLunarHub/LunarHubSellLemons/main/Lunar14.lua",
    "https://raw.githubusercontent.com/ItsLunarHub/LunarHubSellLemons/main/Lunar15.lua",
    "https://raw.githubusercontent.com/ItsLunarHub/LunarHubSellLemons/main/Lunar16.lua",
    "https://raw.githubusercontent.com/ItsLunarHub/LunarHubSellLemons/main/Lunar17.lua",
}

for _, url in ipairs(scripts) do
    local content = fetch(url)
    if content then
        local func = loadstring(content)
        if func then
            task.spawn(func)
        end
    end
    task.wait(0.2)
end
