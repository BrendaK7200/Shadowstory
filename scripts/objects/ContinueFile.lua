local ContinueFile, super = Class(Object, "ContinueFile")

function ContinueFile:init(x, y)
    super.init(self)

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
    love.graphics.draw(self.bg, 0, -240, 0, 2)

    love.graphics.printf(Game.save_name, 145, 130, SCREEN_WIDTH, "left")
    love.graphics.printf("LV "..Game.save_level, 0, 130, SCREEN_WIDTH, "center")
    local minutes = math.floor(Game:getFlag("realplaytime") / 60)
    local seconds = math.floor(Game:getFlag("realplaytime") % 60)
    local time_text = string.format("%d:%02d", minutes, seconds)
    love.graphics.printf(time_text, -145, 130, SCREEN_WIDTH, "right")
    local data = Game:getSavePreview()
    love.graphics.printf(data.room_name, 145, 160, SCREEN_WIDTH, "left")

    if self.selected == 1 then
        love.graphics.setColor(1,1,0)
    else
        love.graphics.setColor(1,1,1)
    end
    love.graphics.printf("Contiune", 175, 215, SCREEN_WIDTH, "left")
    if self.selected == 2 then
        love.graphics.setColor(1,1,0)
    else
        love.graphics.setColor(1,1,1)
    end
    love.graphics.printf("Reset", -175, 215, SCREEN_WIDTH, "right")
    if self.selected == 3 then
        love.graphics.setColor(1,1,0)
    else
        love.graphics.setColor(1,1,1)
    end
    love.graphics.printf("Settings", 0, 255, SCREEN_WIDTH, "center")

    love.graphics.setColor(0.7,0.7,0.7)
    love.graphics.setFont(self.font2)
    love.graphics.printf("UNDERTALE/DELTARUNE BY TOBY FOX\n\n\nSHADOWSTORY V0.69 TEAM CRYSTALSEEKERS 2024", 0, 440, SCREEN_WIDTH, "center")
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