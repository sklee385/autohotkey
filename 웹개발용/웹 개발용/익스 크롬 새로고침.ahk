;Gui, Add, Text, , �ͽ� ���ΰ�ħ F6                           
Gui, Add, Text, ,���� �ͽ� ũ�� ���ΰ�ħ F6

Gui, Show, x100 y 100 w200, �׽�Ʈ


;===========================================================================================
;===========================�̺�Ʈ ó�� =====================================================
;===========================================================================================




F6::
{
	; ũ�� ���� ��ħ
	ControlFocus, Chrome_RenderWidgetHostHWND1, ahk_exe Chrome.exe
	ControlSend, Chrome_RenderWidgetHostHWND1, ^ {F5}, ahk_exe chrome.exe
	
	; �ͽ� ���� ��ħ
	ControlSend, ,^ {F5}, ahk_exe iexplore.exe
	ControlSend, Chrome_RenderWidgetHostHWND1, ^ {F5}, ahk_exe chrome.exe
	; ���� ���� ��ħ
	ControlSend, ,^ {F5}, ahk_exe firefox.exe
	return
	
	
}
GuiClose:
{
	ExitApp
	return
}

