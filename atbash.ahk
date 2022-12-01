; ====================================================
; ================ AHK Encryption GUI ================
; ====================================================
; AutoHotKey version: 1.1.35.0
; Language:           English
; Author:             Pedro F. Albanese
; Modified:           -
;
; ----------------------------------------------------------------------------
; Script Start
; ----------------------------------------------------------------------------

#NoEnv
SetBatchLines, -1
Gui, Margin, 20, 10
Gui, Font, s10, Courier New
Gui, Add, Edit, w600 r10 vInput
Gui, Font
Gui, Add, Button, gEncode, Encode
Gui, Font, s10, Courier New
Gui, Add, Edit, xm w600 r10 vResult +ReadOnly
Gui, Show, , AHK Atbash
Return

GuiClose:
ExitApp

Encode:
Gui, Submit, NoHide
GuiControl, , Result, % Atbash(Input)
Return

Atbash(str) {
	For i, v in StrSplit(str) {
		nStr .= RegExMatch(v, "[A-Z]") ? Chr(90 - Mod(Asc(v) + 13,26)) : RegExMatch(v, "[a-z]") ? Chr(122 - Mod(Asc(v) + 7, 26)) : v
	}
return nStr
}
