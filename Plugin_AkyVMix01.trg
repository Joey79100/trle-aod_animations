;------------------ Section for flipeffect trigger: description of the trigger -------------------------------
<START_TRIGGERWHAT_9_O_H>
500:Inventory-Item. Set infinite amount for <&> inventory-item #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It sets infinite amount during the game. (Because Equipment Script command can set it only for the game start, typing -1 amount in it, and F50 can't set infinite amount during the game.)

---------- Notes: ----------

- Force a countable value with another "Inventory-Item" flipeffect, to remove the infinite status.
- I always suggest this trigger for infinte ammo in the case of shotgun ammo types. I experienced buggy solution if I made them infinite with an Equipment command.
- Useable only with ammmo, medipack or flare. Key or puzzle items are useless both with Equipment and F500, that is why I didn't add them to the trigger.

See Customize= CUST_SET_INV_ITEM Script command if you want infinite key/puzzle items (only if Lara picked them up). But their countable status cannot be restored after that!

Or, you can use an F48 (in "hidden way") or an F50, overlapped with the KEY trigger, to set a new copy of the key/puzzle item in the inventory, when the item is used in the keyhole. So it looks as if it were an infinite item:

a, F48 for keys
b, F50 (for 1 amount) for keys
c, F48 (always One Shot) for puzzle items
d, F50 (for the item amount that you have just before using the item) for puzzle items.

As for other inventory items, never try to make them infinite.

----------------------------
#END_DOC#
501:Inventory-Item. Set (E) big number of <&> inventory-item #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It sets a bigger amount, which is useful for two reasons:

- Equipment Script command is unable to set a bigger amount, when the game starts.
- F50 is unable to set a bigger amount than 127, during the game. And, if you want to adjust eg. 5000 amount, during the game, then it is really boring if you can adjust it only using several F50 triggers at the same time, adding 127+127+127+… to the inventory.

---------- Notes: ----------

- 32767 is the maximum amount per item. Except shotgun ammo, where it is 5461. If you want to adjust a bigger number than the limit, then automatically the limit will be set.
- If you set an odd number for a dual weapon, then the number naturally will remain odd after each dual shot. So, when it decreases to 1 bullet in the inventory, and you shoot again, then only one of the weapons will shoot.
- Useable only with ammmo, medipack or flare. I mean, I thought there was no reason to make the trigger useable for puzzle items as well. I don't think if anybody has more than 127 PUZZLE_ITEM2 - or any other puzzle item - at the same time.
As for other inventory items, they cannot have a bigger amount than 1, it is also meaningless to talk about a big amount in their cases.

----------------------------
#END_DOC#
502:Inventory-Item. Increase the number of <&> inventory-item with (E) big number #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It adds a "real" amount.
I mean, F48 is able to add only 1 amount, during the game. And, if you want to add eg. 5000 amount, then it is really boring if you can add it only using several F48 triggers at the same time, adding 1+1+1+… to the inventory.

---------- Notes: ----------

- The new (aggregated) amount will be 32767 everyway, if the real aggregate (of the original inventory amount and the added amount) is bigger than 32767. This limit is 5461 for shotgun ammo.
- I recommend F48 trigger instead of F502 if you want to show animation. F502 is able to work only in the hidden way. Perhaps you can combine it:
X low amount+Y high amount= Z high amount. If you want animation for the Z high amount, thend use F48 for X amount, and, at the same time, F502 for the Y high amount.
- Useable only with ammmo, medipack or flare. I mean, I thought there was no reason to use it for puzzle items, since their amount is never too big. Adding 1+1+1+... with F48 is just enough. 
As for other inventory items, they cannot have a bigger amount than 1, it is also meaningless to talk about a big addition in their cases.

----------------------------
#END_DOC#
503:Inventory-Item. Decrease the number of <&> inventory-item with (E) big number #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It subtracts a "real" amount.
I mean, F49 trigger is able to remove only 1 amount, during the game. And, if you want to remove eg. 5000 amount, then it is really boring if you can remove it only using several F49 triggers at the same time, removing 1+1+1+… from the inventory.

---------- Notes: ----------

- The item will be totally removed from the inventory, if the result is negative when you subtract the amount from the original inventory amount.
- Useable only with ammmo, medipack or flare. I mean, I thought there was no reason to use it for puzzle items, since their amount is never too big. Subtracting 1+1+1+... with F49 is just enough.
As for other inventory items, they cannot have a bigger amount than 1, it is also meaningless to talk about a big subtraction in their cases.

----------------------------
#END_DOC#
504:Lara. (Weapons) Attach lasersight on <&> weapon #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It attaches the lasersight on the revolver or the crossbow.
It is useful, because it will do that during the game. Equipment Script command is able to do that only for the start of the game.

---------- Notes: ----------

- The trigger works even if the weapon is just in Lara's hand.
- The trigger has no effect if you don't have the required weapon or the lasersight either.
- If the lasersight is just attached to the other weapon, then it will be detached naturally first.
- The proper meshes will be seeable.
- Sometimes it is possible to have two lasersights temporarily in the inventory. – See eg. this Script:

Equipment= LASERSIGHT_ITEM, 1
Equipment= SIXSHOOTER_ITEM, 1+LOAD_LASERSIGHT

It is naturally an invalid Script, don’t do this, or else perhaps this trigger will fail!

----------------------------
#END_DOC#
505:Lara. (Weapons) Detach lasersight from <&> weapon #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It detaches the lasersight only from the revolver/crossbow, or from any of those weapon.

---------- Notes: ----------

- The trigger works even if the weapon is just in Lara's hand.
- The trigger has no effect if the required weapon is not in the inventory, with the lasersight attached.
- The proper meshes will be seeable.
- Sometimes it is possible to have two lasersights temporarily in the inventory. – See eg. this Script:

Equipment= LASERSIGHT_ITEM, 1
Equipment= SIXSHOOTER_ITEM, 1+LOAD_LASERSIGHT

It is naturally an invalid Script, don’t do this, or else perhaps this trigger will fail!

----------------------------
#END_DOC#
506:Lara. (Weapons) Load <&> ammo in the shotgun #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It loads normal or wideshot ammo into the shotgun.
It is useful, because it will do that during the game (even if the weapon is in Lara’s hand). Equipment Script command is able to do that only for the start of the game.

---------- Note: ----------

The trigger has no effect if the weapon is not in the inventory.

----------------------------
#END_DOC#
507:Lara. (Weapons) Load <&> ammo in the grenade gun #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It loads normal, super or flash ammo into the grenade gun.
It is useful, because it will do that during the game (even if the weapon is in Lara’s hand). Equipment Script command is able to do that only for the start of the game.

---------- Note: ----------

The trigger has no effect if the weapon is not in the inventory.

----------------------------
#END_DOC#
508:Lara. (Weapons) Load <&> ammo in the crossbow #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It loads normal, poisoned or explosive ammo into the crossbow.
It is useful, because it will do that during the game (even if the weapon is in Lara’s hand). Equipment Script command is able to do that only for the start of the game

---------- Note: ----------

The trigger has no effect if the weapon is not in the inventory.

----------------------------
#END_DOC#
509:Lara. (Weapons) Make Lara extract <&> weapon immediately #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It makes Lara extract the required weapon. (Even if that is not the latest weapon selected. So this is more than a "simulate SPACE to extract the actual weapon" trigger.)

---------- Notes: ----------

- If another weapon is just in the hands, then Lara will holster it before, automatically.
- If anything else (flare, torch) are just in the hand, then Lara will drop it before, automatically.
- The trigger naturally has no effect if the required weapon is just in the hand or not in the inventory.
- If you want to extract this weapon only later, after a trigger activation, if the player hits SPACE the next time to extract any weapon, then the trigger is an F408 instead. If you are not sure that weapon is picked up, then place a condition trigger (C2) for that F408, to check if the weapon is already in the inventory.
- If you want a similar method to force a flare to be extracted, then use F53.
- "Lower the weapon, but not holstering it" - you don't need a plugin for that, just use an F12.

----------------------------
#END_DOC#
510:Lara. (Holds) Make the flare go dead in Lara’s hand in <&> seconds from now on #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It puts out the actual flare in Lara's hand, in the required time (even right away).

---------- Notes: ----------

- The flare won't forget about this forced value if Lara drops it before putting out - which is important if she picks it up later, before it goes dead on the ground. If she extract a new flare, that won’t apply this value, it uses the default (or customized in CUST_FLARE) flare maximum lifetime.
- This trigger is useful either to decrease or increase the default/customized maximum lifetime for the actual flare. Even the value itself can exceed the maximum lifetime.
- The trigger activation is useless for flares already dropped down on the floor.
- No trigger effect when Lara has no flare in the hand.
- Naturally if the lifetime is too short, then the "dying" (blinking) phase of the flare will be also shorter.
- The required time perhaps will be messed in the new level (i.e. it will be shorter/longer, more or less) for this only one flare, if Lara - just holding a flare - jumps to another level, after the activation of the trigger.
So I don't recommend F510 near FINISH triggers usually. (I recommend it only if the required time is less then the maximum lifetime, and the two levels have the same maximum time. Or it is also recommended if it doesn't matter for you if the lifetime of only one flare perhaps won't be the required one.)

----------------------------
#END_DOC#
511:Timer. <&> Enable/disable screen timer #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It enables or disables the screen timer.

Usually F86 “show” function shows the timer+starts it+turns it to 0, “hide” function removes it+stops it+turns it to 0.
F511 lets you enable/disable the timer any time during the game (making it seeable/hidden). - For example:

Timer is enabled (with Timer Script command), but not started yet (=hidden).
F86 "show" mode starts it. Timer is running, seeable (enabled).
Timer is running, F511 makes it hidden (disabled).
Timer is running, F511 makes it seeable (enabled) again.
Timer is still enabled. F86 "hide" mode stopped it (=hidden).

If it is disabled, then "show" only starts it+turns it to 0, "hide" only stops it+turns it to 0, but you can't see anything on the screen, the timer is running, but hidden. - For example:

Timer is disabled (no Timer Script command), and not started yet (=hidden).
F86 "show" mode starts it. Timer is running, remaining hidden (disabled).
Timer is running, F511 makes it seeable (enabled).
Timer is running, F511 makes it hidden (disabled) again.
Timer is still disabled. F86 "hide" mode stopped it (=remaining hidden).

So the main goal of F511 is to remove/restore the timer off/on the screen, without stopping it. (It works even with a countdown timer - see F512 of this plugin.)
It also useful to remove the partial time off the screen (see F513 of this plugin).
#END_DOC#
512:Timer. Start countdown screen timer from <&> second #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It starts a countdown screen timer.
It works like an F86 (even in hidden mode - see F511 of this plugin for more details), except:

- Naturally it goes "backwards" (from the required time).
- You can't restart it when you would like to activate it again, if the timer is still running. It starts only if the timer is not running.
- You don't need to stop it, the timer will stop by itself, reaching 0. Though, you can abort the timer, with an F86, either in "show" (!) or in "hide" mode. (This F86 "show" is unable to start a "forwards" timer this time, you need to activate that F86 again, if you want that.)

---------- Note: ----------

You can also try a countdown timer with the variable-based local/global timers.

----------------------------
#END_DOC#
513:Timer. Use partial time in screen timer in <&> way #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It shows some partial time of the screen timer.

---------- Notes: ----------

- Only F513 is useable to restore a timer that shows the partial time. (So F86 is useless for a restart.)
- You can't hide a timer with F86, if it just shows the partial time. (But you can do this trick: disable the timer to hide the partial time, with an F511 of this plugin, then restore the running timer with another F513, then abort it with F86. - Which means technically the F513 trigger also works in hidden mode.)
- Never forget to restore the running timer, at latest just before when leaving the level.
- Don't try it with countdown timers.
- Once again: it is NOT a pause in the timer. It shows a partial time, while the timer is still running in the background.

----------------------------
#END_DOC#
514:Lara. (Health) Set Lara's actual air under water to <&> percents #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It sets Lara's actual air under water to the required percent.

F110 is not the same. F110 adds some air amount to the actual amount.
And F104 is “only” about infinite air.

---------- Note: ----------

The trigger naturally has no effect above the water surface or on dry land.
Except: if you keep the actual air (see F516 of this plugin) then the trigger will overwrite that value, if you use the trigger out of underwater.

----------------------------
#END_DOC#
515:Lara. (Health) Set Lara's maximum air under water to <&> (set it only out of underwater, except: from default) #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It sets another maximum air for Lara under water.

---------- Notes: ----------

- The trigger has no effect if Lara is just under water, so you need to change the new maximum before she is going into the deep water.
(Except: if you change it from the default 1 minute. This exception is useful, if Lara starts a level underwater, and you want to change the default value, so you place an F515 under Lara object. Mostly, if she left the previous level also underwater, so you'd like to keep the max air value of the previous level, placing this F515 under Lara - because the F515 of the previous level is naturally not valid for this new level.)
- The trigger code is a bit complicated to add the possibility of the customization, that is why only preset values are added to the trigger.

----------------------------
#END_DOC#
516:Lara. (Health) Keep Lara's actual underwater air (as actual air in scuba diver tank) out of water, in <&> way (No deep wading!) #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
This feature could be useful if Lara has a scuba diver outfit, so the latest underwater air ("the remaining air in the scuba tank") will be kept if she goes to the dry land, so this tank air amount will be restored (not the maximum air), which is logical, if she goes back to the water later. (Naturally it is useful first of all for higher maximum air.)

Known bug (I cannot fix it):
The feature will fail (the actual air will be restored to the maximum, if she goes back into the water later) if Lara performs wading in a deeper (waist-deep) water - but lower (knee-deep) water is not a problem.
What I say is not you cannot use waist-deep water in your level, but:

- avoid scuba diving (underwater swimming) near the deep-wade areas, and
- if you go into these areas (not with scuba diving at all) on foot, but you have already have some remaining air in the tank, then use the trigger parameters to save the tank air value if you approach a deep-wade area, and to restore that after you left the area.

---------- Notes: ----------

- Don't forget to break the feature with another F516, before leaving the level, if you don't want this feature on the next level.
- Use "taking on" parameter in the next level (under Lara object), if you want to continue this feature there, keeping the last air kept of this previous level.
- If you want to "refill the tank", then just activate an F514 of this plugin.
- You will never see the air bar out of water.

----------------------------
#END_DOC#
517:Timer. Restore the time of running screen timer after the level jump in <&> way #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
If you don't remove the running screen timer of the previous level at the level jump, then you can restore that time at the new level start, with this trigger, so the timer will continue running.

---------- Notes: ----------

- Don't use this trigger, if the leveljump will not split this "normal"/countdown timer.
- You need to place different F517 triggers, following these rules:

a, "Restore" mode: placing it under LARA (or LARA_START_POS) object, to restore.
b, "Start save zone" mode: place one trigger like that in each level, where the screen timer value will be kept at the end of the level, for the next level. The trigger can be placed almost anywhere in the level, the best place is a bit before you reach the trigger that starts that F86/F512 timer. That F86/F512 should be activated only after Lara activated the "start save zone". (Other F86/F512 doesn't matter now.)
c, "Stop save zone" mode: you always need one trigger like that anywhere between a restore point and a "start save zone" trigger, if they are in the same level. (They can be, it is logical: if the level where you keep the timer for the next level is also a level that started a restored timer of the previous level.) Because, after Lara activated that "start save zone", then that restore point (where Lara started the level) is allowed to be reached again only through a "stop save zone" trigger.

- The seeable/hidden status of the timer won't be restored from Level A, you need to enable/disable the timer for that, in Level B. (See F511 trigger of this plugin for more details.)

----------------------------
#END_DOC#
518:Lara. (Move) <&> Enable/disable infinite dash power (for foot and nitro+motorbike)
519:Cheat. <&> Enable/disable to start flycheat (Restore the original status before leveljump!) #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
This will enable or disable to start flycheat.

So technically it is possible, however, I don't really see where can it be really useful.
Perhaps at the end of the level you tell this to the player in a text printed: he gets a bonus to go through the level again, in flycheat mode, so you enable it.

When flycheat is enabled, then you can type DOZY to activate DOZY mode.
When flycheat is disabled, then you can’t type DOZY to activate DOZY mode

Important!
Flycheat either enabled in the script or not, you need to restore this scripted status everyway at the latest before just leaving this level.

---------- Notes: ----------

- If you disable this during DOZY mode, then DOZY won't stop, but you can't start it the next time.
- Don't forget - DOZY changes things, eg. adds infinite things in the inventory.
Perhaps you need some GlobalTrigger, to record continuously the latest non-infinite amount of a thing when it is not infinite, and to restore it when flycheat is disabled again.

----------------------------
#END_DOC#
520:Weather. Horizon. <&> Enable/disable horizon #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
This will enable or disable horizon.

This trigger could be useful eg. if you use a low farview, and Lara enters a small room from a huge area. If the level has a horizon, then you will see that (irrationally) in the place of the stone room wall texture. But if you disable the horizon when Lara enters the room, then the player will see the black (or maybe colored) distance fog of the low farview on the wall.
Put another trigger on the other side of the room entrance, to enable the horizon again, if Lara leaves the room.
#END_DOC#
521:Weather. Horizon. <&> Enable/disable ColAddHorizon #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
This will enable or disable ColAddHorizon.

This trigger could be useful eg. if you swap the horizon on the level with F344 and only one of the horizons need ColAddHorizon.

---------- Note: ----------

If you enable ColAddHorizon, that will also enable the actual horizon.
But if you disable ColAddHorizon, that won’t disable the actual horizon.

----------------------------
#END_DOC#
522:Weather. Sun. <&> Enable/disable LensFlare coordinates and color #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
This will enable or disable LensFlare.

This trigger could be useful eg. if you want to “switch off” the sun disk in each room of the level, without making a flipped room for the NL button in all the rooms of the level where you can see the sun.

---------- Note: ----------

Even if enabled, you can't see the sun if there are no coordinates and color defined in a LensFlare or (see F523 of this plugin) in a Parameters= PARAM_LENS_FLARE Script command.
If you need a sun in the level, but you want to switch it on only later, then you don't need a LensFlare command. (Because, in that case the LensFlare is enabled by default.) Instead, enable LensFlare only later, using an F522 together with an F523.

----------------------------
#END_DOC#
523:Weather. Sun. The sun has <&> LensFlare coordinates and color #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
This will change the LensFlare parameters (position and color) of the sun.

Or (see F522 of this plugin) it is also useful, if you want the sun only some time after the level started.

See more in NG Center/Reference/Mnemonic Constants/PARAM_LENS_FLARE.

---------- Note: ----------

You can change these things even if the sun moves (see F524 of this plugin) or if the color is just being changed continuously (see F525, F526 of this plugin).

----------------------------
#END_DOC#
524:Weather. Sun. Move the sun in <E> direction in <&> way #REMARK# See more in NG Center/Reference/Mnemonic Constants/PARAM_SPEED_PARAMETER.
525:Weather. Sun. Change slowly the color of the sun to <&> color in (E) seconds #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
This will change the sun color, during the required time.

---------- Notes: ----------

- You can't use more than one change or F525 and F526 triggers at the same time.
- The "real" sun color is also affected by the sky color.

----------------------------
#END_DOC#
526:Weather. Sun. (E) Start/stop pulsing of sun in <&> way, between the original color and the required one #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
This will set a pulsing color for the sun.

See more in NG Center/Reference/Mnemonic Constants/PARAM_SPEED_PARAMETER.

---------- Notes: ----------

- You can't use more than one pulse or F525 and F526 triggers at the same time.
- The "real" sun color is also affected by the sky color.
- If you want a pulse between not two colors but a color that switches on/off with the pulse, then one of the colors (the start color or the end color) must be "nothing" (0/0/0).

----------------------------
#END_DOC#
527:Weather. Sky. (E) Start/stop pulsing of layer1 in <&> way, between the original color and the required one #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
This will set a pulsing color for layer1.

See more in NG Center/Reference/Mnemonic Constants/PARAM_SPEED_PARAMETER.

---------- Notes: ----------

- You can't use more than one pulse on the same layer at the same time.
- For "change the layer color, during the required time", see F154 trng.dll trigger.

----------------------------
#END_DOC#
528:Camera. Change LoadCamera parameters in <&> way #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
You can change the LoadCamera values with it, during the game.

See more in NG Center/Reference/Mnemonic Constants/PARAM_LOAD_CAMERA.

---------- Note: ----------

A LoadCamera is valid when you LEAVE that game phase. (For example, if you jump from Level A to Level B, then you will see the LoadCamera of Level A.)
That is why, for example, if you have LoadCameraX of Level A (in an older phase of the level), and LoadCameraY of Level A (in a newer phase of the level), then you will always see LoadCameraY of the new game phase when you - just playing the new game phase - load the older game phase from a savegame.

----------------------------
#END_DOC#
529:Lara. (Move) Make all the walls climbable in <&> way (Cannot climbing around corners!) #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It makes all the walls climbable/or non-climbable.
It is a useful trigger eg. if you need a flipped room where all the walls are climbable, but you don’t want to create a flipped room there for that, because you want to flip that room for another feature. – Disable the feature if Lara leaves the room, because naturally you don't want so many climbable walls for the other parts of the level.

Known bug:
Standing on ladders like that, Lara perhaps cannot climb around corners.
#END_DOC#
530:Weather. Sky. (E) Start/stop pulsing of layer2 in <&> way, between the original color and the required one #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
This will set a pulsing color for layer2.

See more in NG Center/Reference/Mnemonic Constants/PARAM_SPEED_PARAMETER.

---------- Notes: ----------

- You can't use more than one pulse on the same layer at the same time.
- For "change the layer color, during the required time", see F155 trng.dll trigger.

----------------------------
#END_DOC#
531:Weather. Sun. Move the sun in more than one direction at the same time, in <&> way #REMARK# See more in NG Center/Reference/Mnemonic Constants/PARAM_SUN_COMPLEX.
532:Lara. (Holds) Make Lara get out of/off the actual vehicle in <&> way (if it is sudden: only for jeep or motorbike) #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It makes Lara get off/out of a vehicle. (There are two versions available. One for cutscene/level starts/ends, immediate action for jeeps or motorbikes. The other one performs getting-out/off animation as well, for any vehicle.)

Always must be a HEAVY!

See more in NG Center/Reference/Mnemonic Constants/PARAM_GET_VEHICLE.
#END_DOC#
533:Lara. (Holds) Make Lara get in/on jeep or motorbike in <&> way (just after leveljump/cutscene end) #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It makes Lara get on/in a motorbike or a jeep.

No “getting in/on” animation being performed ever. Because there could be too many things to do in that setup to get rid of bugs. That is why recommended only for cutscene/level starts/ends.

See more in NG Center/Reference/Mnemonic Constants/PARAM_GET_VEHICLE.
#END_DOC#
534:Lara. (Holds) (E) Enable/disable to use <&> item #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
Enable/disable to use objects.
See more in NG Center/Reference/Mnemonic Constants/PARAM_ITEM_INTERACTION.
#END_DOC#
535:Enemy. Set the new location whereto <&> Ahmet will be transported when resetting Scales the next time #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
In the classic Ahmet-Scales setup, the Ahmet will be transported back into his cage when the scales are reset. If you use this trigger, then you will define a new location, whereto the Ahmet will be transported if the Scales are reset the next time. (And even later, for further resets, till you change the coordinates again.)
See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.

---------- Notes: ----------

- The game draws a horizontal vector that starts from the previous location, and ends at the new location. The vector cannot cross room walls or else the trigger will fail. But that doesn't mean the new location cannot be in another room - in this case the vector must cross portals (doors), where there were room walls before.
- As for the vertical position: in the new location the Ahmet will be put on the floor square of the room there.
But if the Ahmet will be in a higher/lower floor square after this "transportation", in another (higher/lower) room, so not in the room where you want, then you probably must descend/ascend the vertical position of the previous location - i.e. the floor square there -, to solve the problem.

----------------------------
#END_DOC#
536:Lara. (Holds) (E) Start/stop counting the amount of use of <&> switch from now on (to on: one use, to off: another use) #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
You can check how many times you used a switch. (F536 will start/stop counting, C203 will check the value.)
It won't affect the general task of the switch. But what if you want to activate something after the required number of uses now - eg. to disable the switch with an F534? For example:

Lara moves a lever switch to activate a flame.
Then she moves the lever again to deactivate the flame.
Then she moves the lever again to activate the flame again.
If she tries to move the switch fourthly, then she can’t, because the switch is disabled.

See more in NG Center/Reference/Mnemonic Constants/PARAM_SWITCH_USAGE.

---------- Note: ----------

The animation is what matters, not how useful is this. For example, you have a setup where two switches together open a door, so if you push the first switch, then nothing will happen for the time being, till using the other switch as well - however, it is counted for the first switch as "one use is already done".

----------------------------
#END_DOC#
537:Sound. Change (E) audio/sound master volume (of Options menu) to <&> percent #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
---------- Note: ----------

You can force a preset master audio/sound volume for your game, with SoundSettings Script command. But that is useable only when the game starts. This trigger is useful any time during the game.

----------------------------
#END_DOC#
538:Earthquake. (E) Start/stop an earthquake with <&> parameters #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It performs some new types of earthquakes (dumb or murmuring - this is customizable):

- A single jerk with customizable intensity.
- Decreasing quake (by degrees), with a customizable intensity to start.
- Quake, with a customizable standard intensity. You can interrupt it with a timer or another F538. Now it starts decreasing by degrees, then stops.

See more in NG Center/Reference/Mnemonic Constants/PARAM_EARTHQUAKE.

---------- Classic Earthquakes: ----------

If you activate an EARTHQUAKE object (placed anywhere in the map) then that will perform a continuous, murmuring (with Sound ID107: EARTHQUAKE_LOOP) earthquake in the whole map – till the deactivation of the object.
Some other situations will also perform some quake: see eg. some classic WADMerger AnimCommands or eg. a SQUISHY_BLOCK2 when falling down etc.

But there are more classic FLIPEFFECT triggers too, to perform quakes:

a, F1: a soft, short, dumb earthquake.
b, F7: a harder, dumb earthquake - start decreasing when Lara leaves the trigger zone.
c, F11: it will perform a short quake with an “explosion” sound (Sound ID105: EXPLOSION1).

Known bugs:

- An active EARTHQUAKE object will activate all the FLAME_EMITTER objects (with any OCB) in its room, unintentionally. (Not including other FLAME… objects.)
- Don’t place an EARTHQUAKE in your level if you want to use F7 triggers or else F7 (and “Heavy Earthquake” classic AnimCommands, too) will be buggy.

------------------------------------------
#END_DOC#
539:Moveable. Change the look of <&> the object slot for its MIP slot, in bigger distance from Lara than the required one #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
You can change the look of each object of the object slot, being in the required distance to Lara.

See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.

---------- Notes: ----------

- It useable for all the Moveables that has MIP version: enemies, Animatings.
- Animatings have a MIP Script command, but if you want to change that value in-game, then you can try F539.
- Probably all the enemy objects with a MIP slot have a default distance for that. And that default distance is usually large.
- F539 is a nice tool if you want to use a trick with two totally different objects: "if Lara is closer to the object then the object will look as Object A, but if Lara is farther from the object then the object will look as Object B". (This change also works with F341 trigger, but in that case the mesh tree of the two objects must be similar.)
- Static objects has a StaticMIP Script command.

----------------------------
#END_DOC#
540:Lara. (Health) Start/stop making Lara invulnerable against the direct (sword, bite etc.) attack of <&> enemy #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It makes (or removes it) Lara invulnerable against the direct attack of the required enemy.

"Direct attack" means sword, bite etc. I.e. the trigger doesn't work with bullets. (Hurts caused by traps are also not included now.)

See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.

---------- Notes: ----------

- You cannot specify the enemy, using invulnerability with F91. But this trigger is able to do that.
- Lara any collision conditions with this enemy probably won't work at the same time.

----------------------------
#END_DOC#
541:Enemy. Change the vitality of <&> enemy to the required point #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.

---------- Note: ----------

You can set the value even before triggering the creature, if you want. In that case the actual vitality point is naturally the same as the maximal vitallity points. (So it is a good method if you want to force a new maximal life points only for the required creature, meanwhile the other creatures of the slot will have the original maximal life points - or they will have the maximal life points forced by an Enemy Script command.)

----------------------------
#END_DOC#
542:Enemy. Start/stop making <&> enemy invulnerable (remaining aimable) #REMARK#See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.
543:Enemy. Start/stop making <&> enemy poisoned #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It makes the enemy poisoned (or stops it). (Keeping the actual health when stopping it.)
See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.

---------- Note: ----------

After all, this trigger means "decrease the health of the enemy by degrees, but continuously, in a rhythm as if a poisoned arrow had hit him".

----------------------------
#END_DOC#
544:Enemy. Set <&> Enemy Jeep speed to the required value #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.

---------- Notes: ----------

- The default speed of the enemy jeep is not constant. You need to accept that if you want to force a (constant) customized speed.
- The jeep needs some time to turn to an AI_FOLLOW. So if the speed is too big then the jeep may no time enough to turn to an AI_FOLLOW, and the jeep will even miss that nullmesh. (And there can be other anomalies, too.)

----------------------------

The basic setup is so easy, why wouldn't you try an enemy jeep in your level? :)

In a nutshell about the basic setup of Enemy Jeeps:

- The jeep will be seeable in the game even before its activation, where you placed it in Room Editor.
- The jeep will always follow a preset route. (Just like the guide or Von Croy.) You need to draw the route, putting AI_FOLLOW objects in the map. The AI_FOLLOW’s are identified with OCB numbers you typed in their OCB panels (Number A). The first AI_FOLLOW (where the jeep object is placed) has ID -2. The further OCB numbers are in increasing order: -1, 0, 1, 2, 3 etc.
- The way you rotated the AI_FOLLOW nullmesh will define the facing of the jeep at that AI_FOLLOW!
- You need F30 triggers to move the jeep between AI_FOLLOW’s. Each F30 will move the jeep from the actual AI_FOLLOW to the next one. That “next” AI_FOLLOW must be identified in this F30 (Number B), typing it in Timer window. B=A-1, so eg. if this F30 sends the jeep to AI_FOLLOW where 5 is typed in the OCB window, then B must be 4 in the trigger.
- To make the jeep start the route, you need to activate the jeep with a common trigger. (You can’t deactivate the jeep after that.) The very first F30 should be overlapped with the common trigger, sending the jeep from AI_FOLLOW -2 to AI_FOLLOW -1.
- If there is no F30 to send the jeep to an AI_FOLLOW, then the jeep will only touch it, but won’t stop there. Eg. an F30 will send the jeep from AI_FOLLOW 2 to AI_FOLLOW 4. In that case, the jeep will go from AI_FOLLOW 2 to AI_FOLLOW 4, stopping only at AI_FOLLOW 4, only touching AI_FOLLOW 3.
- Be careful! All the AI_FOLLOW’s, to which an F30 sends the jeep, must have OCB Button 2 pushed.
- You can’t reverse the route, so eg. the jeep can’t go from AI_FOLLOW 7 to AI_FOLLOW 6.
- The jeep will never overrun Lara (or other creatures), so if she is in front of the jeep, then the vehicle will only be pushing her. (Maybe you can use a “collision” GlobalTrigger to make it overrun her.)
- The jeep will shoot grenades at Lara, if she is (even a bit farther, sometimes even much farther) behind the vehicle. The jeep will shoot grenades only parking at an AI_FOLLOW. The jeep will shoot a grenade in each fifth second, till leaving that AI_FOLLOW.
- The jeep will activate HEAVY/HEAVYANTITRIGGER triggers at each AI_FOLLOW, where the vehicle just is. (Either parking there or only touching the nullmesh.)
- The (most of the) objects seem air for the jeep, they are no obstacles.
- Jeeps are able to use object platforms. You can even place AI_FOLLOW’s on the platforms (having AI_FOLLOW’s always on the level of the platform). – But never move the platform with the jeep on it!
- High or bluffy edges, slopes are not obstacles for the jeep. (Naturally the animation could be sometimes ugly in these cases.) The vehicle can go through even water or quicksand.
- Avoid complicated routes. (Eg. hairpin bends.)

Here is a tutorial project for enemy jeeps:

http://www.trsearch.org/Items/908

Troubleshooting:

- If you use F30 in the previous levels (because eg. you used another enemy jeep in that level) then you need to reset ID values (you typed in F30 triggers) back to 0, for the new level, with a ResetHUB Script command.
- If you also have a guide or Von Croy (or more) in the level, then you can try some different OCB ID sequence for them, than usual. For example, the jeep AI_FOLLOW OCB sequence ends at 28 now (…26, 27, 28), and the Von Croy AI_FOLLOW OCB sequence, that usually starts from 0 (0, 0, 1, 2 etc.), this time will start from 29 (29, 29, 30, 31 etc.) - This could be also useful, if you don’t want to use ResetHUB between levels.
(If you have more than one AI_FOLLOW users in a level – eg. a jeep and then a Von Croy -, and you have problems with the first user – because you can’t activate properly the second one till the first one is alive -, then kill the first one with an A14.)
- You can use only one Enemy Jeep per level, because its sequence always starts from -2.
#END_DOC#
545:Enemy. Set the time between <&> Enemy Jeep (parked) shoots two grenades to the required seconds  #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.

---------- Notes: ----------

- The new timer will start after the next grenade was shot.
- See the basic setup of the enemy jeep at F544 of this plugin.

----------------------------
#END_DOC#
546:Enemy. Shoot the next grenade of <&> Enemy Jeep (parked) in the required seconds (then follow the usual timer between grenades) #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.

---------- Notes: ----------

- So it is only for the next shot! The further shots after that will happen by the default 5 seconds or the customized timer of F545 of this plugin.
- The trigger will be useable only if the jeep is in “grenade-shooting mode” (i.e. parking at an AI_FOLLOW when Lara is behind the vehicle).
- See the basic setup of the enemy jeep at F544 of this plugin.

----------------------------
#END_DOC#
547:Enemy. Make <&> Enemy Jeep friendly (= disable grenades), or remove it #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.

---------- Note: ----------

See the basic setup of the enemy jeep at F544 of this plugin.

----------------------------
#END_DOC#
548:Enemy. Set the ammo amount of <&> Baddy_1 or Baddy_2 to the required bullets #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
You can customize the ammo amount (including: infinite) of Baddy_1 or Baddy_2 with it.
See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.

---------- Notes: ----------

- Each round is 7 bullets. So, 7 bullets will be shot everyway with the last round. So, eg. if the baddy starts shooting a round, having 4 bullets, then the round will end at -3 bullets – which works as 0 bullet, naturally.
That is why when we say the default Baddy_1 ammo is 24 (24, 17, 10, 3, -4), that is 28 in the reality (28, 21, 14, 7, 0). That is why C230 conditions for baddy bullets never can be too exact. (For example, for a "no ammo" condition you should check "less than or equal with 0", not only "equal with 0".)
That is why, if you want to adjust an ammo amount with F548, then always adjust a value that can be divided by 7.
- The default ammo of Baddy_2 is 0. Type 10 in his OCB (which is a classic TRLE method) so he will also have 24 bullets.
- If a baddy picks up an Uzi clip that is only 24 bullets for him, even if it has the default 30 bullets or the customized value with CUST_AMMO for Lara. If he picks it up having eg. just "-4 amount", then the new amount will be -4+24=20, not 0+24=24.
- If you want to turn the infinite ammunition back to countable, then just use a SET in PARAM_OBJECT_ADDITIONAL.

----------------------------
#END_DOC#
549:Enemy. Customize the "burn Lara" and "vulnerability" status of <&> Wraith1 (the fire wraith) #REMARK#See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.
550:Enemy. Start/stop making <&> Wraith2 (the ice wraith) invulnerable in water #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.

---------- Note: ----------

If the invulnerable ice wraith contacts with water then the flipmap (that should be activated when the wraith dies in water) won't be activated.

----------------------------
#END_DOC#
551:Enemy. Start/stop making <&> Wraith have a special route #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.

---------- Notes: ----------

- The customized route works properly only if you activate F551 together with the spawning trigger of the wraith!
- Don't forget to kill the wraith if he ascended too high/descended too low, disappearing above the ceiling/below the floor forever. (Use an A14 if there is no other way to kill him.) Or restore the default routes, so the wraith will start chasing Lara again.

----------------------------
#END_DOC#
552:Enemy. Set the required emission mode for <&> Little Beetles (only when coming from walls) #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.

---------- Notes: ----------

- This bug (not mine) hopefully will be fixed sooner or later:
I can abort the little beetle emission if I save the game when the emission is being performed, and then load that savegame.
After that, even if the beetle trigger is One Shot (as it should be!) I am able to re-activate the trigger, so the emission will continue.
- The emission speed of beetles from floor/ceilings is always fast.

----------------------------
#END_DOC#
553:Enemy. Set the time between <&> emitter emits two fishes to the required seconds #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.

---------- Notes: ----------

- The default time between emitting two fishes is not constant. You need to accept that if you want to force a (constant) customized time.
- The new timer will start after the fish was emitted.

----------------------------
#END_DOC#
554:Enemy. Start/stop <&> Mutant performing the harmless rage for the required time #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It makes the mutant perform the harmless rage for the required time.
The harmless rage will start if the mutant - has just come to life - totally opens his "double collars". Some moments after stopping raging like this, the mutant will notice Lara. Until he notices her, he won't attack her. (That is why this rage is "harmless").
See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.

---------- Notes: ----------

- If the mutant is just in the middle of a "harmless rage animation" when the timer just expires then he continues the animation till the end of the animation everyway, before noticing/attacking Lara.
- Usually you should activate this trigger with the spawning trigger together. So, when the collars have just opened after that, the customized timer starts. But you can activate this even after he started looking at/attacking Lara: he stops looking/attacking now (but first, continuing the attacking animation till the end) to rage harmlessly again for the required time.
- When the mutant is raging harmlessly then you can naturally restart the timer or set another time.
- If the customized time is also IGNORE (see PARAM_OBJECT_ADDITIONAL), the rage will last "forever". Use another customized time with Timer 0 to abort the infinite rage right away. (Other customized time to abort the infinite rage is useless now!)
- You can have maximum 1 mutant at the same time:

a, having infinite time, or
b, having bigger customized time than the default 20 seconds.

----------------------------
#END_DOC#
555:Moveable. Customize <&> Falling Block time to shiver before the crash #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It customizes when the falling block falls down after started shivering. (The default is 2 seconds.)
See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.

This will sum your possibilities (there is a DUMMY under the block, you can't place F555 there):

1. Adding an ID (see ObjectAdditional2 field of PARAM_OBJECT_ADDITIONAL) to a block (that ID still not used to another block), activating an F555 for it:

- Timed block, still not shivering: the block starts shivering for the required time (Timer 0 = immediate crash) if Lara stands on it after that.
- Forever (= "neverending" timer) block, still not shivering: the block starts shivering forever if Lara stands on it after that.

2. Adding the same ID to a block again (restarting the old timer of F555 again or setting a new time of another F555)*, to change the previous customized time of the block:

- Any block, still not shivering: timed/forever shivering will be performed, as I said at Item1. (Previous customized timer, which hasn't started yet, will be annulled.)
- Timed block, already shivering: restart the old timer or start the new timer (included: turning the block into "forever", if that was asked) immediately.
- Forever block, already shivering: you can turn the block into "timed" immediately.

3. It is definitely rare, but also possible that the block is already shivering due to the default 2 seconds' timer, when you use PARAM_OBJECT_ADDITIONAL on it for another timer. (For example, running from the block on the F555 next to the block, before the block crashes.)

4. STOP typed (see ObjectAdditional2 field of PARAM_OBJECT_ADDITIONAL) to stop the customized timer:

- Any block, still not shivering: the block starts shivering for the default 2 seconds if Lara stands on it after that.
- Any block, already shivering: immediate crash. (The same solution if you execute Item2 "already shivering" with timer value 0.)

5. Adding the ID already used by another ("old") block to the "new" block:**

- New block, still not shivering: timed/forever shivering will be performed, as I said at Item1.
- New block, already shivering (by the default timer, that F555 for the new block hasn't been used before): the shivering will continue, immediately with this customized time/forever shivering.
- New block, already shivering (by another F555 having another ID): don't do this! Don't add an ID to a block, if the block is just using another ID. 
- Timed old block, still not shivering, just losing this ID: just like Item4 "not shivering". 
- Forever old block, still not shivering, just losing this ID: just like Item4 "not shivering".
- Timed old block, already shivering, just losing this ID: continue shivering, immediately with its actual timer. 
- Forever old block, already shivering, just losing this ID: immediate crash.
- Any old block, already crashed: not important any more.

*: "the same ID with different timer" sounds complicated, but it is not. For example:
First F555: PARAM_OBJECT_ADDITIONAL#1: ID 1 for Block 472, timer for 30 seconds
Second F555: PARAM_OBJECT_ADDITIONAL#2: ID 1 for Block 472, timer for 40 seconds

**: for example:
First F555 for old block: PARAM_OBJECT_ADDITIONAL#1: ID 1 for Block 472, timer for 20 seconds
Second F555 for new block: PARAM_OBJECT_ADDITIONAL#2: ID 1 for Block 386, timer for 35 seconds
#END_DOC#
556:Object generally. Change the OCB value of Moveable or Statics object in <&> way #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
This trigger is a general method to change OCB values:

- Either for Moveable or Static objects.
- Changing the whole OCB or only adding/removing an OCB bitflag.

See more in NG Center/Reference/Mnemonic Constants/PARAM_OCB_CHANGE.
#END_DOC#
557:Enemy. Force the required status on <&> Laser Head #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.

---------- Note: ----------

If you don't want to abort a "till you stop forcing" status with Status 12, then you can try to turn it into another "till you stop forcing" status.

----------------------------
#END_DOC#
558:Trap. Force the required speed/direction on <&> Rollingball #REMARK#See more in NG Center/Reference/Mnemonic Constants/PARAM_ROLLINGBALL_ROUTE.
559:Trap. Force the required tick frames of pause between two extensions of <&> Teeth Spikes #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.

---------- Note: ----------

Valid only from the next pause, if there is just a pause.

----------------------------
#END_DOC#
560:Trap. Force the required rotation speed for <&> Joby Spike #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.

---------- Notes: ----------

- The direction of the rotation seems random: the game will “decide” that the spike will be activated with clockwise or anti-clockwise rotation.
- If the joby spike goes mad after you've loaded a savegame that means the game tries to perform both the clockwise and anti-clockwise directions at once. Load the savegame again (and again) to solve the problem.
- You cannot invert or adjust the direction.

----------------------------
#END_DOC#
561:Trap. Force the required actual length for <&> Joby Spike #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.

---------- Note: ----------

It works even if the spike is inactive.

----------------------------
#END_DOC#
562:Trap. Force the required maximal length for <&> Joby Spike #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.

---------- Note: ----------

If you force a maximal length when the actual length is already bigger than that, then the spike stops extending, keeping the actual length.

----------------------------
#END_DOC#
563:Trap. Make <&> Squishy Block2 fall down in the required seconds #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.

---------- Notes: ----------

- You can have maximum 1 squishy block2 having a customized time now, at the same time!
- The trigger also activates the block if that is still not active.

----------------------------
#END_DOC#
564:Effect. (E) Start/stop <&> customized Sprinkler #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
The Sprinkler has a nice effect, but the object is underrated because usually you can't really control it.
Usually this is what a sprinkler object will do:

1. Activate it with a common trigger.
2. Then water starts showering for 20 seconds.
3. Then water is dripping for further 20 seconds.
4. Then you can't reactivate it.

But, what if you want eg.:

- a shower for your house level when Lara turns on/off the shower (the sprinkler) in her bathroom many times, or
- if you use more than one sprinklers "to fill a big pool", producing a huge time of showering, instead of using waterfall objects.
- Etc.

This trigger lets you customize the shower/drip time, also activating the sprinkler any times you want.
See more in NG Center/Reference/Mnemonic Constants/PARAM_SPRINKLER_SEQUENCE.

---------- Notes: ----------

- You can restart the sprinkler not only any times, but even any time, with F564, even if the sprinkler is still showering/dripping.
- You can move/rotate the sprinkler with ACTION triggers or Parameters Script commands, even when the sprinkler is just working.
But don't rotate it around a horizontal axis, because the water effect won't follow the new position of the sprinkler.
- There is about a constant 1 second transition between the showering and the dripping. (Which is calculated as "showering". So if the shower timer ends or you abort it, then 1 more second will be calculated as "showering", before the start of the dripping, in C255 of this plugin.)
----------------------------

How to make Lara turn on/off the shower many times?

The shower valve is a switch (even if it doesn't look like a valve). Switches usually have four animations: switched off (1 loop frame), switching on, switched on (1 loop frame), switching off.
You have a PARAM_SPRINKLER_SEQUENCE with infinite showering (plus, some short dripping). You don't have any (!) trigger at the switch object, you will control the procedure with these two GlobalTriggers:

- "If switched on animation is being performed" (FGT_SINGLE_SHOT_RESUMED): an F564 will start the shower.
- "If switched off animation is being performed" (FGT_SINGLE_SHOT_RESUMED): an F564 will stop the infinite showering, start dripping for a short time.

If Lara refuses to turn off this switch, without triggers on its square, then place a standalone SWITCH trigger under the switch, without any TRIGGER overlapped with it.
#END_DOC#
565:Moveable. Start/stop forcing the required pulsing color on <&> object #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
The forced color is always an inner light, affecting only this object.
The pulse will always happen between the forced color and the original (outer) light. It will be pulsing automatically, because the game will always try to restore the original light, at once, continuously.

See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.

---------- Note: ----------

You cannot adjust the pulsing rhythm, that is automatic.
However, this rhythm doesn't seem always constant. For example, the rhythm of the unused motorbike is different than when Lara is riding it.

----------------------------
#END_DOC#
566:Effect. Make <&> Firerope burn for the required seconds #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.

---------- Notes: ----------

- You can have maximum 1 firerope having a customized time now, at the same time!
- This trigger will perform its effect after its activation, when Lara ignites the rope. - Except if you want an immediate crumble to stop burning, because that happens at once.
But using "immediate crumble" when the rope is still not burning, that doesn't result an immediate effect. I mean, that works only if Lara touches the torch to the rope.

----------------------------
#END_DOC#
567:Effect. Force the required status on <&> Burning Floor #REMARK#See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.
568:Effect. (E) Start/stop the required special action on <&> Flame Emitter (having flames blown) #REMARK#See more in NG Center/Reference/Mnemonic Constants/PARAM_FLAME_BLOWN.
569:Effect. (E) Start/stop the required special action on <&> Steam Emitter (having harmful steam blown) #REMARK#See more in NG Center/Reference/Mnemonic Constants/PARAM_STEAM_BLOWN.
570:Moveable. Make <#> Twoblock Platform descend to the required position #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.

---------- Notes: ----------

- Don't type any OCB, so it has oCB 0.
- TwoBlock Platforms with OCB 0 will usually descend only half a click, if Lara steps on them. With this trigger, that will not happen. However, till you activate an F570 on this block, the block - activated by a common trigger - first naturally acts like that "usual" block with OCB 0.)
- You don't need to activate this platform with a common trigger.
- The original position of the platform must be higher than the destination position.
- You cannot customize the descending speed.
- After activating F570, the platform will do nothing. It will move downwards only if Lara steps on it after that.
- If Lara steps off the platform descending before the platform reaches the destination position, then the platform will stop at once. If she steps on the platform again then the platform will continue descending towards the destination position.
- If you antitrigger the platform then it also stops descending, though Lara is on it - till you trigger it again (with a common trigger or this F570), and if Lara steps on it.
- Don't use the trigger for another block, after activating this F570, till this block stopped at the destination position! (That is why you need to be careful. For example, if the platform stops above the destination position, because Lara stepped off it, then you cannot use F570 for another block, for the time being!)
See C140 to check the position.
- After reaching the destination position, the platform will work as a "casual platform with OCB 0", if you activate it after that with a common trigger.
But if you also force first an OCB for an ascending platform, then the ascension starts at once, when activating the common trigger, not waiting for Lara to step on the platform.

----------------------------
#END_DOC#
571:Effect. Make <&> Mine (triggered) explode in the required seconds #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
"Triggered" means it is the harmless mine that is burning while that counter is running (using OCB=1).
See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.

---------- Notes: ----------

- For technical reasons, F571 must be One Shot. (Just like the common trigger that usually activates the mine.)
- You can have maximum 1 mine having a customized time now, at the same time!
- The trigger also activates the mine if that is still not active.
- If you don't customize this mine timer, that has a bug: if you save the game while the mine is burning, and then you load that game, the mine will stop working. This bug can be almost fixed, if you use a GT_LOADED_SAVEGAME GlobalTrigger, that restarts the mine when a savegame has been loaded. (The similar thing that you have with waterfall mists.)
I said "almost", because this restarted mine will also restart the timer with the default 5 seconds.
That is why I suggest using an F571, even if you don't want a customized time, however, you will use it with the default 5 seconds. I mean, F571 will fix both part of the bug (restarting the mine + continuing [not restarting!] the timer), you don't need a GlobalTrigger.

----------------------------
#END_DOC#
572:Effect. Make single <&> Grenade have the required time for the exploding effect #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
"Single" grenade means this grenade is placed in the map, not shot by a weapon.
If you trigger a "single" grenade with a common trigger, then the grenade will perform even a more spectacular explosion effect than a super grenade shot by Lara.
F572 will customize the time for this explosion effect.

You also need to place a Mine object (with OCB=1) on the grenade! (But the mine doesn't need to be triggered.)

See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.

---------- Notes: ----------

- For technical reasons, F572 must be One Shot.
- You can have maximum 1 grenade having an infinite time now, at the same time!
- The trigger also activates the grenade if that is still not active. So feel free to use an F572 instead of the common grenade trigger.
- In fact, the effect is a bit longer than the timer, because after the last explosion happens, that needs to fade away.
- Here is a nice example for the exploding effect of single grenades:

http://www.tombraiderforums.com/showthread.php?t=211721

----------------------------
#END_DOC#
573:Moveable. Reactivate <&> object in the required way #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
This trigger is useful first of all, because:

- "Reactivate" means this trigger will work to activate the object only if you have deactivated the object before at least once. And perhaps this is what you want.
- F573 will ignore the One Shot button of the original activation. So F573 will work even if the first activation had the One Shot button.
- One Shot button of this F573 will disable the further usages of this copy of F573 triggers, naturally. But if you add "One Shot mode" (see PARAM_OBJECT_ADDITIONAL) to this F573, that is something else - that will disable the further usages of each common (and A43) triggers that usually should activate this object, not affecting this F573 itself.

See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.

---------- Notes: ----------

- Don't use this reactivation if the original activation trigger is timed. First you need to antitrigger the timed object - even if the object is just inactive, made by the timer!
(See C178 of this plugin to check the timed status.)
- The "One Shot mode" effect of F573 works even if the trigger itself is still useless, because there is no first activation yet. So, for example about a door, if Lara steps first on F573 (having One Shot mode). which won't open the door, and then steps only after that on the common trigger, then the door won't open!

----------------------------
#END_DOC#
574:Moveable. Modify the One Shot status of <&> object in the required way #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
This trigger is useful if your purpose is one of these:

- You activated the object with a trigger NOT having One Shot. (Then you either deactivate it or not.) But, after that, you want to add One Shot flag to this active/inactive object, as if the activating trigger had had One Shot button pushed.
- You activated the object with a trigger having One Shot. (Then you either deactivate it or not.) But, after that, you want to remove One Shot flag from this active/inactive object, as if the activating trigger had NOT had One Shot button pushed.

One Shot "pushed" status added (either the object active or not) naturally means "the object was activated once before, you can't activate it the next time".

See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.

---------- Notes: ----------

- Don't misunderstand: F574 won't modify any trigger that activated the object. The One Shot button won't be switched on/off at those triggers with F574. F574 will modify only the object status.
- Timed objects, either the timer has made them active or inactive, are always calculated now as "active" objects - till you antitrigger them.
- The trigger doesn't work if you use a TGROUP_SINGLE_SHOT flag instead of One Shot.

----------------------------
#END_DOC#
575:Moveable. Modify the codebit button status of <&> object in the required way #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
As you know you need five active number buttons (1, 2, 3, 4, 5) so the object will be active. - See an example:
Only Button 1, 2 and 3 are switched on (active) in Object A OCB panel. You have a trigger to activate Object A where only Button 4 and 5 are switched on. If you activate the trigger then you also activate the trigger codebit buttons. Now all the number buttons are active for Object A, so the object will be active.

F575 is useful for example for this trick:

Object OCB panel = all the buttons are switched off,
There is a Trigger X for Object A, with 1, 2 buttons are switched on.
There is a Trigger Y for Object A, with 3, 4, 5 buttons are switched on.

Lara activates Trigger X and then Trigger Y, so the object will be activated. Now you force "only Button 1 and 2 are switched on" with F575 as if only Trigger X had been activated, so the object will be antitriggered. Now Lara needs to activate Trigger Y again to retrigger the object.

See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.

---------- Notes: ----------

- If you force "Button 1+2+3+4+5 pushed" that is not enough to activate the object. You need an "activate the object" trigger for that purpose.
- Be careful, if you antitrigger the object (with the usual way, with an antitrigger) then the active codebit buttons of the object itself (not the trigger!) will all turn off.
- Unfortunately, F575 doesn't work with objects which cannot be triggered. I.e. eg. you can't change the codebit button value of an AI_FOLLOW to make the guide do something else, reaching that AI_FOLLOW.

----------------------------
#END_DOC#
576:Moveable. Make the required mesh of <&> object slot shatterable #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.

---------- Notes: ----------

- There are Moveable objects with shatterable meshes by default. See eg. the skeleton: the head and the shield is shatterable.
- You can have maximum 1 object slot with customized shatterable meshes at the same time!
If you choose another slot for the trigger, then the previous slot (on that level) will keep the customized status till you load the savegame made after choosing the new slot.
- If it is a huge mesh, then probably it matters where the bullet hits.
- We have savegame problems with meshes like this - see C128 for more info.
- The mesh keeps the collision after having shattered.
- Lara needs to aim with the lasersight. (Prefer the revolver, I have doubts with the success of the crossbow.)

----------------------------
#END_DOC#
577:Statistics. Add one extra pack to the <&> medipack statistics #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
This trigger is used if you add some health to Lara in a peculiar way, something like this:

- You simulate as if Lara used a medipack: forcing some health to her with a flipeffect, plus, another flipeffect removes a small/big medipack from the inventory.
- You have a special setup, like TR3 health crystals: Lara will get some health if she touches a crystal.

I mean, these events don't modify the "medipack used" value of the default statistics, but you can use F577 to modify the custom medipack statistics (see C127):

- add one small medipack used to the Statistics if the flipeffect removed that small medipack,
- add one big medipack used to the Statistics if the flipeffect removed that big medipack,
- add one crystal used to the "special" Statistics if Lara touched that crystal.

---------- Note: ----------

Maximum one special setup per game.

----------------------------
#END_DOC#
578:Statistics. (E) Start/stop the custom phase of <&> statistical parameter #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
The statistical parameters (health packs used, distance travelled, secrets found, ammo used, time taken) can be checked in C123-C127 condition triggers, in the level, in the game - or even in a custom phase.
F578 is useable if you want to set the start point and the end point of that custom phase.

---------- Notes: ----------

- Maximum 1 custom phase for each type at the same time! (So eg. at the same time you can have/check only one small medipack custom phase - but you can check big medipacks for another custom phase at the same time. Even if the phases are not perfectly overlapped.)
- The start and the end points of the same phase could be placed even in different levels.
- You can check the custom phase final result even after the end of the phase. I mean eg. the "small medipacks used in the custom phase" value won't turn to 0 after the end, you can still check the amount of all the small medipacks used in that phase. The counter turns to 0 only if you start a new phase for that parameter.

----------------------------
#END_DOC#
579:Statistics. Write the actual value of (E) statistical parameter in <&> variable #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
You can write the statistical parameter in a numerical variable, so eg. you can print that parameter (i.e. that variable) on the screen, typing the variable #xxxx ID in a string.
See more info in F578.
#END_DOC#
580:Inventory-Item. Make the mechanical scarab useable <&> times from now on #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#

---------- Notes: ----------

- The default maximum value is 3.
- If the scarab exploded, you can pick up another scarab, but forcing everyway (!) a value for it with F580 (except if you want it to explode at the first use).
- Force 0 to abort "infinite times" - so the scarab will explode at the next use.

----------------------------
#END_DOC#
581:Train. <&> Enable/disable Train #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
This is useful eg. if one part of the level is a train, but the other one is not. For example, Lara moves on the non-train part, then you transport her into the train part (hiding it with a flyby sequence), also enabling train at the same time.
#END_DOC#
582:ResetHUB. <&> Enable/disable ResetHUB for (E) level #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
Enabling/disabling ResetHUB is not illogical. I mean, for example, what is in this case: Lara jumps from Level A to Level B, keeping her outfit, there is no ResetHUB. Then she comes back to Level A, nothing is still reset here, which is needful in your gameplay. Then you enable ResetHUB, and go back to Level B, swapping Lara's outfit.

---------- Notes: ----------

- The "level" parameter of the trigger is the level ID whereto (not wherefrom!) the level jump will happen - just like at ResetHUB Script command.
- Don't use this trigger to "enable", if you need/have more than one ResetHUB at the current level,wherefrom (not whereto!) the level jump will happen, at the same time.
- If you use this trigger to "disable" when you have more than one ResetHUB at the current level, then all the ResetHUBs will be disabled. I mean "disabled ResetHUB" = "no ResetHUB at all here".

----------------------------
#END_DOC#
583:Camera. <&> Start/stop forcing "look" camera to keep the view #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
If you force the look camera, then the look camera will be used, instead of the chase camera, even if the Look button is not pushed down.
Why is it good?
Because if you use the Look button and the arrows now, to look around, then the camera will keep the last position, when releasing the keys. You can repeat it any times - till you restore the chase camera, with stopping forcing the look camera.

---------- Notes: ----------

While the look camera is being forced:

- You can’t activate triggers for static "Cameras" (but you can for static "Fixed Cameras* - except if you want it with TRNG triggers, not in the classic way).
- Avoid flyby sequences or Standby TRNG camera effects.
- If a standalone TARGET (so a TARGET without a static camera) draws Lara’s look, then this camera position will be kept, after leaving the trigger for the TARGET.

----------------------------
#END_DOC#
584:Inventory-Item. Set <&> parameters for (E) inventory item #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
EXAMINE
KEY_ITEM, COMBO
PICKUP_ITEM, COMBO
PUZZLE_ITEM, COMBO

The abovementioned items have TRLE Script commands to define their parameters in the inventory, for the level:

- name
- vertical position
- size
- orientation around X, Y, Z axis
- "to be being rotated or not"

But in the case of other inventory items you can have only:

- one name for the whole game, defined in a hardcoded string,
- hardcoded vertical position, size, orientation and rotated status, for the whole game.

These "other items" are:

- weapons (PISTOLS_ITEM, UZI_ITEM, SHOTGUN_ITEM, CROSSBOW_ITEM, GRENADE_GUN_ITEM, SIXSHOOTER_ITEM)
- ammunition (PISTOLS_AMMO_ITEM, UZI_AMMO_ITEM, SHOTGUN_AMMO1/2_ITEM, CROSSBOW_AMMO1/2/3_ITEM, GRENADE_GUN_AMMO1/2/3_ITEM, SIXSHOOTER_AMMO_ITEM)
- medipacks (BIGMEDI_ITEM, SMALLMEDI_ITEM)
- other tools of Lara (LASERSIGHT_ITEM, FLARE_INV_ITEM, BINOCULARS_ITEM, COMPASS_ITEM, CROWBAR_ITEM)
- waterskins (WATERSKIN_1_EMPTY, 1, 2, 3, WATERSKIN2_EMPTY, 1, 2, 3, 4, 5)
- mechanical scarab (CLOCKWORK_BEETLE, COMBO1, COMBO2)
- quest items (QUEST_ITEM1, 2, 3, 4, 5, 6)
- saving/loading point (MEMCARD_SAVE_INV_ITEM, MEMCARD_LOAD_INV_ITEM)

But F584 triggers are useful, because:

- You don't need hardcoded parameters, you can customize them. All you need to do is activate an F584 for that item, at the latest a moment before picking up that item.
(Or put the trigger under LARA object if you want it when the level starts. For example, you had a crossbow in the previous level, but you swapped it for a harpoon gun in this level - being initially in the inventory - so you change the weapon name with a trigger under LARA object.)
- Either that item has a TRLE Script command or not, you can change their parameters even during the level.

See more in NG Center/Reference/Mnemonic Constants/PARAM_INVENTORY_ITEM.

---------- Note: ----------

BURNING_TORCH_ITEM is in the list, but it will never get into Lara’s backpack (i.e. into the inventory) that’s why F584 is useless for it.

----------------------------
#END_DOC#
<END>

;type here the sections for arguments used by above flipeffects
<START_EFFECT_500_T_H>
61:Pistol ammo
62:Uzi ammo
64:Shotgun normal ammo
65:Shotgun wideshot ammo
69:Crossbow normal ammo
70:Crossbow poisoned ammo
71:Crossbow explosive ammo
66:Normal grenade
67:Super grenade
68:Flash grenade
63:Revolver ammo
59:Big medipack
58:Small medipack
60:Flare
<END>

<START_EFFECT_501_T_H>
#SAME_OF#=EFFECT_500_T
<END>

<START_EFFECT_501_E_H>
#REPEAT#Value of Parameters=PARAM_BIG_NUMBERS at index=#0#127
<END>

<START_EFFECT_502_T_H>
#SAME_OF#=EFFECT_500_T
<END>

<START_EFFECT_502_E_H>
#REPEAT#Value of Parameters=PARAM_BIG_NUMBERS at index=#0#127
<END>

<START_EFFECT_503_T_H>
#SAME_OF#=EFFECT_500_T
<END>

<START_EFFECT_503_E_H>
#REPEAT#Value of Parameters=PARAM_BIG_NUMBERS at index=#0#127
<END>

<START_EFFECT_504_T_H>
1:Revolver
2:Crossbow
<END>

<START_EFFECT_505_T_H>
1:Only revolver
2:Only crossbow
3:Either revolver or crossbow
<END>

<START_EFFECT_506_T_H>
1:Normal
2:Wideshot
<END>

<START_EFFECT_507_T_H>
1:Normal
2:Super
3:Flash
<END>

<START_EFFECT_508_T_H>
1:Normal
2:Poisoned
3:Explosive
<END>

<START_EFFECT_509_T_H>
1:Pistols
2:Revolver
3:Uzis
4:Shotgun
5:Grenade gun
6:Crossbow
<END>

<START_EFFECT_510_T_H>
#REPEAT#Seconds=#1#1000
1001:Put the flare out (and throw it automatically) right away
<END>

<START_EFFECT_511_T_H>
1:Enable
2:Disable
<END>

<START_EFFECT_512_T_H>
#REPEAT#Value of Parameters=PARAM_BIG_NUMBERS at index=#0#255
<END>

<START_EFFECT_513_T_H>
1:Restore the running timer on the screen (never forget on the level)
2:Show partial time. (The timer is running only in the background, you see only the actual time when activating this trigger.)
<END>

<START_EFFECT_514_T_H>
#REPEAT#Percents#0#100
<END>

<START_EFFECT_515_T_H>
1:  05 seconds
2:  10 seconds
3:  15 seconds
4:  20 seconds
5:  30 seconds
6:  45 seconds
7: 01 minute (default)
8: 01 minute 30 seconds
9: 02 minutes
10: 03 minutes
11: 05 minutes
12: 10 minutes
13: 15 minutes
14: 20 minutes
15: 30 minutes
16: 45 minutes
17:1 hour
<END>

<START_EFFECT_516_T_H>
1:Keep (when Lara comes out of underwater, any time after now)
2:Not keep any more
3:Save air (approaching deep-wade areas on foot)
4:Restore air from the latest saved air (going away from deep-wade areas on foot)
5:Taking on the latest air kept (of the previous level)
<END>

<START_EFFECT_517_T_H>
1:Restore
2:Start save zone
3:Stop save zone
<END>

<START_EFFECT_518_T_H>
1:Enable
2:Disable
<END>

<START_EFFECT_519_T_H>
1:Enable
2:Disable
<END>

<START_EFFECT_520_T_H>
1:Enable
2:Disable
<END>

<START_EFFECT_521_T_H>
1:Enable (also enabling horizon)
2:Disable (not disabling horizon)
<END>

<START_EFFECT_522_T_H>
1:Enable
2:Disable
<END>

<START_EFFECT_523_T_H>
#REPEAT#Parameters=PARAM_LENS_FLARE,#1#255
<END>

<START_EFFECT_524_T_H>
#REPEAT#Parameters=PARAM_SPEED_PARAMETER,#1#254
255: Select this if the trigger is used for an immediate stop
<END>

<START_EFFECT_524_E_H>
1:Northwards (NGLE facing) - automatical stop at Coordinate 0
2:Southwards (NGLE facing) - automatical stop at Coordinate 256 000
3:Upwards - automatical stop at Coordinate -128 000
4:Downwards - automatical stop at Coordinate 0
5:Eastwards (NGLE facing) - automatical stop at Coordinate 256 000
6:Westwards (NGLE facing) - automatical stop at Coordinate 0
7:Immediate stop
<END>

<START_EFFECT_525_T_H>
#REPEAT#ColorRGB=#1#255
<END>

<START_EFFECT_525_E_H>
#REPEAT#Seconds=#1#127
<END>

<START_EFFECT_526_T_H>
#REPEAT#Parameters=PARAM_SPEED_PARAMETER,#1#254
255: Select this if the trigger is used for aborting
<END>

<START_EFFECT_526_E_H>
1:Start pulsing
2:Start pulsing for the required time, keeping the actual color when stopped (cannot be aborted)
3:Start pulsing for the required phases, keeping the color (original/required) which belongs to the last phase end (cannot be aborted)
4:Abort pulsing (just now, keeping the actual color)
5:Abort pulsing (just now, restoring the original color)
6:Abort pulsing (just now, setting the color you required in the script)
7:Abort pulsing (when the color cycle reaches the original color the next time)
8:Abort pulsing (when the color cycle reaches the required color the next time)
<END>

<START_EFFECT_527_T_H>
#REPEAT#Parameters=PARAM_SPEED_PARAMETER,#1#254
255: Select this if the trigger is used for aborting
<END>

<START_EFFECT_527_E_H>
#SAME_OF#=EFFECT_526_E
<END>

<START_EFFECT_528_T_H>
#REPEAT#Parameters=PARAM_LOAD_CAMERA,#1#255
<END>

<START_EFFECT_529_T_H>
1:Enable
2:Disable
<END>

<START_EFFECT_530_T_H>
#REPEAT#Parameters=PARAM_SPEED_PARAMETER,#1#254
255: Select this if the trigger is used for aborting
<END>

<START_EFFECT_530_E_H>
#SAME_OF#=EFFECT_526_E
<END>

<START_EFFECT_531_T_H>
#REPEAT#Parameters=PARAM_SUN_COMPLEX,#1#1024
1025: Immediate stop
<END>

<START_EFFECT_532_T_H>
#REPEAT#Parameters=PARAM_GET_VEHICLE,#1#1024
<END>

<START_EFFECT_533_T_H>
#REPEAT#Parameters=PARAM_GET_VEHICLE,#1#1024
<END>

<START_EFFECT_534_T_H>
#REPEAT#Parameters=PARAM_ITEM_INTERACTION,#1#255
<END>

<START_EFFECT_534_E_H>
1:Enable
2:Disable
<END>

<START_EFFECT_535_T_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#9999
<END>

<START_EFFECT_536_T_H>
#REPEAT#Parameters=PARAM_SWITCH_USAGE,#1#255
<END>

<START_EFFECT_536_E_H>
1:Start
2:Stop
<END>

<START_EFFECT_537_T_H>
#REPEAT#Percents#0#100
<END>

<START_EFFECT_537_E_H>
1:Audio
2:Sound
<END>

<START_EFFECT_538_T_H>
#REPEAT#Parameters=PARAM_EARTHQUAKE,#1#255
<END>

<START_EFFECT_538_E_H>
1:Start
2:Stop
<END>

<START_EFFECT_539_T_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#9999
<END>

<START_EFFECT_540_T_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#9999
<END>

<START_EFFECT_541_T_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#9999
<END>

<START_EFFECT_542_T_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#9999
<END>

<START_EFFECT_543_T_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#9999
<END>

<START_EFFECT_544_T_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#9999
<END>

<START_EFFECT_545_T_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#9999
<END>

<START_EFFECT_546_T_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#9999
<END>

<START_EFFECT_547_T_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#9999
<END>

<START_EFFECT_548_T_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#9999
<END>

<START_EFFECT_549_T_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#9999
<END>

<START_EFFECT_550_T_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#9999
<END>

<START_EFFECT_551_T_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#9999
<END>

<START_EFFECT_552_T_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#9999
<END>

<START_EFFECT_553_T_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#9999
<END>

<START_EFFECT_554_T_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#9999
<END>

<START_EFFECT_555_T_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#9999
<END>

<START_EFFECT_556_T_H>
#REPEAT#Parameters=PARAM_OCB_CHANGE,#1#1024
<END>

<START_EFFECT_557_T_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#9999
<END>

<START_EFFECT_558_T_H>
#REPEAT#Parameters=PARAM_ROLLINGBALL_ROUTE,#1#255
<END>

<START_EFFECT_558_E_H>
1:Start
2:Stop
<END>

<START_EFFECT_559_T_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#9999
<END>

<START_EFFECT_560_T_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#9999
<END>

<START_EFFECT_561_T_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#9999
<END>

<START_EFFECT_562_T_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#9999
<END>

<START_EFFECT_563_T_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#9999
<END>

<START_EFFECT_564_T_H>
#REPEAT#Parameters=PARAM_SPRINKLER_SEQUENCE,#1#255
<END>

<START_EFFECT_564_E_H>
1:Start
2:Stop infinite effect
<END>

<START_EFFECT_565_T_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#9999
<END>

<START_EFFECT_566_T_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#9999
<END>

<START_EFFECT_567_T_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#9999
<END>

<START_EFFECT_568_T_H>
#REPEAT#Parameters=PARAM_FLAME_BLOWN,#1#255
<END>

<START_EFFECT_568_E_H>
1:Start
2:Stop infinite effect
<END>

<START_EFFECT_569_T_H>
#REPEAT#Parameters=PARAM_STEAM_BLOWN,#1#255
<END>

<START_EFFECT_569_E_H>
1:Start
2:Stop infinite effect
<END>

<START_EFFECT_570_T_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#9999
<END>

<START_EFFECT_571_T_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#9999
<END>

<START_EFFECT_572_T_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#9999
<END>

<START_EFFECT_573_T_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#9999
<END>

<START_EFFECT_574_T_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#9999
<END>

<START_EFFECT_575_T_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#9999
<END>

<START_EFFECT_576_T_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#9999
<END>

<START_EFFECT_577_T_H>
1:Big medipack
2:Small medipack
3:Special
<END>

<START_EFFECT_578_T_H>
1:Big medipacks used
2:Small medipacks used
3:Special health used
4:Distance travelled
5:Secrets found
6:Ammo used
7:Time taken
<END>

<START_EFFECT_578_E_H>
1:Start
2:Stop
<END>

<START_EFFECT_579_T_H>
#VAR_NORMALS#
<END>

<START_EFFECT_579_E_H>
1:Level - Big medipack (Short, or probably low [<256] max amount: Byte)
2:Level - Small medipack (Short, or probably low [<256] max amount: Byte)
3:Level - Special health (Short, or probably low [<256] max amount: Byte)
4:Game - Big medipack (Short, or probably low [<256] max amount: Byte)
5:Game - Small medipack (Short, or probably low [<256] max amount: Byte)
6:Game - Special health (Short, or probably low [<256] max amount: Byte)
7:Custom - Big medipack (Short, or probably low [<256] max amount: Byte)
8:Custom - Small medipack (Short, or probably low [<256] max amount: Byte)
9:Custom - Special health (Short, or probably low [<256] max amount: Byte)
10:Level - Distance travelled (Long)
11:Game - Distance travelled (Long)
12:Custom - Distance travelled (Long)
13:Level - Secrets found (Byte)
14:Game - Secrets found (Byte)
15:Custom - Secrets found (Byte)
16:Level - Ammo used (Long, or probably low [<32768] max amount: Short)
17:Game - Ammo used (Long, or probably low [<32768] max amount: Short)
18:Custom - Ammo used (Long, or probably low [<32768] max amount: Short)
19:Level - Time taken (Long)
20:Game - Time taken (Long)
21:Custom - Time taken (Long)
<END>

<START_EFFECT_580_T_H>
#REPEAT# #0#254
255: Infinite times
<END>

<START_EFFECT_581_T_H>
1:Enable
2:Disable
<END>

<START_EFFECT_582_T_H>
1:Enable
2:Disable
<END>

<START_EFFECT_582_E_H>
#REPEAT#Level#1#99
0:Choose this if you selected "disable"
<END>

<START_EFFECT_583_T_H>
1:Start
2:Stop
<END>

<START_EFFECT_584_T_H>
#REPEAT#Parameters=PARAM_INVENTORY_ITEM,#1#256
<END>

<START_EFFECT_584_E_H>
#MEM_INVENTORY_INDICES#
<END>

;------------------- Section for Action triggers: description of the trigger -------------------------------------
<START_TRIGGERWHAT_11_T_H>
150:Enemy. Force GUARD property on <#> enemy #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It forces GUARD property on the enemy.

The property will be "created" where the creature just is. So, if you force the property then the creature will stop where he just is and starts acting as if he were standing at an AI_GUARD object.

Important!
1. The creature at an AI_GUARD object will drop GUARD property, when noticing Lara. That's why you cannot force GUARD property on the creature if Lara is too close to him.
You can force GUARD only while the creature is farther (but even when seeing Lara, running towards her), being out of the attack range.
2. Force GUARD only if the creature can see Lara. (Which doesn't mean everyway that the creature technically needs to see her. It only means the creature needs to be able to reach her now, big gaps, water pools etc. cannot be invincible obstacles between them.)
If you break this rule then there can be a few bugs. Test it: if the creature stops right away when you activate the trigger (not later), being out of the attack range, then the setup is not buggy.

---------- Notes: ----------

- An AI_GUARD object works only once during the lifetime of the creature. But you can force GUARD property any time you want while the creature is living.
- The forced GUARD works only for the enemies where AI_GUARD object also works.
- "Forcing GUARD" means only the single GUARD property, i.e. not including GUARD+MODIFY.
- "Forcing GUARD" when the creature is standing at an AI_GUARD and an AI_MODIFY object means the creature will drop MODIFY property and starts acting as if only there were an AI_GUARD object there.

----------------------------
#END_DOC#
151:Enemy. Make <#> enemy drop GUARD (AI nullmesh or forced), MODIFY, GUARD+MODIFY, PATROL properties #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It makes the enemy drop all the useable AI properties.

For example, if the creature keeps guard at an AI_GUARD object, then dropping this GUARD property means the creature will leave his post - though Lara has not disturbed him, being too far away from him.
So "drop" means now "as if Lara had distracted the creature performing GUARD property".

The trigger is useable only with GUARD (AI nullmesh or forced), MODIFY, GUARD+MODIFY, PATROL properties.
#END_DOC#
152:Enemy. Put out the flaming torch temporarily in <#> Guide's hand #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It temporarily puts out the torch in the hand of the guide.

"Temporarily" means the guide will light it again at once, by himself.

---------- Note: ----------

This trigger is a good idea eg. if you want to represent this event: „the guide steps into a draughty area, the draught will blow out the torch”.

----------------------------
#END_DOC#
153:Enemy. Make <#> Horseman (on horse) patrol #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It forces the horseman (just riding) to do patrolling.

"Patrolling" means this now: sometimes during the battle with Lara, the horseman decides to ride back to the AI_FOLLOW objects. First to his and then to the one of the horse. So he starts not caring about Lara, and rides back. If he reaches the AI_FOLLOW of the horse, then the patrol ends.

---------- Notes: ----------

- If the horseman "rushing around" the AI_FOLLOW, not wanting to abort the patrol, then go closer to him.
- If Lara starts disturbing the horseman patrolling (i.e. she shoots after him when he rides to get farther from her to AI_FOLLOW's) then two things are possible:

a, (Usually.) He aborts the patrol, and comes back to her.
b, (Rarely.) He comes back to her, not aborting the patrol, saying "it's so rude to disturb me. Now I punish you to learn good manners and then go back patrolling".

----------------------------
#END_DOC#
<END>

;type here the sections for argument of above action triggers
<START_ACTION_150_O_H> 
#MOVEABLES#
<END>

<START_ACTION_151_O_H>
#MOVEABLES#
<END>

<START_ACTION_152_O_H>
#MOVEABLES#
<END>

<START_ACTION_153_O_H>
#MOVEABLES#
<END>


;------------------- Section for Condition triggers: description of the trigger -------------------------------------
<START_TRIGGERTYPE_12_T_H>
116:Moveable. <#> object activates this HEAVY trigger #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
This trigger is useful because usually you can't tell which object activates a HEAVY.
But eg. if SAS A and SAS B both can walk over the HEAVY, you'd like only SAS A to activate it.
Or eg. if SAS and DOG both can walk over the HEAVY, you'd like only SAS to activate it.
Etc.

Important!
The trigger works only in this construction:
Place a HEAVY trigger in the map, to activate a TriggerGroup. The TriggerGroup contains this C116, and (typing after C116) the required executable trigger.

---------- Notes: ----------

- It seems that NEF_EASY_HEAVY_ENABLING is necessary for the proper working of this, even if the object is able to activate HEAVY triggers by default, without NEF_EASY_HEAVY_ENABLING.
And it is still not a guarantee, you need to test it! (I mean, I suppose activators controlled by physics, like Rollingballs, are not really useable in setups like this.)
- Be careful, the setup may fail if there are more than one local trigger activator at the same time. (I mean, eg. if Lara is standing in a TRIGGER zone while that object is moving into that HEAVY zone. Or if another copy of that object slot is also there in that HEAVY zone. Etc.)
This probably depends on object slots. Test it. (For example pushblocks seem to work perfectly in this meaning.)
- If you want more than one valid activator for a HEAVY, then you need more than one C116 in the TriggerGroup, linking them to each other with TGROUP_OR flags.

----------------------------
#END_DOC#
117:Moveable. <#> object (including Lara) is performing the required animation and frame #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
This condition is useful for two main reasons:

- You'd like to check not only the animation what Lara is performing, but even the frame of the animation.
- AnimCommands usually belong to object slots: "if any object of the slot is just performing this frame of this animation, then perform the command". But eg. if you use C117 as a GlobalTrigger condition, then that will execute the command only if the required object of the slot is performing that frame, and not, if other objects of the slot are performing that. (Naturally it works only if the command is a TRNG trigger that can be exported, the classic WADMerger AnimCommands are useless now.)

See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.

---------- Notes: ----------

- It also works for Lara's extra slots, like VEHICLE_EXTRA, PISTOLS_ANIM etc.
- "TRNG Index. Index of moveable performing last AnimComand (Short)" Savegame Memory Zone field is something similar: check that value of the field in a condition. Put that condition in a TriggerGroup, with an executable trigger together. Export that TriggerGroup as an AnimCommand, putting it to the required animation frame. If the field value is the required object index (not any object of the slot), then the executable trigger will be executed.
The difference is C117 can be true only when that frame is being performed, but that field remains true even after that, another object needs to perform that AnimCommand to update it.
So C117 is better for this task.

----------------------------
#END_DOC#
118:Moveable. The item found latest is <#> object #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
Let’s see an example to understand this condition:
Use a GT_COLLIDE_SLOT type GlobalTrigger, with ANIMATING6 slot. – It means an executable trigger will be activated “if Lara collides with any object of ANIMATING6 slot”. Let’s say there are two ANIMATING6 object placed in the level: one with object ID 47, and the other with object ID 62.
Let’s say Lara collides with ID 47 (that executable trigger will be activated), then collides with an ANIMATING7 having ID59 and then checks a C118. The last condition for an object before C118 was that GT_COLLIDE_SLOT-ANIMATING6 GlobalTrigger, using object ID47 – so C118 now identifies object ID 47.

---------- Notes: ----------

- So C118 asks, actually, that "what is the actual value of TGROUP_FOUND_ITEM_INDEX"?
- Naturally the condition value will be updated only when the condition identifies another object.

----------------------------
#END_DOC#
119:ResetHUB. ResetHUB is <#> enabled/disabled #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
See F582 of this plugin to modify the status.

---------- Notes: ----------

- The "level" parameter of the trigger is the level ID whereto (not wherefrom!) the level jump will happen - just like at ResetHUB Script command.
- If you want to check "enabled", then you can check only "any level", if you need/have more than one ResetHUB for the current level, wherefrom (not whereto!) the level jump will happen, at the same time, or else the result may be false.
- If you want to check "disabled", then that could be true only if all the ResetHUBs of the current level are disabled.

----------------------------
#END_DOC#
120:Train. Train is <#> enabled/disabled #REMARK#See F581 of this plugin to modify the status.
121:Inventory-Item. The inventory has been closed latest at <#> item #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
This trigger is useful eg. if you'd like to know where the inventory will open the next time, if you hit ESC - because it is usually the item where it has been closed latest. (Which is naturally not true eg. if the game opens the inventory automatically at a key when you insert that key.)

---------- Notes: ----------

- The value will always be updated if the player quits the inventory at that item, using ENTER, CTRL or ESC. (It doesn’t matter it is useful or not. I mean, eg. it will work if the player closes it at the shotgun when Lara already holds the shotgun, so no need to extract it again. Or it will work if the player closes it at the medipack when Lara is totally healthy etc.)
- The value won’t be updated, if the player select that item NOT from the inventory. (Eg. if you hit SPACE to draw the shotgun.)
- This value will be carried to the next level (even if you used ResetHUB), so there will be always a "latest item" in that level, even if you have never opened the inventory in that level.
- If you remove that item before opening the inventory the next time, then the inventory will open at pistols the next time. (Or, if Lara has been disarmed meanwhile, then the inventory will be rolled rightwards from the position of the pistols to the next available item.)
- I removed Pistols Ammo Item, Compass Item and Burning Torch Item from the list, because the inventory will never open at those items.

----------------------------
#END_DOC#
122:Inventory-Item. The mechanical scarab can be used <&> times #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
---------- Notes: ----------

- "0 times" doesn't check if the scarab has already exploded or it will only at the next usage.
- If you want to check "infinite times", then the only possible cases in PARAM_NUMBER_RELATION are "equal with" (infinite) or "less than" (infinite).
Type -1 in the required value field of PARAM_NUMBER_RELATION now.

----------------------------
#END_DOC#
123:Statistics. <#> Seconds of time have been taken so far in (E) the level/game #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
This trigger is useful:

- because this is the way to use "time taken" Statistics as a condition, and
- because the default Statistics screen is wrong about the effective time taken, that also includes the inventory time, when the gameplay is eventually frozen, and
- because there is no default time Statistics for the level itself, and
- because you can check even a custom game phase (see F578).

See more in NG Center/Reference/Mnemonic Constants/PARAM_NUMBER_RELATION.

---------- Notes: ----------

- The counter includes only the effective game time, i.e. excluding any menu time: main menu, Pause menu (and sub menus), save/load menu, inventory.
(However, "game" condition could be also used in the main menu, to check the time you spend in the title. But only since you've opened the title the last time - so this "title time" has nothing to do with the "real" game time, they are different counters.)
- The "level" condition is buggy in a level, if you go back to that level, if you left it previously with ResetHUB.

----------------------------
#END_DOC#
124:Statistics. <#> Ammo have been used so far in (E) the level/game #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
This trigger is useful:

- because this is the way to use "ammo used" Statistics as a condition, and
- because there is no default ammo Statistics for the level itself, and
- because you can check even a custom game phase (see F578).

See more in NG Center/Reference/Mnemonic Constants/PARAM_NUMBER_RELATION.

---------- Notes: ----------

- Each shot bullet (including arrows, grenades) is +1 in this counter. (Naturally each shot with dual weapons – pistols, Uzis – means +2 in this counter.)
- The "level" condition is buggy in a level, if you go back to that level, if you left it previously with ResetHUB.

----------------------------
#END_DOC#
125:Statistics. <#> Secrets have been found so far in (E) the level/game #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
This trigger is useful:

- because this is the way for a whole "secrets found" Statistics as a condition (I mean, C17 and C18 don't check the "less" case), and
- because there is no default secret Statistics for the level itself, and
- because you can check even a custom game phase (see F578).

See more in NG Center/Reference/Mnemonic Constants/PARAM_NUMBER_RELATION.

---------- Note: ----------

The "level" condition is buggy in a level, if you go back to that level, if you left it previously with ResetHUB.

----------------------------
#END_DOC#
126:Statistics. <#> Meters of distance have been travelled so far in (E) the level/game #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
This trigger is useful:

- because this is the way to use "distance travelled" Statistics as a condition, and
- because there is no default distance Statistics for the level itself, and
- because you can check even a custom game phase (see F578).

See more in NG Center/Reference/Mnemonic Constants/PARAM_NUMBER_RELATION.

---------- Notes: ----------

- Horizontal and vertical movements will be both calculated.
- In the case of Set Position, the distance will be refreshed only at the end of the movement.
- The "level" condition is buggy in a level, if you go back to that level, if you left it previously with ResetHUB.

----------------------------
#END_DOC#
127:Statistics. <#> Big/small medipacks have been used so far in (E) the level/game #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
This trigger is useful:

- because this is the way to use "medipacks used" Statistics as a condition, and
- because the default Statistics screen doesn't distinguish small and big medipacks from each other, and
- because there is no default medipack Statistics for the level itself, and
- because you can check even a custom game phase (see F578), and
- because you can check if a flipeffect removed a medipack or if "special" health was added (see both in F577).

See more in NG Center/Reference/Mnemonic Constants/PARAM_NUMBER_RELATION.

---------- Notes: ----------

- The condition works either you choose the medipack in the inventory or with the hotkeys.
- The condition is buggy for small/big medipacks if you have infinite medipacks of that type.
- The "level" condition is also buggy for any case, in a level, if you go back to that level, if you left it previously with ResetHUB.
- Not counted automatically:

a, If you remove a medipack by a flipeffect. (Except: see F577.)
b, If you add any health by a flipeffect or with some special setup (like the health crystals of TR3).
"Special" value of the trigger is useable if you have a special setup like that in the game. So eg. if you have health crystals and you add X percent of health to Lara with a flipeffect when she touches a crystal like that, then you can also add "one crystal used" event to the "special" value in F577 - then you can check that "special" here.
c, If the medipack isn't used, you chose it, though - because Lara is full healthy.

----------------------------
#END_DOC#
128:Moveable. (E) Mesh of <#> object has been invisible/shattered #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#

---------- Notes: ----------

- If you want the opposite meaning ("not invisible/shattered"), then export the trigger into a TriggerGroup, using a TGROUP_NOT flag.
- See A50 (of trng.dll) or F576 (of this plugin) to make the required mesh invisible or shatterable.
- Don't mix the two possibilities:

a, use this condition for invisibility only if you don't want to shatter any mesh of this object, or
b, use this condition for the shatter function only if you don't want to make invisible any mesh of this object.

- Probably meshes made invisible with A50 or shatterable with F576 will have a savegame-stability problem: if you make invisible/shattered that mesh and then save/load the game, then the mesh will be whole again automatically.
You can fix this bug with this workaround:

a, Check in GlobalTrigger1 with a C128 that the mesh is invisible/shattered. If it is, then enable GlobalTrigger2.
b, GlobalTrigge2 is a GT_ALWAYS one. It will use A50 to restore the invisibility (= shattered status) for that mesh.

(Sometimes you don't have this bug. Mostly with creatures. However, you can also try to fix it with a NEF_SAVE_MESH_VISIBILITY Script flag, for creatures.)
----------------------------
#END_DOC#
129:Moveable. The required mesh of <#> object slot is shatterable #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
See F576 for more info.
See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.

---------- Note: ----------

The condition can be true either those meshes have already been shattered or not.

----------------------------
#END_DOC#
130:Moveable. The codebit button status of <#> object is (E) #REMARK#See F575 of this plugin to understand what "codebit button status" is.
131:Moveable. The One Shot status of <#> object is (E) #REMARK#See F574 of this plugin to understand what "One Shot status" is.
132:Moveable. <#> Door (moved by a cog switch) is in (E) position #REMARK#This condition may fail if you don't place the door on the floor or if you place it on slopes or broken surfaces!
133:Effect. Lightning just (E) strikes/doesn't strike into <#> Lightning Conductor
134:Moveable. <#> Element Puzzle status is (E) #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
This condition is usually first of all for petrol scale. I mean, usually you can use a HEAVY trigger for a scale like that, to check if the petrol is burning now or not. But, using this condition in a GlobalTrigger, now you can even check what that "or not" means: the scale is not used, having the material but without burning etc.
#END_DOC#
135:Effect. Single <#> Grenade has the required seconds before the explosion effect ends#REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
See F572 for more info.
See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.

---------- Notes: ----------

- 0 = immediately
- If you want to check "infinite" time, then the only possible cases in PARAM_NUMBER_RELATION are "equal with" (infinite) or "less than" (infinite).
Type -1 in the required value field of PARAM_NUMBER_RELATION now.

----------------------------
#END_DOC#
136:Effect. <#> Mine (triggered) has the required seconds before the explosion #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
"Triggered" means it is the harmless mine that is burning while that counter is running (using OCB=1).
See F571 to customize this.
See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.

---------- Note: ----------

0 = immediately

----------------------------
#END_DOC#
137:Trap. <#> Sentry Gun radar status is (E) #REMARK# Useless with "bad" gun (with OCB=1)
138:Moveable. <#> Expanding Platform actual size is the required percent of the maximum #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.

---------- Note: ----------

The condition works even if the platform is inactive/deactivated.

---------------------------
#END_DOC#
139:Moveable. <#> Raising Block actual size is the required percent of the maximum #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.

---------- Note: ----------

The condition works even if the block is inactive/deactivated.

---------------------------
#END_DOC#
140:Moveable. <#> Twoblock Platform is in (E) position #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
Useable only if OCB = 0, if the platform moves half a click up/down automatically, if Lara steps off/on it.

---------- Notes: ----------

- The condition works even if the platform is inactive/deactivated.
- If the "lower position" condition fails then that is probably about the room geometry right around the platform. Probably the platform is too close to the floor.
- If you move the platform with F570, then this condition is also useable, but only if you check the "upper position". This is the destination position now, whereto the block descends. (So not the "lower" position needs to be checked, in spite of we are talking about descending!)

---------------------------
#END_DOC#
141:Effect. <#> Waterfall Mist (having random emission by OCB) just (E) has/doesn't have an emission
142:Effect. <#> Steam Emitter (having harmful steam blown) has the required parameter value #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.

---------- Note: ----------

The check is meaningless and buggy when you forced "infinite pause time" (disabling steams) or "infinite blowing time" (with continuous blowing), for the emitter, using OCB's or F569.
Besides, don't use it either, if you customized the length with F569.

---------------------------
#END_DOC#
143:Effect. <#> Steam Emitter (having harmful steam blown) has (E) status #REMARK#Don't use it if you customized the length with F569.
144:Effect. <#> Flame Emitter (having flames blown) has the required parameter value #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.

---------- Note: ----------

The check is meaningless and buggy when you forced "infinite pause time" (disabling flames) or "infinite blowing time" (with continuous blowing), for the emitter, using OCB's or F568.

---------------------------
#END_DOC#
145:Effect. <#> Flame Emitter (having flames blown) has (E) status
146:Effect. <#> Burning Floor has (E) status
147:Effect. <#> Firerope (just burning) starts crumbling in the required seconds #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
See F566 of this plugin to customize the burning time.
See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.

---------- Note: ----------

If you want to check "infinite" time, then the only possible cases in PARAM_NUMBER_RELATION are "equal with" (infinite) or "less than" (infinite).
Type -1 in the required value field of PARAM_NUMBER_RELATION now.

----------------------------
#END_DOC#
148:Effect. <#> Firerope has (E) status #REMARK#It works even if a trigger makes it crumble.
149:Lara. (Health) Lara is <#> just burning or not #REMARK#The condition will fail while you force invulnerability on Lara, with F91!
150:Inventory. There are <#> number of (E) inventory-item #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It checks the amount of an inventory item.

- The "equal" condition is useful, because Only if you combine C3 and C4 (exported in a TriggerGroup: “at least X plus less than X+1” together means “exactly X”), they are useful for an “exactly” case, but X can’t be bigger than 30 in that case.
- The "more" condition is useful, because C3 "at least" (item>=X) condition cannot check a bigger value than 31. But what if eg. I want to check if the item amount is more than 5000?
- The "less" condition is useful, because C4 "less" (item<X) condition cannot check a bigger value than 31. But what if eg. I want to check if the item amount is less than 5000?

See more in NG Center/Reference/Mnemonic Constants/PARAM_NUMBER_RELATION.

---------- Notes: ----------

- As for "more" and "less" conditions, it is useful only with ammmo, medipack or flare. I mean, we don't need to care about a bigger number of puzzle items, they are never too high, C3 or C4 is good for them.
- As for "equal" condition, I wanted this condition without C3+C4 trigger combinations, even for puzzle items (though, they don't need to be checked for bigger values), that is why puzzle items are also added to this trigger.
- C3, C4 and C150 conditions are all good if you'd like to adjust an upper limit for some inventory item. For example, you use this GlobalTrigger: C150: "if Uzi ammo more/equal than 500"+ F501 (of this plugin): "set 500 Uzi ammo". So, for example, if Lara picks up an Uzi clip pair with 30 bullets when her actual Uzi ammo is 490 bullets, then the new amount will be only 500, the other 20 bullets will be lost.
- As for checking the amount of other inventory items:

a, if you want "equal with 0", then use C1 ("missing") instead, or, if you want "equal with 1", then use C2 ("presence") instead.
If C2 condition says “lasersight is in the inventory”, that means the lasersight is not attached. I mean, technically the lasersight is not in the inventory when it is attached to a weapon. (See C155, C157, C158 of this plugin for the proper lasersight conditions.)
b, "More" condition is needful only if you check the presence of the item, i.e. if amount>0. For that condition, choose C2 "presence" condition instead.
c, "Less" condition is needful only if you check the absence of the item, i.e. if amount<1. For that condition, choose C1 "missing" condition instead.

- You can check even if the amount infinite or less.
- For "unlimited" item amount:

a, If them item amount is "unlimited", then "less" conditions will be always false. (Except: "less than infinite".)
b, If them item amount is "unlimited", then "more" conditions will be always true.

----------------------------
#END_DOC#
151:Lara. (Health) Lara's actual underwater air is <#> percents in (E) way #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It checks Lara's underwater air amount. (Except: if you'd like to study the air percent when that is increasing while Lara is floating on the water surface.)

You can also check the scuba tank air kept (see F516 of this plugin). You should check it on foot or floating on the water surface. Otherwise the result is "false" - because the air is not kept under water, even if the amount itself in the condition is correct.

See more in NG Center/Reference/Mnemonic Constants/PARAM_NUMBER_RELATION.
#END_DOC#
152:Lara. (Move) Lara is just dashing (on foot or nitro+motorbike) with <#> percents of dash value #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It checks Lara's dash power. (Except: if you'd like to study the dash percent when that is increasing while Lara is resting.)

See more in NG Center/Reference/Mnemonic Constants/PARAM_NUMBER_RELATION.
#END_DOC#
153:Lara. (Weapons) Shotgun has <#> inventory status #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It checks the shotgun presence and the ammo loaded.
It is useful for these reasons:

- It will distinguish “missing because it has not been picked up” from “missing because it has been removed”. (C1 can't do that.)
- It will be able to study the required ammo. (C2 is able to study only “present with any ammo”.)
#END_DOC#
154:Lara. (Weapons) Uzis have <#> inventory status #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It checks the Uzi presence.
It is useful because it will distinguish “missing because it has not been picked up” from “missing because it has been removed”. (C1 can't do that.)
#END_DOC#
155:Lara. (Weapons) Revolver has <#> inventory status #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It checks the revolver presence and its lasersight status.
It is useful for these reasons:

- It will distinguish “missing because it has not been picked up” from “missing because it has been removed”. (C1 can't do that.)
- It will distinguish “present without lasersight attached” from “present with lasersight attached”. (C2 can't do that.)
#END_DOC#
156:Lara. (Weapons) Grenade gun has <#> inventory status #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It checks the grenade gun presence and the ammo loaded.
It is useful for these reasons:

- It will distinguish “missing because it has not been picked up” from “missing because it has been removed”. (C1 can't do that.)
- It will be able to study the required ammo. (C2 is able to study only “present with any ammo”.)
#END_DOC#
157:Lara. (Weapons) Crossbow has <#> inventory status #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It checks the crossbow presence and the ammo loaded.
It is useful for these reasons:

- It will distinguish “missing because it has not been picked up” from “missing because it has been removed”. (C1 can't do that.)
- It will be able to study the required ammo. (C2 is able to study only “present with any ammo”.)
- It will distinguish “present without lasersight attached” from “present with lasersight attached”. (C2 can't do that.)

---------- Note: ----------

If you need some special condition, then you can try a combination.
Eg. "The crossbow is picked up, loaded with poisoned ammo (with or without lasersight)" and "The crossbow is picked up (with any ammo), attached to lasersight" conditions together in a TriggerGroup (can be called eg. with a C15) means "The crossbow is picked up, loaded with poisoned ammo (with lasersight)".

----------------------------
#END_DOC#
158:Lara. (Weapons) Lasersight has <#> inventory status #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It checks any lasersight presence/attachment status which is not related to a weapon (see C155 and C157 of this plugin for weapon-related conditions).

---------- Note: ----------

It has better conditions than C2. C2 says "the lasersight is missing" if it has attached to a weapon.

----------------------------
#END_DOC#
159:Trap. <#> Sentry Gun shooting status is (E)
160:Lara. (Weapons) Lara is just aiming at any enemy (in automatic way) #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It checks if Lara is just aiming at any enemy.

Limitations:

- You need to select "automatic" targeting in Options menu.
- Aiming with the lasersight is useless now.
#END_DOC#
161:Lara. (Weapons) Lara is just aiming at an enemy of <#> enemy slot (in automatic way) #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It checks if Lara is just aiming at the required enemy slot.

Limitations:

- You need to select "automatic" targeting in Options menu.
- Aiming with the lasersight is useless now.
#END_DOC#
162:Lara. (Weapons) Lara is just aiming at <#> enemy (in automatic way) #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It checks if Lara is just aiming at the required enemy.

Limitations:

- You need to select "automatic" targeting in Options menu.
- Aiming with the lasersight is useless now.
#END_DOC#
163:Lara. (Weapons) Lara is just looking through the lasersight on <#> weapon in (E) way #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It checks if Lara is just looking through the lasersight on the required weapon.

---------- Notes: ----------

- Those "shooting/not shooting" parameters in the trigger are important, because there is no other way to check that. I mean, you can't use the classic C13 condition ("if ACTION key is pushed") or C5 ("if Lara is shooting") now.
- The revolver is "shooting" now while you hear the shooting sound. The crossbow is "shooting" now while the arrow is flying.
- If this revolver condition fails for you then the reason probably is you removed/changed somehow the original sound slot (DESSERT_EAGLE_FIRE) which is attached to the shooting in a hardcoded way. (Not the sound file, that can be changed, I am talking about the sound slot.)

----------------------------
#END_DOC#
164:Lara. (Weapons) Lara's actual weapon is <#> in (E) way #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It checks the "actual weapon", which is:

- the weapon in Lara’s hands or
- the weapon that will be extracted if you hit SPACE the next time to extract.

The condition is useful, because C35 is able to study the actual weapon only if that is in Lara’s hands. C35 in "not true" mode only means "X weapon is in the holsters/on the back", which doesn't mean everyway that X weapon is the actual one.
Moreover, that "not true" could mean even the weapon is not picked up.

---------- Notes: ----------

- "With extracting/holstering" in the trigger parameters means holstering/extracting movements are included. See C165 or C167 of this plugin for similar, but more precise conditions.
- "No weapon selected" doesn't always mean Lara is disarmed. Eg. if you pick up a weapon after she got disarmed, but not selecting it after that, then the condition says it is still a "no weapon" situation.
- You can choose any of the Extra parameters for "no weapon".

----------------------------
#END_DOC#
165:Lara. (Weapons) The weapon has the exact holstered position of <#> parameter #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It is useful if you want to check a really precise "holstered" status (see C164 and C167 conditions of this plugin where this status is not precise enough).
See more in NG Center/Reference/Mnemonic Constants/PARAM_WEAPON_HOLSTERS.

---------- Notes: ----------

- The condition is false if the weapon is not in the inventory.
- We don't check now if you can just see the holstered weapon in Lara's holsters/on her back, or not.

----------------------------
#END_DOC#
166:Lara. (Weapons) The weapon seen on Lara's back is <#> #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It checks what is the weapon what you can see on Lara's back.

---------- Notes: ----------

- It is not the actual weapon everyway. For example, if you put the shotgun back on her back and then extract the pistols, then the pistols are the actual weapons, but you see the shotgun on her back.
- For example, the condition could be useful if it is a condition for a GlobalTrigger that will add an effect (see AddEffect Script command) to that weapon mesh if this is the weapon just being seeable there, and remove the effect, if it is not.
- Unfortunately, I can't make a similar condition for the weapons in the holsters. (For the time being?)

----------------------------
#END_DOC#
167:Lara. (Weapons) There is any weapon in Lara's hand in <#> way #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
"Weapon" conditions always checks if Lara holds the required weapon or not. But none of them checks it for "any weapon", you need to check all the weapons, one after each other, if you want to check it.
C167 will solve this problem.

---------- Notes: ----------

- If you want a more specific condition, like, "Lara is holstering the grenade gun", then you need a "No weapon (just holstering)" of C167 and an "In holsters/on back (with extractimg/holstering)" for the grenade gun of C164 of this plugin. Place those conditions together in a TriggerGroup (can be called eg. with a C15).
- “Lara is shooting with any weapon” (C5) is different than C167 in shooting mode. C167 is true all the way while the ACTION button is pushed. On the other hand, C5 is not true while the button is pushed, but the bullet is just being loaded into the gun.
- The “No weapon (holstered, just holstering/extracting or disarmed)” mode is true all the way when Lara is moving her hands to extract/holster the weapons. 
On the other hand, "No weapon (holstered without animation or disarmed)" mode excludes the short parts of the  holstering/extracting movements when the weapon is in Lara's holsters or on her back.
See C165 of this plugin for both cases, if you want a more exact "holstered" condition.
- If you want to distinguish "holstered" from "disarmed" then see C164.

----------------------------
#END_DOC#
168:Lara. (Holds) Lara is performing <#> action with (E) torch #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It checks if Lara is just picking up or throwing a torch, flaming or not.

---------- Notes: ----------

- It is true for not the whole picking animation, only when the torch is already in the hand.
- It doesn't work for special picking animations. I mean, usually you never place a torch in a sarcophagus, a cupboard etc.
- If you want to force some action with the torch, then see these flipeffect triggers: F83 (to make Lara drop the torch) or F199, F200.
For example, imagine this: if Lara drops the flaming torch then the condition enables an F200 trigger to put out the torch. So it looks like the air – moved by the flying torch – puts the torch out.
- "Holding torch" isn't between the condition parameters now, see C35 if you want it.

----------------------------
#END_DOC#
169:Lara. (Holds) Lara ignites a flame/torch at <#> frame of (E) way #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It checks if Lara is just igniting a flame with a torch / a torch with a flame.
The condition could be not so precise (detecting all the igniting animations or only the required animation) or really precise (detecting the required frame of the required animation).
See more in NG Center/Reference/Mnemonic Constants/PARAM_NUMBER_RELATION.
#END_DOC#
170:Lara. (Holds) Lara ignites a flare #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It checks if Lara ignites a flare.
This condition will check the same what a C30 "Lara performs X animation" trng.dll condition will do with FLARE_ANIM Animation3. However, probably it is complicated for some level builders to check the absolute index of that Animation3, that is why I made this condition.

---------- Notes: ----------

It is better than “Extract flare” (C13), because:

- C13 works even when Lara throws the flare with the flare button, and
- C13 works when Lara reaches into the backpack for the flare to extract, (Or when she starts throwing the flare.) On the other hand, C170 works when Lara really ignites the flare after reaching into the backpack.

----------------------------
#END_DOC#
171:Lara. (Holds) Lara picks up a flaming flare (she has dropped before) in <#> way
172:Lara. (Holds) The moment when Lara starts throwing/dropping a flare in <#> way
173:Lara. (Holds) The flare in Lara's hand has started blinking (dying) (One Shot is recommended) #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It checks if the flare has already started blinking (dying) in Lara's hand.

---------- Note: ----------

For technical reasons, never activate without One Shot an executable trigger with this condition, if that trigger can be activated even in the next moment again (like eg. starting an audio file).
Without One Shot, use it for events, that cannot be repeated again (like eg. spawning a baddy).

----------------------------
#END_DOC#
174:Lara. (Holds) The flare in Lara’s hand will be dead in (E) more/less/exactly than <#> seconds #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It checks when the flare will be dead in Lara's hand.

---------- Notes: ----------

- The condition will go false everyway if she drops the flare. However, if she picks it up again, and the required time is still proper for that flare, then the condition will be true again.
For example: the condition must be true, if you still have 10 seconds till the flare dies. If you drop it at 7 seconds to die, then the condition will go false, but if you pick it up again when 2 seconds to die, then it will go true again.
- If she extracts a new flare when the condition is true for the old flare (dropped on the ground), then its condition won’t be true for the new flare. The new flare will check only its own time condition.

----------------------------
#END_DOC#
175:Timer. Screen timer is <#> enabled/disabled #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It checks if the screen timer is enabled or disabled.

“Enabled” is:
- the timer is on the screen, or
- the timer will be on the screen if you activate an F86 in “show” mode or an F512 of this plugin.

“Disabled” is: the timer is not on the screen, an F86 in “show” mode or F512 won’t put it on the screen. (You can start/stop it with F86 or F512, though, in hidden mode.)
#END_DOC#
176:Timer. Screen timer is at <#> seconds in (E) way #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It checks the actual value of the screen timer.

It is useful sometimes instead of C20, because:

- C20 works “only” for 1023 seconds. This condition can check even a much bigger value.
- C20 won’t work if you run the timer in hidden mode. (See F511 of this plugin to know more about hidden mode.)
- C20 is useless if you want to the check the timer running in the background, when the partial time (see F513 of this plugin) is shown.

See more in NG Center/Reference/Mnemonic Constants/PARAM_NUMBER_RELATION.

---------- Note: ----------

You can choose two different Extra parameters in the trigger:

- "Precisely": eg. 10 seconds is exactly 10 seconds, and 11 seconds is exactly 11 seconds now. I mean, 10.75 seconds is neither "equal with 10" nor "equal with 11". This is "more than 10" or "less than 11". (Usually this is the way the timer conditions work in TRLE/TRNG.)
- "Till the next second starts": eg. "10 seconds" goes from 10.00 to 10.99 now. 10.75 is "exactly 10". The least true number for a "bigger than 10" condition is 11.00 seconds. (This is also how C20 works.)

You can choose any version for "equal or bigger" case, because either for "precisely" or for "till the...", it is "10.00 or bigger".
And you can choose any version for "less" case, because either for "precisely" or for "till the...", it is "maximum 9.99".

If you need a tick frame-precise condition, then see the variable-based global/local timers.

----------------------------
#END_DOC#
177:Timer. The timer of the Moveable object will expire in the required seconds in <#> way #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It checks when the running timer of an object expires.

For example, Lara pulls a switch to open a door for 10 seconds. There is a C177 in the script (or anywhere else in the map), to check if the timer of this door is at the 7th second ( =if 3 seconds till it expires). If it is true, then something else (eg. a flipmap) will be activated.
So this condition is useful if you want to link the activation of something to the required moment of a classic object timer, you don't need an Organizer now everyway for this.

It also works for a negative timer. (Which doesn't mean you need to use a negative sign in the condition!)

See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.

---------- Notes: ----------

- You should avoid using "more" or "more+equal" C177 conditions if you can activate different timer values for the object at the same time.
- See C176 of this plugin to understand: eg. "10 second" now is exactly 10.00. I mean between 10.01 and 10.99 seconds is "more than 10" but "less than 11".
Instead of a C177, you can run collaterally a hidden screen timer with the object timer, if you want to check the time now in "Till the next second starts" way, so use C176. (Or, you can use a trick. I mean eg. if you want to check "more than 3 seconds till it expires" in C177, but in "Till the next second starts" way, then, so you check "exactly or more than 4 seconds" in C177.)

----------------------------
#END_DOC#
178:Timer. The timer of <#> Moveable object has (E) activity status #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It checks some statuses (see the trigger parameters) of the timer of an object.

It works the same way like C177 of this plugin, except naturally it uses timer statuses, not timer seconds.

See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.

---------- Notes: ----------

- You should avoid using C178 conditions (except: "not activated/expired") if you can activate different timer values for the object at the same time. (But the same timer values with different - positive or negative - signs at the same time are allowed.)
- C14 is buggy for timed triggers, so this condition is useful now.

----------------------------
#END_DOC#
179:Lara. (Status) Lara is on a square with grey frame (to start the mechanical scarab) #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
---------- Note: ----------

The condition is true if Lara is touching that grey framed square - so not only standing (which is used to start the scarab), but eg. even with crouching.

----------------------------
#END_DOC#
180:Lara. (Health) (E) More/less/exactly than <#> game tick frame is just being performed since the start of the dying animation #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
Usually you can’t activate anything after Lara’s dying animation has started, because her life power is 0.
But if you use this condition, then you have 301 tick frames (10 seconds plus one more frame) for that, from the start of the dying animation, till the game load you back to the title automatically.
(Of course, with some buttons, the player can force this load to happen sooner, before that 301 frames’ long interval expires. Eg. hitting ESC.)

For example:
Let’s suppose, the longest dying animation is 7 seconds=210 frames long. You want to print a text on the screen at the 220th frame (so when you are sure that any dying animation has ended) that reads “Lara has died!” That is why you use this setup to activate a “text” flipeffect when the tick frame is 220. (Naturally usually you should use C180 as a GlobalTrigger condition, to activate a trigger.)
#END_DOC#
181:Cheat. Lara is just <#> flying/not flying in DOZY mode #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
To check if Lara is just flying in DOZY or not.
This condition could be useful mostly as a GlobalTrigger condition, when you build and test your level. I mean, for example, you want to print some information on the screen when flycheat is working, but you want to remove the text when flycheat has just stopped.
#END_DOC#
182:Cheat. Flycheat is <#> enabled/disabled #REMARK#See F519 of this plugin to modify the status.
183:Weather. Horizon. Horizon is <#> enabled/disabled #REMARK#See F520 of this plugin to modify the status.
184:Weather. Sky. (E) Layer 1/2 is <#> enabled/disabled #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It checks if Layer1 or 2 is just enabled or not.

---------- Notes: ----------

- See trng.dll F150 if you want to enable or disable a layer.
- Don’t forget: “enabled” layers must have a color, defined with another "Weather" flipeffect (F152, 153, 154, 155) or a Layer Script command.

----------------------------
#END_DOC#
185:Weather. Lightning. Lightning is <#> enabled/disabled #REMARK#See trng.dll F151 if you want to enable or disable the lightning.
186:Weather. Horizon. ColAddHorizon is <#> enabled/disabled #REMARK#See F521 of this plugin to modify the status.
187:Weather. Sun. LensFlare coordinates and color are <#> enabled/disabled #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It checks if LensFlare (see F522 of this plugin) is just enabled or not.

---------- Notes: ----------

If you use NL button in a room to switch off LensFlare only in that room, that doesn't mean LensFlare is disabled.

----------------------------
#END_DOC#
188:Weather. Sky. (E) Layer 1/2 is moving in <#> direction
189:Weather. Sky. (E) Layer 1/2 has <#> speed #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It checks the speed of the layers. (Between Speed 0 and Speed 128.)

Set direction and speed values in different Script commands and triggers, in this way (the values in brackets are the C189 values):

-256 (Speed 0): motionless (Layer1 command, Layer2 command)
from -129 (fast - Speed 127) to -255 (slow - Speed 1): northwards (Layer1 command), southwards (Layer2 command)
from -1 (slow - Speed 1) to -128 (fast - Speed 128): southwards (Layer1 command), northwards (Layer2 command)
0 (Speed 0): motionless (Layer1 command, Layer2 command, F153)
from 1 (slow - Speed 1) to 127 (fast - Speed 127): northwards (Layer1 command, F153 for layer1), southwards (Layer2 command, F153 for layer2)
from 128 (fast - Speed 128) to 255 (slow - Speed 1): southwards (Layer1 command, F153 for layer1), northwards (Layer2 command, F153 for layer2)

Except:
If you use both layers at the same time, then Layer2 command or F153 for layer2 use the same direction, as if they were used for layer1. (So eg. 120 now is a fast speed northwards both for layer1 and layer2.)

See more in NG Center/Reference/Mnemonic Constants/PARAM_NUMBER_RELATION.

---------- Note: ----------

The conditions are false if the required layer is just not enabled.

----------------------------
#END_DOC#
190:Weather. Fog. VolumetricFX is <#> enabled/disabled
191:Weather. Sun. Sun is just <#> moving or not
192:Weather. Sun. Sun has <#> color
193:Weather. Sky. (E) Layer 1/2 has <#> color
194:Weather. Sun. Sun is just <#> pulsing or not
195:Weather. Sky. (E) Layer 1/2 is just <#> pulsing or not
196:Lara. (Holds) Lara <#> is just (not) hanging on a rope #REMARK# Recommended only as a GlobalTrigger condition.
197:Lara. (Holds) Lara is hanging on a rope in <#> way in (E) position (only if her feet are not on the rope) #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It checks the way Lara is hanging on the rope.

---------- Notes: ----------

- Recommended only as a GlobalTrigger condition.
- Turning or idle hanging animations are excluded. Only the "real" swinging is what matters (when her feet are not on the rope, either with idle swinging or hitting Key Dash).
- The condition will be even true, looking a bit chaotic, in the moments when Lara gets the rope and starts swinging, shivering on the almost idle rope. If you want to rule that out, then also use the distance condition (C198 of this plugin), so the present condition won’t be true if Lara is too close to the vertical.

----------------------------
#END_DOC#
198:Lara. (Holds) Lara's horizontal distance to the vertical is <#> when swinging on the rope (only if her feet are not on the rope) #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It checks Lara's precise horizontal position, compared to the rope what she is swinging on.

The maximum distance is about 11000. Sometimes (with some trick for a longer swing) it could be even about 13000. Probably 4096 means 1 square distance.

See more in NG Center/Reference/Mnemonic Constants/PARAM_NUMBER_RELATION.

---------- Notes: ----------

- Recommended only as a GlobalTrigger condition.
- We don't study now if Lara is just behind or in front of the vertical. If you want to know that, then study it with a C197 of this plugin. (That is why the distance value always must be positive.)
- Also use C197 as well if you want to study the swinging mode.

----------------------------
#END_DOC#
199:Moveable. The object works according to the required value in the OCB window in <#> way #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It checks if the Moveable object:

- has this OCB typed in the OCB window, or
- has this OCB forced by an A79 trigger (overwriting the value of the OCB window), or
- has this OCB forced by an F556 of this plugin (overwriting the value of the OCB window).

See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.
#END_DOC#
200:Moveable. <#> Object has (E) feature in OCB window #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It checks if the Moveable object has this feature via OCB.
For example, if OCB 256 (Bitflag 8) is added to the OCB of a pushable object (which is eg. 4416 now = 64+256+4096), then you know the pushing function is disabled.

---------- Note: ----------

Export the trigger into a TriggerGroup, with using a TGROUP_NOT flag if you'd like to check if the feature is not added. Check that TriggerGroup with a C15 or as a GlobalTrigger condition.

----------------------------
#END_DOC#
201:Lara. (Holds) Lara <#> is just (not) driving a vehicle #REMARK#It checks if Lara is in any vehicle or not. (Because C35 checks "only" the required vehicle type.)
202:Lara. (Holds) Lara is just driving <#> vehicle #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It checks if Lara is driving the required vehicle. (It is useful eg. if two motorbikes, three jeeps etc. are placed in a level, and you want to know eg. if Jeep1 or Jeep2 is just being driven.)
#END_DOC#
203:Lara. (Holds) Lara used the switch the required times since the counting started (to on: one use, to off: another use) in <#> way #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
See F536 of this plugin to understand what this condition does.
And see more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.
#END_DOC#
204:Lara. (Holds) The usage of <#> object is (E) enabled/disabled (only made with F534 or tightrope) #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It checks if an item is just enabled or disabled.

The condition is useable only for:

- items disabled with F534 of this plugin, or
- tightrope (disabled with A77).

---------- Note: ----------

If you want to check if a pushblock is disabled or not then check the OCB (see C199, C200), because you can use OCB to make some features disabled for a pushblock.

----------------------------
#END_DOC#
205:Moveable. <#> Falling Block (just performing shivering) will fall down in the required seconds #REMARK#See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.
206:Lara. (Holds) Lara is just moving <#> Pushable Object in (E) way #REMARK#This is a useful condition, because pushblocks have no animations, so you can't check their movements in other way like that.
207:Lara. (Holds) Lara is just pushing <#> Rollingball #REMARK#This is a useful condition, because rollingballs have no pushing animations, so you can't check this movement in other way like that.
208:Lara. (Holds) Lara is just using <#> Rope in (E) way #REMARK#This is a useful condition, because ropes have no animations, so you can't check their movements in other way like that.
209:Lara. (Holds) Lara is just using <#> Parallel Bar in (E) way #REMARK#This is a useful condition, because swingbars have no animations, so you can't check their movements in other way like that.
210:Weather. Fog. Distance fog (if VFX disabled) or fog bulb (if VFX enabled) trigger-based color is <#> #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It checks the actual color of the fog (distance fog, fog bulbs).

The "trigger-based" term in the trigger name means: don’t use the condition if the color is defined by a Fog Script command, so use this only if the color is defined by a FLIPEFFECT trigger, with F28 (for fog bulbs) or F224 (for the distance fog).
#END_DOC#
211:Room. Room has <#> properties #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It checks several parameters of a room:

- room types (water, rain, damage etc.)
- has/is a fliproom
- ambience color
- X, Y, Z coordinates and sizes
- light (Sun, Spot, Light, Shadow, Fog) amount
- Static object amount

See more in NG Center/Reference/Mnemonic Constants/PARAM_ROOM_PROPERTIES.
#END_DOC#
212:Moveable. The object (including Lara) is in <#> room #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It checks the actual room of the Moveable object.
See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.

---------- Notes: ----------

- The check is for the room index is you usually see in NGLE. For example, if it is Room49 (49:47), then the index is 49. Or, if it is Scorp Hall (43:42), then the index is 43.
- It also works for Lara, but there is another solution for her: see MultEnvConditions.
- You cannot transport non-AI Moveable objects out of their rooms. But it doesn't mean they won't leave their rooms. Just think about a zipline that will slide from one room to another. (Or the motorbike etc.) And yes, in their cases the index of the room will be updated when they change rooms.

----------------------------
#END_DOC#
213:Statics. The object works according to the required value in the OCB window in <#> way #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It checks if the Static object:

- has this OCB typed in the OCB window, or
- has this OCB forced by specified triggers (like F186) that control OCB-based attributes, or
- has this OCB forced by an F556 of this plugin (overwriting the value of the OCB window).

See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.
#END_DOC#
214:Statics. <#> Object has (E) feature in OCB window #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It checks if the Static object has this feature via OCB.
For example, if OCB 256 (Bitflag 8) is added to the OCB of a Static object (which is eg. 4416 now = 64+256+4096), then you know the poisoning function is added.

---------- Note: ----------

Export the trigger into a TriggerGroup, with using a TGROUP_NOT flag if you'd like to check if the feature is not added. Check that TriggerGroup with a C15 or as a GlobalTrigger condition.

----------------------------
#END_DOC#
215:Object generally. Moveable (including Lara) or Statics object has <#> orientation #REMARK#See more in NG Center/Reference/Mnemonic Constants/PARAM_ORIENTATION_CONTROL.
216:Statics. <#> Object has a (E) wholeness status
217:Moveable. The object (including Lara) vertical distance from the floor (with collision) under the object is <#> #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It checks the distance of the object to the floor.
See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.

---------- Notes: ----------

- The values are in "object clicks". (1 block = 4 floor clicks = 8 object clicks = 1024 units.)
- As the trigger name says, the collision is what matters. Which is important eg. if we modify floor collisions with flipeffects, or if there is a falling block with Dummy trigger under the object you check etc.
- There is already a similar condition in TRNG, but only for cutscene actors.
- It also works for Lara, but there is another solution for her: see MultEnvConditions.

----------------------------
#END_DOC#
218:Sound. The <#> audio is playing in (E) mode #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It checks if the required audio is just playing in channel1/channel2/any channel, in loop/single/any mode.
You can also check:

- if the required audio is not playing ("none"),
- if you can hear any audio on the required channel in the required mode. Just choose "any" for the required audio.

---------- Note: ----------

Don't forget - it checks the whole length of the audio file. So if there is some dumb part after the end of the music, but the audio is still playing, then technically it means "the music is playing".

----------------------------
#END_DOC#
219:Sound. The (E) audio/sound master volume (of Options menu) is <#> percent #REMARK#See more in NG Center/Reference/Mnemonic Constants/PARAM_NUMBER_RELATION.
220:Earthquake. The actual intensity of the actual earthquake is <#> #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It checks the actual earthquake intensity.

Known quake sources:

- EARTHQUAKE object.
- F1, F7, F11 classic flipeffects.
- Quake AnimCommands.
- Rumbling RAISING_BLOCK (with OCB 1).
- SQUISHY_BLOCK2 when shivers/falls.
- PARAM_EARTHQUAKE (F538 of this plugin).

0 is "no quake". The upper limit is somewhere above 32000, but that is very irrational.

Some hardcoded (more or less approximate) maximum values:

- EARTHQUAKE object: 109
- F1, soft quake animcommand: 60
- F7, hard quake animcommand: 145
- RAISING_BLOCK: 27
- SQUISHY_BLOCK: 91.

See more in NG Center/Reference/Mnemonic Constants/PARAM_NUMBER_RELATION.

---------- Note: ----------

If you want a "less than X" condition, but you don' want it to be true when there is no quake, then you also need a "more than 0" condition.

----------------------------
#END_DOC#
221:Moveable. The object slot will change the look for its MIP slot, in <#> distance from Lara #REMARK#See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.
222:Moveable. <#> Object is died/ruined (= general "death" condition) #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It is a general check if an enemy is died or if another object is ruined.

Use this condition if you have problems with C14 trigger to examine the death:

- Because C14 is not savegame-stable. I.e. you can't study the death of the dead enemy if you save the game after the death, and you load that savegame after that. So, if you still want to examine the death after the load.
- Because C14 won't work with special deaths. (Eg. if you blow up a non-living Moveable object with A14.)
#END_DOC#
223:Camera. The current camera is <#> #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#

---------- Notes: ----------

- No camera type for TRNG cameras in this trigger, because they are all made with TRLE cameras.
For example, the Standby effect is a special chase camera, cutscene cameras for Demo Script commands are static cameras etc.
- It looks that the hardcoded special cameras (eg. when Lara is opening a floor trapdoor) are detected as static cameras.

----------------------------
#END_DOC#
224:Enemy. The vitality percent of the enemy is <#> #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
This will check the vitality points of the enemy.

See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.

---------- Notes: ----------

- The check is meaningless if the enemy is invulnerable.
- It also works for Lara. However, use C29 for her for the same reason.
- If the enemy is dead then "less than X" conditions will never be true.

----------------------------

#END_DOC#
225:Enemy. Lara or else just hits <#> enemy with bullets (excluded: grenades, arrows; included: immortal enemies, accidental hits) #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
This will check if the enemy has just been hit.

---------- Notes: ----------

- It also works with immortal enemies.
- It works only with bullets, i.e. useless with arrows or grenades. (But you can do something similar with arrows or grenades - see Customize=CUST_AMMO Script command.)
- It works even if the aggressor is not Lara. (See if Troops shoots at a scorpion.) But it doesn't work with direct attacks. (See if the scorpion grabs a Troops.)
- If Lara hits "accidentally" (i.e. if the player uses "automatic targeting", but Lara shoots without aiming) that also matters now.

----------------------------

#END_DOC#
226:Enemy. <#> Enemy is (E) poisoned or not (but living)
227:Enemy. <#> Enemy has (E) AI property #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
It checks if the enemy has an AI property.

---------- Note: ----------

Some false results if you check the AI with this condition:

- See what I told at A150 of this plugin: the forced GUARD could be buggy if you want to use it when the creature doesn't see Lara, out of the attack range.
- If you want to force GUARD property when you can't (because the creature is inside the attack range), then the the condition will give a short "true" result (which is false) in the moment when you want to force GUARD.
So you should avoid the force and/or the condition in situations like this.
- It is not so easy to "really" lose the MODIFY property. For example, a crocodile will leave AI_MODIFY nullmesh after having been distracted, but still having the flag of the MODIFY property. Or, baddy_1 distracted can't leave AI_MODIFY, just starts shooting at Lara with infinite ammo, still having the flag of the MODIFY property.
To fix this, you need to force the creature to drop all the AI properties (with A151 of this plugin) now, before you check the real status of the MODIFY.
- If the skeleton/baddy jumps aside when triggered (see: OCB 1 or 2) then he adopts GUARD property (temporarily, while he's doing that movement).
- If Setha can't find Lara, then he adopts AMBUSH property (forever, so he won't drop it if he will find Lara later).

----------------------------
#END_DOC#
228:Enemy. <#> Enemy Jeep shoots the next grenade in the required seconds #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.

---------- Notes: ----------

- 0 = right away.
- It is a meaningless check if the jeep is just friendly.

----------------------------
#END_DOC#
229:Enemy. <#> Enemy Jeep is just (E) friendly or not #REMARK#F547 makes it friendly.
230:Enemy. <#> Baddy_1 or Baddy_2 has the required amount of Uzi ammunition #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
You can check the ammo amount (including: infinite) of Baddy_1 or Baddy_2 with it.
See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL and F548 of this plugin.

---------- Note: ----------

If you want to check "infinite" ammo, then the only possible cases in PARAM_NUMBER_RELATION are "equal with" (infinite) or "less than" (infinite).
Type -1 in the required value field of PARAM_NUMBER_RELATION now.

----------------------------
#END_DOC#
231:Enemy. The torch in <#> Guide's hand has (E) status
232:Enemy. The on-horse status of <#> Horseman is (E) #REMARK#See A153 to understand "patrol"
233:Enemy. <#> Wraith1 (the fire wraith) has (E) "burn Lara" and "vulnerability" status #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
See F549 to set this.

---------- Note: ----------

Probably you need the usual "Invisible" status everyway for the proper condition.

----------------------------
#END_DOC#
234:Enemy. <#> Wraith2 (the ice wraith) is (E) vulnerable/invulnerable in water #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
See F550 to set this.

---------- Note: ----------

Probably you need the usual "Invisible" status everyway for the proper condition.

----------------------------
#END_DOC#
235:Enemy. <#> Wraith is just turning (E) clockwise/anti-clockwise #REMARK#Naturally if the radius is big then the route of the wraith seems linear, though that isn't.
236:Enemy. <#> Wraith have (E) special route #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
See F551 to set this.

---------- Note: ----------

Probably you need the usual "Invisible" status everyway for the proper condition.

----------------------------
#END_DOC#
237:Enemy. The required amount of Little Beetles have not been emitted yet from <#> emitter #REMARK#See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.
238:Enemy. The required amount of Fishes have not been emitted yet from <#> emitter #REMARK#See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.
239:Enemy. <#> Emitter just emits a fish #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
---------- Note: ----------

If you want a pause in emitting fishes, then use A14 in "disable emitter" mode. Then (perhaps timed with an Organizer) re-activate the emitter again, to make it continue the emission.

----------------------------
#END_DOC#
240:Enemy. <#> Mutant is just (E) harmful/harmless #REMARK#Because in the moment when he is being spawned or when he is raging harmlessly (see F554), the mutant can't hurt Lara.
241:Enemy. <#> Setha is just shooting energy in (E) way #REMARK#These checks also work with casual TRNG animation and (for the floating attack) frame conditions, but it seems a more user friendly way.
242:Enemy. <#> Harpy is just shooting energy in (E) way #REMARK#These checks also work with casual TRNG animation conditions, but it seems a more user friendly way.
243:Enemy. The new location whereto <&> Ahmet will be transported when resetting Scales the next time is the required one #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
See F535 to set this.
See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.
#END_DOC#
244:Enemy. <#> Laser Head has (E) required status
245:Enemy. The required number of body parts (of 12) still remains to shatter before <#> Hydra dies #REMARK#See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.
246:Trap. <#> Rollingball has the required speed in the required direction #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.

---------- Notes: ----------

- (Approximately?) 512 means the speed of the ball is just enough for a one square long travel. 
- If the "less/less+equal than X" or the "equal with 0" has a true condition when the ball doesn't move in that direction that means the ball hasn't been deactivated with an antritrigger, so it is still an active object - even if it doesn't move in any direction.
- If the ball moves eg. northwestwards, then you should check both the north and the west speed.
I mean, the real speed of the ball is a bit complicated, based on the Pythagorean theorem:
Real speed on the second power equals with north speed on the second power plus west speed on the second power.
- Not recommended (and meaningless) using it in a direction if you just force a speed in that direction with F558.

----------------------------
#END_DOC#
247:Trap. <#> Teeth Spikes is in (E) position #REMARK#The spikes are "bouncing" so they reach the top position twice at each extension.
248:Trap. The next extension of <#> Teeth Spikes (just drawn back) will happen in the required tick frame #REMARK#See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.
249:Trap. The rotation speed of <#> Joby Spike is the required one #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
See F560 to set this.
See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.
#END_DOC#
250:Trap. <#> Joby Spike is just rotating (E) clockwise/anti-clockwise #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#

---------- Notes: ----------

- The direction of the rotation seems random: the game will “decide” that the spike will be activated with clockwise or anti-clockwise rotation.
- If the joby spike goes mad after you've loaded a savegame that means the game tries to perform both the clockwise and anti-clockwise directions at once. Load the savegame again (and again) to solve the problem.

----------------------------
#END_DOC#
251:Trap. The actual length of <#> Joby Spike is the required one #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
See F561 to set this.
See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.
#END_DOC#
252:Trap. The maximal length of <#> Joby Spike is the required one #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
See F562 to set this.
See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.
#END_DOC#
253:Trap. <#> Squishy Block2 falls in the required seconds #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
See F563 to set this.
See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.

---------- Note: ----------

0 = immediately

----------------------------
#END_DOC#
254:Trap. <#> Seth Blade next strike starts in the required seconds #REMARK#Click on [Trigger's Help] button for more infos#START_DOC#
You can use OCB numbers to set it.
I mean, it is not really known, but Seth Blades are working not only with negative OCB numbers, but positive OCB numbers as well:

- As you know, a negative OCB number means the trap will start moving in a time which is defined in the OCB number (as tick frames), and, after that, the trap won't move any more.
- A positive OCB number means the trap will start moving in a time which is defined in the OCB number (as tick frames), and, after that, the trap will start moving again (according to that time).

An antitrigger means a pause in both cases.

See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJECT_ADDITIONAL.

---------- Note: ----------

0 = immediately

----------------------------
#END_DOC#
255:Effect. <#> Sprinkler is in (E) working phase #REMARK#See F564 of this plugin for more infos
<END>

;type here the sections for arguments of above conditional triggers
<START_CONDITION_116_O_H>
#MOVEABLES#
<END>

<START_CONDITION_117_O_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#1023
<END>

<START_CONDITION_118_O_H>
#MOVEABLES#
<END>

<START_CONDITION_119_O_H>
#REPEAT#Enabled Level#1#99
0:Disabled
100:Enabled any level
<END>

<START_CONDITION_120_O_H>
1:Enabled
2:Disabled
<END>

<START_CONDITION_121_O_H>
 20: BIGMEDI_ITEM
 22: BINOCULARS_ITEM
113: CLOCKWORK_BEETLE
115: CLOCKWORK_BEETLE_COMBO1
114: CLOCKWORK_BEETLE_COMBO2
 13: CROSSBOW_AMMO1_ITEM
 14: CROSSBOW_AMMO2_ITEM
 15: CROSSBOW_AMMO3_ITEM
  5: CROSSBOW_ITEM
  6: CROSSBOW_ITEM + LASER_SIGHT
112: CROWBAR_ITEM
116: EXAMINE1
117: EXAMINE2
118: EXAMINE3
 23: FLARE_INV_ITEM
 10: GRENADE_GUN_AMMO1_ITEM
 11: GRENADE_GUN_AMMO2_ITEM
 12: GRENADE_GUN_AMMO3_ITEM
  7: GRENADE_GUN_ITEM
 65: KEY_ITEM1
 77: KEY_ITEM1_COMBO1
 78: KEY_ITEM1_COMBO2
 74: KEY_ITEM10
 75: KEY_ITEM11
 76: KEY_ITEM12
 66: KEY_ITEM2
 79: KEY_ITEM2_COMBO1
 80: KEY_ITEM2_COMBO2
 67: KEY_ITEM3
 81: KEY_ITEM3_COMBO1
 82: KEY_ITEM3_COMBO2
 68: KEY_ITEM4
 83: KEY_ITEM4_COMBO1
 84: KEY_ITEM4_COMBO2
 69: KEY_ITEM5
 85: KEY_ITEM5_COMBO1
 86: KEY_ITEM5_COMBO2
 70: KEY_ITEM6
 87: KEY_ITEM6_COMBO1
 88: KEY_ITEM6_COMBO2
 71: KEY_ITEM7
 89: KEY_ITEM7_COMBO1
 90: KEY_ITEM7_COMBO2
 72: KEY_ITEM8
 91: KEY_ITEM8_COMBO1
 92: KEY_ITEM8_COMBO2
 73: KEY_ITEM9
 19: LASERSIGHT_ITEM
 25: MEMCARD_LOAD_INV_ITEM
 26: MEMCARD_SAVE_INV_ITEM
 93: PICKUP_ITEM1
 97: PICKUP_ITEM1_COMBO1
 98: PICKUP_ITEM1_COMBO2
 94: PICKUP_ITEM2
 99: PICKUP_ITEM2_COMBO1
100: PICKUP_ITEM2_COMBO2
 95: PICKUP_ITEM3
101: PICKUP_ITEM3_COMBO1
102: PICKUP_ITEM3_COMBO2
 96: PICKUP_ITEM4
103: PICKUP_ITEM4_COMBO1
104: PICKUP_ITEM4_COMBO2
  1: PISTOLS_ITEM
 37: PUZZLE_ITEM1
 49: PUZZLE_ITEM1_COMBO1
 50: PUZZLE_ITEM1_COMBO2
 46: PUZZLE_ITEM10
 47: PUZZLE_ITEM11
 48: PUZZLE_ITEM12
 38: PUZZLE_ITEM2
 51: PUZZLE_ITEM2_COMBO1
 52: PUZZLE_ITEM2_COMBO2
 39: PUZZLE_ITEM3
 53: PUZZLE_ITEM3_COMBO1
 54: PUZZLE_ITEM3_COMBO2
 40: PUZZLE_ITEM4
 55: PUZZLE_ITEM4_COMBO1
 56: PUZZLE_ITEM4_COMBO2
 41: PUZZLE_ITEM5
 57: PUZZLE_ITEM5_COMBO1
 58: PUZZLE_ITEM5_COMBO2
 42: PUZZLE_ITEM6
 59: PUZZLE_ITEM6_COMBO1
 60: PUZZLE_ITEM6_COMBO2
 43: PUZZLE_ITEM7
 61: PUZZLE_ITEM7_COMBO1
 62: PUZZLE_ITEM7_COMBO2
 44: PUZZLE_ITEM8
 63: PUZZLE_ITEM8_COMBO1
 64: PUZZLE_ITEM8_COMBO2
 45: PUZZLE_ITEM9
105: QUEST_ITEM1
106: QUEST_ITEM2
107: QUEST_ITEM3
108: QUEST_ITEM4
109: QUEST_ITEM5
110: QUEST_ITEM6
  8: SHOTGUN_AMMO1_ITEM
  9: SHOTGUN_AMMO2_ITEM
  2: SHOTGUN_ITEM
 16: SIXSHOOTER_AMMO_ITEM
  3: SIXSHOOTER_ITEM
  4: SIXSHOOTER_ITEM + LASER_SIGHT
 21: SMALLMEDI_ITEM
 17: UZI_AMMO_ITEM
  0: UZI_ITEM
 28: WATERSKIN1_1
 29: WATERSKIN1_2
 30: WATERSKIN1_3
 27: WATERSKIN1_EMPTY
 32: WATERSKIN2_1
 33: WATERSKIN2_2
 34: WATERSKIN2_3
 35: WATERSKIN2_4
 36: WATERSKIN2_5
 31: WATERSKIN2_EMPTY
119: The inventory has never been opened before in the whole game
<END>

<START_CONDITION_122_O_H>
#REPEAT#Parameters=PARAM_NUMBER_RELATION,#1#1023
<END>

<START_CONDITION_123_O_H>
#REPEAT#Parameters=PARAM_NUMBER_RELATION,#1#1023
<END>

<START_CONDITION_123_B_H>
1:Level
2:Game
3:Custom
<END>

<START_CONDITION_124_O_H>
#REPEAT#Parameters=PARAM_NUMBER_RELATION,#1#1023
<END>

<START_CONDITION_124_B_H>
1:Level
2:Game
3:Custom
<END>

<START_CONDITION_125_O_H>
#REPEAT#Parameters=PARAM_NUMBER_RELATION,#1#1023
<END>

<START_CONDITION_125_B_H>
1:Level
2:Game
3:Custom
<END>

<START_CONDITION_126_O_H>
#REPEAT#Parameters=PARAM_NUMBER_RELATION,#1#1023
<END>

<START_CONDITION_126_B_H>
1:Level
2:Game
3:Custom
<END>

<START_CONDITION_127_O_H>
#REPEAT#Parameters=PARAM_NUMBER_RELATION,#1#1023
<END>

<START_CONDITION_127_B_H>
1:Level - Big medipack
2:Level - Small medipack
3:Level - Special
4:Game - Big medipack
5:Game - Small medipack
6:Game - Special
7:Custom - Big medipack
8:Custom - Small medipack
9:Custom - Special
<END>

<START_CONDITION_128_O_H>
#MOVEABLES#
<END>

<START_CONDITION_128_B_H>
0:Mesh00
1:Mesh01
2:Mesh02
3:Mesh03
4:Mesh04
5:Mesh05
6:Mesh06
7:Mesh07
8:Mesh08
9:Mesh09
10:Mesh10
11:Mesh11
12:Mesh12
13:Mesh13
14:Mesh14
15:Mesh15
16:Mesh16
17:Mesh17
18:Mesh18
19:Mesh19
20:Mesh20
21:Mesh21
22:Mesh22
23:Mesh23
24:Mesh24
25:Mesh25
26:Mesh26
27:Mesh27
28:Mesh28
29:Mesh29
<END>

<START_CONDITION_129_O_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#1023
<END>

<START_CONDITION_130_O_H>
#MOVEABLES#
<END>

<START_CONDITION_130_B_H>
0:None of the buttons is pressed
1:Only Button1 is pressed
2:Only Button2 is pressed
3:Only Button1+2 are pressed
4:Only Button3 is pressed
5:Only Button1+3 is pressed
6:Only Button2+3 is pressed
7:Only Button1+2+3 is pressed
8:Only Button4 is pressed
9:Only Button1+4 is pressed
10:Only Button2+4 is pressed
11:Only Button1+2+4 is pressed
12:Only Button3+4 is pressed
13:Only Button1+3+4 is pressed
14:Only Button2+3+4 is pressed
15:Only Button1+2+3+4 is pressed
16:Only Button5 is pressed
17:Only Button1+5 is pressed
18:Only Button2+5 is pressed
19:Only Button1+2+5 is pressed
20:Only Button3+5 is pressed
21:Only Button1+3+5 is pressed
22:Only Button2+3+5 is pressed
23:Only Button1+2+3+5 is pressed
24:Only Button4+5 is pressed
25:Only Button1+4+5 is pressed
26:Only Button2+4+5 is pressed
27:Only Button1+2+4+5 is pressed
28:Only Button3+4+5 is pressed
29:Only Button1+3+4+5 is pressed
30:Only Button2+3+4+5 is pressed
31:All of them (Button1+2+3+4+5) is pressed
<END>

<START_CONDITION_131_O_H>
#MOVEABLES#
<END>

<START_CONDITION_131_B_H>
1:The object is inactive (not triggered yet or antitriggered already), not having One Shot
2:The object is inactive (not triggered yet or antitriggered already), having One Shot
3:The object is active, not having One Shot
4:The object is active, having One Shot
5:Any (active/inactive) object, not having One Shot
6:Any (active/inactive) object, having One Shot
<END>

<START_CONDITION_132_O_H>
#MOVEABLES#
<END>

<START_CONDITION_132_B_H>
0:Ground
1:Rising
2:Top
3:Sinking
<END>

<START_CONDITION_133_O_H>
#MOVEABLES#
<END>

<START_CONDITION_133_B_H>
1:Striking
2:Not striking (but active)
<END>

<START_CONDITION_134_O_H>
#MOVEABLES#
<END>

<START_CONDITION_134_B_H>
0:The scale has not been used yet or Lara is pouring the material
1:Material (water, dirt, petrol) has poured into the scale
2:Lara holds the torch to the petrol
3:The petrol is burning
<END>

<START_CONDITION_135_O_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#1023
<END>

<START_CONDITION_136_O_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#1023
<END>

<START_CONDITION_137_O_H>
#MOVEABLES#
<END>

<START_CONDITION_137_B_H>
1:Turning clockwise/rightwards (from the gun)
2:Turning anti-clockwise/leftwards (to the gun)
<END>

<START_CONDITION_138_O_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#1023
<END>

<START_CONDITION_139_O_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#1023
<END>

<START_CONDITION_140_O_H>
#MOVEABLES#
<END>

<START_CONDITION_140_B_H>
1:The platform is in the upper position
2:The platform is descending
3:The platform is in the lower position
4:The platform is ascending
<END>

<START_CONDITION_141_O_H>
#MOVEABLES#
<END>

<START_CONDITION_141_B_H>
1:Emitting
2:Not emitting (but active)
<END>

<START_CONDITION_142_O_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#1023
<END>

<START_CONDITION_143_O_H>
#MOVEABLES#
<END>

<START_CONDITION_143_B_H>
1:The steam is not being blown, with the minimum size, harmless
2:The steam is being blown, with increasing size, harmful
3:The steam is being blown, with the (default or customized) maximum size, harmful
4:The steam is being blown, with decreasing size, harmful
5:The steam is being blown, harmful
<END>

<START_CONDITION_144_O_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#1023
<END>

<START_CONDITION_145_O_H>
#MOVEABLES#
<END>

<START_CONDITION_145_B_H>
1:The flame is not being blown, with the minimum size, harmless
2:The flame is being blown, with increasing size, harmful
3:The flame is being blown, with the (default or customized) maximum size, harmful
4:The flame is being blown, with decreasing size, harmful
5:The flame is being blown, harmful
<END>

<START_CONDITION_146_O_H>
#MOVEABLES#
<END>

<START_CONDITION_146_B_H>
1:The floor is not burning (never before or extinguished)
2:The floor is burning (the flames are increasing)
3:The floor is burning (the flames are at the maximum)
4:The floor is burning (the flames are decreasing)
5:The floor is burning
6:The floor has been crumbled
<END>

<START_CONDITION_147_O_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#1023
<END>

<START_CONDITION_148_O_H>
#MOVEABLES#
<END>

<START_CONDITION_148_B_H>
1:The rope hasn’t been ignited
2:The rope is just burning
3:The rope has just started crumbling
4:The rope is just crumbling
5:The rope has been crumbled
<END>

<START_CONDITION_149_O_H>
1:Burning
2:Not burning
<END>

<START_CONDITION_150_O_H>
#REPEAT#Parameters=PARAM_NUMBER_RELATION,#1#1000
1001:Equal with infinite
1002:Less than infinite
<END>

<START_CONDITION_150_B_H>
1:Puzzle Item 01
2:Puzzle Item 02
3:Puzzle Item 03
4:Puzzle Item 04
5:Puzzle Item 05
6:Puzzle Item 06
7:Puzzle Item 07
8:Puzzle Item 08
9:Puzzle Item 09
10:Puzzle Item 10
11:Puzzle Item 11
12:Puzzle Item 12
13:Small medipack
14:Big medipack
15:Flare
16:Pistol ammo
17:Uzi ammo
18:Revolver ammo
19:Shotgun normal ammo
20:Shotgun wideshot ammo
21:Normal grenade
22:Super grenade
23:Flash grenade
24:Crossbow normal ammo
25:Crossbow poisoned ammo
26:Crossbow explosive ammo
<END>

<START_CONDITION_151_O_H>
#REPEAT#Parameters=PARAM_NUMBER_RELATION,#1#1023
<END>

<START_CONDITION_151_B_H>
1:Only underwater
2:Check the air kept (only out of underwater)
<END>

<START_CONDITION_152_O_H>
#REPEAT#Parameters=PARAM_NUMBER_RELATION,#1#1023
<END>

<START_CONDITION_153_O_H>
1:The shotgun has not been picked up yet
2:The shotgun has been removed
3:The shotgun is picked up, loaded with normal ammo
4:The shotgun is picked up, loaded with wideshot ammo
<END>

<START_CONDITION_154_O_H>
1:The Uzis have not been picked up yet
2:The Uzis have been removed
3:The Uzis are picked up
<END>

<START_CONDITION_155_O_H>
1:The revolver has not been picked up yet
2:The revolver has been removed
3:The revolver is picked up, lasersight is missing, is detached, or has not been attached yet
4:The revolver is picked up, attached to lasersight
<END>

<START_CONDITION_156_O_H>
1:The grenade gun has not been picked up yet
2:The grenade gun has been removed
3:The grenade gun is picked up, loaded with normal ammo
4:The grenade gun is picked up, loaded with super ammo
5:The grenade gun is picked up, loaded with flash ammo
<END>

<START_CONDITION_157_O_H>
1:The crossbow has not been picked up yet
2:The crossbow has been removed
3:The crossbow is picked up, loaded with normal ammo (with or without lasersight)
4:The crossbow is picked up, loaded with poisoned ammo (with or without lasersight)
5:The crossbow is picked up, loaded with explosive ammo (with or without lasersight)
6:The crossbow is picked up (with any ammo), lasersight is missing, is detached, or has not been attached yet
7:The crossbow is picked up (with any ammo), attached to lasersight
<END>

<START_CONDITION_158_O_H>
1:The lasersight has not been picked up yet or has been removed
2:The lasersight is picked up, detached from any weapon or has not attached yet
3:The lasersight is picked up, attached to any weapon
4:The lasersight is picked up, either attached to any weapon or detached/not attached yet
<END>

<START_CONDITION_159_O_H>
#MOVEABLES#
<END>

<START_CONDITION_159_B_H>
1:Idle or blowing fire
2:Shooting bullets
<END>

<START_CONDITION_160_O_H>
0:Any enemy
<END>

<START_CONDITION_161_O_H>
#WAD-SLOTS#
<END>

<START_CONDITION_162_O_H>
#MOVEABLES#
<END>

<START_CONDITION_163_O_H>
1:Only revolver
2:Only crossbow
3:Either revolver or crossbow
<END>

<START_CONDITION_163_B_H>
1:Shooting
2:Not shooting
3:Shooting or not shooting
<END>

<START_CONDITION_164_O_H>
0:There is no actual weapon (this will happen for example if you disarm Lara)
1:Pistols
2:Revolver
3:Uzis
4:Shotgun
5:Grenade gun
6:Crossbow
<END>

<START_CONDITION_164_B_H>
1:In hands
2:In holsters/on back (with extracting/holstering)
3:In hands or in holsters/on back (with extracting/holstering)
<END>

<START_CONDITION_165_O_H>
#REPEAT#Parameters=PARAM_WEAPON_HOLSTERS,#1#255
<END>

<START_CONDITION_166_O_H>
0:No weapon
1:Any weapon (of shotgun, crossbow, grenade gun)
3:Shotgun
4:Crossbow
5:Grenade gun
<END>

<START_CONDITION_167_O_H>
1:No weapon (holstered or just holstering/extracting or disarmed)
2:No weapon (holstered without animation or disarmed)
3:No weapon (just extracting)
4:No weapon (just holstering)
5:No weapon (just extracting/holstering)
6:Any weapon (shooting or not)
7:Any weapon (shooting)
8:Any weapon (not shooting)
<END>

<START_CONDITION_168_O_H>
1:Picking up
2:Throwing, by hitting SPACE
3:Dropping, by drawing a weapon (with shortcut keys or chosen in inventory)
4:Throwing or dropping
<END>

<START_CONDITION_168_B_H>
1:Out
2:Fired
3:Any
<END>

<START_CONDITION_169_O_H>
#REPEAT#Parameters=PARAM_NUMBER_RELATION,#1#1000
1001:For the whole animation or if the way is "General"
<END>

<START_CONDITION_169_B_H>
1:The torch with a flame (General, with any animation)
2:The torch with a flame (Animation 427 - Flame is 0-1 clicks high)
3:The torch with a flame (Animation 428 - Flame is 2-3 clicks high)
4:The torch with a flame (Animation 429 - Flame is 4-5 clicks high)
5:The torch with a flame (Animation 430 - Flame is 6-7 clicks high)
6:The torch with a flame (Animation 431 - Flame is higher than 7 clicks)
7:A flame with the torch (General, with any animation)
8:A flame with the torch (Animation 427 - Flame is 0-1 clicks high)
9:A flame with the torch (Animation 428 - Flame is 2-3 clicks high)
10:A flame with the torch (Animation 429 - Flame is 4-5 clicks high)
11:A flame with the torch (Animation 430 - Flame is 6-7 clicks high)
12:A flame with the torch (Animation 431 - Flame is higher than 7 clicks)
13:The torch or a flame (General, with any animation)
14:The torch or a flame (Animation 427 - Flame is 0-1 clicks high)
15:The torch or a flame (Animation 428 - Flame is 2-3 clicks high)
16:The torch or a flame (Animation 429 - Flame is 4-5 clicks high)
17:The torch or a flame (Animation 430 - Flame is 6-7 clicks high)
18:The torch or a flame (Animation 431 - Flame is higher than 7 clicks)
<END>

<START_CONDITION_170_O_H>
0:Any flare
<END>

<START_CONDITION_171_O_H>
1:Only for the part of the picking animation, when the flare has not been in the hand yet
2:Only for the part of the picking animation, when the flare is already in the hand
3:For the whole picking animation
<END>

<START_CONDITION_172_O_H>
1:Throwing any way
2:Throwing with flare button
3:Throwing automatically when the flare goes dead
4:Dropping by extracting a weapon
5:Throwing or dropping
<END>

<START_CONDITION_173_O_H>
0:Any flare
<END>

<START_CONDITION_174_O_H>
#REPEAT#Seconds=#0#1000
<END>

<START_CONDITION_174_B_H>
1:Equal
2:More
3:Less
<END>

<START_CONDITION_175_O_H>
1:Enabled
2:Disabled
<END>

<START_CONDITION_176_O_H>
#REPEAT#Parameters=PARAM_NUMBER_RELATION,#1#1023
<END>

<START_CONDITION_176_B_H>
1:Precisely
2:Till the next second starts
<END>

<START_CONDITION_177_O_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#1023
<END>

<START_CONDITION_178_O_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#1023
<END>

<START_CONDITION_178_B_H>
1:Any timer is not running because Lara is still standing on the time trigger
2:Positive timer is running
3:Negative timer is running
4:Any timer has not been activated yet or expired (excluded: not running because Lara is still standing on the time trigger)
<END>

<START_CONDITION_179_O_H>
0:Grey square
<END>

<START_CONDITION_180_O_H>
#REPEAT#Tick Frame=#1#301
<END>

<START_CONDITION_180_B_H>
1:Equal
2:More
3:Less
<END>

<START_CONDITION_181_O_H>
1:Flying
2:Not flying
<END>

<START_CONDITION_182_O_H>
1:Enabled
2:Disabled
<END>

<START_CONDITION_183_O_H>
1:Enabled
2:Disabled
<END>

<START_CONDITION_184_O_H>
1:Enabled
2:Disabled
<END>

<START_CONDITION_184_B_H>
1:Layer1
2:Layer2
<END>

<START_CONDITION_185_O_H>
1:Enabled
2:Disabled
<END>

<START_CONDITION_186_O_H>
1:Enabled
2:Disabled
<END>

<START_CONDITION_187_O_H>
1:Enabled
2:Disabled
<END>

<START_CONDITION_188_O_H>
1:Motionless
2:Northwards (NGLE facing)
3:Southwards (NGLE facing)
<END>

<START_CONDITION_188_B_H>
1:Layer1
2:Layer2
<END>

<START_CONDITION_189_O_H>
#REPEAT#Parameters=PARAM_NUMBER_RELATION,#1#1023
<END>

<START_CONDITION_189_B_H>
1:Layer1
2:Layer2
<END>

<START_CONDITION_190_O_H>
1:Enabled
2:Disabled
<END>

<START_CONDITION_191_O_H>
1:Moving
2:Not moving
<END>

<START_CONDITION_192_O_H>
#REPEAT#ColorRGB=#1#255
<END>

<START_CONDITION_193_O_H>
#REPEAT#ColorRGB=#1#255
<END>

<START_CONDITION_193_B_H>
1:Layer1
2:Layer2
<END>

<START_CONDITION_194_O_H>
1:Pulsing
2:Not pulsing
<END>

<START_CONDITION_195_O_H>
1:Pulsing
2:Not pulsing
<END>

<START_CONDITION_195_B_H>
1:Layer1
2:Layer2
<END>

<START_CONDITION_196_O_H>
1:Hanging
2:Not hanging
<END>

<START_CONDITION_197_O_H>
1:Swinging, idly or hitting Key Dash
2:Swinging, idly
3:Swinging, hitting Key Dash
<END>

<START_CONDITION_197_B_H>
1:Swinging forwards, leaning anyhow
2:Swinging forwards, leaning backwards (i.e. Lara is in front of the vertical)
3:Swinging forwards, leaning forwards (i.e. Lara is behind the vertical)
4:Swinging backwards, leaning anyhow
5:Swinging backwards, leaning backwards (i.e. Lara is in front of the vertical)
6:Swinging backwards, leaning forwards (i.e. Lara is behind the vertical)
7:Swinging anyhow, leaning anyhow
8:Swinging anyhow, leaning backwards (i.e. Lara is in front of the vertical)
9:Swinging anyhow, leaning forwards (i.e. Lara is behind the vertical)
<END>

<START_CONDITION_198_O_H>
#REPEAT#Parameters=PARAM_NUMBER_RELATION,#1#1023
<END>

<START_CONDITION_199_O_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#1023
<END>

<START_CONDITION_200_O_H>
#MOVEABLES#
<END>

<START_CONDITION_200_B_H>
#BIT_LIST#
<END>

<START_CONDITION_201_O_H>
1:Driving
2:Not driving
<END>

<START_CONDITION_202_O_H>
#MOVEABLES#
<END>

<START_CONDITION_203_O_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#1023
<END>

<START_CONDITION_204_O_H>
#MOVEABLES#
<END>

<START_CONDITION_204_B_H>
1:Enabled
2:Disabled
<END>

<START_CONDITION_205_O_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#1023
<END>

<START_CONDITION_206_O_H>
#MOVEABLES#
<END>

<START_CONDITION_206_B_H>
1:Any way
2:Grab/ready to push/pull
3:Releasing the object
4:Pushing
5:Pulling
6:Pushing or pulling
<END>

<START_CONDITION_207_O_H>
#MOVEABLES#
<END>

<START_CONDITION_208_O_H>
#MOVEABLES#
<END>

<START_CONDITION_208_B_H>
1:Turning in any way
2:Turning clockwise
3:Turning anti-clockwise
4:Idle grabbing
5:Climbing up
6:Starts sliding down
7:Sliding down
8:Stops after sliding down
9:Starts swinging
10:Swinging
11:Catching rope (in any way)
12:Catching rope (jumping forward)
13:Catching rope (jumping upward)
14:Jumping off
<END>

<START_CONDITION_209_O_H>
#MOVEABLES#
<END>

<START_CONDITION_209_B_H>
1:Catching bar
2:Swinging
3:Jumping off
<END>

<START_CONDITION_210_O_H>
#REPEAT#ColorRGB=#1#255
<END>

<START_CONDITION_211_O_H>
#REPEAT#Parameters=PARAM_ROOM_PROPERTIES,#1#1023
<END>

<START_CONDITION_212_O_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#1023
<END>

<START_CONDITION_213_O_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#1023
<END>

<START_CONDITION_214_O_H>
#STATIC_LIST#
<END>

<START_CONDITION_214_B_H>
#BIT_LIST#
<END>

<START_CONDITION_215_O_H>
#REPEAT#Parameters=PARAM_ORIENTATION_CONTROL,#1#1023
<END>

<START_CONDITION_216_O_H>
#STATIC_LIST#
<END>

<START_CONDITION_216_B_H>
0:Static (in CUST_SHATTER_RANGE) /Shatter is shattered by bullet, sword
1:Static/Shatter is visible/whole
2:Static/Shatter is invisible/shattered/exploded by a flipeffect
3:Static/Shatter is invisible/shattered/exploded by any way
<END>

<START_CONDITION_217_O_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#1023
<END>

<START_CONDITION_218_O_H>
#REPEAT#AUDIO\#0#255
256: Any
<END>

<START_CONDITION_218_B_H>
1:Channel1 (loop)
2:Channel2 (loop)
3:Channel1 (single)
4:Channel2 (single)
5:Channel1 (any)
6:Channel2 (any)
7:Channel1 (none)
8:Channel2 (none)
9:Any channel (loop)
10:Any channel (single)
11:Any channel (any)
12:Any channel (none)
<END>

<START_CONDITION_219_O_H>
#REPEAT#Parameters=PARAM_NUMBER_RELATION,#1#1023
<END>

<START_CONDITION_219_B_H>
1:Audio
2:Sound
<END>

<START_CONDITION_220_O_H>
#REPEAT#Parameters=PARAM_NUMBER_RELATION,#1#1023
<END>

<START_CONDITION_221_O_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#1023
<END>

<START_CONDITION_222_O_H>
#MOVEABLES#
<END>

<START_CONDITION_223_O_H>
0:Chase camera
1:Static (Fixed) Camera (with or without a TARGET trigger)
2:Look camera (or TARGET trigger without a static camera trigger)
3:Combat camera
4:Flyby camera
<END>

<START_CONDITION_224_O_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#1023
<END>

<START_CONDITION_225_O_H>
#MOVEABLES#
<END>

<START_CONDITION_226_O_H>
#MOVEABLES#
<END>

<START_CONDITION_226_B_H>
1:Poisoned
2:Not poisoned
<END>

<START_CONDITION_227_O_H>
#MOVEABLES#
<END>

<START_CONDITION_227_B_H>
1:None of this list (never had or dropped)
2:Keeping guard at an AI_GUARD nullmesh or at the second AI_AMBUSH nullmesh, or having a forced GUARD property
3:Running from the first AI_AMBUSH nullmesh to the second one
4:Patrolling between AI_PATROL1 and AI_PATROL2 nullmeshes
5:Standing at an AI_MODIFY nullmesh (after leaving it, force "drop AI" for the good result)
6:Standing both at an AI_GUARD and an AI_MODIFY nullmesh
<END>

<START_CONDITION_228_O_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#1023
<END>

<START_CONDITION_229_O_H>
#MOVEABLES#
<END>

<START_CONDITION_229_B_H>
1:Friend
2:Enemy
<END>

<START_CONDITION_230_O_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#1023
<END>

<START_CONDITION_231_O_H>
#MOVEABLES#
<END>

<START_CONDITION_231_B_H>
1:He is still not holding the torch
2:He reaches for the torch on the wall to get it
3:He has the torch unlit in the hand
4:He gets the lighter and tries to light the torch twice
5:The torch catches fire at the second attempt, he puts the lighter away
6:He has the torch lit in the hand
<END>

<START_CONDITION_232_O_H>
#MOVEABLES#
<END>

<START_CONDITION_232_B_H>
1:The horseman has not got on the horse yet
2:The horseman is just getting on the horse
3:The horseman is patrolling
4:The horseman is riding, but not patrolling
5:The horseman is riding (patrolling or not)
6:The horseman is just falling off the horse
7:The horseman is fallen off the horse
<END>

<START_CONDITION_233_O_H>
#MOVEABLES#
<END>

<START_CONDITION_233_B_H>
0:More than one (harmful) contact is needed to ignite Lara + the wraith is vulnerable in water (default)
1:Each contact with Lara will ignite her + wraith is invulnerable (and harmful) in water
2:Each contact with Lara will not ignite her (but harmful) + wraith is invulnerable (and harmful) in water
3:Each contact with Lara will not ignite her (but harmful) + wraith is vulnerable in water
<END>

<START_CONDITION_234_O_H>
#MOVEABLES#
<END>

<START_CONDITION_234_B_H>
1:Vulnerable (default)
2:Invulnerable (so won't activate flipmaps when touching the water)
<END>

<START_CONDITION_235_O_H>
#MOVEABLES#
<END>

<START_CONDITION_235_B_H>
1:Clockwise
2:Anti-clockwise
<END>

<START_CONDITION_236_O_H>
#MOVEABLES#
<END>

<START_CONDITION_236_B_H>
0:Random (default)
1:Moving constantly upwards
2:Moving constantly downwards
3:Moving constantly keeping its vertical position
<END>

<START_CONDITION_237_O_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#1023
<END>

<START_CONDITION_238_O_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#1023
<END>

<START_CONDITION_239_O_H>
#MOVEABLES#
<END>

<START_CONDITION_240_O_H>
#MOVEABLES#
<END>

<START_CONDITION_240_B_H>
1:Harmful
2:Harmless
<END>

<START_CONDITION_241_O_H>
#MOVEABLES#
<END>

<START_CONDITION_241_B_H>
1:Big energy ball. Only getting energy
2:Big energy ball. Only shooting
3:Big energy ball
4:Little missiles, standing. Only getting energy
5:Little missiles, standing. Only shooting
6:Little missiles, standing
7:Little missiles, floating
8:Any mode
<END>

<START_CONDITION_242_O_H>
#MOVEABLES#
<END>

<START_CONDITION_242_B_H>
1:Only getting energy
2:Only shooting
3:Getting energy or shooting
<END>

<START_CONDITION_243_O_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#1023
<END>

<START_CONDITION_244_O_H>
#MOVEABLES#
<END>

<START_CONDITION_244_B_H>
0:The head has just been activated, so the head is still ascending to its position
1:The head is searching for Lara or (noticing her) is about to attack
2:The head is attacking: getting energy then shooting
3:The head is attacking: only getting energy
4:The head is attacking: only shooting
5:The eyes are all shot or the head has exploded
<END>

<START_CONDITION_245_O_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#1023
<END>

<START_CONDITION_246_O_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#1023
<END>

<START_CONDITION_247_O_H>
#MOVEABLES#
<END>

<START_CONDITION_247_B_H>
1:Totally expanded (active)
2:Not totally expanded, but out of the ground (active)
3:Any position, out of the ground (active)
4:In the ground (active)
5:In the ground (not activated yet/deactivated)
6:In the ground
<END>

<START_CONDITION_248_O_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#1023
<END>

<START_CONDITION_249_O_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#1023
<END>

<START_CONDITION_250_O_H>
#MOVEABLES#
<END>

<START_CONDITION_250_B_H>
1:Clockwise
2:Anti-clockwise
<END>

<START_CONDITION_251_O_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#1023
<END>

<START_CONDITION_252_O_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#1023
<END>

<START_CONDITION_253_O_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#1023
<END>

<START_CONDITION_254_O_H>
#REPEAT#Parameters=PARAM_OBJECT_ADDITIONAL,#1#1023
<END>

<START_CONDITION_255_O_H>
#MOVEABLES#
<END>

<START_CONDITION_255_B_H>
1:Showering
2:Dripping
3:Working (showering or dripping)
4:Not working
<END>
