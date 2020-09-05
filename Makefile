.DEFAULT_GOAL := default
PACKAGE_NAME=dockerfile-language-server-nodejs

venv: requirements.txt
	virtualenv -p python3 $@
	venv/bin/pip install -r $<

Formula/node-%.rb: node_formula.py node.j2 venv
	venv/bin/python $< $(PACKAGE_NAME) $* > $@
