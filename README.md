# ⚠️ WARNING ⚠️

This is an example application and is not ready for actual usage.

# python-todo-crud-example

[![CI/CD](https://github.com/loganmarchione/python-todo-crud-example/actions/workflows/main.yml/badge.svg)](https://github.com/loganmarchione/python-todo-crud-example/actions/workflows/main.yml)

An example Python CRUD (Create, Read, Update, Delete) to-do application using FastAPI
  - Source code: [GitHub](https://github.com/loganmarchione/python-todo-crud-example)
  - Image base: [Python (slim Buster)](https://hub.docker.com/_/python)
  - Init system: N/A
  - Application: N/A
  - Architecture: `linux/amd64`

## Explanation

  - My attempt to learn FastAPI and CRUD.
  - Based on [this](https://www.gormanalysis.com/blog/building-a-simple-crud-application-with-fastapi/#refactoring) blog post.

## Requirements
N/A

## Docker image information

### Environment variables
N/A

### Ports
| Port on host              | Port in container | Comments                |
|---------------------------|-------------------|-------------------------|
| Choose at your discretion | 8000              | Uvicorn (web interface) |

### Volumes
| Volume on host            | Volume in container          | Comments                           |
|---------------------------|------------------------------|------------------------------------|
| Choose at your discretion | /usr/src/app/data            | Used to store SQLite database      |

### Example usage

#### Build

```
git clone https://github.com/loganmarchione/python-todo-crud-example.git
cd python-todo-crud-example
sudo docker build --no-cache --file Dockerfile --tag loganmarchione/python-todo-crud-example  .
```

#### Run

```
sudo docker run --name python-todo-crud-example \
  -p 8000:8000 \
  --volume 'sqlite_db:/usr/src/app/data' \
  loganmarchione/python-todo-crud-example
```

Below is an example of running locally (used to edit/test/debug).

```
python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
uvicorn --app-dir src main:app --reload
# Page will be available at http://127.0.0.1:8000
# Docs will be available at http://127.0.0.1:8000/docs
# Use the command below to exit the venv AFTER you're done running
deactivate
```
