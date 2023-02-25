setblock -500 55 -2000 chest{Items:[{id:"book"}]}
summon marker -500 55 -2000 {Tags:["cave_1", "persistent","message_controller"],data:{message_slice:[],message:"It's Dangerous to go alone, Take this!",message_end:""}}

data merge entity @e[type=marker,tag=cave_1,limit=1] {data:{message_slice:[],message:"It's Dangerous to go alone, Take this!",message_end:""}}
data modify entity @e[type=marker,tag=cave_1,limit=1] data.message_end set from entity @e[type=marker,tag=cave_1,limit=1] data.message

