echo "Checking available versions"
git fetch --all

currentTag=$(git tag --points-at HEAD)
echo "You are currently on $currentTag"

latestTag=$(git describe --tags $(git rev-list --tags --max-count=1))
echo "The latest release is $latestTag"

if [[ "$currentTag" = "$latestTag" ]]; then
    echo "You are up to date, press any key to exit"
    read -n 1 -s
    exit
fi

echo ""
echo "You are behind the latest release"
echo "Would you like to update?"
echo "Be aware this will remove all custom changes you have made to mod config files"
read -ep "Press y to continue update: " -n 1 char

if [[ "yY" != *$char* ]]; then
    exit
fi

echo "Beginning update"
git reset --hard $latestTag