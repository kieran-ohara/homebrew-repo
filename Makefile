.DEFAULT_GOAL := default
PACKAGE_NAME=dockerfile-language-server-nodejs

venv: requirements.txt
	virtualenv -p python3 $@
	venv/bin/pip install -r $<

Formula/node-%.rb: node_formula.py node.j2 venv
	venv/bin/python $< $(PACKAGE_NAME) $* > $@

Formula/python-%.rb: python_formula.py poet/%.resources python.j2 venv
	venv/bin/python $< $(PACKAGE_NAME) $* > $@

poet/%-venv:
	mkdir $(@D)
	virtualenv -p python3 $@

poet/%.resources: poet/%-venv
	$</bin/pip install $* homebrew-pypi-poet
	$</bin/poet $* > $@
