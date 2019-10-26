/*
定位微信到联系人目录
*/
!q::
Send #r
sleep, 50  ;这里一定要加一个延迟才行，光标有个移动过程
Send {Esc}
Click 2123, 219
return


/*
定位微信聊天页面
*/
!e::
Send #r
sleep, 50  ;这里一定要加一个延迟才行，光标有个移动过程
Send {Esc}
Click 2373, 1006
return



/*
定位到微信搜索栏，页面会闪一下？
*/
/*
#c::
Send #r
sleep, 50  ;这里一定要加一个延迟才行，光标有个移动过程
Send {Esc}
Click 2028, 34
return
*/


/*
测试代码：定位知乎搜索框
*/
/*
#s::
Send #r
sleep, 50  ;这里一定要加一个延迟才行，光标有个移动过程
Send {Esc}
Click 1044, 103 ;知乎搜索栏坐标
return
*/









