# Collect sos reports for failed tests
set -x
touch foobar.txt
ls -d /var/tmp/avocado* /root/avocado* > foobar.txt

rpm -qa tar >> foobar.txt
rpm -qa xargs >> foobar.txt
ls -d /var/tmp/avocado* /root/avocado* 2> /dev/null | xargs tar -cf sos-fail-logs.tar

cp sos-fail-logs.tar $TMT_PLAN_DATA/

set +x
