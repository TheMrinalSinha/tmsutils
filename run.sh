#!/bin/bash
rm -rf dist build
python setup.py sdist bdist_wheel
twine upload --repository-url https://test.pypi.org/legacy/ dist/*

# while installing:
# pip install -i https://test.pypi.org/simple/ tmsutils --extra-index-url https://pypi.org/simple

# To upload on pypi
# twine upload --repository-url https://upload.pypi.org/legacy/ dist/*

# IMP SOURCES:
# https://github.com/pypa/sampleproject
