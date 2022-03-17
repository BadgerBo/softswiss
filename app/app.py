import os
import flask
import psycopg2

app = flask.Flask(__name__)

def get_name(id):
  conn = psycopg2.connect(
    host="db",
    database=os.environ['POSTGRES_DB'],
    user=os.environ['POSTGRES_USER'],
    password=os.environ['POSTGRES_PASSWORD'])
  cur = conn.cursor()
  cur.execute(f'SELECT name FROM example.hello WHERE id={id}')
  name = str(cur.fetchone()[0])
  return name

@app.route('/', methods=['GET'])
def home():
  name = get_name(1)
  return f"<h1>Hello, {name}!</p>"

app.run(host="0.0.0.0", debug=True)
