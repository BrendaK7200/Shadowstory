local ContinueFile, super = Class(Object, "ContinueFile")

function ContinueFile:init(x, y)
    super.init(self)
    Input.clear("confirm")

    Game.world.state = "MENU"
    Game.world.music:play("menu_0", 1, 1)

    self.state = "MAIN" --MAIN, SETTINGS (currently doesn't exist)

    self.bg = Assets.getTexture("tilesets/savebg")

    self.font = Assets.getFont("main")
    self.font2 = Assets.getFont("small")

    self.selected = 1

    self.nodoubleinput = false
end

function ContinueFile:draw()
    super.draw(self)
    love.graphics.setColor(0,0,0)
    love.graphics.rectangle("fill", 0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)

    love.graphics.setColor(1,1,1)
    love.graphics.draw(self.bg, 0, -238, 0, 2)

    love.graphics.printf(Game.save_name, 140, 130-6, SCREEN_WIDTH, "left")
    love.graphics.printf("LV "..Game.save_level, -4, 130-6, SCREEN_WIDTH, "center")
    local minutes = math.floor(Game:getFlag("realplaytime") / 60)
    local seconds = math.floor(Game:getFlag("realplaytime") % 60)
    local time_text = string.format("%d:%02d", minutes, seconds)
    love.graphics.printf(time_text, -145-9, 130-6, SCREEN_WIDTH, "right")
    local data = Game:getSavePreview()
    love.graphics.printf(data.room_name, 140, 160, SCREEN_WIDTH, "left")

    if self.selected == 1 then
        love.graphics.setColor(1,1,0)
    else
        love.graphics.setColor(1,1,1)
    end
    love.graphics.printf("Continue", 170, 210, SCREEN_WIDTH, "left")
    if self.selected == 2 then
        love.graphics.setColor(1,1,0)
    else
        love.graphics.setColor(1,1,1)
    end
    love.graphics.printf("Reset", -180, 210, SCREEN_WIDTH, "right")
    if self.selected == 3 then
        love.graphics.setColor(1,1,0)
    else
        love.graphics.setColor(1,1,1)
    end
    love.graphics.printf("Settings", 0, 250, SCREEN_WIDTH, "center")

    love.graphics.setColor(0.5,0.5,0.5)
    love.graphics.setFont(self.font2)
    love.graphics.printf("UNDERTALE/DELTARUNE BY TOBY FOX", 0, 448, SCREEN_WIDTH, "center")
    love.graphics.printf("SHADOWSTORY V0.69 TEAM CRYSTALSEEKERS 2024", 0, 464, SCREEN_WIDTH, "center")
end

function ContinueFile:update()
    super.update(self)
    if Input.pressed("left") then
        self.selected = 1
    end
    if Input.pressed("right") then
        self.selected = 2
    end
    if Input.pressed("down") then
        self.selected = 3
    end
    if Input.pressed("up") then
        self.selected = 1
    end
    if Input.pressed("confirm") then
        if self.selected == 1 then
            Game.world.music:stop()
            Game.playtime = Game:getFlag("realplaytime")
            Game.world.state = "GAMEPLAY"
            self:remove()
        elseif self.selected == 2 then
            -- Do nothing for now
        elseif self.selected == 3 then
            -- Do nothing for now
        end
    end
    self.nodoubleinput = false
end

return ContinueFile