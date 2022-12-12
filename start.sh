#!/bin/bash
crontab -e * * * * * log.sh 
crontab -e */5 * * * * hordor.sh 