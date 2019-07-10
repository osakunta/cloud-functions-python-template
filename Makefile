run:
	python -m src

test:
	ENV=test python -m unittest

test-coverage:
	ENV=test coverage run -m unittest

test-coverage-upload:
	ENV=test coverage run -m unittest
	coverage xml
	python-codacy-coverage -r coverage.xml

dev-install:
	sudo apt update
	sudo apt install -y python3.7
	virtualenv --python=/usr/bin/python3.7 venv
	. venv/bin/activate
	pip install pipenv
	pipenv install --dev
