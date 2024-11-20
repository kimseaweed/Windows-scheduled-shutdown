@echo off

:: 창 크기
mode con: cols=60 lines=7

:: 몇 분 뒤 종료할지 입력 받는 부분
echo.
echo 몇 분 뒤 종료하시겠습니까?
set /p minutes= 입력 :  
set /a seconds=%minutes%*60
set /a original_seconds=%seconds%


:countdown
set /a seconds=%seconds%-1

:: 분과 초로 변환하여 출력
set /a remaining_minutes=%seconds% / 60
set /a remaining_seconds=%seconds% %% 60

:: 남은 시간 출력
cls
echo.
echo 남은 시간: %remaining_minutes% 분 %remaining_seconds% 초

:: 1초 대기
timeout /t 1 >nul

:: 종료까지 계속해서 반복
if %seconds% geq 0 (
    goto countdown
)


:: 타이머가 완료되면 즉시 종료
shutdown /s /f /t 0
