#!/bin/bash
curl -XDELETE localhost:9200/fidelity28_fund
curl -XDELETE localhost:9200/fidelity28_bbw
curl -XPUT localhost:9200/fidelity28_fund -H "Content-Type:application/json" --data-binary @fund_mappings.json
curl -XPUT localhost:9200/fidelity28_bbw -H "Content-Type:application/json" --data-binary @bbw_mappings.json
curl -XPOST localhost:9200/fidelity28_fund/_bulk?pretty -H "Content-Type:application/json" --data-binary @fidelity28_fund_bulk.json
curl -XPOST localhost:9200/fidelity28_bbw/_bulk?pretty -H "Content-Type:application/json" --data-binary @fidelity28_bbw_bulk.json

