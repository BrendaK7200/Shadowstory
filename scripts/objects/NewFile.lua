local NewFile, super = Class(Object, "NewFile")

function NewFile:init(x, y)
    super.init(self)
    Input.clear("confirm")

    Game.world.state = "MENU"
    Game.world.music:play("menu_0", 1, 1)

    self.state = "MAIN" --MAIN, SETTINGS (currently doesn't exist)

    self.second = false

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
    love.graphics.printf("--- Instruction ---", 0, 40, SCREEN_WIDTH, "center")
    love.graphics.print("[Z or ENTER] - Confirm", 170, 100)
    love.graphics.print("[X or SHIFT] - Cancel", 170, 120+16)
    love.graphics.print("[C or CTRL] - Menu (In-game)", 170, 160+12)
    love.graphics.print("[F4] - Fullscreen", 170, 200+8)
    love.graphics.print("[Hold ESC] - Quit", 170, 240+4)
    love.graphics.print("When HP is 0, you lose.", 170, 280)

    if self.selected == 1 then
        love.graphics.setColor(1,1,0)
    else
        love.graphics.setColor(1,1,1)
    end
    love.graphics.print("Begin Game", 170, 350-6)
    if self.selected == 2 then
        love.graphics.setColor(1,1,0)
    else
        love.graphics.setColor(1,1,1)
    end
    love.graphics.print("Settings", 170, 390-6)

    love.graphics.setColor(0.5,0.5,0.5)
    love.graphics.setFont(self.font2)
    love.graphics.printf("UNDERTALE/DELTARUNE BY TOBY FOX\n\n\nSHADOWSTORY V0.69 TEAM WORLDSHIFTERS 2024", 0, 440, SCREEN_WIDTH, "center")
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
            if self.second then
                namingScreen.selected_row = 9
            end
            Game.stage:addChild(namingScreen)
            self:remove()
        else
            -- Do nothing for now
        end
    end
    self.nodoubleinput = false
end

return NewFile