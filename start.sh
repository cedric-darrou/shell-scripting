#! /bin/bash
#* * * * * /log.sh 1000
#*/5 * * * * /hodor.sh

sudo /bin/bash -c 'echo "* * * * * echo \"hello log\" && root $PWD/log.sh 1000" >> /etc/crontab'
sudo /bin/bash -c 'echo "*/5 * * * * echo \"hello hodor\" && root $PWD/hodor.sh" >> /etc/crontab'
