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
# Machine                                  #
############################################

# Coke furnace operating speed
# integer, tick, default: 400
scoreboard players set #galaxy$coke_furnace_dur Config 400

# Advanced blast furnace operating speed
# integer, tick, default: 800
scoreboard players set #galaxy$advanced_blast_furnace_dur Config 800


############################################
# Tool                                     #
############################################

  ########################################
  # Empower Lens                         #
  ########################################

# Weather conditions of the process
# 0 = process in any weather, 1 = only process while thunder weather, 2 = only process while raining (or thunder weather)
# integer, default: 2
scoreboard players set #galaxy$empower_lens_weather_condition Config 2

# Success chance of the process
# higher value mean higher success chance
# float, range: 0 ~ 1.0, default: 0.0005
## see the file at ..\data\galaxy\predicates\configurable\empower_lens_success_chance


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


# Sounds - Action: swap
# boolean, default: 1
scoreboard players set #galaxy$katana_act_swap_sound Config 1

# Sounds - Action: stun
# boolean, default: 1
scoreboard players set #galaxy$katana_act_stun_sound Config 1


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

# Sounds - Action: turn-on/off
# boolean, default: 1
scoreboard players set #galaxy$energy_saber_act_turn_sound Config 1


# Cooldown - Action: turn-on
# integer, tick, default: 30
scoreboard players set #galaxy$energy_saber_act_turn_on_cd Config 30

# Cooldown - Action: turn-off
# integer, tick, default: 30
scoreboard players set #galaxy$energy_saber_act_turn_off_cd Config 30


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

# Enable action:swap on HUD:katana
# boolean, default: 0
scoreboard players set #galaxy$hud_katana_act_swap Config 0

# Enable action:stun on HUD:katana
# boolean, default: 1
scoreboard players set #galaxy$hud_katana_act_stun Config 1

# Enable action:flash on HUD:katana
# boolean, default: 1
scoreboard players set #galaxy$hud_katana_act_flash Config 1

# Enable action:shock on HUD:katana
# boolean, default: 1
scoreboard players set #galaxy$hud_katana_act_shock Config 1


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
