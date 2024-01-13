local NewFile, super = Class(Object, "NewFile")

function NewFile:init(x, y)
    super.init(self)
    Input.clear("confirm")

    Game.world.state = "MENU"
    Game.world.music:play("menu_0", 0.6, 1)

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

    if Mod.language == "engrish" then
        love.graphics.setColor(0.7,0.7,0.7)
        love.graphics.setFont(self.font)
        love.graphics.printf(scr_gettext("NEWFILE_1"), 0, 40, SCREEN_WIDTH, "center")
        love.graphics.print(scr_gettext("NEWFILE_2"), 90, 100)
        love.graphics.print(scr_gettext("NEWFILE_3"), 90, 120+16)
        love.graphics.print(scr_gettext("NEWFILE_4"), 90, 160+12)
        love.graphics.setColor(1,0,0)
        love.graphics.print("           CONTROL", 88, 160+12)
        love.graphics.setColor(0.7,0.7,0.7)
        love.graphics.print(scr_gettext("NEWFILE_5"), 90, 200+8)
        love.graphics.print(scr_gettext("NEWFILE_6"), 90, 240+4)
        love.graphics.print(scr_gettext("NEWFILE_7"), 90, 280)
    
        if self.selected == 1 then
            love.graphics.setColor(1,1,0)
        else
            love.graphics.setColor(1,1,1)
        end
        love.graphics.print(scr_gettext("NEWFILE_8"), 90, 350-6)
        if self.selected == 2 then
            love.graphics.setColor(1,1,0)
        else
            love.graphics.setColor(1,1,1)
        end
        love.graphics.print(scr_gettext("NEWFILE_9"), 90, 390-6)
    elseif Mod.language == "spanish" then
        love.graphics.setColor(0.7,0.7,0.7)
        love.graphics.setFont(self.font)
        love.graphics.printf(scr_gettext("NEWFILE_1"), 0, 40, SCREEN_WIDTH, "center")
        love.graphics.print(scr_gettext("NEWFILE_2"), 170, 100)
        love.graphics.print(scr_gettext("NEWFILE_3"), 170, 120+16)
        love.graphics.print(scr_gettext("NEWFILE_4"), 170, 160+12)
        love.graphics.print(scr_gettext("NEWFILE_5"), 170, 200+8)
        love.graphics.print(scr_gettext("NEWFILE_6"), 170, 240+4)
        love.graphics.print(scr_gettext("NEWFILE_7"), 170, 280)
    
        if self.selected == 1 then
            love.graphics.setColor(1,1,0)
        else
            love.graphics.setColor(1,1,1)
        end
        love.graphics.print(scr_gettext("NEWFILE_8"), 170, 350-6)
        if self.selected == 2 then
            love.graphics.setColor(1,1,0)
        else
            love.graphics.setColor(1,1,1)
        end
        love.graphics.print(scr_gettext("NEWFILE_9"), 170, 390-6)
    elseif Mod.language == "portuguese" then
        love.graphics.setColor(0.7,0.7,0.7)
        love.graphics.setFont(self.font)
        love.graphics.printf(scr_gettext("NEWFILE_1"), 0, 40, SCREEN_WIDTH, "center")
        love.graphics.print(scr_gettext("NEWFILE_2"), 170, 100)
        love.graphics.print(scr_gettext("NEWFILE_3"), 170, 120+16)
        love.graphics.print(scr_gettext("NEWFILE_4"), 170, 160+12)
        love.graphics.print(scr_gettext("NEWFILE_5"), 170, 200+8)
        love.graphics.print(scr_gettext("NEWFILE_6"), 170, 240+4)
        love.graphics.print(scr_gettext("NEWFILE_7"), 170, 280)
    
        if self.selected == 1 then
            love.graphics.setColor(1,1,0)
        else
            love.graphics.setColor(1,1,1)
        end
        love.graphics.print(scr_gettext("NEWFILE_8"), 170, 350-6)
        if self.selected == 2 then
            love.graphics.setColor(1,1,0)
        else
            love.graphics.setColor(1,1,1)
        end
        love.graphics.print(scr_gettext("NEWFILE_9"), 170, 390-6)
    else
        love.graphics.setColor(0.7,0.7,0.7)
        love.graphics.setFont(self.font)
        love.graphics.printf(scr_gettext("NEWFILE_1"), 0, 40, SCREEN_WIDTH, "center")
        love.graphics.print(scr_gettext("NEWFILE_2"), 170, 100)
        love.graphics.print(scr_gettext("NEWFILE_3"), 170, 120+16)
        love.graphics.print(scr_gettext("NEWFILE_4"), 170, 160+12)
        love.graphics.print(scr_gettext("NEWFILE_5"), 170, 200+8)
        love.graphics.print(scr_gettext("NEWFILE_6"), 170, 240+4)
        love.graphics.print(scr_gettext("NEWFILE_7"), 170, 280)
    
        if self.selected == 1 then
            love.graphics.setColor(1,1,0)
        else
            love.graphics.setColor(1,1,1)
        end
        love.graphics.print(scr_gettext("NEWFILE_8"), 170, 350-6)
        if self.selected == 2 then
            love.graphics.setColor(1,1,0)
        else
            love.graphics.setColor(1,1,1)
        end
        love.graphics.print(scr_gettext("NEWFILE_9"), 170, 390-6)
    end

    love.graphics.setColor(0.5,0.5,0.5)
    love.graphics.setFont(self.font2)
    love.graphics.printf(scr_gettext("BRAND_1"), 0, 448, SCREEN_WIDTH, "center")
    love.graphics.printf(scr_gettext("BRAND_2"), 0, 464, SCREEN_WIDTH, "center")
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
            local optionsmenu = OptionsMenu(0,0,true)
            optionsmenu.layer = WORLD_LAYERS["ui"]
            optionsmenu.nodoubleinput = true
            Game.stage:addChild(optionsmenu)
            self:remove()
        end
    end
    self.nodoubleinput = false
end

return NewFile