# MOV_Videos_to_MP4 Conversion- Apple IPhone Users

🎯 Problem Statement:

I had several video files recorded on my iPhone that were saved in the .MOV format. However, when I transferred them to my Windows computer, I couldn't open or play them reliably. Windows often struggles with .MOV files due to codec issues, so I needed to convert them into .MP4 format, which is more compatible with media players on Windows.

🔍 Goal:

Convert .MOV videos to .MP4 format using an automated and reproducible process — ideally using R, since I’m already comfortable with data processing in that environment.

🧠 Solution Steps:

Step 1: Understand the Tool Needed — FFmpeg

I found out that a powerful tool called FFmpeg can do this conversion from .MOV to .MP4. FFmpeg is a command-line tool that can convert multimedia files between formats using appropriate video and audio codecs.

Step 2: Download and Install FFmpeg

* I downloaded FFmpeg from the official Gyan.dev site.
* I unzipped the downloaded folder and placed it in a safe location on my computer (e.g., C:/ffmpeg).
* I added the bin folder (e.g., C:/ffmpeg/bin) to my System PATH environment variable, which lets me use ffmpeg from the command line or R. This can be done as follows:
  
  Add to PATH:
  1. Press Windows + S → Search for: environment variables.
  2. Click: “Edit the system environment variables”.
  3. In the System Properties window → Click “Environment Variables…”
  4. In the System Variables section → Find and click Path → Click Edit
  5. Click New, then paste the bin folder path that you have on your computer. (C:\Users\maria\Downloads\ffmpeg-7.1.1-essentials_build\ffmpeg-7.1.1-essentials_build\bin)

Step 3: Write the Conversion Script in R

I wrote an R script that:

* Lists all .MOV files in a folder.
* Converts each one to .MP4 using FFmpeg.
* Saves the output to a new folder.
* Optionally deletes the original .MOV file to save space.


🧪 Step 4: Test and Confirm Output

I ran the script, and it successfully:

* Detected all .MOV files in my specified folder.
* Converted them to .MP4.
* Saved the new .MP4 files in the output folder.
* I can now easily play all the videos on Windows Media Player and VLC without issues.

✅ Final Result:

I created an efficient video conversion pipeline directly in R using:

* Base R functions: list.files(), file.path(), basename(), paste0().
* tools package: file_path_sans_ext() to remove file extensions.
* FFmpeg: Command-line utility to do the actual media conversion.

🧰 What I Learned

* FFmpeg is extremely powerful for multimedia operations.
* R can serve as an automation layer for system-level tasks like file conversion.
* Combining R scripting with command-line tools can simplify otherwise manual work.
