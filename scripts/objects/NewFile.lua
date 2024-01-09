local NewFile, super = Class(Object, "NewFile")

function NewFile:init(x, y)
    super.init(self)

    Game.world.state = "MENU"
    Game.world.music:play("menu_0", 1, 1)

    self.state = "MAIN" --MAIN, SETTINGS (currently doesn't exist)

    self.font = Assets.getFont("main")
    self.font2 = Assets.getFont("small")

    self.selected = 1

    self.nodoubleinput = false
end

function NewFile:draw()
    super.draw(self)
    love.graphics.setColor(0,0,0)
    love.graphics.rectangle("fill", 0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)

    love.graphics.setColor(0.7,0.7,0.7)
    love.graphics.setFont(self.font)
    love.graphics.printf("--- Instruction ---", 0, 30, SCREEN_WIDTH, "center")
    love.graphics.print("[Z or ENTER] - Confirm", 190, 90)
    love.graphics.print("[X or SHIFT] - Cancel", 190, 130)
    love.graphics.print("[C or CTRL] - Menu (In-game)", 190, 170)
    love.graphics.print("[F4] - Fullscreen", 190, 210)
    love.graphics.print("[Hold ESC] - Quit", 190, 250)
    love.graphics.print("When HP is 0, you lose.", 190, 290)

    if self.selected == 1 then
        love.graphics.setColor(1,1,0)
    else
        love.graphics.setColor(1,1,1)
    end
    love.graphics.print("Begin Game", 190, 350)
    if self.selected == 2 then
        love.graphics.setColor(1,1,0)
    else
        love.graphics.setColor(1,1,1)
    end
    love.graphics.print("Settings", 190, 390)

    love.graphics.setColor(0.7,0.7,0.7)
    love.graphics.setFont(self.font2)
    love.graphics.printf("UNDERTALE/DELTARUNE BY TOBY FOX\n\n\nSHADOWSTORY V0.69 TEAM CRYSTALSEEKERS 2024", 0, 440, SCREEN_WIDTH, "center")
end

function NewFile:update()
    super.update(self)
    if Input.pressed("down") then
        self.selected = 2
    end
    if Input.pressed("up") then
        self.selected = 1
    end
    if Input.pressed("confirm") then
        if self.selected == 1 and self.nodoubleinput == false then
            local namingScreen = NamingScreen()
            namingScreen.layer = WORLD_LAYERS["ui"]
            namingScreen.nodoubleinput = true
            Game.stage:addChild(namingScreen)
            self:remove()
        else
            -- Do nothing for now
        end
    end
    self.nodoubleinput = false
end

return NewFile