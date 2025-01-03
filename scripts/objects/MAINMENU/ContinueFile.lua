local ContinueFile, super = Class(Object, "ContinueFile")

function ContinueFile:init(x, y)
    super.init(self)
    Input.clear("confirm")

    Game.world.state = "MENU"
    Game.world.music:play("menu_0", 0.6, 1)

    self.state = "MAIN" --MAIN, SETTINGS (currently doesn't exist), RESET

    self.timer = 0
    self.shaketimer = 0
    self.fadetimer = 0

    self.bg = Assets.getTexture("tilesets/savebg")

    self.font = Assets.getFont("main")
    self.font2 = Assets.getFont("small")

    self.fade = Rectangle(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)
	self.fade.color = {1,1,1}
    self.fade.alpha = 0
    self.fade.layer = WORLD_LAYERS["top"]
	Game.stage:addChild(self.fade)

    self.selected = 1

    self.nodoubleinput = false
end

function ContinueFile:draw()
    super.draw(self)
    love.graphics.setFont(self.font)
    love.graphics.setColor(0,0,0)
    love.graphics.rectangle("fill", 0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)

    if self.state == "KILLME" then
        love.graphics.setColor(0.5,0.5,0.5)
        love.graphics.setFont(self.font2)
        love.graphics.printf(scr_gettext("BRAND_1"), 0, 448, SCREEN_WIDTH, "center")
        love.graphics.printf(scr_gettext("BRAND_2"), 0, 464, SCREEN_WIDTH, "center")
    elseif self.state == "MAIN" then
        love.graphics.setColor(1,1,1)
        love.graphics.draw(self.bg, 0, -238, 0, 2)

        love.graphics.printf(Game.save_name, 140, 130-6, SCREEN_WIDTH, "left")
        love.graphics.printf("CR "..Game.party[1]:getLightLV(), -4, 130-6, SCREEN_WIDTH, "center")
        local minutes = math.floor(Game:getFlag("realplaytime") / 60)
        local seconds = math.floor(Game:getFlag("realplaytime") % 60)
        local time_text = string.format("%d:%02d", minutes, seconds)
        love.graphics.printf(time_text, -145-9, 130-6, SCREEN_WIDTH, "right")
        local data = Game:getSavePreview()
        love.graphics.printf(scr_gettext(data.room_name), 140, 160, SCREEN_WIDTH, "left")

        if self.selected == 1 then
            love.graphics.setColor(1,1,0)
        else
            love.graphics.setColor(1,1,1)
        end
        if Mod.language == "engrish" then
            love.graphics.printf(scr_gettext("FILECONTINUE_1"), 170-50, 210, SCREEN_WIDTH, "left")
        else
            love.graphics.printf(scr_gettext("FILECONTINUE_1"), 170, 210, SCREEN_WIDTH, "left")
        end
        if self.selected == 2 then
            love.graphics.setColor(1,1,0)
        else
            love.graphics.setColor(1,1,1)
        end
        if Mod.language == "engrish" then
            love.graphics.printf(scr_gettext("FILECONTINUE_2"), -180+80, 210, SCREEN_WIDTH, "right")
        else
            love.graphics.printf(scr_gettext("FILECONTINUE_2"), -180, 210, SCREEN_WIDTH, "right")
        end
        if self.selected == 3 then
            love.graphics.setColor(1,1,0)
        else
            love.graphics.setColor(1,1,1)
        end
        love.graphics.printf(scr_gettext("NEWFILE_9"), 0, 250, SCREEN_WIDTH, "center")

        love.graphics.setColor(0.5,0.5,0.5)
        love.graphics.setFont(self.font2)
        love.graphics.printf(scr_gettext("BRAND_1"), 0, 448, SCREEN_WIDTH, "center")
        love.graphics.printf(scr_gettext("BRAND_2"), 0, 464, SCREEN_WIDTH, "center")
    elseif self.state == "RESET" then
        local last_shake = 0
        local offset_x = 0
        local offset_y = 0
         if self.shaketimer - last_shake >= (1 * DTMULT) then
            last_shake = self.shaketimer
            offset_x = Utils.round(Utils.random(-2, 2))
            offset_y = Utils.round(Utils.random(-2, 2))
        end
        love.graphics.setColor(1,1,1)
        love.graphics.printf(scr_gettext("NAMESELECT_7"), 180, 60, SCREEN_WIDTH, "left")
        love.graphics.printf(Game.save_name, (0 - (self.timer*8.1)) + offset_x, (110 + (self.timer*1.25)) + offset_y, SCREEN_WIDTH, "center", 0, 1 + (self.timer/40))

        if self.selected == 1 then
            love.graphics.setColor(1,1,0)
        else
            love.graphics.setColor(1,1,1)
        end
        love.graphics.print(scr_gettext("No"), 150-4, 400)
        if self.selected == 2 then
            love.graphics.setColor(1,1,0)
        else
            love.graphics.setColor(1,1,1)
        end
        love.graphics.print(scr_gettext("Yes"), 460, 400)
    elseif self.state == "RESETTING" then
        local last_shake = 0
        local offset_x = 0
        local offset_y = 0
         if self.shaketimer - last_shake >= (1 * DTMULT) then
            last_shake = self.shaketimer
            offset_x = Utils.round(Utils.random(-2, 2))
            offset_y = Utils.round(Utils.random(-2, 2))
        end
        love.graphics.setColor(1,1,1)
        love.graphics.printf(Game.save_name, (0 - (self.timer*8.1)) + offset_x, (110 + (self.timer*1.25)) + offset_y, SCREEN_WIDTH, "center", 0, 1 + (self.timer/40))
    end
end

function ContinueFile:update()
    super.update(self)
    self.shaketimer = self.shaketimer + DTMULT
    if self.state == "MAIN" then
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
                self.timer = 0
                self.state = "RESET"
                self.selected = 1
            elseif self.selected == 3 then
                local optionsmenu = OptionsMenu()
                optionsmenu.layer = WORLD_LAYERS["ui"]
                optionsmenu.nodoubleinput = true
                Game.stage:addChild(optionsmenu)
                self:remove()
            end
        end
    elseif self.state == "RESET" then
        if self.timer < 100 then
            self.timer = self.timer + (1*DTMULT)
        end
        if Input.pressed("left") then
            self.selected = 1
        end
        if Input.pressed("right") then
            self.selected = 2
        end
        if Input.pressed("confirm") then
            if self.selected == 1 then
                self.timer = 0
                self.state = "KILLME"
                self.selected = 2
                Game.world.timer:after(1/30, function()
                    self.state = "MAIN"
                end)
            elseif self.selected == 2 then
                self.state = ""
                Game.world.timer:after(1/15, function()
                    self.state = "RESETTING"
                    Assets.stopAndPlaySound("cymbal", 0.8, 0.95)
                    Game.world.music.volume = 0
                end)
            end
        end
    elseif self.state == "RESETTING" then
        if self.timer < 100 then
            self.timer = self.timer + (1*DTMULT)
        end
        if self.fadetimer < 180 then
            self.fadetimer = self.fadetimer + (1*DTMULT)
            if self.fadetimer < 156 then
                self.fade.alpha = self.fade.alpha + (1*DTMULT)/156
            end
        end
        if self.fadetimer == 180 then
            Game.playtime = 0
            self.fade:remove()
            self:remove()
            Game.world.state = "GAMEPLAY"
        end
    end
    self.nodoubleinput = false
end

return ContinueFile