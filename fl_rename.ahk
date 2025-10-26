#Persistent
SetTimer, CheckAndRename, 1000  ; check every second
return

CheckAndRename:
    SetTitleMatchMode, 2  ; partial match
    WinGet, id, list, FL Studio
    Loop, %id%
    {
        this_id := id%A_Index%
        WinGetTitle, currentTitle, ahk_id %this_id%
        if (InStr(currentTitle, "FL Studio by ADZ") = 0) {
            WinSetTitle, ahk_id %this_id%, , FL by ADZ
        }
    }
return

