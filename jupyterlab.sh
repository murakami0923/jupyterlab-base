#!/bin/bash

PORT=8001
TOKEN=Abcdabcd12341234

URL=http://localhost:${PORT}/lab?token=${TOKEN}

echo "----------------------------------------------------------------------------------------------------"
echo ${URL}
echo "----------------------------------------------------------------------------------------------------"
echo ""
echo ""

source ./.venv/bin/activate

jupyter-lab --ip=0.0.0.0 --port=${PORT} --NotebookApp.token=${TOKEN} --notebook-dir=./notebooks/
