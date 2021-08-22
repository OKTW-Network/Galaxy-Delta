############################################
# General                                  #
############################################

# Allow version prompt print out while initializing
# 0 = don't print anything, 1 = only print while version changed, 2 = always print version when /reload
# integer, default: 2
scoreboard players set #galaxy$print_version Config 2

# Allow initial prompt print out while initializing
# boolean, default: 0
scoreboard players set #galaxy$print_init Config 0

# Allow config prompt print out while initializing
# boolean, default: 0
scoreboard players set #galaxy$print_config Config 0

  ########################################
  # Target list                          #
  ########################################

# The list will try to fit the result, for example, Enderman is a hostile and neutral mob, make the hostile and neutral option with true and false, the Enderman in the case will not become a target.

# Hostile mobs
# E.g zombie, phantom, enderman, ...
# boolean, default: 1
scoreboard players set #galaxy$target_hostile Config 1

# Neutral mobs
# E.g wolf, bee, spider, ...
# boolean, default: 1
scoreboard players set #galaxy$target_neutral Config 1

# Passive mobs
# E.g sheep, squid, pufferfish, ...
# boolean, default: 1
scoreboard players set #galaxy$target_passive Config 1


############################################
# Block                                    #
############################################

# Coke furnace operating speed
# integer, tick, default: 400
scoreboard players set #galaxy$coke_furnace_dur Config 400

# Advanced blast furnace operating speed
# integer, tick, default: 800
scoreboard players set #galaxy$advanced_blast_furnace_dur Config 800


############################################
# Weapon                                   #
############################################

  ########################################
  # Katana                               #
  ########################################

# Enable Action: stun
# boolean, default: 1
scoreboard players set #galaxy$katana_act_stun Config 1

# Enable Action: flash
# boolean, default: 1
scoreboard players set #galaxy$katana_act_flash Config 1


# Action: flash - charge
# > false(0) = double click
# > true(1) = hold, then release
# boolean, default: 1
scoreboard players set #galaxy$katana_act_flash_charge Config 1


# Cooldown - Action: swap-pull
# integer, tick, default: 10
scoreboard players set #galaxy$katana_act_swap_pull_cd Config 10

# Cooldown - Action: swap-put
# integer, tick, default: 10
scoreboard players set #galaxy$katana_act_swap_put_cd Config 10

# Cooldown (hit) - Action: stun
# integer, tick, default: 60
scoreboard players set #galaxy$katana_act_stun_hit_cd Config 60

# Cooldown (miss) - Action: stun
# integer, tick, default: 20
scoreboard players set #galaxy$katana_act_stun_miss_cd Config 20

# Cooldown (max) - Action: flash
# integer, tick, default: 80
scoreboard players set #galaxy$katana_act_flash_cd_max Config 80


  ########################################
  # Energy saber                         #
  ########################################

# Cooldown - Action: turn-on
# integer, tick, default: 30
scoreboard players set #galaxy$energy_saber_act_turn_on_cd Config 30

# Cooldown - Action: turn-off
# integer, tick, default: 30
scoreboard players set #galaxy$energy_saber_act_turn_off_cd Config 30


  ########################################
  # Gun                                  #
  ########################################

# Allow sniper rifle charge
# > false(0) = shoot instantly
# > true(1) = hold, then release
# boolean, default: 1
scoreboard players set #galaxy$gun_sniper_charge Config 1


############################################
# Status effects                           #
############################################

# Enable status_effect:stun
# boolean, default: 1
scoreboard players set #galaxy$status_effect_stun Config 1


############################################
# HUD (Head Up Display)                    #
############################################

# HUD by using title, subtitle, actionbar, bossbar, scoreboard side display.


  ########################################
  # Katana                               #
  ########################################

# Enable HUD:katana
# boolean, default: 1
scoreboard players set #galaxy$hud_katana Config 1

# Enable action:stun on HUD:katana
# boolean, default: 1
scoreboard players set #galaxy$hud_katana_act_stun Config 1

# Enable action:flash on HUD:katana
# boolean, default: 1
scoreboard players set #galaxy$hud_katana_act_flash Config 1


  ########################################
  # Pistol                               #
  ########################################

# Enable HUD:gun
# boolean, default: 1
scoreboard players set #galaxy$hud_gun Config 1

# Enable type1 gun on HUD:gun
# boolean, default: 1
scoreboard players set #galaxy$hud_gun_type1 Config 1

# Enable type2 gun on HUD:gun
# boolean, default: 1
scoreboard players set #galaxy$hud_gun_type2 Config 1

# Enable type3 gun on HUD:gun
# boolean, default: 1
scoreboard players set #galaxy$hud_gun_type3 Config 1
