#!/bin/bash
#For Kali Linux (includes openvas-start and openvas-stop scripts).
#Fixes missing vulnerabilities (identificators in report instead of names)

openvasmd --update --progress
openvasmd --rebuild --progress
sleep 2
openvas-stop
sleep 5
openvas-start
