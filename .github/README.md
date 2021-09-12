# TRLE - AOD Animations



A **Tomb Raider: The Angel Of Darkness** based animation set for **Tomb Raider: Level Editor**.

Preview (**Jul 28, 2019**):

<a href="http://www.youtube.com/watch?feature=player_embedded&v=O-3Q1sZRti4" target="_blank">
	<img src="https://img.youtube.com/vi/O-3Q1sZRti4/0.jpg"alt="Video preview of the animations from Jul 28, 2019" width="240" height="180" border="10" />
</a>


# 1. The project - general information



## 1.1. Updates and progression
You can:
- Follow the [commits](https://github.com/Joey79100/trle-aod_animations/commits/master) to see the **latest updates**.
- Read the [issues](https://github.com/Joey79100/trle-aod_animations/issues) named "_Progress tracker \*\*\*_" to see the **lists of animations** that have been remade or planned.


## 1.2. Target engine/editor
The project is currently developped using **TRNG** + **FLEP**.
When it becomes available and stable, the target engine will switch to **TombEngine**.

Most assets rely on new Tomb Editor file formats (`.PRJ2`, `.WAD2`).
`Lara.wad` is being provided in `.WAD` format only, but as soon as WadTool can export animations to 3D software it will switch to `.WAD2`.


# 2. Installation


## 2.1. Downloading
There are 2 ways you can choose: **clone the repository**, or **download the ZIP**.
I advise that you _**clone** the repository_ on your computer **using Github Desktop**. It's the easiest way.
The reason is: downloading files directly from the website converts text files (changing line endings), which makes them unreadeable by tools like WADMerger or NG Center.

### 2.1.1 **Cloning the repository** (recommended)
  You need [Github Desktop](https://desktop.github.com/), and a Github account connected to it.
  #### First setup
  1. Launch Github Desktop.
  2. Open the `File` menu and choose `Clone repository...`.
  3. Switch to the `URL` tab, and:
     - In the 1st field, paste the URL of the repository: `[https://github.com/Joey79100/trle-aod_animations](https://github.com/Joey79100/trle-aod_animations)`
     - In the 2nd field, choose the folder in which you want to download the package.
  4. Hit the `Clone` button to start the download.

  #### Download updates
  1. Launch Github Desktop.
  2. Click the `Fetch origin` button at the top.
  3. If there are updates, the button now says `Pull origin`: click it. Otherwise you already have the latest version.


### 2.1.2 **Downloading the ZIP version**
  You need to unzip the package, and then convert line endings of text files from LF (Linux `\n`) to CRLF (Windows `\r\n`).

  1) Near the top of this page, find the big green "**Code**" menu button, and hit [Download ZIP](https://github.com/Joey79100/trle-aod_animations/archive/refs/heads/master.zip).
  2) If you don't already have it, download and install [Notepad++](https://notepad-plus-plus.org/downloads/).
  3) For every problematic file (known affected files are `.TXT`, `.SAM`, `.WAS`):
     1. Open the file in Notepad++.
     2. Open the `Edit` menu, and select `Convert line endings` > `Convert to Windows (CR+LF)`.


## 2.2. Importing the animations
The animations can be found in [`Assets\Objects\Lara.wad`](assets/objects).

Assuming you're okay with the outfit, you only need to load this WAD into your project, and update it from time to time.
If you're willing to use a different outfit, keep reading.


## 2.3. Using different outfits
Lara's outfit was made by **Mrshina**.
It is different: Lara's **mesh positions are different** from a classic outfit, in order to match AOD proportions better.
Thus, using the LARA object from this project's with a "classic" outfit will result in an alien-like Lara in-game.

There are 2 solutions:
  - easier way: export all animations from this LARA, and import them all in yours (WadTool only)
  - longer way: import this LARA, but reposition every mesh into their original TR4 position (WadMerger)

### Exporting/Importing the animations (WadTool only)
   1. Open `Lara.wad`.
      1. Double-click *LARA* to open it in the *Animation Editor*.
      2. Open the `Animations` menu, and select `Batch` > `Export all...`.
      3. Create a dedicated folder for the animations, and select it.
      4. Close the animation editor.
   2. Open your WAD.
      1. Double-click *LARA* to open it in the *Animation Editor*.
      2. Open the `Animations` menu, and select `Batch` > `Import...`.
      3. Select the folder in which your exported the animations.
      4. Hit `Yes` to the `Missing animations slots detected` prompt.
   3. Save the changes, then save your WAD.

### Importing the LARA object and repositionning the meshes (WadMerger)
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
			<td style='font-weight: bold; color: lightgreen;'>49</td>
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


## 2.4. Footstep sounds
The animations have been fixed to work with the "**1 terrain type = 1 footstep sound**" approach (instead of the "stone + footstep sound" TR3-4-5 use).
- All unneeded calls to the `LARA_FEET` sound in Lara's animations have been removed.
- LARA_FEET has been recycled into a boot scraping sound, that I use on certain occasions (like when Lara stops running) to add more dynamic and variety to the sounds.
- I use the ``Footstep Sound Customizer`` FLEP patch to define which sound ID to use for each terrain type.

In order to import the sounds:
   1. Copy/Paste [`Footsteps.xml`](Assets/Sounds/Footsteps.xml) somewhere into your project folder.
   2. Copy/Paste [`Assets/Sounds/Footsteps`](Assets/Sounds/Footsteps) somewhere into your project folder.
   3. In your project settings, `Sound Infos` tab, add `Footsteps.xml` you pasted at step 1. to the list of sound catalogs (top part of the window).
   4. In your project settings, `Sound Sample Paths` tab, add the `Footsteps` folder you pasted at step 2. to the list.
   5. Open FLEP:
      1. Activate these 2 patches:
      - **Footstep Sound Customizer**
      - **Enable all footstep sound effects**
      2. In the **Footstep Sound Customizer** patch, set the **First Sound ID** to 288, and then every sound to the "Relative ID" below:

Absolute ID | [`_OriginalSounds.txt`](Assets/Sounds/_OriginalSounds.txt) name | FLEP name | Relative ID | [`Footsteps.xml`](Assets/Sounds/Footsteps.xml) name
------------|-----------------------------------------------------------------|-----------|-------------|------------------------------------------------------------
288         | FOOTSTEPS_MUD                                                   | MUD       | 0           | FOOTSTEPS_0_MUD
289         | **HORSEMAN_HORSE_NEIGH**                                        | ICE       | 1           | FOOTSTEPS_1_ICE
290         | FOOTSTEPS_GRAVEL                                                | GRAVEL    | 2           | FOOTSTEPS_2_GRAVEL
291         | FOOTSTEPS_SAND_&_GRASS                                          | SAND      | 3           | FOOTSTEPS_3_SAND
292         | FOOTSTEPS_WOOD                                                  | WOOD      | 4           | FOOTSTEPS_4_WOOD
293         | FOOTSTEPS_MARBLE                                                | MARBLE    | 5           | FOOTSTEPS_5_MARBLE
294         | FOOTSTEPS_METAL                                                 | METAL     | 6           | FOOTSTEPS_6_METAL
295         | **GEN_SPHINX_DOORTHD**                                          | SNOW      | 7           | FOOTSTEPS_7_SNOW
296         | **SETT_PLASMA_1**                                               | WATER     | 8           | FOOTSTEPS_8_WATER
297         | **SETT_BOLT_1**                                                 | STONE     | 9           | FOOTSTEPS_9_STONE
298         | **SETT_FEET**                                                   | GRASS     | 10          | FOOTSTEPS_10_GRASS
299         | **SETT_NRG_CHARGE**                                             | CONCRETE  | 11          | FOOTSTEPS_11_CONCRETE
300         | **SETT_NRG_CHARGE2**                                            | OLD_WOOD  | 12          | FOOTSTEPS_12_OLD_WOOD
301         | **HORSEMAN_TAKEHIT**                                            | OLD_METAL | 13          | FOOTSTEPS_13_OLD_METAL
302         | **HORSEMAN_WALK**                                               | UNKNOWN14 | 14          | FOOTSTEPS_14_CARPET
303         | **HORSEMAN_GRUNT**                                              | UNKNOWN15 | 15          | FOOTSTEPS_15_LEAVES

The sounds marked in bold are those that are going to be replaced.
You can of course remap any sound to the ID that you wish, just make sure to edit the parameters in the FLEP patch as well.

## 2.5. Using interactible objects
Here's a list of the objects that have been worked on. Some of them have custom animations in order to fit Lara's new animations.
Unlisted objects means that Lara's animations have not been touched for them yet.

Note: __object sounds have *all* been removed from LARA's animations - they have been added to the objects themselves instead!__

Slot                  | Description                        | Custom animations    | Remarks
----------------------|------------------------------------|----------------------|----------------------------------------------------------------------------
FLOOR_TRAPDOOR1       | Trapdoor that can be lifted        | Yes                  | -
PUSHABLE_BLOCK        | Movable block                      | -                    | -
SWITCH_TYPE1          | Wall lever switch                  | Yes                  | -
SWITCH_TYPE3          | Electric switch                    | Yes                  | The object's dimensions are also different!
SWITCH_TYPE4          | Small button switch                | -                    | -
SWITCH_TYPE5          | Valve switch                       | Yes                  | The object's dimensions are also different!
UNDERWATER_SWITCH1    | Underwater switch                  | Yes                  | -
LEVER_SWITCH          | Floor lever switch                 | -                    | -
JUMP_SWITCH           | Elevated wall switch               | -                    | -
PULLEY                | Pulley                             | Yes                  | Looping is disabled, it was causing issues (1st pull was ok, then it broke)
KICK_DOOR             | Kickable door                      | Yes                  | -
PUSHPULL_DOOR         | Normal door                        | Yes                  | -
DOUBLE_DOORS          | Double door                        | -                    | Uses the Big Double Doors animation from AOD (eg. Archeological Digsite)
SARCOPHAGUS           | Sarcophagus                        | -                    | -
SEQUENCE_SWITCH       | Big button switch                  | -                    | -
ANIMATING4            | Ladder                             | -                    | Can be used from the bottom only for now


## 2.6. Scripted extra abilities
In [Script\Script.txt](Script/Script.txt), you can see many included (`#INCLUDE`) files starting with "Animations_***". These files contain the extra abilities.
Other files can be ignored, they are mostly cosmetical, or old systems that were made specifically for The Lost Dominion or The Dark Renaissance.

There are 2 categories of animation related files:
- **Responsivity extensions**:
  You should include these files. They are part of making Lara's responsivity optimal, by removing hardcoded delays (eg. allowing Lara to run after a swandive roll), or adding extra animations that allow Lara to get into more places (eg. the crawlspace flexibility set).
- **New capabilities**:
  You can freely choose if you want or not the ability in your level. Not including them won't negatively affect Lara's abilities or responsivity.

Note that every script command is using a constant, which you can find at the top of the file.  
That means that if you have some conflicts, you can easily change the IDs at the top of the file (`#DEFINE  NAME_OF_THE_CONSTANT  VALUE`) until it works, without having to edit the scripts' content itself.

## 2.7. FLEP patches
[FLEP patches](https://www.tombraiderforums.com/showthread.php?t=196854) are required.

Here are the required patches:
- **Disable ledge climb delay**
- **Quick crawlspace climb**
- **Enablel cralwspace jump**
  - Crawlspace jump animation #: `421`
  - Pit deepness threshold: `28`
- **Wall climbing mid-point adjuster**
  - Low frame for climbing up: `26`
  - High frame for climbing up: `28`
  - Low frame for climbing down: `27`
  - High frame for climbing down: `29`
- **Fix hysterisis in one click deep water**
- **Footstep Sound Customizer**
  - [see [2.4 Footstep sounds](#24-footstep-sounds) for details]
- **Enable all footstep sound effects**
- **Upward standing jump ledge grab animation**
  - Animation: `29`
  - Start frame: `0`
- **Pickup flare frames**
  - Animation 204 (standing): `16`
- **Pickup item frames**
  - Animation 135 (standing): `15`
  - Animation 291 (crouching): `19`
  - Animation 425 (low pedestal): `15`
  - Animation 325 (hole): `33`
- **Dive delay**
  - Delay: `0`
- **Prevent camera position freeze**







# 3. Credits
- Direct contributions
  - [Krystian](https://www.trsearch.org/member/3312): Ladder system, animation utilities, and help generally speaking
  - [Caesum](https://twitter.com/Caesum): General interface design, feedback and advice
  - [Daledrau](https://twitter.com/daledrau): General interface design, Title screen render
  - [Mrshina](https://www.trsearch.org/member/3507): Lara's outfit
  - [The Lost Dominion team](https://www.tombraiderforums.com/showthread.php?t=196197) ([members](https://www.tombraiderforums.com/showthread.php?t=179784)) & [The Lost Dominion Revival team](https://www.tombraiderforums.com/showthread.php?t=216488): Medipacks, Batteries, Stength upgrade system, Health bar graphics, Dynamic camera presets, Quick save system, Grip bar system
- Indirect contributions
  - [Silent Viper](https://www.trsearch.org/member/5): [SAS](https://www.trsearch.org/item/1183)
  - [Timmie_Croft](https://www.trsearch.org/member/167): [Knife](https://www.trsearch.org/item/767)
  - Symsi: Swingpole and tightrope
  - [Lwmte](https://www.tombraiderforums.com/member.php?u=40773): FLEP
  - [ChocolateFan](https://www.tombraiderforums.com/member.php?u=57965): Additional FLEP patches
  - [Dermahn](https://www.tombraiderforums.com/member.php?u=59175): Additional FLEP patches
  - [JMN](https://www.tombraiderforums.com/member.php?u=21653): Classic Inventory plugin
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
