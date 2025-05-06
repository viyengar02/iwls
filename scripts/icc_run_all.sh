#!/bin/bash

source ../../../../sensei

TCL_DIR="./icc"

mkdir -p "${TCL_DIR}/logs"

for tcl_file in "${TCL_DIR}"/*_icc.tcl; do
    echo "Running: ${tcl_file}"
    log_file="${TCL_DIR}/logs/$(basename "${tcl_file}").log"
    icc_shell -shared_license -f "${tcl_file}" | tee "${log_file}"
done

echo "All ICC compiler scripts completed."