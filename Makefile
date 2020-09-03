all: lint syntax-check

setup:
	pip install -r requirements.txt
	ansible-galaxy install -r galaxy-requirements.yml --roles-path ./galaxy_roles --force

syntax-check:
	./scripts/syntax_check.sh

lint: yamllint ansible-lint

yamllint:
	yamllint -c .yamllint.yml ./

ansible-lint:
	ansible-lint ./
