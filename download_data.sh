# Download data
pip install -U "huggingface_hub[cli]"
export LOCAL_DIR=/home/pjlab/code/damn_ws/repos/FoundationPose/demo_data
export NAME=ycbv
cd /home/pjlab/code/damn_ws/repos/FoundationPose/demo_data/ycbv
# Extract
# Specify the directory
directory="."

# Iterate through all zip files in the directory
for file in "$directory"/*.zip; do
    # Check if the file exists
    if [ -e "$file" ]; then
        # Get the filename (without extension)
        filename=$(basename "$file" .zip)
        # Create a directory with the same name as the file
        mkdir -p "$filename"
        # Unzip the file into the newly created directory
        unzip -q "$file" -d "$filename"
        echo "Extracting $file to $filename"
    fi
done

echo "Extraction complete"
