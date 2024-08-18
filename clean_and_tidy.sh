#!/bin/bash

# Function to process each directory containing a go.mod file
process_directory() {
    local dir="$1"
    echo "Processing directory: $dir"
    
    # Navigate to the directory
    cd "$dir" || exit 1
    
    # If a go.sum file exists, remove it
    if [ -f "go.sum" ]; then
        echo "Removing go.sum in $dir"
        rm go.sum
    fi
    
    # Run go mod tidy to regenerate go.sum and clean up go.mod
    go mod tidy
    
    # Return to the original directory
    cd - > /dev/null || exit 1
}

# Find all go.mod files and process the corresponding directories
echo "Finding all go.mod files and processing them..."
find . -name "go.mod" | while read -r mod_file; do
    mod_dir=$(dirname "$mod_file")
    process_directory "$mod_dir"
done

echo "All done!"
