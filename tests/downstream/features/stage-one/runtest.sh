cd ../../../..
pwd

PYTHONPATH=tests/ avocado run --test-runner=runner -t stageone tests/{cleaner,collect,report,vendor}_tests
