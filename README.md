# testing-poc
Testing Framework PoC 

## Setup

```
python3 -m venv env
source env/bin/activate
pip install --upgrade pip
pip install robotframework
```

Check version:
```
python -m robot --version
```

Create simple robot file: `tests/test_case_01.robot` with content: 
```
*** Settings ***
Documentation     A test suite with a single test for example.

***Test Cases***

First Test Action  log  this is a basic test
```

Run tests:
```
python -m robot tests
# or 
robot tests
```
