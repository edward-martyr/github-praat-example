# read from file
wav_file_name$ = "audio.wav"
audio = Read from file... 'wav_file_name$'
select audio

# get interval to be measured
duration = Get end time
time_40percent = duration * 0.4
time_60percent = duration * 0.6

# convert to formant object
formant = To Formant (burg)... 0 5 5000 0.025 50
select formant

# get formants
f1 = Get mean: 1, time_40percent, time_60percent, "Hertz"
f2 = Get mean: 2, time_40percent, time_60percent, "Hertz"

# write to output
output_path$ = "output.txt"
writeFile: output_path$
appendFileLine: output_path$, "Processed file: ", wav_file_name$
appendFileLine: output_path$, "Extracted F1: ", f1
appendFileLine: output_path$, "Extracted F2: ", f2
