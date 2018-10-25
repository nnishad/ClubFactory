#include <FileConstants.au3>
#include <MsgBoxConstants.au3>
#include <WinAPIFiles.au3>
; Open the file for reading and store the handle to a variable.
Local $hFileOpen = FileOpen("D:\club.txt", $FO_READ)
If $hFileOpen = -1 Then
   MsgBox($MB_SYSTEMMODAL, "", "An error occurred when reading the file.")
   Return False
EndIf
$digits = 40
For $i = 25 To $digits
$CMD = '"C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"'&  ' https://cfshare1.fromfactory.club/auth3/auth?redirect=%2Ftheme%2Fcollect_like%2Fprogress%3Fshare%3D3137875 '
Run(@ComSpec & " /c " & $CMD,"", @SW_HIDE )
WinWaitActive("Club Factory | Lower Price, Better Service - Google Chrome")
Sleep (1000)
Send("{TAB 3}{ENTER}")
Sleep (2000)
MouseClick ("left", 1256,106)
Send("{TAB}")

    ; Read the fist line of the file using the handle returned by FileOpen.
    Local $sFileRead = FileReadLine($hFileOpen, $i)
	Local $data = StringSplit($sFileRead, "	")
    Send($data[1])
	Send("{TAB}")
    Send($data[2])
    Send("{TAB}{ENTER}")
	Sleep (3000)
	MouseClick ("left", 1152,605)
 Next


;script by Nikhil Nishad
