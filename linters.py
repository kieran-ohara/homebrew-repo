from prettytable import PrettyTable

LINTERS = {
    'coala': {
        'description': 'Wrapper of code linters and fixers for various languages, including Python. Written in Python. Wraps',
        'stars': 3000,
        'group': ['bandit', 'isort', 'mypy', 'pycodestyle', 'pydocstyle', 'pyflakes', 'pylint', 'pyroma', 'radon', 'vulture', 'yapf'],
        'type': 'wrapper',
    },
    'pyls':{
        'group':['autopep8', 'mccbae', 'pycodestyle', 'pydocstyle', 'pyflakes', 'pylint', 'yapf'],
        'type': 'langserver',
    },
    'yala': {
        'group':['flake8', 'isort', 'pycodestyle', 'pydocstyle', 'pyflakes', 'pylint', 'radon'],
        'type': 'wrapper',
    },
    'prospector': {
        'type': 'wrapper',
        'group': ['dodgy', 'frosted', 'mccabe', 'pycodestyle', 'pydocstyle', 'pyflakes', 'pylint', 'pyroma', 'vulture']
    },
    'pylama': {
        'type': 'wrapper',
        'group': ['mccabe', 'pycodestyle', 'pydocstyle', 'pyflakes', 'pylint', 'radon']
    },
    'ciocheck': {
        'type': 'wrapper',
        'group': ['autopep8', 'flake8', 'isort', 'pep8', 'pydocstyle', 'pylint', 'pytest-cov', 'yapf']
    },
    'wemake-python-sytleguide': {
        'type': 'wrapper',
        'group': ['flake8', 'flake8-bugbear', 'eradicate', 'isort', 'mccabe', 'jones-complexity']
    },
    'flake8' : {
        'type': 'wrapper',
        'group': ['pyflakes', 'pycodestyle', 'mccabe']
    },
    'pylint' : {
        'type': 'general',
    },
    'flake8-bugbear': {
        'type': 'general',
    },
    'pycodestyle': {
        'type': 'general',
    },
    'pyflakes': {
        'type': 'general',
    },
    'vulture' : {
        'type': 'general',
    },
    'pydiatra' : {
        'type': 'general',
    },
    'redbaron': {
        'type': 'general',
    },
    'inspectortiger' : {
        'type': 'general',
    },
    'mypy': {
        'type': 'type-checker'
    },
    'pyre': {
        'type': 'type-checker'
    },
    'pyright': {
        'type': 'type-checker'
    },
    'isort': {
        'type': 'imports-ordering'
    },
    'flake8-import-order': {
        'type': 'imports-ordering'
    },
    'flake-mypy': {
        'type': 'imports-ordering'
    },
    'pep8-naming': {
        'type': 'naming',
    },
    'pycycle': {
        'type': 'circular-imports',
    },
    'pydocstyle': {
        'type': 'documentation',
    },
    'safety': {
        'type': 'security',
    },
    'bandit': {
        'type': 'security',
    },
    'dodgy': {
        'type': 'security',
    },
    'dlint': {
        'type': 'security',
    },
    'mccabe': {
        'type': 'complexity',
    },
    'radon': {
        'type': 'complexity',
    },
    'xenon': {
        'type': 'complexity',
    },
}

ALE_LINTERS = [
    'bandit',
    'flake8',
    'mypy',
    'prospector',
    'pycodestyle',
    'pydocstyle',
    'pyflakes',
    'pylama',
    'pylint',
    'pyls',
    'pyre',
    'pyright',
    'vulture'
]

def linter_in_wrapper(linter_name, wrapper_name, linters=LINTERS):
    included_in = linters[linter_name].get("included_in")
    if not included_in:
        return False
    return wrapper_name in included_in

def supported_by_ale(linter_name):
    return linter_name in ALE_LINTERS

if __name__ == "__main__":

    for this_linter_name, this_linter in LINTERS.items():
        for other_linter_name, other_linter in LINTERS.items():
            if other_linter.get("group"):
                if this_linter_name in other_linter["group"]:
                    if this_linter.get("included_in"):
                        LINTERS[this_linter_name]["included_in"].append(other_linter_name)
                    else:
                        LINTERS[this_linter_name]["included_in"] = [other_linter_name]

    wrapper_groups = list({x for x,y in LINTERS.items() if y.get('type') == 'wrapper' and x in ALE_LINTERS })

    x = PrettyTable()
    headers = ['tool', 'type', 'supported by ale'] + wrapper_groups
    x.field_names = headers
    for linter_name, linter in LINTERS.items():
        if linter.get("included_in"):
            row = [linter_name, linter['type'], 'x' if supported_by_ale(linter_name) else '']
            for wrapper in wrapper_groups:
                if wrapper in linter["included_in"]:
                    row.append('x')
                else:
                    row.append('')
            x.add_row(row)
    print(x)

    not_in_prospector = [
        linter_name for linter_name in LINTERS.keys()
        if supported_by_ale(linter_name) and not linter_in_wrapper(linter_name, 'prospector')
     ]
    y = PrettyTable()
    y.field_names = ['tool', 'type']
    for linter in not_in_prospector:
        y.add_row([linter, LINTERS[linter].get('type')])
    print(y)
