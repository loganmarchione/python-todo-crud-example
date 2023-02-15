# python-todo-crud-example

## Installation

```
python -m venv .venv
source .venv/bin/activate

pip install -r requirements.txt

# use the command below to exit the venv AFTER you're done running
deactivate
```

## Running

Run the app with the command below, then open http://127.0.0.1:8000/
```
uvicorn main:app --reload
```

Access the FastAPI docs at http://127.0.0.1:8000/docs


# Source

Based on [this](https://www.gormanalysis.com/blog/building-a-simple-crud-application-with-fastapi/#refactoring) blog post
