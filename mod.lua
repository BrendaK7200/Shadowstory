function Mod:init()
    print("Loaded "..self.info.name.."!")
end

function Mod:postInit(new_file)
    if new_file then
        local namingScreen = NamingScreen()
        namingScreen.layer = WORLD_LAYERS["ui"]
        Game.stage:addChild(namingScreen)
    end
end

function Mod:load(data, new_file, slot)
end