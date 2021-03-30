#!/bin/sh
# Generates fontMetricsData.js
PERL="perl"
PYTHON="python3"

cd src/metrics
$PERL ./mapping.pl | $PYTHON ./extract_tfms.py | $PYTHON ./extract_ttfs.py | $PYTHON ./format_json.py --width > ../fontMetricsData.js
