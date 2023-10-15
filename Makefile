install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv test_app.py

format:
	#format to comply to pep8 compliance standards
	black *.py

lint:
	#fail only if error or warning. ignore verbose
	pylint --disable=R,C app.py

all: install lint test