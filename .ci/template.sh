#!/bin/bash

# Define the path containing the config template files
TEMPLATE_FILE_DIR=docker-compose/config_templates

# Define the output directory for configs
OUTPUT_DIR=docker-compose/configs

# Recursively loop through the config templates
find $TEMPLATE_FILE_DIR -type f  -print0 | while IFS= read -r -d $'\0' input_file; do
  # Define the output file name
  output_file=${input_file/$TEMPLATE_FILE_DIR/$OUTPUT_DIR}

  # Render each template with the input data
  mkdir -p $(dirname $output_file)
  envsubst < "$input_file" > "$output_file"
done
