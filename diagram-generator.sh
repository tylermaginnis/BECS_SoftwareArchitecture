#!/bin/bash

# Define the directories
input_dirs=("/c/dev/BECS_SoftwareArchitect/docs/diagrams/")
output_dirs=("/c/dev/BECS_SoftwareArchitect/docs/rendered/")

# Loop through each input directory
for i in "${!input_dirs[@]}"; do
  input_dir=${input_dirs[$i]}
  output_dir=${output_dirs[$i]}
  
  # Create the output directory if it doesn't exist
  mkdir -p "$output_dir"
  
  # Process each .puml file in the input directory and its subdirectories
  find "$input_dir" -name "*.puml" | while read -r puml_file; do
    relative_path="${puml_file#$input_dir}"
    output_subdir="$output_dir$(dirname "$relative_path")"
    mkdir -p "$output_subdir"
    java -jar /c/dev/BECS_SoftwareArchitect/plantuml.jar -tsvg "$puml_file" -o "$output_subdir"
  done
done
