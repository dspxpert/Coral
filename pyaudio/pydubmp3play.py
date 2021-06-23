from pydub import AudioSegment
from pydub.playback import play

sound = AudioSegment.from_mp3('winxp.mp3')
play(sound)
