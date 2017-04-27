#!/bin/bash

# Start solr
solr start

# Keep container running.
tail -f /dev/null
