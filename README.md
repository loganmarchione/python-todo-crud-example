# python-todo-crud-example

### Example usage

#### Build

```
git clone https://github.com/loganmarchione/python-todo-crud-example.git
cd python-todo-crud-example
sudo docker build --no-cache --file Dockerfile --tag loganmarchione/python-todo-crud-example  .
```

#### Run
Page will be available **only** over HTTPS at `https://YOUR_IP_ADDRESS:PORT_YOU_CHOSE` (there will be a self-signed certificate from Flask).

```
sudo docker run --name python-todo-crud-example \
  -p 8000:80 \
  --volume 'sqlite_db:/usr/src/app/data' \
  loganmarchione/python-todo-crud-example
```

Below is an example of running locally (used to edit/test/debug).
```
python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
uvicorn --app-dir src main:app --reload
```

Open http://127.0.0.1:8000/. Access the FastAPI docs at http://127.0.0.1:8000/docs.

Use the command below to exit the venv AFTER you're done running.

```
deactivate
```

# Source

Based on [this](https://www.gormanalysis.com/blog/building-a-simple-crud-application-with-fastapi/#refactoring) blog post
