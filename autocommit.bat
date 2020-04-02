cd <path>
set count=0
:loop
    set /a count=%count%+1
    git pull
    git add .
    git commit -m "edit-%count%"
    git push
    echo Completed %count%, restarting
    TIMEOUT 30
goto loop
