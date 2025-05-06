#!/bin/bash

# Directory containing the benchmark files
BENCH_DIR="../rtl"
# Template script (modify this path if needed)
TEMPLATE="dc_script_template.tcl"
# Output directory for generated scripts
OUTPUT_DIR="./dc"

# Create output directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

# Process each .v file in the benchmark directory
for verilog_file in "$BENCH_DIR"/*.v; do
    # Extract just the filename (without path)
    filename=$(basename "$verilog_file")
    
    # Get benchmark name (remove .v extension)
    benchmark_name="${filename%.v}"
    
    # Output TCL filename
    output_tcl="$OUTPUT_DIR/${benchmark_name}_dc.tcl"
    
    echo "Generating TCL script for $benchmark_name: $output_tcl"
    
    # Create the new script with substitutions
    sed \
        -e "s/\$benchmark_file/$filename/g" \
        -e "s/\$benchmark_name/$benchmark_name/g" \
        -e "s/\${benchmark_name}_bench/${benchmark_name}_bench/g" \
        "$TEMPLATE" > "$output_tcl"
        
    
    # Make the generated script executable
    chmod +x "$output_tcl"
done

echo "Done! Generated scripts are in $OUTPUT_DIR/"