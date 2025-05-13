#!/bin/bash

#<<<<<<< HEAD
source ../../../../sensei
#=======
#source ../../../../sensei_new
#>>>>>>> 289def634b9e26d054d0ce3276860c7b35141f17

TCL_DIR="./dc"

mkdir -p "${TCL_DIR}/logs"

for tcl_file in "${TCL_DIR}"/*_dc.tcl; do
    echo "Running: ${tcl_file}"
    log_file="${TCL_DIR}/logs/$(basename "${tcl_file}").log"
    dc_shell -f "${tcl_file}" | tee "${log_file}"
done

echo "All synthesis scripts completed."