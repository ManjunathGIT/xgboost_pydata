#!/usr/bin/env bash
kill `ps ax | grep xgboost_pydata.slides.html | grep -v grep | sed 's/\s.*//'`
python create_slides.py --file static/xgboost_pydata.ipynb
python run.py --file static/xgboost_pydata.slides.html &
sleep 3
open -a "Google Chrome" --new --args --incognito http://localhost:9099
