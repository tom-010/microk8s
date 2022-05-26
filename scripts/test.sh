#!/bin/bash

set -e

echo ""
echo "+---------------------------------------------+"
echo "|  reset the machine to a fresh installation  |"
echo "+---------------------------------------------+"
./scripts/vagrant/reset.sh


echo ""
echo "+--------------------------+"
echo "|  provision the machine   |"
echo "+--------------------------+"
./scripts/ansible/apply.sh

echo ""
echo "+------------------------------------------------------------+"
echo "|  run the tests from this machine to test the test-machine  |"
echo "+------------------------------------------------------------+"

export PYTHONPATH=.
export URL='http://'
source env/bin/activate

pytest . ${@:1}

echo "ok"