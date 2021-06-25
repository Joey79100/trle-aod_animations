;------------------ Section for flipeffect trigger: description of the trigger -------------------------------
<START_TRIGGERWHAT_9_O_H>
592:Finish. Load <&>level to (E) Lara #REMARK#Click on [Trigger's Help] button for more infos.#START_DOC#
This trigger first of all is a simple reproduction of the same F592 trigger in my second plugin (AkyVMix02), so this F592 can also do what that F592 can do:

- The exportable version of the classic FINISH trigger (trng.dll F82) cannot make a level jump to a LARA_START_POS object, but the classic FINISH and this F592 can. So use this trigger if you want an exported version of a level jump to a LARA_START_POS, instead of LARA object.
- F593 of AkyVMix02 to check the level jump loadscreen is available only with this Finish trigger (either Lara or a LARA_START_POS). Either classic FINISH or F82 cannot do that.

But this F592 is the enhanced version of that F592, because this F592 is needed to remove texts and sprites of different features of this AkyVMix03 plugin off the screen during level jump loadscreens:
- F604 enemy health display (text and sprite)
- F606 grip bar (text)
- F607 walking mode (sprite)
- F608 weapon reload (text)

Important!
F592 of AkyVMix03 works only if AkyVMix02 is also installed.

---------- Note: -----------

Just like FINISH or F82, F592 can also make a level jump to the title. The solution is the same with all the three triggers:

X = A + Z

Z is minimum 2, but could be any bigger number.

If your level amount is A, then you need to choose X (= A + 2) in the the trigger to load you back to the title.
For example, having five levels, you need to choose Level 7 (= 5 + 2) in the trigger.

In the case of 592, it doesn't matter if you choose Lara object or any LARA_START_POS now.

----------------------------
#END_DOC#
594:Backup. Restore (load) the <&> backup file in (E) way (for menu mode)#REMARK#Click on [Trigger's Help] button for more infos.#START_DOC#
This trigger first of all is a simple reproduction of the same F594 trigger in my second plugin (AkyVMix02), so this F594 can also do what that F594 can do:
Only F594 is useable to detect a backup loadscreen for F593 triggers of AkyVMix02, F98 of trng.dll is not.

But this F594 is the enhanced version of that F594, because this F594 is needed to remove texts and sprites of different features of this AkyVMix03 plugin off the screen during backup loadscreens:
- F604 enemy health display (text and sprite)
- F606 grip bar (text)
- F607 walking mode (sprite)
- F608 weapon reload (text)


Important!
F594 of AkyVMix03 works only if AkyVMix02 is also installed.

---------- Notes: ----------

- "Black screen" option is probably unuseable if you want to draw things (text, image etc.) on the screen while the loadscreen is seeable.
- "Hidden screen" option won't hide custom bars. (NOt only custom bars of enemy health display, but any custom bars. Anyway, even the other F594 and F98 cannot do that either.)

----------------------------
#END_DOC#
602:Sound. (CD) (E) Enable/disable <&> ambience audio track set #REMARK#Click on [Trigger's Help] button for more infos.#START_DOC#
This trigger will activate (or deactivate) a set of ambience loop audio tracks.

There can be three tracks in each set (for the channel you want):
- the inside track will start playing automatically when Lara gets inside,
- the outside track will start playing automatically when Lara gets outside,
- the underwater track will start playing automatically when Lara gets under water.

Variatons to enable the feature:
- Immediately. (The proper track starts at once.)
- Delayed. (The proper track starts the next time when Lara changes her inside/outside/underwater environment.)

Variatons to disable the feature:
- Simple. (Nothing seems to happen, but the track won't change automatically any more after that, when Lara changes her inside/outside/underwater environment.)
- Immediately+mute. (The actual track stops at once, its channel goes muted.)
- Immediately+new audio. (The actual track stops at once, a track chosen in the setup starts on its channel.)
- Delayed+mute. (The actual track stops the next time when Lara changes her inside/outside/underwater environment, its channel goes muted.)
- Delayed+new audio. (The actual track stops the next time when Lara changes her inside/outside/underwater environment, a track chosen in the setup starts on its channel.)

You don't need to disable a set everyway to stop it.
I mean, in the case if you try to run more than one set at the same time:
- Naturally if you start a new audio set on the channel where the previous set also works, then the previous set will be removed automatically if the new set starts there.
- In the case of different channels:
For example, if you have a set running on channel1 and then you start a new set on channel2, then the actual track on channel1 starts acting as if it were only a track started by a usual audio trigger. From now on, the one and only audio set is the new set having been started on channel2.
(So you cannot run more than one audio set at the same time, on both channels.)

Important!
- Please do not disable an audio set on a channel if there isn't an audio set running on that channel. The result will be buggy - mostly if you also try an audio set running on the other channel at the same time.
- Please do not try meaningless room flags because they will confuse the setup. (For example, do not place an "outside" flag in the water pools.)

See more in NG Center/Reference/Mnemonic Constants/PARAM_AMBIENCE_TRACKS.

---------- Notes: ----------

- Actually, the audio tracks are based on not exactly Lara herself, but the actual camera. It makes the game more realistic, as you can see in these examples:

a, Lara steps into the house from the forest, but the chase camera behind her is still in the forest. Now the outside track should be played till Lara steps further inside to also let the camera get inside.
b, Lara is walking on the side of a pool, when activates a flyby camera sequence next to her, under the water surface. Now the underwater track should be played while the flyby sequence is running.

- You can use usual audio triggers to change the actual audio track of this audio set, but not breaking the audio set forever. (I did not try to remove this thing because it can be considered more as a feature, not a bug. I mean, this is a good method if you want to break the audio set only temporarily. only for a little section of the level.)
For example: Track#171 plays on channel1, the "inside" track of this audio set. Now you manually start Track#152, breaking both the audio set and Track#171. If Lara (i.e. the camera) leaves the house, going back into the forest, then the audio set will be restored by itself, starting Track#195 "outside" track automatically.
If Lara goes back into the house now, then naturally the audio set will start Track#171 again by itself.
- Quicksand is calculated as water now. (Cameras are usually cannot go under the surface of the quicksand, but flyby cameras can, so we could not rule out quicksand.)
- I didn't test this feature under special, extreme circumstances, like NewSoundEngine = DISABLED etc.

----------------------------
#END_DOC#
603:Sound. (E) Change/restore sound sample properties in <&> way#REMARK#Click on [Trigger's Help] button for more infos.#START_DOC#
Use this trigger if you want to change at least one of these properties of a sound sample during the game:

- the sample(s)
- the number of samples
- volume
- radius
- chance
- pitch
- loop or single
- skip or restart, if just playing
- ignoring camera angle to the sound source
- varied pitch
- varied volume

Important!
The changes will be valid only for the actual level!

See more in NG Center/Reference/Mnemonic Constants/PARAM_SOUND_SAMPLES.


---------- Notes: ----------

- If you restore the sound, then nothing will happen first. But if you save+load the game the next time, then all the sound features of this PARAM_SOUND_SAMPLES will turn back to default.
(If you want to get the default properties before the next load now, then execute another changing PARAM_SOUND_SAMPLES referring to the default values at the same time, then, even in the next moment, "restore" those default PARAM_SOUND_SAMPLES values as well, because you don't need to confirm the default values after that any more.)
- If you change X parameter with one PARAM_SOUND_SAMPLES and then you change Y parameter of the same sound with another PARAM_SOUND_SAMPLES, then X, which was IGNORE in the second PARAM_SOUND_SAMPLES, will be restored at the next load.

----------------------------
#END_DOC#
604:Enemy. (Health) (E) Enable/disable enemy health display in <&> way #REMARK#Click on [Trigger's Help] button for more infos.#START_DOC#
This is an enhanced version of the enemy health bar - whose tutorial you can see here:
https://www.tombraiderforums.com/showthread.php?t=211621

Plus, this time you can use user friendly, enemy health display specified script entries, you don't need to find out your setup with general TRNG scripted triggers!

So this "enable" trigger basically will result in this - till you "disable" the feature with another trigger:
If Lara aims at an enemy, then the enemy health display will automatically show up on the screen, and it will be removed automatically, if she is not aiming at anybody any more.

But this time the display can be even more, not only a bar and a text naming the enemy aimed:
- A bar where the full bar is naturally 100 percent health (which is the default maximum or customized with "casual" TRNG methods). So showing a value in the bar means the aimed enemy's actual health is that percent of the maximal health. And/or
- A text where any customized text can be printed. The recommended contents are naturally the aimed enemy's name, the maximal and the actual health point (or health percent). And/or
- Simply a sprite that refers to that enemy.

Naturally all the bar, text and sprite positions and looks can be customizable.

Plus, this setup can show (if you want) not only the enemy aimed, but even maximum the five nearmost enemies near Lara who are not aimed!
In this case you set a "column" of similar bars, texts, sprites on the screen, one bar, text, sprite for each near enemy.
Now what you can see uppermost in the column, that is the nearmost non-aimed enemy to Lara.
And what you can see downmost in the column, that is the farthermost non-aimed enemy (of that maximum five enemies' sized interval) from Lara.

See a screen here for a possible look:
https://www.tombraiderforums.com/showpost.php?p=8061669&postcount=283
(Sprites on that screenshot are lame, they are only for tests.)

And one more new feature - there can be more than one enemy health display setup in a level, which has two different meanings:
1. For example, if you disable the first setup, then you enable the second one, from one certain point of the level, because you want a different display look for creatures show up in that section of the level, because they differ from the enemies of the first section of the level.
2. You can run more than one setup even at the same time (maximum five). So you can even set different display looks for different enemy types. - For example:
a, One set for dogs and another one for cats (tigers).
b, One set for humans, another one for animals, and a third one for mythical enemies. 
c, One set for "general" enemies, and a second one only for one enemy, but who is a mighty boss here.
Etc.

And probably these are the most important extra features:
- Changing the parameters. Eg, to change the sprite if the health is below the required value, or make the bar have a pulsing color etc.
- Adding a custom sound, eg. a blinking sound to a blinking bar.

And there are some other extra features as well.

See more in NG Center/Reference/Mnemonic Constants/PARAM_HEALTH_DISPLAY.

---------- Notes: ----------

- It’s tested with automatic targeting adjusted.
However, don't be surprised: enemies closed to the one Lara's shooting at, can be hit accidentally, which naturally is realized in their health display:

a, now, being one of the nearmost enemies, and/or
b, just when Lara aims at them a bit later.

- Now “aiming” means when the weapon gets the target, and not when Lara tries to use the lasersight to find the target.
- Un-aimable creatures (like wraith or emitted creatures) are useless in this setup, they only may make it buggy!
- Naturally even if you "enable" the feature, there will not be anything on the screen if there is nothing to show, i.e. if there is no enemy near/aimed by Lara.
- Naturally a setup is valid only for its own level.
- Naturally if an enemy or enemy group is left out of these setups, then that enemy will not be shown in any setup at that level.
Let's see for example that dog/tiger example above. If those two setups are the only ones in the level, but you also have human warriors there, then humans' health will not be shown if they are aimed/near.
- The "nearmost five enemies" are counted only for their own setup. So eg. if you run a setup for one group of the enemies, and, at the same time, another one for another group, then they can show their own five nearmost enemies, which can be even ten nearmost enemies at the same time.
But never forget!
You can have maximum 11 displays on the screen at the same time. For example, in two setups (=two PARAM_HEALTH_DISPLAYs) like this: one aimed enemy (Setup A)+five near enemies (Setup A)+one aimed enemy (Setup B)+four near enemies (Setup B).
- You can have even some special setups with this trigger. One example: not showing the aimed enemy at all, only showing the near enemies, only with the sprite illustration. After all now you will only signal to the player the enemies near Lara, with a simple sprite for each.
- What bars show are the actual life points in the percent of the maximum health. (Plus, in the texts you can also choose a display type when percents are printed.)
That is why you may realize some strange values in these kind of displays - which are logical, though. Because values can be floating numbers, but all we display now are only integer numbers.
Let's see an example when the maximum life points is 75. One life point is 100/75 = 1.33 percent. Lara starts shooting at this enemy. What will you see after each hit (if 1 bullet hit = 1 life point)? - Well, this:
1st hit. Health is 98.66 percent. Bar and text shows 98 percent.
2nd hit. Health is 97.33 percent. Bar and text shows 97 percent.
3rd hit. Health is 96.00 percent. Bar and text shows 96 percent.
4th hit. Health is 94.66 percent. Bar and text shows 94 percent.
5th hit. Health is 93.33 percent. Bar and text shows 93 percent.
Etc.
It could be more interesting if the maximum health point is more than 100. Let's suppose it is 140 this time (so one life point is 100/140 = 0.71 percent):
1st hit. Health is 99.29 percent. Bar and text shows 99 percent.
2nd hit. Health is 98.57 percent. Bar and text shows 98 percent.
3rd hit. Health is 97.85 percent. Bar and text shows 97 percent.
4th hit. Health is 97.14 percent. Bar and text shows 97 percent.
5th hit. Health is 96.43 percent. Bar and text shows 96 percent.
...
Another hit. Health is 1.43 percent. Bar and text shows 1 percent.
Next hit. Health is 0.71 percent. Bar and text shows 0 percent.
Last hit. Health is 0.00 percent. Bar and text shows 0 percent.

- I recommend Customize= CUST_BACKGROUND for binoculars and lasersight, or else the original graphics of them will not cover the sprite and text of the display that must be covered.
- The text and the sprite perhaps will not be hidden or shown as passive under menus or loadscreens. It should happen only:
a, While performing a level jump. Use F592 of this plugin instead of a casual FINISH trigger to hide them during the level jump loadscreen.
b, While performing a backup savegame loadscreen. Use F594 of this plugin instead of the usual F98 to hide them during the level jump loadscreen.
c, Only if using JMN's ring inventory plugin: if you open Save/Load Game menus from the inventory, and then you leave it. - Sorry, it cannot be fixed for the time being. (Plus, if you add a sound to the bar, you can encounter the same bug inside the inventory of the ring, for the sound: it won't be muted.)
- To surely see the sprites and texts during static or flyby camera screens, you should also use F598 of my AkyVMix02 plugin.

----------------------------
#END_DOC#
605:Bar. (E) Enable/disable bar color in <&> way #REMARK#Click on [Trigger's Help] button for more infos.#START_DOC#
Use this trigger if you want some special color customization for classic TRLE or classic TRNG bars:

- Lara's general health bar
- Lara's underwater air bar
- Lara's dash bar
- Lara's cold water vitality bar
- Lara's damage room vitality bar
- custom bar 1, 2, 3 or 4

The customizations are:
- Change permanently the original bar color (or the color set in a Customize=CUST_BAR or a Damage Script command).
- Color changes maximum at three values of the bar.
For example, at 100 percent health Lara's health bar is green, saying, Lara is full healthy. At 75 percent it turns to yellow, saying, she is a bit injured. At 50 percent it turns to gold, saying, she is mid-injured. At 25 percent it turns to red, saying, she is heavily injured.
- Color changes by degrees.
For example, when Lara has all the air, then the bar color is light blue. When she just have run out of air, then it is dark blue. While she loses her air, the light blue turns to dark blue by degrees.
- Pulsing between two colors continuously.
- Blinking between two colors continuously, below the required percent of the bar. (So it is good to emphasize that the bar value is below a crucial value.)

Videos:
https://www.tombraiderforums.com/showpost.php?p=8101883&postcount=310

See more in NG Center/Reference/Mnemonic Constants/PARAM_BAR_COLOR.

---------- Notes: ----------

- The setup works even for increasing cases. For example, if Lara has just gotten over the water surface, and the bar starts increasing, then it starts changing back from dark blue to light blue.
- Naturally you can have maximum one color customization like this (any type!) per level at the same time for the required bar.
- If you want a new customization for a bar (even another customization type!) then first you don't need to disable the actual customization everyway, just simply enable the new one.
- If you disable the feature, you need to choose the PARAM_BAR_COLOR in the trigger, which you used to enable this feature for the bar, and the result will be this:
First, the forced customization is lost, and the actual color of the bar in that moment will be kept continuously. (Even if it was a pulsing color so far!)
After that, at the next save+load of the game, the original color of the bar will be set. (The original color could be the default color of the bar, or, if you set some color customization with Customize= CUST_BAR or Damage Script commands for this color, then that color.)
See more in PARAM_BAR_COLOR description in NG Center, if you'd like to know how to restore the original color without waiting for the next load.
- There can be two bar colors changed in the setup at the same time: one is the thick stripe in the middle and one is the two thin stripes at the upper and lower edges – above the black background. (Pulsing and blinking can have different pulsing/blinking time for both.)
- This setup has no effect on default blinking. (Eg. for the health bar while Lara's health is too low.)
Pulsing setup with some default blinking looks interesting, but it is surely working.
Blinking setup with some default blinking has an unrhythmical, strange blinking, but yes, it is also still working.
- The bar background is black, so the most spectacular blinking is probably between any color and black.
- Level load bar cannot be customized with this method (for the time being?).
- Feel free to set/change the other parameters of the bars with the casual Customize= CUST_BAR or Damage Script commands. However, if you have F605 enabled for that bar then the color data coming from CUST_BAR/Damage will be ignored, and F605 color data will be used.
- If you use JMN's ring inventory which is just open, just showing a medipack, then the health bar color is the default/CUST_BAR color. I cannot fix it, at least now, sorry.
- To change the bar colors of bars made for this plugin (enemy's health bar, gripbar) see their own setups here.
- Don't forget that the biggest value of a custom bar is always 100. So, for example, if the biggest value of the property you want to show in a custom bar is 300, then first you need a proper conversion (Bar Value = Property Value divided by 3) before you put that value in the bar for showing it. So, for example, if you say "at 55 percent it changes the color", then, in this case 55 percent = 55 bar value = 165 property value.

----------------------------
#END_DOC#
606:Bar. (E) Enable/disable Lara's grip bar in <&> way #REMARK#Click on [Trigger's Help] button for more infos.#START_DOC#
This trigger adds a bar to Lara's hanging actions, so if Lara is hanging too far, then the bar shows she loses her energy, and - when she has just lost all - she falls down.

This is an enhanced version of this grip bar tutorial:
https://www.tombraiderforums.com/showthread.php?t=211686

Plus, this time you can use user friendly, grip bar specified script entries, you don't need to find out your setup with general TRNG scripted triggers!

The related actions are:

1. Actions when Lara uses only the hands/arms to hang. This is the most tiresome way to hang, she loses the most energy in these cases:
- hanging on ledges or ladders (without feet on the ladder),
- hanging on monkey bars,
- hanging on a rope (without legs locked around it),
- sliding on a zipline,
- swinging on a swingbar,
- grabbing a polerope, just after jumping to it.

2. Actions when Lara also uses her legs - but not resting on her feet. However, these actions are not so tiresome, less energy will be lost:
- hanging on a rope (with legs locked around it),
- hanging on a polerope (with legs locked around it).

3. Actions when Lara also rests on her feet. These actions loses the least energy:
- hanging on ladders (with feet on the ladder).

Important!
The setup surely works properly with using only these hanging animations of Lara:
- the animation is one of her default 0-444 TRLE hanging animations,
- except: the swing bar animations are from TR5, imported by Paolone into TRNG, these also work now.
(Naturally some modifications inside these animations can be acceptable.)

Features:
- You can choose the actions you want for the feature. Either only one action, or more, or all.
- You can run only one valid setup at the same time. However, there can be even three different situations in that setup.
You can choose any action(s) to a situation. However, the most logical situations those three groups I mentioned above:

Situation#1: using only hands/arms.
Situation#2: using legs as well.
Situation#3: using feet as well.

To each situation you can add its own percent value - this value will be lost from the grip bar in each second while she is performing an action that belongs to that situation.
- You can also adjust another percent as well, being valid when not performing any of those situations. This percent will be added in each second to the just non-full grip bar, saying "Lara is just resting now, not hanging, so she will have strength enough again".
- Sometimes there are too long ledges, too high ladders etc. that Lara can never shimmy, climb etc. all the way on, because all of her strength is too little for that. In those cases she will use something that gives her some extra hanging strength. It works like a medipack with the health points: if Lara’s health is low, then a medipack will give her new health points.
Medipacks are pickable items, so this "something" is also a pickable item. For example, it is a chocolate bar, so Lara needs to eat a chocolate bar to be a bit stronger for this.
(You can set a key command here to "eat that bar" directly, or you can ignore it if you want to "eat that" only by an inventory command.)
- The sizes, the position and the colors of the bar is customizable.
- Optional extra bar color properties:

a, At custom (max three) percents of the bar, the bar color changes to warn the player for the strength getting less and less.
b, Between max (100 %) and min (0 %) values the color changes step by step, by degrees.
c, Pulsing color.
d, Below a custom percent, blinking colors can signal the too low strength, if you want. Adding a warning sound to this blinking can also be an option here.

- Some texts also can be added to the bar, optionally: bar name, strength actual percent, "chocolate bar" name and actual amount.


See more in NG Center/Reference/Mnemonic Constants/PARAM_GRIP_BAR.

---------- Notes: ----------

- Naturally even if you "enable" the feature, there will not be anything on the screen if there is nothing to show, i.e. if Lara is not performing a gripping animation.
- Enabling the trigger again and again it takes the hanging strength always back to 100 %.
- If you want a new setup, theoretically you don't need to disable the actual one, just simply enable the new one, that will automatically disable the old one. But it is wrong! It can make a few tiny bugs, I highly recommend disabling first the old setup, before enabling the new one.
On the other hand, you can choose any PARAM_GRIP_BAR to be disabled, in the trigger, it turns off the feature fully.
- See C108 of this plugin to check this value.
- TR6 grip bar is removed off the screen when Lara has just stopped hanging, and is full immediately. But it is unreal. This plugin bar starts filling up again first, if Lara has just stopped hanging. (However, you can restore this TR6 feature by customizing.)
- Some default hanging animations have a few frames when Lara is not performing that hanging. - For example:
a, At few frames, Lara is not hanging, only at the most frames.
b, At some frames, Lara's hanging with a toughest way (eg. not using legs), while the animation is calculated for legs as well.
I ignored all of these issues, these are not really important, the animations are fully calculated.
Or the opposite: for example, "the start of riding the zipline" animation has two parts: first Lara gets the handle, then start to ride. I didn't count this annimation, only the real "riding the zipline" animation.
(I did not want to fiddle with frames now, because eg. what if you re-edit the animations?)
- Very short hangings - like grabbing a handle to open down a ceiling trapdoor or TR5 animation to climb a shelf for a pickup - are not calculated.
- There are too many situations to use a medipack, that is why there are no millions of animations to use a medipack. For the same reason, there are no "chocolate bar eating" animations calculated in this setup.
- I recommend Customize= CUST_BACKGROUND for binoculars and lasersight, or else the original graphics of them will not cover the text of the bar that must be covered.
- If you use text for the bar, that perhaps will not be hidden or shown as passive under menus or loadscreens. It should happen only:
a, While performing a level jump. Use F592 of this plugin instead of a casual FINISH trigger to hide it during the level jump loadscreen.
b, While performing a backup savegame loadscreen. Use F594 of this plugin instead of the usual F98 to hide it during the level jump loadscreen.
c, Only if using JMN's ring inventory plugin: if you open Save/Load Game menus from the inventory, and then you leave it. - Sorry, it cannot be fixed for the time being. (Plus, if you add a sound to the bar, you can encounter the same bug inside the inventory of the ring, for the sound: it won't be muted.)
- To surely see the texts during static or flyby camera screens, you should also use F598 of my AkyVMix02 plugin.

----------------------------
#END_DOC#
607:Lara. (Status) (E) Enable/disable Lara's walking mode in <&> way #REMARK#Click on [Trigger's Help] button for more infos.#START_DOC#
This trigger imitates the walking feature from Angel of Darkness:
- Hitting SHIFT, a little walking icon (sprite) shows up on the screen, saying: if you move Lara now with cursor keys on dry land, then she will walk, not run.
- You don't need to keep down SHIFT when Lara is walking. So, if you hit SHIFT shortly, then you can turn the walking mode on/off with it, which means Lara can walk even without pushing SHIFT continuously while this mode is on.

So if the walking mode is on, then SHIFT will be forced for walking.

This is an enhanced version of this tutorial:
https://www.tombraiderforums.com/showthread.php?t=211684

Plus, this time you can use user friendly, walking mode specified script entries, you don't need to find out your setup with general TRNG scripted triggers!

See more in NG Center/Reference/Mnemonic Constants/PARAM_WALKING_MODE.

---------- Notes: ----------
- To prevent a few little bugs, I highly suggest disabling the feature before you enable another PARAM_WALKING_MODE.
On the other hand, you can choose any PARAM_WALKING_MODE to be disabled, in the trigger, it turns off the feature fully.
- I recommend Customize= CUST_BACKGROUND for binoculars and lasersight, or else the original graphics of them will not cover the walking sprite that must be covered.
- If you use the walking sprite, that perhaps will not be hidden or shown as passive under menus or loadscreens. It should happen only:
a, While performing a level jump. Use F592 of this plugin instead of a casual FINISH trigger to hide it during the level jump loadscreen.
b, While performing a backup savegame loadscreen. Use F594 of this plugin instead of the usual F98 to hide it during the level jump loadscreen.
c, Only if using JMN's ring inventory plugin: if you open Save/Load Game menus from the inventory, and then you leave it. - Sorry, it cannot be fixed for the time being.
- To surely see the sprite during static or flyby camera screens, you should also use F598 of my AkyVMix02 plugin.

----------------------------
#END_DOC#
608:Lara. (Weapons) (E) Enable/disable reloading weapon in <&> way #REMARK#Click on [Trigger's Help] button for more infos.#START_DOC#
With this trigger Lara won't shoot endlessly with a weapon, but sometimes she needs to reload it.

The main parts of this feature:
- If the weapon has gone empty, then Lara needs to reload it.
- Reloading animation (optional).
- Textual display (optional). Shown when having the weapon in the hand, in this way:

ACTUAL AMMO IN THE WEAPON / MAXIMAL AMMO IN THE WEAPON (REMAINING FULL CLIP PAIRS* IN THE BACKPACK FOR THIS AMMO TYPE)

This is an enhanced version of this tutorial:
https://www.tombraiderforums.com/showthread.php?t=206862

See more in NG Center/Reference/Mnemonic Constants/PARAM_RELOAD.

*: the term of "full clip pairs" is naturally not always true. Yes, dual weapons are which have clips in this game, but you can imagine even a single weapon with a clip.
Besides, for example, in the case of shotguns there are no clips at all. For example, if the shotgun has two barrels, then - supposing that each barrel can handle one bullet at the same time - "one full clip pair" must be considered as "two bullets" now.

---------- Notes: ----------

- Naturally you can have maximum one reload customization like this per level at the same time for the required weapon, i.e. all the ammo types of the weapon will use this.
- If you want a new customization for a weapon then first you don't need to disable the actual customization everyway, just simply enable the new one.
- If you disable the feature, you can choose any PARAM_RELOAD, in the trigger, which is about the required weapon, the result will be the same.
- The weapon still handles only one ammo type at the same time. You need to change ammo to handle another one.
- The textual display will be removed off the screen temporarily while the reloading animation is being performed, signaling that the weapon is not available now to (try to) shoot with it.
- I did not want another CUST_SHOW_AMMO_COUNTER, so this display won't show other informations (like eg. ammo type).
- I recommend Customize= CUST_BACKGROUND for binoculars and lasersight, or else the original graphics of them will not cover the text display that must be covered.
- If you use text display, that perhaps will not be hidden or shown as passive under menus or loadscreens. It should happen only:
a, While performing a level jump. Use F592 of this plugin instead of a casual FINISH trigger to hide it during the level jump loadscreen.
b, While performing a backup savegame loadscreen. Use F594 of this plugin instead of the usual F98 to hide it during the level jump loadscreen.
c, Only if using JMN's ring inventory plugin: if you open Save/Load Game menus from the inventory, and then you leave it. - Sorry, it cannot be fixed for the time being.
- To surely see the texts during static or flyby camera screens, you should also use F598 of my AkyVMix02 plugin.
- The ammo amount in the weapon in the hand is saved in Local Byte Beta3 variable in a hardvoded way, you can use the variable value to check the ammo amount, or show it in a custom bar etc.

----------------------------
#END_DOC#
609:Room. Set <&> properties in the required room #REMARK#Click on [Trigger's Help] button for more infos.#START_DOC#
The main reason of this trigger is to set or remove different room flags (water, snow, damage etc.) or their intensities, with these features:

a,
F116: Room. Remove from the <&>room the (E)type of room
F115: Room. Set the <&>room as (E)type of room
These trng.dll triggers remove/set the room flag of cold, damage, outside, quicksand, rain, snow, water properties, based on the game index of the room. Game indices can be easily changed if you add/remove a room to/from your room list. So, perhaps you won't even notice, but after that adding/removing, the trigger won't work or will badly work, referring to an already non-existing room ID, or a room ID which means another room now.
This F609 fixes this imperfection, using always the room indices of the editor, which indices are always constant.

b,
Non-lens room flag can be also removed/set with F609.

c,
F117: Weather. Defines Rain/Snow intensity for <&>room with the new (E)intensity value
This trng.dll trigger defines an intensity for rain/snow, but the imperfection is the same as above: it uses game indices.
This F609 lets you use editor indices for this.

d,
Mist intensity can be also set/changed with F609.

e,
The trigger can be clearly adjusted to work only on the original room or only on its flipped room, or on the actual room version of them.
You can also name specific flipmaps for it.

f,
The room property/intensity can be set not only with a room index, if you use F609, but even in other ways:

- Lara's actual room*
- the actual room* of the required Moveable object,
- the actual room* of the actual camera.

*: or the room after activating this trigger, which room this subject has just left/entered. (Except: non-lens flag and mist intensity.)

See more in NG Center/Reference/Mnemonic Constants/PARAM_ROOM_FLAGS.

---------- Note: -----------

I also wanted to add an "actual room of a Static object" feature, but that is meaningless, because always the room is detected where the Static is placed, even if you move it out of that room with PARAM_MOVE_ITEM.

----------------------------
#END_DOC#


<END>

;type here the sections for arguments used by above flipeffects


<START_EFFECT_592_T_H>
#REPEAT#Level #1#99
<END>

<START_EFFECT_592_E_H>
#REPEAT#Lara_Start_Pos with OCB #1#9
0:Lara object
<END>

<START_EFFECT_594_T_H>
#REPEAT#Game Backup #1#128
<END>

<START_EFFECT_594_E_H>
0:Standard way (progress bar + load camera screen)
1:Hidden screen (let last game screen and load in background)
2:Black screen (Set black screen and no progress bar)
<END>

<START_EFFECT_602_T_H>
#REPEAT#Parameters=PARAM_AMBIENCE_TRACKS,#1#255
<END>

<START_EFFECT_602_E_H>
0:Enable
1:Disable
<END>

<START_EFFECT_603_T_H>
#REPEAT#Parameters=PARAM_SOUND_SAMPLES,#1#255
<END>

<START_EFFECT_603_E_H>
0:Change
1:Restore
<END>

<START_EFFECT_604_T_H>
#REPEAT#Parameters=PARAM_HEALTH_DISPLAY,#1#255
<END>

<START_EFFECT_604_E_H>
0:Enable
1:Disable
<END>

<START_EFFECT_605_T_H>
#REPEAT#Parameters=PARAM_BAR_COLOR,#1#255
<END>

<START_EFFECT_605_E_H>
0:Enable
1:Disable
<END>

<START_EFFECT_606_T_H>
#REPEAT#Parameters=PARAM_GRIP_BAR,#1#255
<END>

<START_EFFECT_606_E_H>
0:Enable
1:Disable
<END>

<START_EFFECT_607_T_H>
#REPEAT#Parameters=PARAM_WALKING_MODE,#1#255
<END>

<START_EFFECT_607_E_H>
0:Enable
1:Disable
<END>

<START_EFFECT_608_T_H>
#REPEAT#Parameters=PARAM_RELOAD,#1#255
<END>

<START_EFFECT_608_E_H>
0:Enable
1:Disable
<END>

<START_EFFECT_609_T_H>
#REPEAT#Parameters=PARAM_ROOM_FLAGS,#1#9999
<END>

;------------------- Section for Action triggers: description of the trigger -------------------------------------
<START_TRIGGERWHAT_11_T_H>
<END>

;type here the sections for argument of above action triggers






;------------------- Section for Condition triggers: description of the trigger -------------------------------------
<START_TRIGGERTYPE_12_T_H>
108:Bar. Lara's hanging strength for enabled grip bar is (E) less/equal/more than <#> percents#REMARK#See F606 trigger of this plugin. What "hanging" is is defined there.
109:Object generally. Check the distance between any objects in <#> way #REMARK#Click on [Trigger's Help] button for more infos.#START_DOC#
This condition will examine the distance between two objects (in units, where 1024 units = 4 clicks = 1 square).
Both of the objects will be chosen by you. That can be either a Moveable or a Static. (Anyway, one of the objects can be even Lara, if you want.)

So the distance will be checked between:
- a requested Moveable object and another requested Moveable object, or
- a requested Moveable object and a requested Static object, or
- a requested Static object and another requested Static object.

The distance can be:
- 3D
- 2D horizontal
- north/south
- west/east
- vertical

See more in NG Center/Reference/Mnemonic Constants/PARAM_OBJ_DISTANCE.

---------- Note: -----------

Don't forget - the position of creatures will be checked even before they are spawned/after they are killed.
Probably you also need an "if the creature is living" condition if you want to rule that out.
(The same thought eg. for flames. Eg. even when the flame is put out, the distance will be checked.)

----------------------------
#END_DOC#
<END>

<START_CONDITION_108_O_H>
#REPEAT#Percent,#0#100
<END>

<START_CONDITION_108_B_H>
0:Less (any)
1:Equal (any)
2:More (any)
3:Less (hanging)
4:Equal (hanging)
5:More (hanging)
6:Less (not hanging)
7:Equal (not hanging)
8:More (not hanging)
<END>

<START_CONDITION_109_O_H>
#REPEAT#Parameters=PARAM_OBJ_DISTANCE,#1#1023
<END>

