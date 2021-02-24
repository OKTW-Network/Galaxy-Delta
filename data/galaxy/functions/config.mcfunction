############################################
# General                                  #
############################################

# Allow version prompt print out while initializing
# 0 = don't print anything, 1 = only print while version changed, 2 = always print version when /reload
# integer, default: 2
scoreboard players set #galaxy_print_version Config 2

# Allow initial prompt print out while initializing
# boolean, default: 0
scoreboard players set #galaxy_print_init Config 0

# Allow config prompt print out while initializing
# boolean, default: 0
scoreboard players set #galaxy_print_config Config 0

  ########################################
  # Target list                          #
  ########################################

# The list will try to fit the result, for example, Enderman is a hostile and neutral mob, make the hostile and neutral option with true and false, the Enderman in the case will not become a target.

# Hostile mobs
# E.g zombie, phantom, enderman, ...
# boolean, default: 1
scoreboard players set #target_hostile Config 1

# Neutral mobs
# E.g wolf, bee, spider, ...
# boolean, default: 1
scoreboard players set #target_neutral Config 1

# Passive mobs
# E.g sheep, squid, pufferfish, ...
# boolean, default: 1
scoreboard players set #target_passive Config 1


############################################
# Machine                                  #
############################################

# Coke furnace operating speed
# integer, tick, default: 400
scoreboard players set #coke_furnace_dur Config 400

# Advanced blast furnace operating speed
# integer, tick, default: 800
scoreboard players set #advanced_blast_furnace_dur Config 800


############################################
# Tool                                     #
############################################

  ########################################
  # Empower Lens                         #
  ########################################

# Weather conditions of the process
# 0 = process in any weather, 1 = only process while thunder weather, 2 = only process while raining (or thunder weather)
# integer, default: 2
scoreboard players set #empower_lens_weather_condition Config 2

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

# Enable action: stun
# boolean, default: 1
scoreboard players set #katana_act_stun Config 1

# Enable action: flash
# boolean, default: 1
scoreboard players set #katana_act_flash Config 1

# Enable action: shock
# boolean, default: 1
scoreboard players set #katana_act_shock Config 1


# Action: swap - play sounds
# boolean, default: 1
scoreboard players set #katana_act_swap_sound Config 1

# Action: stun - play sounds
# boolean, default: 1
scoreboard players set #katana_act_stun_sound Config 1

# Action: shock - play sounds
# boolean, default: 1
scoreboard players set #katana_act_shock_sound Config 1


# Action: shock - particles
# boolean, default: 1
scoreboard players set #katana_act_shock_particle Config 1


# Action: swap-pull - cooldown
# integer, tick, default: 10
scoreboard players set #katana_act_swap_pull_cd Config 10

# Action: swap-put - cooldown
# integer, tick, default: 10
scoreboard players set #katana_act_swap_put_cd Config 10

# Action: stun - cooldown when hit
# integer, tick, default: 60
scoreboard players set #katana_act_stun_hit_cd Config 60

# Action: stun - cooldown when miss
# integer, tick, default: 20
scoreboard players set #katana_act_stun_miss_cd Config 20

# Action: flash - cooldown max
# integer, tick, default: 80
scoreboard players set #katana_act_flash_cd_max Config 80

# Action: shock - cooldown
# integer, tick, default: 120
scoreboard players set #katana_act_shock_cd Config 120


# Action: flash - detection timer
# Not recommended higher than or equal to 5.
# integer, tick, default: 4
scoreboard players set #katana_act_flash_timer Config 4


# Action: flash - distance limit
# integer, block, default: 5
scoreboard players set #katana_act_flash_distance_limit Config 5


# Action: stun - damage
# integer, default: 1
scoreboard players set #katana_act_stun_damage Config 1

# Action: flash - damage
# integer, default: 16
scoreboard players set #katana_act_flash_damage Config 16

# Action: shock - damage base
# integer, default: 10
scoreboard players set #katana_act_shock_damage_base Config 10

# Action: shock - damage per block
# integer, default: 2
scoreboard players set #katana_act_shock_damage_addition Config 2


  ########################################
  # Energy saber                         #
  ########################################

# Action: turn-on/off play sounds
# boolean, default: 1
scoreboard players set #energy_saber_act_turn_sound Config 1


# Action: turn-on cooldown
# integer, tick, default: 30
scoreboard players set #energy_saber_act_turn_on_cd Config 30

# Action: turn-off cooldown
# integer, tick, default: 30
scoreboard players set #energy_saber_act_turn_off_cd Config 30


############################################
# Status effects                           #
############################################

# Enable status_effect:stun
# boolean, default: 1
scoreboard players set #stu_stun Config 1

# Status_effect:stun duration
# integer, tick, default: 40
scoreboard players set #stu_stun_dur Config 40


############################################
# HUD (Head Up Display)                    #
############################################

# HUD by using title, subtitle, actionbar, bossbar, scoreboard side display.


  ########################################
  # Katana                               #
  ########################################

# Enable HUD:katana
# boolean, default: 1
scoreboard players set #hud_katana Config 1

# Enable action:swap on HUD:katana
# boolean, default: 0
scoreboard players set #hud_katana_act_swap Config 0

# Enable action:stun on HUD:katana
# boolean, default: 1
scoreboard players set #hud_katana_act_stun Config 1

# Enable action:flash on HUD:katana
# boolean, default: 1
scoreboard players set #hud_katana_act_flash Config 1

# Enable action:shock on HUD:katana
# boolean, default: 1
scoreboard players set #hud_katana_act_shock Config 1


  ########################################
  # Pistol                               #
  ########################################

# Enable HUD:gun
# boolean, default: 1
scoreboard players set #hud_gun Config 1

# Enable single gun on HUD:gun
# boolean, default: 1
scoreboard players set #hud_gun_single Config 1

# Enable double gun on HUD:gun
# boolean, default: 1
scoreboard players set #hud_gun_double Config 1



############# DO NOT MODIFY #############

execute if score #galaxy_print_config Config matches 1 run tellraw @a ["",{"text":"[Galaxy]: ","color":"yellow","bold":true},{"text":"Config: "},{"text":"Settings loaded!"}]
