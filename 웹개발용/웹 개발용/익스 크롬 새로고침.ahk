;Gui, Add, Text, , 익스 새로고침 F6                           
Gui, Add, Text, ,파폭 익스 크롬 새로고침 F6

Gui, Show, x100 y 100 w200, 테스트


;===========================================================================================
;===========================이벤트 처리 =====================================================
;===========================================================================================




F6::
{
	; 크롬 새로 고침
	ControlFocus, Chrome_RenderWidgetHostHWND1, ahk_exe Chrome.exe
	ControlSend, Chrome_RenderWidgetHostHWND1, ^ {F5}, ahk_exe chrome.exe
	
	; 익스 새로 고침
	ControlSend, ,^ {F5}, ahk_exe iexplore.exe
	ControlSend, Chrome_RenderWidgetHostHWND1, ^ {F5}, ahk_exe chrome.exe
	; 파폭 새로 고침
	ControlSend, ,^ {F5}, ahk_exe firefox.exe
	return
	
	
}
GuiClose:
{
	ExitApp
	return
}

