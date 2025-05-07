common_args="-t '-18' -tp '-1' -lrt 50 -ar 44100 -c:v copy"
alias mp3-normalize="ffmpeg-normalize $common_args -c:a mp3 -e '-aq 0' -ofmt mp3 -ext mp3";
alias flac-normalize="ffmpeg-normalize $common_args -c:a flac -ofmt flac";

