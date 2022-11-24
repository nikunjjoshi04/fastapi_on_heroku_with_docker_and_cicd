#!/bin/sh

export APP_MODULE=${APP_MODULE:-app.main:app}
export HOST=${HOST:-0.0.0.0}
export PORT=${PORT:-8000}


# run gunicorn
exec gunicorn -w 4 --bind $HOST:$PORT "$APP_MODULE" -k uvicorn.workers.UvicornWorker
