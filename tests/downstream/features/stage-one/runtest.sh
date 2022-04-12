tier: 0
tests:
  - name: /stage/unit-tests
    test: PYTHONPATH=. avocado run tests/unittests/
  - name: /stage/one
    test: PYTHONPATH=tests/ avocado run --test-runner=runner -t stageone tests/{cleaner,collect,report,vendor}_tests
