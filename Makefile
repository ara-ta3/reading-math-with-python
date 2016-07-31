run: venv/bin/jupyter
	PATH=venv/bin:$$PATH $< notebook

install: venv/bin/pip
	$< install -r requirements.txt

venv/bin/jupyter: venv/bin/pip install

venv/bin/pip: venv

venv:
	virtualenv -p python3 $@
