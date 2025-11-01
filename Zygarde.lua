local function RunLoader()
    local Projects = {
        ["Combat Warriors"] = {
            GameId = 1390601379,
            Loader = "https://raw.githubusercontent.com/louismich4el/Zygarde/refs/heads/main/Combat%20Warriors.lua",
        },
        ["ZO Samurai"] = {
            GameId = 2516044547,
            Loader = "https://raw.githubusercontent.com/louismich4el/Zygarde/refs/heads/main/ZO%20Samurai.lua", 
        },
        ["The Strongest Battlegrounds"] = {
            GameId = 3808081382,
            Loader = "https://raw.githubusercontent.com/louismich4el/Zygarde/refs/heads/main/TSB.lua", 
        },
    }

    local GameId = game.GameId
    for Name, Data in pairs(Projects) do
        if Data.GameId == GameId then
            print(("Loading %s..."):format(Name))
            loadstring(game:HttpGet(Data.Loader))()
            return
        end
    end
    print("No loader found for this game.")
end

RunLoader()
