; Memes
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; AHK Command       ; key   = Effect        (Description)

; ALT Keypress Implied for all below

!k::Send {UP}       ; k UP          (Cursor up line)
!j::Send {DOWN}     ; j DOWN            (Cursor down line)

!h::Send {LEFT}     ; h LEFT        (Cursor left one character)
!l::Send {RIGHT}    ; l RIGHT       (Cursor right one character)

;!h::Send {HOME}     ; h     ALT + RIGHT (Cursor to beginning of line)
;!l::Send {END}      ; ; ALT + LEFT  (Cursor to end of line)

!u::Send ^{HOME}    ; h     SHIFT + HOME    (Cursor to beginning of document)
!o::Send ^{END}     ; o SHIFT + END (Cursor to end of document)

; CTRL + ALT Keypress Implied for all below

!^h::Send ^{LEFT}   ; j     CTRL + LEFT (Cursor left per word)
!^l::Send ^{RIGHT}  ; l CTRL + RIGHT    (Cursor right per word)

; SHIFT + ALT Keypress Implied for all below

!+k::Send +{UP}     ; i SHIFT + UP  (Highlight per line)
!+j::Send +{DOWN}   ; k SHIFT + DOWN    (Highlight per line)

!+h::Send +{LEFT}   ; j SHIFT + LEFT    (Highlight per character)
!+l::Send +{RIGHT}  ; l SHIFT + RIGHT   (Highlight per character)
