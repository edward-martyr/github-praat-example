audio.ogg:
	wget -O audio.ogg https://upload.wikimedia.org/wikipedia/commons/5/50/Open_central_unrounded_vowel.ogg

audio.wav: audio.ogg
	ffmpeg -i audio.ogg audio.wav

output.txt: audio.wav
	praat --run example.praat
