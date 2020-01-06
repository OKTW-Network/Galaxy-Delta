############################################
# General                                  #
############################################

# Allow version prompt print out
# 0 = don't print anything, 1 = only print while version changed, 2 = always print version when /reload
# integer, default: 2
scoreboard players set #galaxy_print_version Config 2

# Allow module init prompt print out
# boolean, default: 0
scoreboard players set #galaxy_print_init Config 0

# Allow config prompt print out
# boolean, default: 0
scoreboard players set #galaxy_print_config Config 0


############################################
# Machine                                  #
############################################

# Coke furnace operating speed
# integer, tick, default: 400
scoreboard players set #coke_furnace_dur Config 400

# Advanced blast furnace operating speed
# integer, tick, default: 600
scoreboard players set #advanced_blast_furnace_dur Config 600


############################################
# Tool                                     #
############################################

  ########################################
  # Shield projector                     #
  ########################################

# Enable shield projector
# boolean, default: 1
scoreboard players set #shield_projector Config 1

# Shield regen cooldown
# for example, 20 means shield regen will only start until 20 tick after the attack.
# integer, tick, default: 60
scoreboard players set #shield_regen_cd Config 60

# Shield regen speed
# for example, 20 means every 20 tick regen 4 shield point.
# integer, tick, default: 20
scoreboard players set #shield_regen_speed Config 20

  ########################################
  # Structure empower                    #
  ########################################

# Enable Structure empower
# boolean, default: 1
scoreboard players set #structure_empower Config 1

# Weather conditions of the process
# 0 = process in any weather, 1 = only process while thunder weather, 2 = only process while raining (or thunder weather)
# integer, default: 2
scoreboard players set #structure_empower_weather_condition Config 2

# Success chance of the process
# for example, 100 means every tick has a 1/100 chance to successfully process
# higher value mean lower success chance
# integer, default: 2000
scoreboard players set #structure_empower_success_chance Config 2000


############################################
# Weapon                                   #
############################################

  ########################################
  # Katana                               #
  ########################################

# Enable action: swap
# boolean, default: 1
scoreboard players set #katana_act_swap Config 1

# Enable action: stun
# boolean, default: 1
scoreboard players set #katana_act_stun Config 1

# Enable action: flash
# boolean, default: 1
scoreboard players set #katana_act_flash Config 1


# Action: swap - play sounds
# boolean, default: 1
scoreboard players set #katana_act_swap_sound Config 1

# Action: stun - play sounds
# boolean, default: 1
scoreboard players set #katana_act_stun_sound Config 1


# Action: swap-pull - cooldown
# integer, tick, default: 10
scoreboard players set #katana_act_swap_pull_cd Config 10

# Action: swap-put - cooldown
# integer, tick, default: 10
scoreboard players set #katana_act_swap_put_cd Config 10

# Action: stun - cooldown when hit
# integer, tick, default: 70
scoreboard players set #katana_act_stun_hit_cd Config 70

# Action: stun - cooldown when miss
# integer, tick, default: 20
scoreboard players set #katana_act_stun_miss_cd Config 20

# Action: flash - cooldown
# integer, tick, default: 120
scoreboard players set #katana_act_flash_cd_max Config 120


# Action: flash - detection timer
# Not recommended higher than or equal to 5.
# integer, tick, default: 4
scoreboard players set #katana_act_flash_timer Config 4


# Action: flash - distance limit
# integer, block, default: 5
scoreboard players set #katana_act_flash_distance_limit Config 5


# Action: flash - damage
# Set to 0 will disable the damage.
# integer, default: 12
scoreboard players set #katana_act_flash_damage Config 12

  ########################################
  # Energy saber                         #
  ########################################

# Enable action:turn-on/off
# boolean, default: 1
scoreboard players set #energy_saber_act_turn Config 1


# Action: turn-on/off play sounds
# boolean, default: 1
scoreboard players set #energy_saber_act_turn_sound Config 1


# Action: turn-on cooldown
# integer, tick, default: 30
scoreboard players set #energy_saber_act_turn_on_cd Config 30

# Action: turn-off cooldown
# integer, tick, default: 30
scoreboard players set #energy_saber_act_turn_off_cd Config 30

  ########################################
  # Pistol                               #
  ########################################

# Enable firing mode: single
# boolean, default: 1
scoreboard players set #pistol_fire_single Config 1

# Enable firing mode: switch
# boolean, default: 1
scoreboard players set #pistol_fire_switch Config 1

# Enable firing mode: double
# boolean, default: 1
scoreboard players set #pistol_fire_double Config 1


############################################
# Status effects                           #
############################################

# Enable status_effect:stun
# boolean, default: 1
scoreboard players set #stu_stun Config 1

# Status_effect:stun duration
# integer, tick, default: 40
scoreboard players set #stu_stun_dur Config 40

# Atatus_effect:stun damage
# Set to 0 will disable the damage.
# integer, default: 0
scoreboard players set #stu_stun_damage Config 0


############################################
# HUD (Head Up Display)                    #
############################################

# Enable HUD
# title, subtitle, actionbar, bossbar, scoreboard side display
# boolean, default: 1
scoreboard players set #hud Config 1


  ########################################
  # Katana                               #
  ########################################

# Enable HUD:katana
# boolean, default: 1
scoreboard players set #hud_katana Config 1

# Enable action:swap on HUD:katana
# Caution: Incompatible with HUD:katana.flash, Enable both will make this one disable!
# boolean, default: 0
scoreboard players set #hud_katana_act_swap Config 0

# Enable action:stun on HUD:katana
# boolean, default: 1
scoreboard players set #hud_katana_act_stun Config 1

# Enable action:flash on HUD:katana
# Caution: Incompatible with HUD:katana.swap, Enable both will make that one disable!
# boolean, default: 1
scoreboard players set #hud_katana_act_flash Config 1


  ########################################
  # Pistol                               #
  ########################################

# Enable HUD:pistol
# boolean, default: 1
scoreboard players set #hud_pistol Config 1

# Enable single pistol on HUD:pistol
# boolean, default: 1
scoreboard players set #hud_pistol_single Config 1

# Enable double pistol on HUD:pistol
# boolean, default: 1
scoreboard players set #hud_pistol_double Config 1


  ########################################
  # Shield projector                     #
  ########################################

# Enable HUD:shield_projector
# boolean, default: 1
scoreboard players set #hud_shield_projector Config 1



############# DO NOT MODIFY #############

execute if score #galaxy_print_config Config matches 1 run tellraw @a ["",{"text":"[Galaxy]: ","color":"yellow","bold":true},{"text":"Config: "},{"text":"Settings loaded!"}]
