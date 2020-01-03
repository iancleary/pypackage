from setuptools import setup
from setuptools import find_packages
from distutils import util

setup(name='{{cookiecutter.package_name}}',
      version='{{cookiecutter.version}}',
      description='{{cookiecutter.package_short_description}}',
      author='{{cookiecutter.full_name}}',
      package_data={'': ['Readme.md']},
      include_package_data=True,
      license="MIT",
      packages=find_packages(),
      install_requires=[],
      )
