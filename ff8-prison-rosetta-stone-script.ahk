#SingleInstance Force
SendMode Input
Esc::ExitApp ; Exit script with Escape key


F5:: ; run from cell to triad player

; exit save cell
Send {Down down} 
Sleep 1700
Send {Down up}
; move to stairs
Send {Left down} 
Sleep 2100
Send {Left up}
; climb stairs
Send {Up down} 
Sleep 2000
Send {Up up}
; run from stairs to next screen
Send {Left down}{Down down}
Sleep 4500
Send {Left up}{Down up}
; big circle to cell
Send {Right down}{Up down}
Sleep 4200
Send {Right up}
Sleep 10
Send {Left down}
Sleep 1300
Sleep 2100
Send {Up up}
Sleep 800
;Send {Up up}
Sleep 1000
Send {Left up}
Send {Up down} ; enter cell
Sleep 1300
Send {Right down}
Sleep 1000
Send {Right up}
Sleep 2600 ; run up to triad player
Send {Up up}
Send {Left down}
Sleep 300
Send {Left up}
Sleep 50

; AUTO-DECLINE SECTION
;
; Each decline advances RNG a specific amount.
; The amount of RNG we want to advance depends on
; where the Queen of Cards (QOC) is.
;
; If she is in Deling, you need to decline 140 times.
; If she is not, you only need to decline 54 times.
; Note: some players will find that 54/140 declines does
; not work. You can adjust the amount of declines
; by changing the number after "Loop," to whatever you want.
;
; By default, this script assumes QOC is not in Deling.
; If she is, remove the semicolon (;) from the line below
; and add a semicolon to the line below it.

;Loop, 140 ; auto-decline to advance RNG - Use this if the QOC is in Deling
Loop, 54 ; auto-decline to advance RNG - Use this if the QOC is NOT in Deling

{
Send {b down}
Sleep 100
Send {b up}
Sleep 800
Send {Down down}
Sleep 100
Send {Down up}
Sleep 300
Send {x down}
Sleep 100
Send {x up}
Sleep 800
}

Send {b down} ; accept triad challenge
Sleep 100
Send {b up}
Sleep 800
Send {x down}
Sleep 100
Send {x up}
Sleep 160
Exit

F6:: ; return to save cell - slower than the experimental hi-speed return but is much more reliable.

Send {Down down} ; exit cell
Sleep 1500
Send {Down up}
Send {Right down} ; run to next screen
Sleep 5300
Send {Down down} ; big circle
Sleep 1000
Send {Right up}
Sleep 1800
Send {Left down}
Sleep 1000
Send {Down up}
Sleep 1800
Send {Left up} ; enter screen with stairs
Send {Up down}
Sleep 3000
Send {Right down} ; turn towards stairs
Sleep 1800
Send {Up up}
Send {Down down} ; go downstairs
Sleep 3700
Send {Down up}
Send {Up down} ; go into cell
Sleep 3300
Send {Right up}
Sleep 500
Send {Up up}
; accept save menu 'this is a save point' text
Sleep 500
Send {x down}
Sleep 100
Send {x up}
Sleep 100
Send {x down}
Sleep 100
Send {x up}
Sleep 100
; wait a sec
Sleep 1000
; enter menu
Send {v down}
Sleep 100
Send {v up}
Sleep 1000
; move to save menu item
Send {Up down}
Sleep 100
Send {Up up}
Sleep 200
Send {Up down}
Sleep 100
Send {Up up}
Sleep 200
; enter save
Send {x down}
Sleep 100
Send {x up}
Sleep 1000
; Go to slot 2 and enter
Send {Down down}
Sleep 100
Send {Down up}
Sleep 1000
Send {x down}
Sleep 100
Send {x up}
Sleep 1500
; select save slot
Send {x down}
Sleep 100
Send {x up}
Sleep 500
; confirm over write
Send {Up down}
Sleep 100
Send {Up up}
Sleep 500
Send {x down}
Sleep 100
Send {x up}
Sleep 500
; exit save menu
Send {c down}
Sleep 100
Send {c up}
Sleep 500
Send {c down}
Sleep 100
Send {c up}
Sleep 500
; go to exit game
Send {Down down}
Sleep 100
Send {Down up}
Sleep 400
; select exit game
Send {x down}
Sleep 100
Send {x up}
Sleep 200
; Confirm exit
Send {Up down}
Sleep 100
Send {Up up}
Sleep 200
Send {x down}
Sleep 100
Send {x up}
Sleep 200
; wait till game refreshes
Sleep 7000
; open Continue menu
Send {x down}
Sleep 100
Send {x up}
Sleep 200
; memory card load
Sleep 2500
; go down to 2nd slot
Send {Down down}
Sleep 100
Send {Down up}
Sleep 200
Send {x down}
Sleep 100
Send {x up}
Sleep 200
; wait for memory card load
Sleep 1500
Send {x down}
Sleep 100
Send {x up}
Sleep 200
; wait til game loads
Sleep 5000
Goto, F5

F7:: ; three times boosted run - run from cell to triad player

; turn on three times speed
Send {F3 down}
Sleep 100
Send {F3 up}
Sleep 100
; exit save cell
Send {Down down}
Sleep 567
Send {Down up}
; move to stairs
Send {Left down}
Sleep 700
Send {Left up}
; climb stairs
Send {Up down}
Sleep 667
Send {Up up}
; run from stairs to next screen
Send {Left down}{Down down}
Sleep 1500
Send {Left up}{Down up}
; big circle to cell
Send {Right down}{Up down}
Sleep 1400
Send {Right up}
Sleep 3
Send {Left down}
Sleep 433
Sleep 680
Send {Up up}
Sleep 360
Send {Left up} 
Send {Up down} ; enter cell
Sleep 600
Send {Right down}
Sleep 333
Send {Right up}
Sleep 867 ; run up to triad player
Send {Up up}
Send {Left down}
Sleep 100
Send {Left up}
Sleep 17

; AUTO-DECLINE SECTION
;
; Each decline advances RNG a specific amount.
; The amount of RNG we want to advance depends on
; where the Queen of Cards (QOC) is.
;
; If she is in Deling, you need to decline 140 times.
; If she is not, you only need to decline 54 times.
; Note: some players will find that 54/140 declines does
; not work. You can adjust the amount of declines
; by changing the number after "Loop," to whatever you want.
;
; By default, this script assumes QOC is not in Deling.
; If she is, remove the semicolon (;) from the line below
; and add a semicolon to the line below it.

;Loop, 140 ; auto-decline to advance RNG - Use this if the QOC is in Deling
Loop, 54 ; auto-decline to advance RNG - Use this if the QOC is NOT in Deling

{
Send {b down}
Sleep 80
Send {b up}
Sleep 200
Send {Down down}
Sleep 80
Send {Down up}
Sleep 80
Send {x down}
Sleep 80
Send {x up}
Sleep 200
}

Send {b down} ; accept triad challenge
Sleep 80
Send {b up}
Sleep 200
Send {x down}
Sleep 80
Send {x up}
Sleep 80
Exit

F8:: ; three times boosted run - return to save cell, save, exit, continue, and loop back

Send {Down down} ; exit cell
Sleep 500
Send {Down up}
Send {Right down} ; run to next screen
Sleep 1767
Send {Down down} ; big circle
Sleep 333
Send {Right up}
Sleep 600
Send {Left down}
Sleep 333
Send {Down up}
Sleep 600
Send {Left up} ; enter screen with stairs
Send {Up down}
Sleep 1000
Send {Right down} ; turn towards stairs
Sleep 600
Send {Up up}
Send {Down down} ; go downstairs
Sleep 1233
Send {Down up}
Send {Up down} ; go into cell
Sleep 1100
Send {Right up}
Sleep 200
Send {Up up}

; accept save menu 'this is a save point' text
Sleep 250
Send {x down}
Sleep 100
Send {x up}
Sleep 100
Send {x down}
Sleep 100
Send {x up}
Sleep 100

; wait a sec
Sleep 1000

; enter menu
Send {v down}
Sleep 100
Send {v up}
Sleep 500

; move to save menu item
Send {Up down}
Sleep 100
Send {Up up}
Sleep 200
Send {Up down}
Sleep 100
Send {Up up}
Sleep 200

; enter save
Send {x down}
Sleep 100
Send {x up}
Sleep 1000

; Go to slot 2 and enter
Send {Down down}
Sleep 100
Send {Down up}
Sleep 1000
Send {x down}
Sleep 100
Send {x up}
Sleep 1500

; select save slot
Send {x down}
Sleep 100
Send {x up}
Sleep 500

; confirm over write
Send {Up down}
Sleep 100
Send {Up up}
Sleep 250
Send {x down}
Sleep 100
Send {x up}
Sleep 600

; exit save menu
Send {c down}
Sleep 100
Send {c up}
Sleep 600
Send {c down}
Sleep 100
Send {c up}
Sleep 600

; go to exit game
Send {Down down}
Sleep 100
Send {Down up}
Sleep 400

; select exit game
Send {x down}
Sleep 100
Send {x up}
Sleep 300

; Confirm exit
Send {Up down}
Sleep 100
Send {Up up}
Sleep 300
Send {x down}
Sleep 100
Send {x up}
Sleep 300

; wait till game refreshes
Sleep 7000

; open Continue menu
Send {x down}
Sleep 100
Send {x up}
Sleep 250

; memory card load
Sleep 1500

; go down to 2nd slot
Send {Down down}
Sleep 100
Send {Down up}
Sleep 250
Send {x down}
Sleep 100
Send {x up}
Sleep 250

; wait for memory card load
Sleep 1000
Send {x down}
Sleep 100
Send {x up}
Sleep 250

; wait til game loads
Sleep 2500
Goto, F7
