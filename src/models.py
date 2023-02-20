from sqlalchemy import Column, Integer, String
from database import Base
from sqlalchemy.dialects.sqlite import BOOLEAN


class ToDo(Base):
    __tablename__ = 'todo'
    id = Column(Integer, primary_key=True)
    task = Column(String)
    is_done = Column(Boolean, default=False)
