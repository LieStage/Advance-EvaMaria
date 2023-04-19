if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/LieStage/Advance-EvaMaria /power
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /power
fi
cd /power
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
