#!/bin/bash
curl -XPOST localhost:9200/fidelity28_bbw/_search?pretty -H "Content-Type:application/json" --data-binary @fbcv_avg_bbw.json

