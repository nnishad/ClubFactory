$digits = 50
For $i = 1 To $digits
$CMD = '"C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"'&  ' https://www.clubfactory.com/home.html '
Run(@ComSpec & " /c " & $CMD,"", @SW_HIDE )
WinWaitActive("Online Shopping Site for Fashion Clothes, Shoes, Bags, Jewelry, Mobile Accessories and more - Club Factory - Google Chrome")
Sleep (5000)
Send("{TAB 10}{ENTER}")
MouseClick ("left", 1178,502)
MouseClick ("left", 1162,423)
$iLen = 12
$sStr = ""
Do
   $sHold = Chr(Random(48, 122, 1))
   If StringRegExp($sHold, "(?i)[a-z0-9]") Then $sStr &= $sHold
Until StringLen($sStr) = $iLen
$email=$sStr & '@gmail.com'
Send($email)
Send("{TAB}")
$iLen = 12
$sStr = ""
Do
   $sHold = Chr(Random(48, 122, 1))
   If StringRegExp($sHold, "(?i)[a-z0-9]") Then $sStr &= $sHold
Until StringLen($sStr) = $iLen
Send($sStr)
MouseClick ("left", 1162,601)
Sleep(1000)
MouseClick ("left", 1104,63)
MouseClick ("left", 1104,270)
MouseClick ("left", 1104,640)
MouseClick ("left", 1104,640)
Sleep(1000)
Send("^W")
Run('C:\Windows\Notepad.exe "D:\club.txt" ')

WinWaitActive("club.txt - Notepad")

Send($email)
Send("{TAB}")
Send($sStr)
Send("{ENTER}")

Send("!f")

Send("s")

WinClose("club.txt - Notepad", "")



Next

;script by Nikhil Nishad
