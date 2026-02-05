#SingleInstance Force
SendMode Input

; ============================================
; FF8 Remastered - Angelo Search Farm Script
; ============================================
; Press any row hotkey to start the cycle from that row
; The script will automatically loop through all rows
; F4 = Stop current cycle (script keeps running)
; Escape = Exit script completely
;
; Row Checks:
;   Row 1: 4 checks   | Row 2: 32 checks  | Row 3: 86 checks
;   Row 4: 32 checks  | Row 5: 19 checks  | Row 6: 41 checks
;   Row 7: 1 check    | Row 8: 18 checks  | Row 9: 5 checks
;
; After Row 9, loops back to Row 1
; ============================================

; Configuration - adjust these as needed
global AngeloWaitTime := 8000  ; Time to wait for Angelo to dig and return (ms)
global KeyPressDelay := 80      ; Delay between key down and key up (ms)
global KeyReleaseDelay := 80    ; Delay between key presses (ms)
global Running := false
global SpeedBoostOn := false    ; Track 3x speed state (assumes OFF at script start)

; ============================================
; SPEED BOOST FUNCTIONS
; ============================================

; Turn speed boost OFF (for reliable input at normal speed)
DisableSpeedBoost() {
    global SpeedBoostOn
    if (SpeedBoostOn) {
        Send {F3}
        Sleep 100
        SpeedBoostOn := false
    }
}

; Turn speed boost ON (for faster waiting)
EnableSpeedBoost() {
    global SpeedBoostOn
    if (!SpeedBoostOn) {
        Send {F3}
        Sleep 100
        SpeedBoostOn := true
    }
}

; Perform a row with full timing sequence
; Flow: speed off -> 100ms -> press buttons -> 500ms -> speed on -> wait for Angelo -> 100ms
DoRow(count) {
    global Running
    if (!Running)
        return false

    ; 1. Turn speed OFF (skipped if already off)
    DisableSpeedBoost()

    ; 2. Wait 100ms settle time
    Sleep 100

    ; 3. Press buttons (within 13 second window)
    PressV(count)

    ; 4. Wait 500ms after button presses
    Sleep 500

    ; 5. Turn speed ON
    EnableSpeedBoost()

    ; 6. Wait for Angelo to appear, deliver item, bubble to disappear
    WaitForAngelo()

    ; 7. Wait 100ms settle time before next iteration
    Sleep 100

    return true
}

F4:: ; Stop current cycle (script keeps running)
    Running := false
return

Esc:: ; Exit script completely
    Running := false
    ExitApp
return

; Function to press 'v' a specified number of times
PressV(count) {
    Loop, %count%
    {
        Send {v down}
        Sleep %KeyPressDelay%
        Send {v up}
        Sleep %KeyReleaseDelay%
    }
}

; Function to wait for Angelo to complete the search
WaitForAngelo() {
    Sleep %AngeloWaitTime%
}

; ============================================
; ROW HOTKEYS - Press to start from that row
; ============================================

F5:: ; Start from Row 1
    Running := true
        Goto, Row1
return

F6:: ; Start from Row 2
    Running := true
        Goto, Row2
return

F7:: ; Start from Row 3
    Running := true
        Goto, Row3
return

F8:: ; Start from Row 4
    Running := true
        Goto, Row4
return

+F5:: ; Shift+F5 - Start from Row 5
    Running := true
        Goto, Row5
return

+F6:: ; Shift+F6 - Start from Row 6
    Running := true
        Goto, Row6
return

+F7:: ; Shift+F7 - Start from Row 7
    Running := true
        Goto, Row7
return

+F8:: ; Shift+F8 - Start from Row 8
    Running := true
        Goto, Row8
return

^+F8:: ; Ctrl+Shift+F8 - Start from Row 9
    Running := true
        Goto, Row9
return

; ============================================
; ROW EXECUTION
; ============================================
; Each row: speed off -> 100ms -> buttons -> 500ms -> speed on -> Angelo wait -> 100ms

Row1:
    if (!DoRow(4))    ; Row 1: 4 checks
        return

Row2:
    if (!DoRow(32))   ; Row 2: 32 checks
        return

Row3:
    if (!DoRow(86))   ; Row 3: 86 checks
        return

Row4:
    if (!DoRow(32))   ; Row 4: 32 checks
        return

Row5:
    if (!DoRow(19))   ; Row 5: 19 checks
        return

Row6:
    if (!DoRow(41))   ; Row 6: 41 checks
        return

Row7:
    if (!DoRow(1))    ; Row 7: 1 check
        return

Row8:
    if (!DoRow(18))   ; Row 8: 18 checks
        return

Row9:
    if (!DoRow(5))    ; Row 9: 5 checks
        return

    ; Loop back to Row 1
    Goto, Row1
return
