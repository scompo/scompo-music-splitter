#scompo-music-splitter
A collection of script to split and organize a record 
(from audacity project to flac to mp3).
I record stuff a lot and wanted to find a way to quickly organize and create
mp3 files with a good quality.

##Requirements:
- Audacity
- lame
- easytag
...

##Workflow.
- clone repository in the music folder.
- **cd** to **scompo-music-splitter**.
- **./project-manager/create-project.sh "project-name"**.
- **cd "project-name"**.
- open Audacity and create a new project in **"project-name"**.
- set the metadata tags.
- copy an image for the cd into **"project-name"**.
- create, give a name and edit every track in Audacity.
- save project.
- multiple export
- format: flac, choose directory **"project-name/cd/flac"**, check "numbers before track name/label" and export
- verify every track detail.
- **./edit-tags.sh**.
- edit the tags in easytag, put the image inside the folder if needed.
- save info and close easytag.
- **./convert-flac.sh**.
- set soundconverter preferences to "same folder as input file", format: MP3 (.mp3).
- convert.
- you're done and the files are correctly tagged (picture too) and in the **"project-name"/cd/mp3** folder.
