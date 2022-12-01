; ====================================================
; =========== Atbash String Converter CLI ============
; ====================================================
; AutoIt version: 3.3.12.0
; Language:       English
; Author:         Pedro F. Albanese
; Modified:       -
;
; ----------------------------------------------------------------------------
; Script Start
; ----------------------------------------------------------------------------

#NoTrayIcon

If $CmdLineRaw == "" Then
	ConsoleWrite("Atbash ALBANESE Research Lab " & Chr(184) & " 2016" & @CRLF) ;
	ConsoleWrite("Usage: " & @ScriptName & " <string/file.ext>" & @CRLF) ;
Else
	If $CmdLine[1] == '-' Then
		Local $sOutput
		While True
			$sOutput &= ConsoleRead()
			If @error Then ExitLoop
			Sleep(25)
		WEnd
		$full = StringReplace($sOutput, @CRLF, '')
		$full = StringReplace($full, @LF, '')
		ConsoleWrite(atbash($full))
	ElseIf $CmdLine[1] <> '-' Then
		If FileExists($CmdLine[1]) Then
			$full = FileRead($CmdLine[1])
		Else
			$full = $CmdLine[1]
		EndIf
		ConsoleWrite(atbash($full))
	EndIf
EndIf
Exit

Func atbash($text)
	$letters = StringSplit(StringReplace($text, " ", ""), "")
	$max = $letters[0] + 1
	Dim $convert[$max]
	Dim $output[$max]
	$atbash = ""
	For $i = 1 To $letters[0] Step 1
		$convert[$i] = Asc($letters[$i])
		If $convert[$i] > 64 And $convert[$i] < 91 Then
			$output[$i] = 91 - $convert[$i] + 64
		ElseIf $convert[$i] > 96 And $convert[$i] < 123 Then
			$output[$i] = 123 - $convert[$i] + 96
		Else
			$output[$i] = $convert[$i]
		EndIf
		$output[$i] = Chr($output[$i])
		$atbash = $atbash & $output[$i]
	Next
	Return $atbash
EndFunc   ;==>atbash
