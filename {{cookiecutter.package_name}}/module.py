from pydantic import BaseModel


class Human(BaseModel):
    name: str
