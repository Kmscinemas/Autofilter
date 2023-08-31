if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Kmscinemas/Autofilter/KMSCinemas-BOT 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /KMSCinemas-BOT 
fi
cd /KMSCinemas-Bot 
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
