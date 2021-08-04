execute if entity @p[y_rotation=-45..45] align xz run tp @p ~0.5 ~ ~0.5 0 0
execute if entity @p[y_rotation=45..135] align xz run tp @p ~0.5 ~ ~0.5 90 0
execute if entity @p[y_rotation=135..180] align xz run tp @p ~0.5 ~ ~0.5 180 0
execute if entity @p[y_rotation=-179.9..-135] align xz run tp @p ~0.5 ~ ~0.5 180 0
execute if entity @p[y_rotation=-135..-45] align xz run tp @p ~0.5 ~ ~0.5 -90 0

#summon item_frame ~ ~ ~ {Facing:3}