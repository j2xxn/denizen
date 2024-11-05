snow_candy_red:
    type: item
    material: red_wool
    display name: <red> Новорічна цукерка
    lore:
    - "Використовуй 10 цукерок для крафту"
    - "Мішечка 1 рівня"

snow_candyevent_red:
    type: world
    events:
        on player right clicks block with:candy:
            - ratelimit <player> 100t
            - take iteminhand
            - narrate "<&f>[<&c>⭐<&f>] - <&f>Конфета с приятным вкусом!"
            - playsound sound:ENTITY_GENERIC_EAT <player>
            - wait 5t
            - playsound sound:ENTITY_GENERIC_EAT <player>
            - wait 5t
            - cast luck duration:30s amplifier:1

snow_candy_yellow:
    type: item
    material: red_wool
    display name: <yellow> Новорічна цукерка
    lore:
    - "Використовуй цукерки для крафту"
    - "Мішечка 1 рівня"

snow_candyevent_yellow:
    type: world
    events:
        on player right clicks block with:candy:
            - ratelimit <player> 100t
            - take iteminhand
            - narrate "<&f>[<&c>⭐<&f>] - <&f>Конфета с приятным вкусом!"
            - playsound sound:ENTITY_GENERIC_EAT <player>
            - wait 5t
            - playsound sound:ENTITY_GENERIC_EAT <player>
            - wait 5t
            - cast luck duration:30s amplifier:1

snow_candy_green:
    type: item
    material: red_wool
    display name: <green> Новорічна цукерка
    lore:
    - "Використовуй цукерки для крафту"
    - "Мішечка 1 рівня"

snow_candyevent_green:
    type: world
    events:
        on player right clicks block with:candy:
            - ratelimit <player> 100t
            - take iteminhand
            - narrate "<&f>[<&c>⭐<&f>] - <&f>Конфета с приятным вкусом!"
            - playsound sound:ENTITY_GENERIC_EAT <player>
            - wait 5t
            - playsound sound:ENTITY_GENERIC_EAT <player>
            - wait 5t
            - cast luck duration:30s amplifier:1

loot_bag1:
    type: item
    material: chest
    display name: <green> Новорічний пакунок 1 рівня
    lore:
    - "Новорічний подарунок від Санти"
    recipes:
        1:
         type: shaped
         input:
         - air|snow_candy_red|air
         - air|snow_candy_yellow|air
         - air|snow_candy_green|air

loot_bag2:
    type: item
    material: chest
    display name: <green> Новорічний пакунок 2 рівня
    lore:
    - "Новорічний подарунок від Санти"
    recipes:
        1:
         type: shaped
         input:
         - air|loot_bag1|air
         - air|loot_bag1|air
         - air|loot_bag1|air

loot_bag3:
    type: item
    material: chest
    display name: <green> Новорічний пакунок 3 рівня
    lore:
    - "Новорічний подарунок від Санти"
    recipes:
        1:
         type: shaped
         input:
         - air|loot_bag2|air
         - air|loot_bag2|air
         - air|loot_bag2|air

lootbag1_droped:
    type: world
    events:
        on player right clicks block with:loot_bag1:
                - ratelimit <player> 60t
                - determine passively cancelled
                - shoot snowball[item=pumpkin_bucket] save:ff speed:0.1 destination:1 destination:<player.location.forward[15]> <player.eye_location>
                - define ent <entry[ff].shot_entity>
                - take iteminhand quantity:1
                - while <[ent].is_spawned>:
                    - define loc <[ent].location>
                    - playeffect effect:FLAME quantity:1 offset:0.1 at:<[loc]> visibility:100
                    - if <util.random_chance[10]>:
                        - playsound <[loc]> sound:ENTITY_WITCH_THROW pitch:0.1
                    - wait 1t
                - playeffect effect:FLAME <[loc].above[-2]>
                - playsound sound:block_amethyst_block_break pitch:3 volume:10 <[loc]>
                - random:
                  - repeat 1:
                    - drop <[snow_candy_red].random[1]> <cuboid[<location[-1,-1,-1]>|<location[1,1,1]>].spawnable_blocks.random> <[loc]>
                  - repeat 1:
                    - drop <[snow_candy_yellow].random[1]> <cuboid[<location[-1,-1,-1]>|<location[1,1,1]>].spawnable_blocks.random> <[loc]>
                  - repeat 1:
                    - drop <[snow_candy_green].random[1]> <cuboid[<location[-1,-1,-1]>|<location[1,1,1]>].spawnable_blocks.random> <[loc]>
                - repeat 10:
                    - playeffect effect:SOUL <[loc]> <location[0,5,0]> quantity:1 visibility:10
                    - wait 1t

lootbag2_droped:
    type: world
    events:
        on player right clicks block with:loot_bag2:
                - ratelimit <player> 60t
                - determine passively cancelled
                - shoot snowball[item=pumpkin_bucket] save:ff speed:0.1 destination:1 destination:<player.location.forward[15]> <player.eye_location>
                - define ent <entry[ff].shot_entity>
                - take iteminhand quantity:1
                - while <[ent].is_spawned>:
                    - define loc <[ent].location>
                    - playeffect effect:FLAME quantity:1 offset:0.1 at:<[loc]> visibility:100
                    - if <util.random_chance[10]>:
                        - playsound <[loc]> sound:ENTITY_WITCH_THROW pitch:0.1
                    - wait 1t
                - playeffect effect:FLAME <[loc].above[-2]>
                - playsound sound:block_amethyst_block_break pitch:3 volume:10 <[loc]>
                - random:
                  - repeat 1:
                    - drop <[iron_ingot].random[1]> <cuboid[<location[-1,-1,-1]>|<location[1,1,1]>].spawnable_blocks.random> <[loc]>
                  - repeat 1:
                    - drop <[emerald].random[1]> <cuboid[<location[-1,-1,-1]>|<location[1,1,1]>].spawnable_blocks.random> <[loc]>
                  - repeat 1:
                    - drop <[diamond].random[1]> <cuboid[<location[-1,-1,-1]>|<location[1,1,1]>].spawnable_blocks.random> <[loc]>
                - repeat 10:
                    - playeffect effect:SOUL <[loc]> <location[0,5,0]> quantity:1 visibility:10
                    - wait 1t

lootbag3_droped:
    type: world
    events:
        on player right clicks block with:loot_bag3:
                - ratelimit <player> 60t
                - determine passively cancelled
                - shoot snowball[item=pumpkin_bucket] save:ff speed:0.1 destination:1 destination:<player.location.forward[15]> <player.eye_location>
                - define ent <entry[ff].shot_entity>
                - take iteminhand quantity:1
                - while <[ent].is_spawned>:
                    - define loc <[ent].location>
                    - playeffect effect:FLAME quantity:1 offset:0.1 at:<[loc]> visibility:100
                    - if <util.random_chance[10]>:
                        - playsound <[loc]> sound:ENTITY_WITCH_THROW pitch:0.1
                    - wait 1t
                - playeffect effect:FLAME <[loc].above[-2]>
                - playsound sound:block_amethyst_block_break pitch:3 volume:10 <[loc]>
                - random:
                  - repeat 1:
                    - drop <[netherite_ingot].random[1]> <cuboid[<location[-1,-1,-1]>|<location[1,1,1]>].spawnable_blocks.random> <[loc]>
                  - repeat 1:
                    - drop <[diamond_block].random[1]> <cuboid[<location[-1,-1,-1]>|<location[1,1,1]>].spawnable_blocks.random> <[loc]>
                  - repeat 1:
                    - drop <[netherite_block].random[1]> <cuboid[<location[-1,-1,-1]>|<location[1,1,1]>].spawnable_blocks.random> <[loc]>
                - repeat 10:
                    - playeffect effect:SOUL <[loc]> <location[0,5,0]> quantity:1 visibility:10
                    - wait 1t

