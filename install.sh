#! /bin/bash 

# We're installing httperf, so it requires root to run.
if [[ $EUID -ne 0]]
then:
  echo "Script requires root to run"
  exit
fi
echo "Installing stress tester"

# Install httperf and enable running the stress tester as an executable.
apt-get install httperf
chmod +x ./stress.sh

echo "Usage: ./stress.sh <server-ip>"
