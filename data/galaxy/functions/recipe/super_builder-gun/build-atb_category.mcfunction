###IMPORTANT### go check out ../gui/meta/scoreboard/set_score if you modify this file

execute if score @s sbldAttribute matches 0 run replaceitem block ~ ~ ~ container.1 golden_hoe{display:{Name:'{"translate":"attribute.projectile.trace","italic":false}'},HideFlags:63,CustomModelData:10122,guiItem:1}
execute if score @s sbldAttribute matches 0 run replaceitem block ~ ~ ~ container.10 golden_hoe{display:{Name:'{"translate":"attribute.type","italic":false}'},HideFlags:63,CustomModelData:10120,guiItem:1}
execute if score @s sbldAttribute matches 0 run replaceitem block ~ ~ ~ container.19 golden_hoe{display:{Name:'{"translate":"attribute.style","italic":false}'},HideFlags:63,CustomModelData:10108,guiItem:1}

execute if score @s sbldAttribute matches 1 run replaceitem block ~ ~ ~ container.1 golden_hoe{display:{Name:'{"translate":"attribute.type","italic":false}'},HideFlags:63,CustomModelData:10120,guiItem:1}
execute if score @s sbldAttribute matches 1 run replaceitem block ~ ~ ~ container.10 golden_hoe{display:{Name:'{"translate":"attribute.style","italic":false}'},HideFlags:63,CustomModelData:10108,guiItem:1}
execute if score @s sbldAttribute matches 1 run replaceitem block ~ ~ ~ container.19 golden_hoe{display:{Name:'{"translate":"attribute.projectile.damage","italic":false}'},HideFlags:63,CustomModelData:10109,guiItem:1}

execute if score @s sbldAttribute matches 2 run replaceitem block ~ ~ ~ container.1 golden_hoe{display:{Name:'{"translate":"attribute.style","italic":false}'},HideFlags:63,CustomModelData:10108,guiItem:1}
execute if score @s sbldAttribute matches 2 run replaceitem block ~ ~ ~ container.10 golden_hoe{display:{Name:'{"translate":"attribute.projectile.damage","italic":false}'},HideFlags:63,CustomModelData:10109,guiItem:1}
execute if score @s sbldAttribute matches 2 run replaceitem block ~ ~ ~ container.19 golden_hoe{display:{Name:'{"translate":"attribute.delay","italic":false}'},HideFlags:63,CustomModelData:10111,guiItem:1}

execute if score @s sbldAttribute matches 3 run replaceitem block ~ ~ ~ container.1 golden_hoe{display:{Name:'{"translate":"attribute.projectile.damage","italic":false}'},HideFlags:63,CustomModelData:10109,guiItem:1}
execute if score @s sbldAttribute matches 3 run replaceitem block ~ ~ ~ container.10 golden_hoe{display:{Name:'{"translate":"attribute.delay","italic":false}'},HideFlags:63,CustomModelData:10111,guiItem:1}
execute if score @s sbldAttribute matches 3 run replaceitem block ~ ~ ~ container.19 golden_hoe{display:{Name:'{"translate":"attribute.projectile.distance","italic":false}'},HideFlags:63,CustomModelData:10110,guiItem:1}

execute if score @s sbldAttribute matches 4 run replaceitem block ~ ~ ~ container.1 golden_hoe{display:{Name:'{"translate":"attribute.delay","italic":false}'},HideFlags:63,CustomModelData:10111,guiItem:1}
execute if score @s sbldAttribute matches 4 run replaceitem block ~ ~ ~ container.10 golden_hoe{display:{Name:'{"translate":"attribute.projectile.distance","italic":false}'},HideFlags:63,CustomModelData:10110,guiItem:1}
execute if score @s sbldAttribute matches 4 run replaceitem block ~ ~ ~ container.19 golden_hoe{display:{Name:'{"translate":"attribute.max_temperature","italic":false}'},HideFlags:63,CustomModelData:10112,guiItem:1}

execute if score @s sbldAttribute matches 5 run replaceitem block ~ ~ ~ container.1 golden_hoe{display:{Name:'{"translate":"attribute.projectile.distance","italic":false}'},HideFlags:63,CustomModelData:10110,guiItem:1}
execute if score @s sbldAttribute matches 5 run replaceitem block ~ ~ ~ container.10 golden_hoe{display:{Name:'{"translate":"attribute.max_temperature","italic":false}'},HideFlags:63,CustomModelData:10112,guiItem:1}
execute if score @s sbldAttribute matches 5 run replaceitem block ~ ~ ~ container.19 golden_hoe{display:{Name:'{"translate":"attribute.heat","italic":false}'},HideFlags:63,CustomModelData:10113,guiItem:1}

execute if score @s sbldAttribute matches 6 run replaceitem block ~ ~ ~ container.1 golden_hoe{display:{Name:'{"translate":"attribute.max_temperature","italic":false}'},HideFlags:63,CustomModelData:10112,guiItem:1}
execute if score @s sbldAttribute matches 6 run replaceitem block ~ ~ ~ container.10 golden_hoe{display:{Name:'{"translate":"attribute.heat","italic":false}'},HideFlags:63,CustomModelData:10113,guiItem:1}
execute if score @s sbldAttribute matches 6 run replaceitem block ~ ~ ~ container.19 golden_hoe{display:{Name:'{"translate":"attribute.cooling","italic":false}'},HideFlags:63,CustomModelData:10114,guiItem:1}

execute if score @s sbldAttribute matches 7 run replaceitem block ~ ~ ~ container.1 golden_hoe{display:{Name:'{"translate":"attribute.heat","italic":false}'},HideFlags:63,CustomModelData:10113,guiItem:1}
execute if score @s sbldAttribute matches 7 run replaceitem block ~ ~ ~ container.10 golden_hoe{display:{Name:'{"translate":"attribute.cooling","italic":false}'},HideFlags:63,CustomModelData:10114,guiItem:1}
execute if score @s sbldAttribute matches 7 run replaceitem block ~ ~ ~ container.19 golden_hoe{display:{Name:'{"translate":"attribute.colling_delay","italic":false}'},HideFlags:63,CustomModelData:10115,guiItem:1}

execute if score @s sbldAttribute matches 8 run replaceitem block ~ ~ ~ container.1 golden_hoe{display:{Name:'{"translate":"attribute.cooling","italic":false}'},HideFlags:63,CustomModelData:10114,guiItem:1}
execute if score @s sbldAttribute matches 8 run replaceitem block ~ ~ ~ container.10 golden_hoe{display:{Name:'{"translate":"attribute.colling_delay","italic":false}'},HideFlags:63,CustomModelData:10115,guiItem:1}
execute if score @s sbldAttribute matches 8 run replaceitem block ~ ~ ~ container.19 golden_hoe{display:{Name:'{"translate":"attribute.projectile.speed","italic":false}'},HideFlags:63,CustomModelData:10116,guiItem:1}

execute if score @s sbldAttribute matches 9 run replaceitem block ~ ~ ~ container.1 golden_hoe{display:{Name:'{"translate":"attribute.colling_delay","italic":false}'},HideFlags:63,CustomModelData:10115,guiItem:1}
execute if score @s sbldAttribute matches 9 run replaceitem block ~ ~ ~ container.10 golden_hoe{display:{Name:'{"translate":"attribute.projectile.speed","italic":false}'},HideFlags:63,CustomModelData:10116,guiItem:1}
execute if score @s sbldAttribute matches 9 run replaceitem block ~ ~ ~ container.19 golden_hoe{display:{Name:'{"translate":"attribute.projectile.offset","italic":false}'},HideFlags:63,CustomModelData:10117,guiItem:1}

execute if score @s sbldAttribute matches 10 run replaceitem block ~ ~ ~ container.1 golden_hoe{display:{Name:'{"translate":"attribute.projectile.speed","italic":false}'},HideFlags:63,CustomModelData:10116,guiItem:1}
execute if score @s sbldAttribute matches 10 run replaceitem block ~ ~ ~ container.10 golden_hoe{display:{Name:'{"translate":"attribute.projectile.offset","italic":false}'},HideFlags:63,CustomModelData:10117,guiItem:1}
execute if score @s sbldAttribute matches 10 run replaceitem block ~ ~ ~ container.19 golden_hoe{display:{Name:'{"translate":"attribute.projectile.penetrate","italic":false}'},HideFlags:63,CustomModelData:10121,guiItem:1}

execute if score @s sbldAttribute matches 11 run replaceitem block ~ ~ ~ container.1 golden_hoe{display:{Name:'{"translate":"attribute.projectile.offset","italic":false}'},HideFlags:63,CustomModelData:10117,guiItem:1}
execute if score @s sbldAttribute matches 11 run replaceitem block ~ ~ ~ container.10 golden_hoe{display:{Name:'{"translate":"attribute.projectile.penetrate","italic":false}'},HideFlags:63,CustomModelData:10121,guiItem:1}
execute if score @s sbldAttribute matches 11 run replaceitem block ~ ~ ~ container.19 golden_hoe{display:{Name:'{"translate":"attribute.projectile.trace","italic":false}'},HideFlags:63,CustomModelData:10122,guiItem:1}

execute if score @s sbldAttribute matches 12 run replaceitem block ~ ~ ~ container.1 golden_hoe{display:{Name:'{"translate":"attribute.projectile.penetrate","italic":false}'},HideFlags:63,CustomModelData:10121,guiItem:1}
execute if score @s sbldAttribute matches 12 run replaceitem block ~ ~ ~ container.10 golden_hoe{display:{Name:'{"translate":"attribute.projectile.trace","italic":false}'},HideFlags:63,CustomModelData:10122,guiItem:1}
execute if score @s sbldAttribute matches 12 run replaceitem block ~ ~ ~ container.19 golden_hoe{display:{Name:'{"translate":"attribute.type","italic":false}'},HideFlags:63,CustomModelData:10120,guiItem:1}
