local character, super = Class(PartyMember, "napsta")

function character:init()
    super.init(self)

    self.name = "Napsta"

    self:setActor("kris")

    -- Dark World stuff (SHOULD NEVER BE SEEN IN-GAME, THIS IS JUST THE DEFAULT PARTY MEMBER STUFF)
    self.level = Game.chapter
    self.title = "Player"

    self.soul_priority = 2
    self.soul_color = {1, 30/255, 1}

    self.has_act = true
    self.has_spells = false

    self.has_xact = true
    self.xact_name = "?-Action"

    self:addSpell("heal_prayer")

    self.health = 100

    self.stats = {
        health = 100,
        attack = 10,
        defense = 2,
        magic = 0
    }

    self.weapon_icon = "ui/menu/equip/sword"

    self:setWeapon("wood_blade")
    self:setArmor(1, nil)
    self:setArmor(2, nil)

    self.lw_weapon_default = "ut_weapons/stick"
    self.lw_armor_default = "ut_weapons/stick"

    self.color = {1, 1, 1}
    self.dmg_color = nil
    self.attack_bar_color = nil
    self.attack_box_color = nil
    self.xact_color = nil

    self.menu_icon = "party/kris/head"
    self.head_icons = "party/kris/icon"
    self.name_sprite = "party/kris/name"

    self.attack_sprite = "effects/attack/cut"
    self.attack_sound = "laz_c"
    self.attack_pitch = 1

    self.battle_offset = nil
    self.head_icon_offset = nil
    self.menu_icon_offset = nil

    self.gameover_message = nil
end

return character