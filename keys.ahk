; NOTE: all of this shortcuts are used in a PTB2 keyboard by me. Some things may be different in other languages.

#Requires AutoHotkey v2.0
#Include "KeyChord/KeyChord.ahk"    

; not sure why, but this makes the Ctrl + CapsLock shortcut work for turning CapsLock on
+CapsLock::CapsLock
CapsLock::Ctrl

; not used shortcuts, so they don't accidentaly activate the CapsLock
CapsLock & w::SendText ""
CapsLock & r::SendText ""
CapsLock & t::SendText ""
CapsLock & a::SendText ""
CapsLock & s::SendText ""
CapsLock & d::SendText ""
CapsLock & f::SendText ""
CapsLock & g::SendText ""
CapsLock & \::SendText ""
CapsLock & z::SendText ""
CapsLock & x::SendText ""
CapsLock & c::SendText ""
CapsLock & v::SendText ""
CapsLock & b::SendText ""
CapsLock & n::SendText ""
CapsLock & m::SendText ""
CapsLock & ç::SendText ""
CapsLock & p::SendText ""
CapsLock & ^::SendText ""   ; this is the ~ (tilde), otherwise ahk will complain
CapsLock & Space::SendText " "

; remapping symbols to use CapsLock as a "shift" with them
CapsLock & i::SendText "="
CapsLock & u::SendText '"'	; different so it can send the " symbol
CapsLock & y::SendText "'"
CapsLock & j::SendText "_"
CapsLock & k::SendText "("
CapsLock & l::SendText ")"
CapsLock & h::SendText "/"
CapsLock & `;::SendText ":" ; differente because the ; symbol is used as comments here
CapsLock & ,::SendText "<"
CapsLock & .::SendText ">"
CapsLock & ´::SendText "``" ; send only one ` symbol

; sometimes I use CapsLock when I wanted to use shift, so this helps avoiding mistakes
CapsLock & 1::SendText "!"
CapsLock & 2::SendText "@"
CapsLock & 3::SendText "#"
CapsLock & 4::SendText "$"
CapsLock & 5::SendText "%"
CapsLock & 6::SendText "¨"
CapsLock & 7::SendText "&"
CapsLock & 8::SendText "*"
CapsLock & 9::SendText "("
CapsLock & 0::SendText ")"
CapsLock & -::SendText "_"
CapsLock & =::SendText "+"
CapsLock & [::SendText "{"
CapsLock & ]::SendText "}"

; some different commands
CapsLock & e::SendText "-exec "

; ctrl + windows: remapping some keys to use arrows as vim (not very useful, but it's there)
<^#h::Left
<^#j::Down
<^#k::Up
<^#l::Right

textChord := KeyChord()
    textChord.AddActions(
        {
            Key: "c",
            Command: () => SendText("Sends some text"),
            Condition: () => True,
            Description: "Something" 
        },
        {
            Key: "g",
            Command: () => SendText("Sends some other text"),
            Condition: () => True,
            Description: "Something else" 
        },
        {
            Key: "w",
            Command: () => Run("wordpad"), ; example of running something with those key chords
            Condition: () => True,
            Description: "WordPad" 
        },
    )

; this makes the key chord start when I press Alt (right) + p, and them I am able to select one of the options
^>!p::KCManager.Execute(textChord)