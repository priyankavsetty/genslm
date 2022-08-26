#!/bin/sh
NRANKS=$(wc -l < "${PBS_NODEFILE}")
export NODE_RANK=$((${PMI_RANK} % ${NRANKS}))
exec "$@"
