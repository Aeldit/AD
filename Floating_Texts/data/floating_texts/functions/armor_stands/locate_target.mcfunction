##
 # Description: Gives a glowing effect for 5 seconds to the armor stand that will be edited at the current player's position
 # Called by:   Book
 #              ad:ft_locate_target
##

effect give @e[type=armor_stand,distance=..3,limit=1,sort=nearest] glowing 5 1 true
advancement revoke @s only ad:ft_0_locate_target
