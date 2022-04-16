.PHONY: build create-venv install-dependencies run-lint run-tests


create-venv:
	python3 -m venv .venv 
	. .venv/bin/activate

install-dependencies: 
	pip3 install -r requirements/$(ENV).txt

run-lint:
	flake8 src/

run-tests:
	pytest tests/
