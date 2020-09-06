import inflection
import jinja2
import requests
import sys


PKG = sys.argv[1]
FNAME = sys.argv[2]

if __name__ == "__main__":
    pypi_query = requests.get(f'https://pypi.org/pypi/{PKG}/json')
    pypi_result = pypi_query.json()

    template_env = jinja2.Environment(
        loader=jinja2.FileSystemLoader(searchpath="./")
    )

    template = template_env.get_template("python.j2")

    with open(f'./poet/{FNAME}.resources', 'r') as file:
        print(template.render(
            package_name=PKG,
            resources=file.read(),
            class_name=inflection.camelize(FNAME.replace('-', '_')),
            fname=FNAME,
            **pypi_result,
        ))
