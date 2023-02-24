summon block_display ~ ~ ~ {CustomName:'"tektike"',block_state:{Name:"sculk_catalyst"},Tags:["tektike","display","red"]}
summon interaction ~ ~ ~ {CustomName:'"tektike"',Tags:["tektike","hitbox","red"]}

summon armor_stand ~ ~ ~ {CustomName:'"red tektike"',Invisible:1b, Small:1b, Tags:["tektike","controller","red"],Passengers:[{id:"block_display",CustomName:'"red tektike"',block_state:{Name:"sculk_catalyst"},"transformation":{"translation":[0.5f,0.25f,0.5f],scale:[1f,1f,1f],left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f]},Tags:["tektike","display","red"], Passengers:[{id:"interaction",CustomName:'"red tektike"',Tags:["tektike","hitbox","red"]}]}]}
summon area_effect_cloud ~ ~ ~ {Passengers:[{id}]}