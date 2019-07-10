dev-install:
	sudo apt update
	sudo apt install -y python3.7
	virtualenv --python=/usr/bin/python3.7 venv
	. venv/bin/activate
	pip install pipenv
	pipenv install --dev
