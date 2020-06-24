# sound
execute if score #katana_act_shock_sound Config matches 1 run playsound minecraft:block.note_block.basedrum player @a ~ ~ ~ 1 0
execute if score #katana_act_shock_sound Config matches 1 run playsound minecraft:entity.firework_rocket.large_blast_far player @a ~ ~ ~ 1 0
execute if score #katana_act_shock_sound Config matches 1 run playsound minecraft:entity.firework_rocket.twinkle_far player @a ~ ~ ~ 1 0.6

# particle
execute if score #katana_act_shock_particle Config matches 1 run particle minecraft:block minecraft:gravel ~ ~ ~ 1.25 0.0 1.25 10 75 force @a
