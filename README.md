# TRLE - AOD Animations

A project that aims at recreating *Lara Croft*'s animations from **Tomb Raider: The Angel Of Darkness** into **Tomb Raider: Level Editor**. This is basically an upgrade of Lara's classic animations, with improvements to make her feel more responsive than she ever was in the classic Tomb Raider games.

This repository includes an *all-in-one* testing ground: it contains the executable, compiled demo level, the map, objects, sounds, etc. It is based on [the-dark-renaissance](https://github.com/Castigavi/the-dark-renaissance "the-dark-renaissance: A CANCELLED continuation of Tomb Raider the Angel of Darkness.") package, because it originally started for this project. This is why you may find references to it in the files.

## How about a preview?
See current progress (**Jul 28, 2019**) on Youtube:

<a href="http://www.youtube.com/watch?feature=player_embedded&v=O-3Q1sZRti4
" target="_blank"><img src="https://img.youtube.com/vi/O-3Q1sZRti4/0.jpg" 
alt="IMAGE ALT TEXT HERE" width="240" height="180" border="10" /></a>

## Where can I find the animations?
The animations can be found in [`graphics\wads\demo.wad`](graphics/wads), that you can open using *Wadmerger*.

## Where can I check the progression?
- Follow the [commits](https://github.com/Joey79100/trle-aod_animations/commits/master) to see the *latest updates*.
- Read the [issues](https://github.com/Joey79100/trle-aod_animations/issues) named "Progress tracker \*\*\*" to see the *lists of animations* that have been remade or planned.

## Is this ever going to be finished?
Frankly, I have no idea. I have opened this repository so I can keep on working on these animations even after the cancellation of TDR, but I don't know if I'll ever reach the end and replace every single existing TR4 animation. Time will tell!

## How is it done?
I use *3DSMax* as my animation software. The reason for this choice is that it is the only advanced animation software supported by TRLE tools.

My workflow is usually as follow:
* Import AOD Lara in 3DSMax, and import the animation I want to work on.
* Import TRLE Lara in 3DSMax, most of the time with an existing animation.
* Put them side by side, and start recreating on TRLE Lara the poses AOD Lara does. I make extensive use of Interactive IK with position/orientation locking when needed.
* When I'm finished, I remove AOD Lara, and see if there is anything that looks jerky or accidental that I should fix. I also try to make the animation faster if it doesn't make it look like fast forward.

For other animations that do not exist in AOD, I usually use real-life references. This currenly mainly applies to roll in air, polerope, and die after jumping animations.

What I want to emphasize is that I **never** import an animation: it is always re/created by hand.

**Note**: Since this demo level was created aroud 2012/2013, there are some old animations remaining.

## Important information
1. `tomb4.exe` may be seen as a thread by your antivirus, because it has been patched with FLEP. It is a _false-positive_.
2. Lara's outfit has been created by **Mrshina**. It has a particularity: Lara's mesh positions have been changed from the original classic model to match the original AOD model more closely.
   Thus, copying LARA from this project's WAD to your WAD will result in an alien-like Lara in-game, unless you manually reposition the meshes or use an outfit that uses the same mesh positions.
