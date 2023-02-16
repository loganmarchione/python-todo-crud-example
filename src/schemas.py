from pydantic import BaseModel


# Create ToDo Schema (Pydantic Model)
class ToDoCreate(BaseModel):
    task: str
    is_done: bool = False


# Complete ToDo Schema (Pydantic Model)
class ToDo(BaseModel):
    id: int
    task: str
    is_done: bool

    class Config:
        orm_mode = True
