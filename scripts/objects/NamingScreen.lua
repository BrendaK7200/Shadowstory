local NamingScreen, super = Class(Object, "NamingScreen")

function NamingScreen:init(x, y)
    super.init(self)

    Game.world.state = "MENU"

    self.state = "NAMEENTRY" --NAMEENTRY, NAMECONFIRM, NAMEOUTRO
    self.timer = 0
    self.fadetimer = 0
    self.sintimer = 0

    self.font = Assets.getFont("main")

    self.selected_row = 1
    self.selected_col = 1

    self.upper_keys = {
        {"A","B","C","D","E","F","G"},
        {"H","I","J","K","L","M","N"},
        {"O","P","Q","R","S","T","U"},
        {"V","W","X","Y","Z"}
    }
    self.lower_keys = {
        {"a","b","c","d","e","f","g"},
        {"h","i","j","k","l","m","n"},
        {"o","p","q","r","s","t","u"},
        {"v","w","x","y","z"}
    }

    self.name = ""

    self.nodoubleinput = false
end

function NamingScreen:draw()
    super.draw(self)
    love.graphics.setColor(0,0,0)
    love.graphics.rectangle("fill", 0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)

    -- Fader currently doesn't work for some reason
    self.fade = Rectangle(SCREEN_WIDTH/2, SCREEN_HEIGHT/2, SCREEN_WIDTH, SCREEN_HEIGHT)
	self.fade:setOrigin(0.5,0.5)
	self.fade.color = {1,1,1}
    self.fade.alpha = 0
    self.fade.layer = WORLD_LAYERS["top"]
	self:addChild(self.fade)

    if self.state == "NAMEENTRY" then
        love.graphics.setColor(1,1,1)
        love.graphics.printf("Name the fallen human.", 0, 60, SCREEN_WIDTH, "center")
        love.graphics.print(self.name, 280, 100)

        -- Uppercase
        for i, v in ipairs(self.upper_keys[1]) do
            if self.selected_row == 1 and self.selected_col == i then
                love.graphics.setColor(1,1,0)
            else
                love.graphics.setColor(1,1,1)
            end
            love.graphics.print(v, 75 + (i * 60), 150)
        end
        for i, v in ipairs(self.upper_keys[2]) do
            if self.selected_row == 2 and self.selected_col == i then
                love.graphics.setColor(1,1,0)
            else
                love.graphics.setColor(1,1,1)
            end
            love.graphics.print(v, 75 + (i * 60), 180)
        end
        for i, v in ipairs(self.upper_keys[3]) do
            if self.selected_row == 3 and self.selected_col == i then
                love.graphics.setColor(1,1,0)
            else
                love.graphics.setColor(1,1,1)
            end
            love.graphics.print(v, 75 + (i * 60), 210)
        end
        for i, v in ipairs(self.upper_keys[4]) do
            if self.selected_row == 4 and self.selected_col == i then
                love.graphics.setColor(1,1,0)
            else
                love.graphics.setColor(1,1,1)
            end
            love.graphics.print(v, 75 + (i * 60), 240)
        end

        -- Lowercase
        for i, v in ipairs(self.lower_keys[1]) do
            if self.selected_row == 5 and self.selected_col == i then
                love.graphics.setColor(1,1,0)
            else
                love.graphics.setColor(1,1,1)
            end
            love.graphics.print(v, 75 + (i * 60), 280)
        end
        for i, v in ipairs(self.lower_keys[2]) do
            if self.selected_row == 6 and self.selected_col == i then
                love.graphics.setColor(1,1,0)
            else
                love.graphics.setColor(1,1,1)
            end
            love.graphics.print(v, 75 + (i * 60), 310)
        end
        for i, v in ipairs(self.lower_keys[3]) do
            if self.selected_row == 7 and self.selected_col == i then
                love.graphics.setColor(1,1,0)
            else
                love.graphics.setColor(1,1,1)
            end
            love.graphics.print(v, 75 + (i * 60), 340)
        end
        for i, v in ipairs(self.lower_keys[4]) do
            if self.selected_row == 8 and self.selected_col == i then
                love.graphics.setColor(1,1,0)
            else
                love.graphics.setColor(1,1,1)
            end
            love.graphics.print(v, 75 + (i * 60), 370)
        end

        -- Misc
        if self.selected_row == 9 and self.selected_col == 1 then
            love.graphics.setColor(1,1,0)
        else
            love.graphics.setColor(1,1,1)
        end
        love.graphics.print("Quit", 135, 420)
        if self.selected_row == 9 and self.selected_col == 2 then
            love.graphics.setColor(1,1,0)
        else
            love.graphics.setColor(1,1,1)
        end
        love.graphics.print("Backspace", 250, 420)
        if self.selected_row == 9 and self.selected_col == 3 then
            love.graphics.setColor(1,1,0)
        else
            love.graphics.setColor(1,1,1)
        end
        love.graphics.print("Done", 430, 420)
    elseif self.state == "NAMECONFIRM" then
        love.graphics.setColor(1,1,1)
        love.graphics.printf("Is this correct?", 0, 60, SCREEN_WIDTH, "center")
        love.graphics.printf(self.name, 0 - (self.timer*8.1), 100 + (self.timer/2), SCREEN_WIDTH, "center", 0, 1 + (self.timer/40))

        if self.selected_col == 1 then
            love.graphics.setColor(1,1,0)
        else
            love.graphics.setColor(1,1,1)
        end
        love.graphics.print("No", 150, 420)
        if self.selected_col == 2 then
            love.graphics.setColor(1,1,0)
        else
            love.graphics.setColor(1,1,1)
        end
        love.graphics.print("Yes", 450, 420)
    else
        love.graphics.setColor(1,1,1)
        love.graphics.printf(self.name, 0 - (self.timer*8.1), 100 + (self.timer/2), SCREEN_WIDTH, "center", 0, 1 + (self.timer/40))
    end
end

function NamingScreen:update()
    super.update(self)
    if self.state == "NAMEENTRY" then
        if Input.pressed("down") then
            if self.selected_row < 9 then
                self.selected_row = self.selected_row + 1
            end
        end
        if Input.pressed("up") then
            if self.selected_row > 1 then
                self.selected_row = self.selected_row - 1
            end
        end
        if Input.pressed("left") then
            self.selected_col = self.selected_col - 1
            if self.selected_row < 9 then
                if self.selected_col <= 0 then
                    self.selected_col = 7
                end
            else
                if self.selected_col <= 0 then
                    self.selected_col = 3
                end
            end
        end
        if Input.pressed("right") then
            self.selected_col = self.selected_col + 1
            if self.selected_row < 9 then
                if self.selected_col >= 8 then
                    self.selected_col = 1
                end
            else
                if self.selected_col >= 4 then
                    self.selected_col = 1
                end
            end
        end
        if Input.pressed("confirm") then
            if self.selected_row < 9 then
                if #self.name < 6 then
                    if self.selected_row < 5 then
                        self.name = self.name..self.upper_keys[self.selected_row][self.selected_col]
                    else
                        self.name = self.name..self.lower_keys[self.selected_row-4][self.selected_col]
                    end
                end
            end
            if self.selected_row == 9 then
                if self.selected_col == 1 then
                    if Game:getFlag("notanewsave") then
                        -- Do nothing for now
                    else
                        local newFile = NewFile()
                        newFile.layer = WORLD_LAYERS["ui"]
                        newFile.nodoubleinput = true
                        Game.stage:addChild(newFile)
                        self:remove()
                    end
                elseif self.selected_col == 2 then
                    if #self.name > 0 then
                        self.name = self.name:sub(1, #self.name - 1)
                    end
                else
                    if #self.name > 0 then
                        self.state = "NAMECONFIRM"
                        self.selected_col = 1
                        self.sintimer = 0
                    end
                end
            end
        end
        if Input.pressed("cancel") then
            if #self.name > 0 then
                self.name = self.name:sub(1, #self.name - 1)
            end
        end
        if self.selected_row == 4 and self.selected_col > 5 then
            self.selected_col = 5
        end
        if self.selected_row == 8 and self.selected_col > 5 then
            self.selected_col = 5
        end
        if self.selected_row == 9 and self.selected_col > 3 then
            self.selected_col = 3
        end
    elseif self.state == "NAMECONFIRM" then
        if Input.pressed("confirm") then
            if self.selected_col == 1 then
                self.state = "NAMEENTRY"
                self.selected_col = 3
                self.timer = 0
            else
                Game.save_name = self.name
                local napsta = Game:getPartyMember("napsta")
                napsta.name = self.name
                Game:setFlag("notanewsave", true)
                Assets.stopAndPlaySound("cymbal")
                Game.world.music:fade(0, 1)
                self.state = "NAMEOUTRO"
            end
        end
        if Input.pressed("cancel") then
            self.state = "NAMEENTRY"
            self.selected_col = 3
            self.timer = 0
        end
        if Input.pressed("left") then
            self.selected_col = 1
        end
        if Input.pressed("right") then
            self.selected_col = 2
        end
        if self.timer < 100 then
            self.timer = self.timer + (1*DTMULT)
        end
        self.sintimer = self.sintimer + (1*DTMULT)
    else
        if self.timer < 100 then
            self.timer = self.timer + (1*DTMULT)
        end
        if self.fadetimer < 156 then
            self.fadetimer = self.fadetimer + (1*DTMULT)
            self.fade.alpha = self.fade.alpha + (1*DTMULT)/156
        end
        if self.fadetimer == 156 then
            Game.playtime = 0
            self:remove()
            Game.world.state = "GAMEPLAY"
        end
        self.sintimer = self.sintimer + (1*DTMULT)
    end
    if self.nodoubleinput == true then
        self.name = ""
        self.nodoubleinput = false
    end
end

return NamingScreen