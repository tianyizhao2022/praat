# Convert the files from stereo to mono
# 17/11/23 TZ
############################

# change this!
dir$ = "/Users/tiaz/Desktop/test/"
clearinfo



# Get names of wav files in the directory

Create Strings as file list... list 'dir$'*.wav


# query number of strings and store it into a variable
num = Get number of strings
printline number of files: 'num'


# loop through wav files
for n to num
	select Strings list

	# Get name
	sound$ = Get string... n

	# Read in wav files
	Read from file... 'dir$''sound$'

	Convert to mono

	printline reading file 'sound$'


	Save as WAV file... 'dir$''sound$'



endfor

select all
Remove
