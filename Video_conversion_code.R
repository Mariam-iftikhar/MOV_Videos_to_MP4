# Open a new Command Prompt and Type:

ffmpeg -version # You should see version info.

#Now Restart R and Try Again:

# Once you confirm FFmpeg works in Command Prompt, restart R and run this line to double-check:
  
system("ffmpeg -version")

#If that works, your video conversion script will now run correctly!

# Load tools package to manipulate file names
library(tools)

# Set the folder where your .MOV files are located
input_folder <- "C:/Users/maria/Downloads/New folder"
output_folder <- "C:/Users/maria/Downloads/New folder (2)"

# List all .mov files in the input folder
mov_files <- list.files(input_folder, pattern = "\\.MOV$", full.names = TRUE)

# Convert each .mov to .mp4 using FFmpeg
for (input_file in mov_files) {
  output_file <- file.path(output_folder, paste0(file_path_sans_ext(basename(input_file)), ".mp4"))
  
  # Build the FFmpeg command
  cmd <- sprintf('ffmpeg -i "%s" -vcodec libx264 -acodec aac "%s"', input_file, output_file)
  
  # Print the command being run
  cat("Running command:\n", cmd, "\n")
  
  # Execute the command
  system(cmd)
  
  # Optional: Delete original .mov file if successful
  if (file.exists(output_file)) {
    cat("Successfully created:", output_file, "\n")
    # file.remove(input_file)  # Uncomment if you want to delete original
  } else {
    cat("Failed to create:", output_file, "\n")
  }
}