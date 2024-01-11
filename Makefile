install:
	pip install --upgrade pip && pip install -r requirements.txt

format:
	#format code
	black *.py mylib/*.py

lint:
	#linter using flake8 or pylint
	pylint --disable=R,C *.py mylib/*.py

test:
	#test
	python -m pytest -vv --cov=mylib test_logic.py

deploy:
	#deploy

all: install format lint test deploy