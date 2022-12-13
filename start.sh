#! /bin/bash

* * * * * /log.sh 1000; bash log.sh
*/5 * * * * /hodor.sh 1; bash hodor.sh

## Others tries
#* * * * * /log.sh 1000
#*/5 * * * * /hodor.sh

#sudo /bin/bash -c 'echo "* * * * * echo \"hello log\" && root sudo bash $PWD/log.sh 1000" >> /etc/crontab'
#sudo /bin/bash -c 'echo "*/5 * * * * echo \"hello hodor\" && root sudo bash $PWD/hodor.sh" >> /etc/crontab'

#sudo /bin/bash -c 'echo "* * * * * root sudo bash $PWD/log.sh 1000" >> /etc/crontab'
#sudo /bin/bash -c 'echo "*/5 * * * * root sudo bash $PWD/hodor.sh" >> /etc/crontab'
