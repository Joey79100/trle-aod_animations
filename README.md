# TRLE - AOD Animations <!-- omit in toc -->

A project that aims at recreating *Lara Croft*'s animations from **Tomb Raider: The Angel Of Darkness** into **Tomb Raider: Level Editor**.  
This is basically an upgrade of Lara's classic animations, with improvements to make her feel more responsive than she ever was in the classic Tomb Raider games.

This repository includes an *all-in-one* testing ground: it contains the executable, compiled demo level, the map, objects, sounds, etc. It is based on [the-dark-renaissance](https://github.com/Castigavi/the-dark-renaissance "the-dark-renaissance: A CANCELLED continuation of Tomb Raider the Angel of Darkness.") package, because it originally started for this project. This is why you may find references to it in the files.

Here is a preview (**Jul 28, 2019**):

<a href="http://www.youtube.com/watch?feature=player_embedded&v=O-3Q1sZRti4
" target="_blank"><img src="https://img.youtube.com/vi/O-3Q1sZRti4/0.jpg" 
alt="Video preview of the animations from Jul 28, 2019" width="240" height="180" border="10" /></a>


# Table of contents <!-- omit in toc -->
- [1. The project - general information](#1-the-project---general-information)
	- [1.1. Updates and progression](#11-updates-and-progression)
	- [1.2. Is this ever going to be finished?](#12-is-this-ever-going-to-be-finished)
	- [1.3. How it is done](#13-how-it-is-done)
	- [1.4. Target engine](#14-target-engine)
- [2. Installation](#2-installation)
	- [2.1. Downloading](#21-downloading)
	- [2.2. Importing the animations](#22-importing-the-animations)
	- [2.3. Using different outfits](#23-using-different-outfits)
	- [2.4. Dealing with footstep sounds](#24-dealing-with-footstep-sounds)
	- [2.5. Using interactible objects](#25-using-interactible-objects)
	- [2.6. Scripted extra abilities](#26-scripted-extra-abilities)
	- [2.7. FLEP patches](#27-flep-patches)
- [3. Credits](#3-credits)
- [4. Note about encryption](#4-note-about-encryption)


# 1. The project - general information



## 1.1. Updates and progression
You can:
- Follow the [commits](https://github.com/Joey79100/trle-aod_animations/commits/master) to see the **latest updates**.
- Read the [issues](https://github.com/Joey79100/trle-aod_animations/issues) named "_Progress tracker \*\*\*_" to see the **lists of animations** that have been remade or planned.



## 1.2. Is this ever going to be finished?
I have opened this repository so I can keep working on these animations even after the cancellation of TDR, not knowing if I would ever finish the project.

Today (Sept 27, 2020), more than 3/4 of the common TLR/AOD animations have been remade, a whole 1/3 of TLR exlusive animations have been recreated, and more than 1/4 of the AOD exclusive animations have been implemented.

This may seem like there's still a lot of work to do, and it's true, but now I can say that: yes, I am confident that the project will be completed.



## 1.3. How it is done
I use *3DSMax* as my animation software. The reason for this choice is that it is the only advanced animation software supported by TRLE tools.

My workflow is usually as follow:
* Import AOD Lara into 3DSMax, and import the animation I want to work on.
* Import TRLE Lara into 3DSMax, most of the time with an existing animation.
* Put them side by side, and start recreating on TRLE Lara the poses AOD Lara does. I make extensive use of Interactive IK with position/orientation locking when needed.
* When I'm finished, I remove AOD Lara, and see if there is anything that looks jerky or accidental that I should fix. I also try to make the animation faster if it doesn't make it look like fast forward.

For other animations that do not exist in AOD, I usually use real-life references. This currenly mainly applies to roll in air, polerope, shovel, a few switches, and die after jumping animations.

What I want to emphasize is that I *never* "import" an animation: it is always re/created by hand.

**Note**: Since this demo level was created aroud 2012, there might be some old animations remaining that are not mine.



## 1.4. Target engine
The project is currently developped using **TRNG**, which is an extension of the classic Tomb Raider Level Editor engine, itself based on the Tomb Raider 4 engine.

Additional capabilities are implemented using TRNG scripts.

For now I'm focusing on TRNG itself, but when TR5Main gets released and stable, I would like to move the project to this engine, because it will allow better implementation of many things, that are currently too limited in TRNG.







# 2. Installation

_Note that this project is meant to be a "step forward", which means some changes have been made to try and make things closer to AOD, but also more responsive.  
This also means there are some extra steps you should follow if you want to use these animations the "best way"._


## 2.1. Downloading
I advise that you _**clone** the repository_ on your computer **using Github Desktop**. It's by far the easiest way.  
The reason is that downloading files directly from the website seems to convert text files (it changes line endings), which makes them unreadeable by WADMerger or NG Center.

If you prefer downloading files directly, you will need to change the line endings of text files from LF (Linux `\n`) to CRLF (Windows `\r\n`).

You can do this with Notepad++:
1. Open the file.
2. Open the `Edit` menu.
3. Open `Convert line endings`.
4. Select `Convert to Windows (CR+LF)`.

Known affected files are `.TXT`, `.SAM`, `.WAS`. 

Note: `tomb4.exe` may be seen as a threat by your antivirus, because it has been patched with FLEP. It is a _false-positive_.


## 2.2. Importing the animations
The animations can be found in [`graphics\wads\Lara.wad`](graphics/wads).

Assuming you're okay with the outfit, you only need to load this WAD into your project, and update it from time to time.  
If you're willing to use a different outfit, keep reading.


## 2.3. Using different outfits
Lara's outfit has been created by **Mrshina**.  
It has a particularity: Lara's **mesh positions are different** from a classic outfit, in order to match the original AOD model more closely.  
Thus, using the LARA object from this project's with a "classic" outfit will result in an alien-like Lara in-game.

The solution is to reposition LARA's meshes to their "original" positions. You can do that with both WADTool and WADMerger.
I don't plan to do it myself, simply because I'd have to do it everytime I push an update or someone asks me to, but here are the steps to do it yourself:

- Repositionning meshes using WADTool:
   1. Open your WAD.
   2. Unfold the *Moveables* list.
   3. Right click on *LARA* and select **Edit Skeleton**.
   4. In the *Meshtree* list, select the 1st mesh.
   5. In the *Transform* panel, type the corresponding coordinates based on the table below.
   6. Repeat steps 4. and 5. for every mesh.
   7. Hit OK and save your WAD.

- Repositionning meshes using WADMerger: 
First make sure you're using the TRNG fixer's version of WADMerger (downloadable [here](http://www.trlevelmanager.eu/ng.htm)).
   1. Open your WAD.
   2. Select *LARA* and open the *Animation Editor* (and don't select an animation, stay in "No Animation" mode).
   3. In the *Meshes* list (bottom right), select any mesh, for example Mesh 1 (Mesh 0 can't be moved at all).
   4. In the *toolbar* (top left), hit the **Move the selected mesh** button (the first one).
   5. In the *Meshes* list, select the mesh you want to edit.  
      *Note: you need to do this even if you already selected it before step 4, because when clicking on the Move button, the actual selection changes in the 3D view.*
   6. In the *3D View and Mesh Buttons* panel (bottom right), use the 3 **Mov. Mesh** buttons to move the mesh respectively on the X, Y and Z axis.  
      *Refer to the coordinates that appear just below these buttons, *not* the ones in the little popup window (which are scaled differently).*
   7. Repeat steps 6. and 7. for every mesh.
   8. Close the *Move* window.
   9. In the *File* menu, hit Save WAD.

<table style="table-layout: fixed; text-align: center;">
	<thead>
		<tr>
			<th rowspan=2 style="text-align: center;">Mesh</th>
			<th rowspan=2>#</th>
			<th colspan=3>TR4 outfit mesh position</th>
			<th colspan=3>Mrshina's AOD outfit mesh position</th>
		</tr>
		<tr>
			<th>X</th>
			<th>Y</th>
			<th>Z</th>
			<th>X</th>
			<th>Y</th>
			<th>Z</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<th>PELVIS</th>
			<th>0</th>
			<td style='font-weight: bold; color: pink;'>0</td>
			<td style='font-weight: bold; color: lightgreen;'>0</td>
			<td style='font-weight: bold; color: lightblue;'>0</td>
			<td style='opacity: 0.5'>0</td>
			<td style='opacity: 0.5'>0</td>
			<td style='opacity: 0.5'>0</td>
		</tr>
		<tr>
			<th>Left THIGH</th>
			<th>1</th>
			<td style='font-weight: bold; color: pink;'>-42</td>
			<td style='font-weight: bold; color: lightgreen;'>-20</td>
			<td style='font-weight: bold; color: lightblue;'>2</td>
			<td style='opacity: 0.5'>-43</td>
			<td style='opacity: 0.5'>-14</td>
			<td style='opacity: 0.5'>-15</td>
		</tr>
		<tr>
			<th>Left KNEE</th>
			<th>2</th>
			<td style='font-weight: bold; color: pink;'>9</td>
			<td style='font-weight: bold; color: lightgreen;'>-185</td>
			<td style='font-weight: bold; color: lightblue;'>3</td>
			<td style='opacity: 0.5'>6</td>
			<td style='opacity: 0.5'>-173</td>
			<td style='opacity: 0.5'>11</td>
		</tr>
		<tr>
			<th>Left ANKLE</th>
			<th>3</th>
			<td style='font-weight: bold; color: pink;'>1</td>
			<td style='font-weight: bold; color: lightgreen;'>-192</td>
			<td style='font-weight: bold; color: lightblue;'>-8</td>
			<td style='opacity: 0.5'>6</td>
			<td style='opacity: 0.5'>-205</td>
			<td style='opacity: 0.5'>-10</td>
		</tr>
		<tr>
			<th>Right THIGH</th>
			<th>4</th>
			<td style='font-weight: bold; color: pink;'>43</td>
			<td style='font-weight: bold; color: lightgreen;'>-20</td>
			<td style='font-weight: bold; color: lightblue;'>2</td>
			<td style='opacity: 0.5'>44</td>
			<td style='opacity: 0.5'>-14</td>
			<td style='opacity: 0.5'>-15</td>
		</tr>
		<tr>
			<th>Right KNEE</th>
			<th>5</th>
			<td style='font-weight: bold; color: pink;'>-10</td>
			<td style='font-weight: bold; color: lightgreen;'>-185</td>
			<td style='font-weight: bold; color: lightblue;'>2</td>
			<td style='opacity: 0.5'>-6</td>
			<td style='opacity: 0.5'>-173</td>
			<td style='opacity: 0.5'>11</td>
		</tr>
		<tr>
			<th>Right ANKLE</th>
			<th>6</th>
			<td style='font-weight: bold; color: pink;'>0</td>
			<td style='font-weight: bold; color: lightgreen;'>-193</td>
			<td style='font-weight: bold; color: lightblue;'>-2</td>
			<td style='opacity: 0.5'>-6</td>
			<td style='opacity: 0.5'>-205</td>
			<td style='opacity: 0.5'>-10</td>
		</tr>
		<tr>
			<th>TORSO</th>
			<th>7</th>
			<td style='font-weight: bold; color: pink;'>-1</td>
			<td style='font-weight: bold; color: lightgreen;'>-49</td>
			<td style='font-weight: bold; color: lightblue;'>11</td>
			<td style='opacity: 0.5'>0</td>
			<td style='opacity: 0.5'>83</td>
			<td style='opacity: 0.5'>7</td>
		</tr>
		<tr>
			<th>Right SHOULDER</th>
			<th>8</th>
			<td style='font-weight: bold; color: pink;'>59</td>
			<td style='font-weight: bold; color: lightgreen;'>142</td>
			<td style='font-weight: bold; color: lightblue;'>-12</td>
			<td style='opacity: 0.5'>59</td>
			<td style='opacity: 0.5'>129</td>
			<td style='opacity: 0.5'>-15</td>
		</tr>
		<tr>
			<th>Right ELBOW</th>
			<th>9</th>
			<td style='font-weight: bold; color: pink;'>10</td>
			<td style='font-weight: bold; color: lightgreen;'>-95</td>
			<td style='font-weight: bold; color: lightblue;'>-2</td>
			<td style='opacity: 0.5'>2</td>
			<td style='opacity: 0.5'>-114</td>
			<td style='opacity: 0.5'>-4</td>
		</tr>
		<tr>
			<th>Right WRIST</th>
			<th>10</th>
			<td style='font-weight: bold; color: pink;'>1</td>
			<td style='font-weight: bold; color: lightgreen;'>-101</td>
			<td style='font-weight: bold; color: lightblue;'>-1</td>
			<td style='opacity: 0.5'>-1</td>
			<td style='opacity: 0.5'>-90</td>
			<td style='opacity: 0.5'>6</td>
		</tr>
		<tr>
			<th>Left SHOULDER</th>
			<th>11</th>
			<td style='font-weight: bold; color: pink;'>-57</td>
			<td style='font-weight: bold; color: lightgreen;'>143</td>
			<td style='font-weight: bold; color: lightblue;'>-12</td>
			<td style='opacity: 0.5'>-59</td>
			<td style='opacity: 0.5'>131</td>
			<td style='opacity: 0.5'>-15</td>
		</tr>
		<tr>
			<th>Left ELBOW</th>
			<th>12</th>
			<td style='font-weight: bold; color: pink;'>-9</td>
			<td style='font-weight: bold; color: lightgreen;'>-98</td>
			<td style='font-weight: bold; color: lightblue;'>-2</td>
			<td style='opacity: 0.5'>-1</td>
			<td style='opacity: 0.5'>-116</td>
			<td style='opacity: 0.5'>-4</td>
		</tr>
		<tr>
			<th>Left WRIST</th>
			<th>13</th>
			<td style='font-weight: bold; color: pink;'>-1</td>
			<td style='font-weight: bold; color: lightgreen;'>-99</td>
			<td style='font-weight: bold; color: lightblue;'>-1</td>
			<td style='opacity: 0.5'>1</td>
			<td style='opacity: 0.5'>-90</td>
			<td style='opacity: 0.5'>6</td>
		</tr>
		<tr>
			<th>HEAD</th>
			<th>14</th>
			<td style='font-weight: bold; color: pink;'>2</td>
			<td style='font-weight: bold; color: lightgreen;'>198</td>
			<td style='font-weight: bold; color: lightblue;'>-23</td>
			<td style='opacity: 0.5'>0</td>
			<td style='opacity: 0.5'>174</td>
			<td style='opacity: 0.5'>-23</td>
		</tr>
	</tbody>
</table>


## 2.4. Dealing with footstep sounds
You may notice Lara's default footstep sounds are missing in most animations. This is not a bug, this is deliberate.  
Let me explain:

> In TR1 and TR2, Lara only had one footstep sound for land.  
> 
> With TR3, Core introduced terrain types to have different footstep sounds depending on what Lara is actually stepping on. This required a special function in Lara's animations whenever her feet hit the ground.  
> But instead of removing the "default" footstep sound, they turned the default footstep sound into a "stone" sound, and added a special function that will play the correct sound _on top_ of the default sound. Except on stone, because it already is the default sound.
> 
>  This is why, in TR3-4-5, when Lara is on dry terrain, you *always* hear the stone footstep sound, even if she's walking on gravel or sand for example.

To workaround this ugly workaround, and have only the correct footstep sound playing when needed, I did the following:
- I removed all the unneeded calls to the `LARA_FEET` sound in Lara's animations.
- On the map, all the `stone` type textures turned silent when walking on them...
- ...So I recycled the `marble` type into a "`stone`" sound (changed the samples), and applied the "`marble`" type to all textures that would normally be `stone`.
- Instead of leaving the LARA_FEET sound unused, I recycled it into a boot scraping sound, that I use on certain occasions (like when Lara stops running) to add more dynamic and variety to the sounds.

**TLDR**; what you need to know is:
- You need to apply the `marble` terrain type to all the textures that would normally use the `stone` type.
- The marble footstep sound samples should be replaced with regular stone footstep sounds.
- `LARA_FEET` should either be made silent, or have a dedicated "scraping" sound.


## 2.5. Using interactible objects
Here's a list of the objects that have been worked on. Some of them have custom animations in order to fit Lara's new animations.  
Unlisted objects means that Lara's animations have not been touched for them yet.

Note: __object sounds have *all* been removed from LARA's animations, and have been added to the objects themselves instead!__

| Slot					| Description					| Custom animations	| Remarks											|
|- 						| -								|-					|-													|
| FLOOR_TRAPDOOR1		| Trapdoor that can be lifted	| Yes				| -													|
| PUSHABLE_BLOCK*		| Movable block					| -					| -													|
| SWITCH_TYPE1		 	| Wall lever switch				| Yes				| -													|
| SWITCH_TYPE3		 	| Electric switch				| Yes				| The object's dimensions are also different!		|
| SWITCH_TYPE4		 	| Small button switch			| -					| -													|
| SWITCH_TYPE5		 	| Valve switch					| Yes				| The object's dimensions are also different!		|
| UNDERWATER_SWITCH1 	| Underwater switch				| Yes	 			| -													|
| LEVER_SWITCH		 	| Floor lever switch			| -					| -													|
| JUMP_SWITCH		 	| Elevated wall switch			| -					| -													|
| PULLEY			 	| Pulley						| Yes				| NOT WORKING - there seems to be harcoded things breaking due to the fact that the animation's length is different	|
| KICK_DOOR*			| Kickable door					| Yes				| Only Animation 1 is modified						|
| PUSHPULL_DOOR*		| Normal door					| -					| -													|
| DOUBLE_DOORS			| Double door					| -					| Using the Big Double Doors animation from AOD (eg. Archeological Digsite)	|
| SARCOPHAGUS			| Sarcophagus					| -					| -													|
| SEQUENCE_SWITCH*		| Big button switch				| -					| -													|


## 2.6. Scripted extra abilities
In [Script\Script.txt](Script/Script.txt), you can see many included (`#INCLUDE`) files starting with "Animations_***". These files contain the extra abilities.  
Other files can be ignored, they are mostly cosmetical, or old systems that were made specifically for The Lost Dominion or The Dark Renaissance.

There are 2 categories of animation related files:
- **Responsivity extensions**:  
  You should include these files. They are part of making Lara's responsivity optimal, by removing hardcoded delays (eg. allowing Lara to run after a swandive roll), or adding extra animations that allow Lara to get into more places (eg. the crawlspace flexibility set).
- **New capabilities**:  
  You can freely choose if you want or not the ability in your level. Not including them won't negatively affect Lara's abilities or responsivity.


## 2.7. FLEP patches
[FLEP patches](https://www.tombraiderforums.com/showthread.php?t=196854) are required. In this repository, the "official" patches have been combined with [experimental patches](https://www.tombraiderforums.com/showpost.php?p=8135620&postcount=736) from ChocolateFan.  
All these patches have been merged into a single file: [patches.2020-10-15.plus_experimental_patches.flp](patches.2020-10-15.plus_experimental_patches.flp) (the date, in YEAR-MONTH-DAY format, representing the update it is based on).

Here are the required patches:
- **Disable ledge climb delay**
- **Quick crawlspace climb**
- **Wall climbing mid-point adjuster**
  - Low frame for climbing up: `26`
  - High frame for climbing up: `28`
  - Low frame for climbing down: `27`
  - High frame for climbing down: `29`
- **Standing jump grab animation**
  - Animation: `29`
  - Start frame: `0`
- **Fix hysterisis in one click deep water**
- **Pickup flare frame numbers**
  - Land (standing): `16`
- **Pickup flare frame numbers**
  - Land (standing): `15`
  - Land (crouching): `20`
- **Dive delay removal**
  - Delay: `1`







# 3. Credits
- Direct contributions
  - [Krystian](https://www.trsearch.org/member/3312): Ladder system, animation utilities, and help generally speaking
  - [Caesum](https://twitter.com/Caesum): General interface design
  - [Daledrau](https://twitter.com/daledrau): General interface design, Title screen render
  - [Mrshina](https://www.trsearch.org/member/3507): Outfit
  - [The Lost Dominion team](https://www.tombraiderforums.com/showthread.php?t=196197) ([members](https://www.tombraiderforums.com/showthread.php?t=179784)) & [The Lost Dominion Revival team](https://www.tombraiderforums.com/showthread.php?t=216488): Medipacks, Batteries, Stength upgrade system, Health bar graphics, Dynamic camera presets, Quick save system, Grip bar system
- Indirect contributions
  - [Silent Viper](https://www.trsearch.org/member/5): [SAS](https://www.trsearch.org/item/1183)
  - [Timmie_Croft](https://www.trsearch.org/member/167): [Knife](https://www.trsearch.org/item/767)
  - Symsi: Swingpole and tightrope
  - [Lwmte](https://www.tombraiderforums.com/member.php?u=40773): FLEP
  - [ChocolateFan](https://www.tombraiderforums.com/member.php?u=57965): Additional FLEP patches
  - [Tomb Editor team](https://www.tombraiderforums.com/showthread.php?t=218924): Tomb Editor and its tools
  - [Paolone](http://www.trlevelmanager.eu/ng.htm): The TRNG engine
  - Indiana Jones and the Infernal Machine: shovel digging sounds
  - Core Design & Eidos Interactive: Tomb Raider

As the [The Dark Renaissance](https://github.com/Castigavi/the-dark-renaissance) project (and before that, The Lost Dominion) was originally a private project in which I was only a member, I did not keep a credits list. I am trying to correct this, but I may be missing people here. Feel free to let me know if you know more details.


# 4. Note about encryption
A simple request:
> If you are going to **encrypt your levels**, then please **do not use this project**.

I don't agree with encryption for many reasons, and I'll just sum it up this way: when making your game, you're using software, assets, tutorials, advices, etc... which are all **community effort**. Community effort is what kept Tomb Raider level editing going after 20 years.

My project is following the same spirit. If you want to encrypt your levels, well it's your choice, but then I ask you to not use any of my stuff in it. Thank you.
