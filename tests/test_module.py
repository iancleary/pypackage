# package imports
from {{cookiecutter.project_name}}.module import Human


def test_human():
    jon_snow = Human(name="Jon Snow")
    assert isinstance(jon_snow, Human) == True
