@echo off

:: â ũ��
mode con: cols=60 lines=7

:: �� �� �� �������� �Է� �޴� �κ�
echo.
echo �� �� �� �����Ͻðڽ��ϱ�?
set /p minutes= �Է� :  
set /a seconds=%minutes%*60
set /a original_seconds=%seconds%


:countdown
set /a seconds=%seconds%-1

:: �а� �ʷ� ��ȯ�Ͽ� ���
set /a remaining_minutes=%seconds% / 60
set /a remaining_seconds=%seconds% %% 60

:: ���� �ð� ���
cls
echo.
echo ���� �ð�: %remaining_minutes% �� %remaining_seconds% ��

:: 1�� ���
timeout /t 1 >nul

:: ������� ����ؼ� �ݺ�
if %seconds% geq 0 (
    goto countdown
)


:: Ÿ�̸Ӱ� �Ϸ�Ǹ� ��� ����
shutdown /s /f /t 0
