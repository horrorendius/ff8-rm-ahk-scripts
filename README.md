# FF8 Remastered AutoHotKey Scripts

AutoHotKey scripts for Final Fantasy VIII Remastered to automate farming and RNG manipulation.

## Table of Contents

- [Requirements](#requirements)
- [Scripts](#scripts)
  - [1. D-District Prison Rosetta Stone Farm](#1-d-district-prison-rosetta-stone-farm-ff8-prison-rosetta-stone-scriptahk)
    - [Information](#information)
    - [Setup](#setup)
    - [Hotkeys](#hotkeys)
    - [Workflow](#workflow)
    - [Troubleshooting](#troubleshooting)
  - [2. Angelo Search Farm](#2-angelo-search-farm-ff8-angelo-farmahk)
    - [Information](#information-1)
    - [Setup](#setup-1)
    - [Hotkeys](#hotkeys-1)
    - [Row Timing Reference (3x Speed)](#row-timing-reference-3x-speed)
    - [Row Timing Reference (Normal Speed)](#row-timing-reference-normal-speed)
    - [Configuration](#configuration)
    - [Notes](#notes)
    - [Troubleshooting](#troubleshooting-1)
- [Default Key Bindings](#default-key-bindings)
- [Tested On](#tested-on)
- [References](#references)

## Requirements

- [AutoHotKey v1.1](https://www.autohotkey.com/) (not v2)
- Final Fantasy VIII Remastered (Steam)

## Scripts

### 1. D-District Prison Rosetta Stone Farm (`ff8-prison-rosetta-stone-script.ahk`)

Automates the Triple Triad RNG manipulation in D-District Prison to farm Rosetta Stones from the prisoner NPC.

#### Information

The Normal run speed script was taken from a post on Steam by [Jake - District-D Prison - Consisten Rosetta Stone Script (Autohotkey)](https://steamcommunity.com/sharedfiles/filedetails/?id=2965348557).

Full credit goes to him for the initial idea behind these scripts.

I have taken his original script, and modified it to be a 'closed loop' that can be run at 3x Speed.

#### Setup

1. Save in the prison cell (save slot 2)
2. The Queen of Cards location affects the number of declines needed:
   - QOC NOT in Deling: 54 declines (default)
   - QOC in Deling: 140 declines (edit the script to change)

*** Setup Note ***:

The Save slot was customized to use a specific save slot. You will need to edit this if you want to save in another slot.

#### Hotkeys

| Key | Action |
|-----|--------|
| F5 | Run from save cell to Triad player (normal speed) |
| F6 | Return to cell, save, exit, reload, loop to F5 (normal speed) |
| F7 | Run from save cell to Triad player (3x speed) |
| F8 | Return to cell, save, exit, reload, loop to F7 (3x speed) |
| Escape | Exit script |

#### Workflow

1. Start at the save point in the prison cell
2. Press F5 (normal) or F7 (3x speed) to run to the Triad player
3. Script auto-declines the correct number of times, then accepts the challenge
4. Win the card game to get the Rosetta Stone
5. Press F6 (normal) or F8 (3x speed) to return, save, and loop

##### Decline Count Change

To change decline count (if QOC is in Deling), edit the script:

```ahk
; Uncomment this line if QOC is in Deling:
;Loop, 140

; Comment this line if QOC is in Deling:
Loop, 54
```

#### Troubleshooting

- **Movement timing off**: The prison script timings may need adjustment based on your system

-----

### 2. Angelo Search Farm (`ff8-angelo-farm.ahk`)

Automates the Angelo Search farming technique to collect rare items. Uses RNG manipulation by pressing the skip button a specific number of times to advance through a 9-row item table.

#### Information

This script was developed to try and perform a faster, more item rich Angelo Search Farm, using the information provided by _BananoBoost_ on [this Reddit post](https://old.reddit.com/r/FinalFantasyVIII/comments/y8dbqc/ff8_remastered_angelo_manual_guide/), and his accompanying [Youtube video](https://www.youtube.com/watch?v=dlbFXc59GS0).

**IMPORTANT NOTE**

Full disclosure! I haven't been able to get this automation working 100%, and could use some help to get it working reliably.

#### Setup

1. Ensure Angelo Search ability is learnt for Rinoa (Pet Pals Vol 5 from Esthar Pet Shop)
2. Get into a battle where you can idle (e.g., Turtapod in Esthar at level 30+, in defense mode, with Confuse)
3. With 3x speed ON, wait for Angelo to appear for the first time.
4. Turn 3x Speed OFF while Angelo is doing his thing.
5. Start a _TIMER_ when the Item box disappears
6. With 3x Speed _OFF_, wait for the next time that Angelo appears.
7. Once he appears, pause your game, and note the time. Match the interval time to determine your current row
    - For example, if you recorded that Angelo appeared after approximately 4 minutes and 13 seconds, then that was row 5.
8. Unpause your game, and wait until the Item box disappears, then..
9. Press the corresponding hotkey for the next row, to start farming from that row
    - Using the example from line 7, as you've just done row 5, you would press the button for row 6.

#### Hotkeys

| Key | Row | Checks |
|-----|-----|--------|
| F5 | Row 1 | 4 |
| F6 | Row 2 | 32 |
| F7 | Row 3 | 86 |
| F8 | Row 4 | 32 |
| Shift+F5 | Row 5 | 19 |
| Shift+F6 | Row 6 | 41 |
| Shift+F7 | Row 7 | 1 |
| Shift+F8 | Row 8 | 18 |
| Ctrl+Shift+F8 | Row 9 | 5 |
| F4 | Stop cycle (script keeps running) | - |
| Escape | Exit script | - |

#### Row Timing Reference (3x Speed)

| Row | Checks | Time |
|-----|--------|------|
| 1 | 4 | 0:17 |
| 2 | 32 | 2:22 |
| 3 | 86 | 6:22 |
| 4 | 32 | 2:22 |
| 5 | 19 | 1:24 |
| 6 | 41 | 3:02 |
| 7 | 1 | 0:04 |
| 8 | 18 | 1:20 |
| 9 | 5 | 0:22 |

#### Row Timing Reference (Normal Speed)

| Row | Checks | Time |
|-----|--------|------|
| 1 | 4 | 0:53 |
| 2 | 32 | 7:07 |
| 3 | 86 | 19:07 |
| 4 | 32 | 7:07 |
| 5 | 19 | 4:13 |
| 6 | 41 | 9:07 |
| 7 | 1 | 0:13 |
| 8 | 18 | 4:00 |
| 9 | 5 | 1:07 |

#### Configuration

Edit these values at the top of the script:

```ahk
global AngeloWaitTime := 8000   ; Time for Angelo to dig and return (ms)
global KeyPressDelay := 80      ; Delay between key down/up (ms)
global KeyReleaseDelay := 80    ; Delay between key presses (ms)
```

#### Notes

- Script assumes 3x speed is OFF when started
- Each row cycle: speed off -> button presses -> speed on -> wait for Angelo
- The 13.3 second input window starts after the item speech bubble disappears
  - 13.3 seconds is the input window for Normal Speed
  - 4.4 seconds is the input window for 3x Speed
- After Row 9, automatically loops back to Row 1

#### Troubleshooting

- **Inputs not registering**: Try increasing `KeyPressDelay` and `KeyReleaseDelay`
- **Angelo timing off**: Adjust `AngeloWaitTime` (increase if starting too early, decrease if waiting too long)

-----

## Default Key Bindings

These scripts assume the following FF8 Remastered key bindings:

| Action | Key |
|--------|-----|
| Confirm | X |
| Cancel | C |
| Menu | V |
| Card | B |
| 3x Speed | F3 |
| Movement | Arrow Keys |
| Pause | Space Bar |

## Tested on

These scripts were tested on the following machine:
- Windows 10
- Intel i7-11700K
- 32GB RAM
- Samsung SSD
- RTX 4070

## References

- [District-D Prison - Consisten Roessta Stone Script](https://steamcommunity.com/sharedfiles/filedetails/?id=2965348557)
- [Angelo Search Manual Guide (Reddit)](https://old.reddit.com/r/FinalFantasyVIII/comments/y8dbqc/ff8_remastered_angelo_manual_guide/)
- [Youtube video with Angelo Search Example](https://www.youtube.com/watch?v=dlbFXc59GS0)
