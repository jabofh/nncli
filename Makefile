.POSIX:

.PHONY: clean clean-test clean-pyc clean-build help lint coverage coverage-html release dist install run debug docs

BROWSER := firefox

dist:
	flit build

clean: clean-build clean-pyc clean-test
	make -C docs clean

clean-build:
	rm -fr build/
	rm -fr dist/
	rm -fr .eggs/
	find . -name '*.egg-info' -exec rm -fr {} +
	find . -name '*.egg' -exec rm -f {} +

clean-pyc:
	find . -name '*.pyc' -exec rm -f {} +
	find . -name '*.pyo' -exec rm -f {} +
	find . -name '*~' -exec rm -f {} +
	find . -name '__pycache__' -exec rm -fr {} +
	pip uninstall -y nncli

clean-test:
	rm -f .coverage
	rm -fr htmlcov/
	rm -fr .pytest_cache
	rm -fr .tox

lint:
	pylint nncli tests --disable=parse-error
	vulture nncli .vulture_whitelist.py

test:
	python -m pytest

test-all:
	tox

coverage:
	python -m pytest --cov=nncli

coverage-html: coverage
	coverage html
	$(BROWSER) htmlcov/index.html

release: dist
	twine upload -s dist/*

dist:
	flit build

docs:
	make -C docs html
	make -C docs man
	$(BROWSER) docs/build/html/index.html

install:
	flit install --deps=none

run:
	python -m nncli $(cmd)

debug: install
	pudb3 $$(which nncli) $(cmd)
