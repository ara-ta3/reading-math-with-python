run: venv/bin/jupyter
	$< notebook

venv/bin/jupyter: venv/bin/pip
	$< install -r requirements.txt

venv/bin/pip: venv

venv:
	virtualenv -p python3 $@
