::btw::
MsgBox You typed "btw".  //MsgBox弹出信息
return

::jq::this is `n jque`n ry  ;空格

:*:cdn-jq:: this is `n jquery  ; *号，不需要终止符（空格，句点，回车）来触发热字符串

:?:al::airline  ;只要出现al自动拼接, 替换

:*b0:abc::123456{left 2}   ;*b0 指令输入abc指令后自动向把光标向左移动2格；


::text1::
(
Any text between the top and bottom parentheses is treated literally, including commas and percent signs.
By default, the hard carriage return (Enter) between the previous line and this one is also preserved.
    By default, the indentation (tab) to the left of this line is preserved.

See continuation section for how to change these default behaviors.
)
; 超长片段，保持格式不变；

#IfWinActive ahk_class Notepad
::btw2::This replacement text will appear only in Notepad.
#IfWinActive
::btw2::This replacement text appears in windows other than Notepad.







