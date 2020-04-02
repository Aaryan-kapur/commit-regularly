:: replace path with your folder path/ If you are placing this file inside local repository folder, remove this line completely
cd "path"
set count=0
:loop
    set /a count=%count%+1
    git pull
    git add .
    :: Currently the commit message is edit-number you can change this!
    git commit -m "edit-%count%"
    git push
    echo Completed %count%, restarting
    ::Determines time between 2 commits, currently it is every 30 seconds, you can change this!
    TIMEOUT 10
goto loop
