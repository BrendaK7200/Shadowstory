globalFlags = {}
local lib = globalFlags

function lib:postInit(new_file)
    if not love.filesystem.getInfo(self:getGlobalFlagFile()) then
        love.filesystem.createDirectory("saves/" .. Mod.info.id)
        self:writeGlobalFlags()
    else
        self:loadGlobalFlags()
    end
end

function lib:save(data)
    self:writeGlobalFlags()
end

function lib:unload()
    self:writeGlobalFlags()
end

function lib:init()
    self.globalflags = {}

    Utils.hook(Game, "getGlobalFlag", function(orig, self, flag, default)
        local result = globalFlags.globalflags[flag]
        if result == nil then
            return default
        else
            return result
        end
    end)
    Utils.hook(Game, "setGlobalFlag", function(orig, self, flag, value)
        globalFlags.globalflags[flag] = value
    end)

    Utils.hook(LightMenu, "draw", function(orig, self)
        if Game.battle == nil then
            love.graphics.push()
            love.graphics.origin()
            love.graphics.translate(self.x,self.y)
            orig(self)
            love.graphics.pop()
        else
            orig(self)
        end
    end)
    Utils.hook(HealthBar, "draw", function(orig, self)
        if Game.battle == nil then
            love.graphics.push()
            love.graphics.origin()
            love.graphics.translate(self.x,self.y)
            orig(self)
            love.graphics.pop()
        else
            orig(self)
        end
    end)
    Utils.hook(Textbox, "draw", function(orig, self)
        if Game.battle == nil then
            love.graphics.push()
            love.graphics.origin()
            love.graphics.translate(self.x,self.y)
            orig(self)
            love.graphics.pop()
        else
            orig(self)
        end
    end)
    Utils.hook(Choicebox, "draw", function(orig, self)
        if Game.battle == nil then
            love.graphics.push()
            love.graphics.origin()
            love.graphics.translate(self.x,self.y)
            orig(self)
            love.graphics.pop()
        else
            orig(self)
        end
    end)
end

-- Gets the json file that contains global variables
function lib:getGlobalFlagFile()
    return "saves/" .. Mod.info.id .. "/globalflags.json"
end

function lib:loadGlobalFlags()
    local data_raw, info = love.filesystem.read(self:getGlobalFlagFile())
    if not data_raw then
        print("Error while loading global flags file: " .. info)
        return false
    end
    local data = JSON.decode(data_raw)
    self:loadFlags(data.globalflags)
    return true
end

function lib:loadFlags(data)
    for name, info in pairs(data) do
        local flg = self.globalflags[name]
        if not flg then
            self.globalflags[name] = info
            --print("Tried to load data for nonexistent global flag - "..name)
        end
    end
end

function lib:generateFlagSaveData()
    local data = {}
    for k, flg in pairs(self.globalflags) do
        data[k] = flg
    end
    return data
end

function lib:writeGlobalFlags()
    local data = { globalflags = self:generateFlagSaveData() }

    local success, info = love.filesystem.write(self:getGlobalFlagFile(), JSON.encode(data))
    if not success then
        print("Error while writing global flags file: " .. info)
    end
    return success
end

function lib:setGlobalFlag(flag, value)
    self.globalflags[flag] = value
end

function lib:getGlobalFlag(flag, default)
    local result = self.globalflags[flag]
    if result == nil then
        return default
    else
        return result
    end
end

return lib