from pydub import AudioSegment
from pydub.playback import play

sound = AudioSegment.from_wav('winxp.wav')
#sound = AudioSegment.from_file('winxp.wav', 'wav')
play(sound)
