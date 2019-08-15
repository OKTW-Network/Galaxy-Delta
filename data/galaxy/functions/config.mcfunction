############################################
# Machine                                  #
############################################

# How long does coke furnace take to complete the recipe?
# integer, tick, default: 400
scoreboard players set #coke_furnace_dur Config 400

# How long does advanced blast furnace take to complete the recipe?
# integer, tick, default: 600
scoreboard players set #advanced_blast_furnace_dur Config 600


############################################
# Weapons                                  #
############################################

  ########################################
  # Katana                               #
  ########################################

# Enable action:swap?
# boolean, default: 1
scoreboard players set #katana_act_swap Config 1

# Enable action:stun?
# boolean, default: 1
scoreboard players set #katana_act_stun Config 1

# Enable action:flash?
# boolean, default: 1
scoreboard players set #katana_act_flash Config 1


# Should action:swap play sounds?
# boolean, default: 1
scoreboard players set #katana_act_swap_sound Config 1

# Should action:stun play sounds?
# boolean, default: 1
scoreboard players set #katana_act_stun_sound Config 1


# How long is the cooldown of action:swap-pull?
# integer, tick, default: 10
scoreboard players set #katana_act_swap_pull_cd Config 10

# How long is the cooldown of action:swap-put?
# integer, tick, default: 10
scoreboard players set #katana_act_swap_put_cd Config 10

# How long is the cooldown of action:stun when hit?
# integer, tick, default: 70
scoreboard players set #katana_act_stun_hit_cd Config 70

# How long is the cooldown of action:stun when miss?
# integer, tick, default: 20
scoreboard players set #katana_act_stun_miss_cd Config 20

# How long is the cooldown of action:flash?
# integer, tick, default: 120
scoreboard players set #katana_act_flash_cd_max Config 120


# How long is the detection timer of action:flash?
# integer, tick, default: 4
scoreboard players set #katana_act_flash_timer Config 4


# Damage of action:flash.
# Set to 0 will disable the damage.
# integer, default: 12
scoreboard players set #katana_act_flash_damage Config 12


############################################
# Status_effects                           #
############################################

# Enable status_effect:stun?
# boolean, default: 1
scoreboard players set #stu_stun Config 1

# Duration of status_effect:stun.
# integer, tick, default: 40
scoreboard players set #stu_stun_dur Config 40

# Damage of status_effect:stun.
# Set to 0 will disable the damage.
# integer, default: 0
scoreboard players set #stu_stun_damage Config 0


############################################
# HUD (Head Up Display)                    #
############################################

# Enable HUD?
# boolean, default: 1
scoreboard players set #hud Config 1


  ########################################
  # Katanas                              #
  ########################################

# Enable HUD:katana?
# boolean, default: 1
scoreboard players set #hud_katana Config 1

# Enable action:swap on HUD:katana?
# Caution: Incompatible with HUD:katana.flash, Enable both will make this one disable!
# boolean, default: 0
scoreboard players set #hud_katana_act_swap Config 0

# Enable action:stun on HUD:katana?
# boolean, default: 1
scoreboard players set #hud_katana_act_stun Config 1

# Enable action:flash on HUD:katana?
# Caution: Incompatible with HUD:katana.swap, Enable both will make that one disable!
# boolean, default: 1
scoreboard players set #hud_katana_act_flash Config 1



############# DO NOT MODIFY ################

tellraw @a ["",{"text":"[Galaxy/config]","color":"yellow"},{"text":" Settings loaded!"}]
