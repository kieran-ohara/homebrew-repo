from IPython import embed
import inflection
import jinja2
import requests
import hashlib
import sys

PKG = sys.argv[1]
FNAME = sys.argv[2]

if __name__ == "__main__":
    npm_query = requests.get(f'https://api.npms.io/v2/search?q={PKG}')
    npm_search_result = npm_query.json()["results"][0]["package"]

    templateEnv = jinja2.Environment(
        loader=jinja2.FileSystemLoader(searchpath="./")
    )

    template = templateEnv.get_template("node.j2")

    download_url = f"https://registry.npmjs.org/{PKG}/-/{PKG}-{npm_search_result['version']}.tgz"
    download = requests.get(download_url, stream=True)
    sha256_hash = hashlib.sha256(download.raw.read()).hexdigest()

    print(template.render(
        package_name=PKG,
        url=download_url,
        sha256=sha256_hash,
        class_name=inflection.camelize(FNAME.replace('-', '_')),
        **npm_search_result
    ))
