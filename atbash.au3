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
		if FileExists($CmdLine[1]) Then
			$full = FileRead($CmdLine[1])
		Else
			$full = $CmdLine[1]
		EndIf
		ConsoleWrite(atbash($full))
	EndIf
EndIf
Exit

func atbash($text)
    $letters = StringSplit(stringreplace($text, " ", ""), "")
    $max = $letters[0] + 1
    dim $convert[$max]
    dim $output[$max]
    $atbash = ""
    For $i = 1 To $letters[0] step 1
        $convert[$i] = asc ($letters[$i])
        if $convert[$i] > 64 and $convert[$i] < 91 Then
            $output[$i] = 91 - $convert[$i] + 64
        ElseIf $convert[$i] > 96 and $convert[$i] < 123 Then
            $output[$i] = 123 - $convert[$i] + 96
        Else
            $output[$i] = $convert[$i]
        EndIf
        $output[$i] = chr($output[$i])
        $atbash = $atbash & $output[$i]
    Next
    return $atbash
EndFunc