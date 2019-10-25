## AHK教程

### ★功能

autohotkey 的用途
1. 一键启动指定程序和文件（可批量）
2. 自定义快捷短语（可保留格式）
3. 重新映射键盘,鼠标，游戏杆的按扭
4. 发送预设指令自动化所有操作

### ★使用方法

注意事项：
1. 直接启动编辑好的.ahk文件启动
2. 用 txt文本打开.ahk项目修改保存后需要，需要重启才能生效

### 语法规则

特殊按键代码：程序流程化

| alt  | ctrl | shift | win  | space |
| ---- | ---- | ----- | ---- | ----- |
| !    | ^    | +     | #    |       |


### 输写规则

单行写法
```
#g:: run, chrome
```

多行写法

```
#g:: run, chrome
return
#h:: run, chrome.exe
return
#c:: run,"C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
```

>  一个AHK文件中定入多行命令，一条命令结束后，要用行首的return结束；


  ### 注释
  由于脚本运行时会忽略注释, 所以它们不会影响脚本性能或占用内存.单行注释

 方法一

```
;win+s 打开tc软件
#s::run "E:\totalcmd\TOTALCMD64.EXE"
```

方法二
```
#s::run "E:\totalcmd\TOTALCMD64.EXE" ;win+s 打开tc软件
```

#### 多行注释，注意不能写成一行的：

```
/*
win+s 打开tc软件
*/
#s::run "E:\totalcmd\TOTALCMD64.EXE"
```

新建一个.ahk文件，用txt程序打开输入以下代码：
用法：

```
!g::
run, “C:\Program Files (x86)\Mozilla Firefox\firefox.exe” www.google.com.hk
```

### ★基础实例

#### 1）一键启动

启动程序/网址/文档

```
;一键启动多个软件
#n::
run notepad
run calc
return

;一键打开网址
!g:
run, https://www.google.com.hk
return

;一键打开文件夹
!m:
run, "G:\images\images"
```

#### 2）自定义快捷短语

```
;自定义快捷短语
::c@g::chrome@gmail.com
::tui::tuihou123321
::tcd::Total Comander

;中文要用剪贴板的方法实现,并且编码要用utf-8，建议记事本打开
::jjzx::
text = 深圳前海价值在线金融服务股份有限公司
clipboard = %text%
Send ^v
return
```

升级版autohotkey_L支持中文
(XP系统下AHK_L发送中文，要关闭360的驱动防火墙！)

#### 3）指定浏览器登陆网络账号

```
run, "firefox.exe" http://mail.163.com
sleep, 5000 ;保险起见，再等5秒（视网速）
send, {Backspace 10}zghybn@163.com{tab}hybnzg{enter} ;删除已保存的用户名，模拟键入用户名、密码、回车
return
```

### 4) 重新映射按键

```
F6::^c
F7::^x
```
说明 ：F6定义为ctrl+c复制，F7定义为ctrl+x粘贴。



### ★综合实例

只打开一个chrome

```
#g::
DetectHiddenWindows, On
SetTitleMatchMode, 2
WinGet, winid, ID, Google Chrome
;MsgBox,%winid%
SetTitleMatchMode, 1
If (winid) {
WinWait, ahk_id %winid%
WinShow
WinActivate
ControlFocus, EditComponent2, A
ControlSetText, EditComponent2,, A
}else{
RunOrActivateProgram("C:\Users\default\AppData\Local\Google\Chrome\Application\chrome.exe --enable-benchmarking")
}
DetectHiddenWindows, Off
return
```



#### 打开隐藏在托盘中的旺旺

```
#Q::
DetectHiddenWindows, On
SetTitleMatchMode, 2
WinGet, winid, ID, `阿`里`旺`旺
;MsgBox,%winid%
SetTitleMatchMode, 1
If (winid) {
WinWait, ahk_id %winid%
WinShow
WinActivate
ControlFocus, EditComponent2, A
ControlSetText, EditComponent2,, A
}else{
RunOrActivateProgram("D:\Program Files\AliWangWang\AliIM.exe")
}
DetectHiddenWindows, Off
return
```

#### 一键登陆网站

```
run, http://mail.163.com
WinActivate, firefox ;防止窗口不激活
winwait, 网易 ;等待网页加载成功（至少title显示出来）
sleep, 500 ;保险起见，再等0.5秒（视网速）
send, zghybn@163.com{tab}hybnzg{enter} ;模拟键入用户名、密码、回车
return
```
