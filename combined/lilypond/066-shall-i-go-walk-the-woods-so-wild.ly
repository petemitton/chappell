\version "2.22.0"
\language "english"

global = {
	\time 6/8
	\key bf \major
}

mBreak = { \break }

\header {
%	title = \markup {\medium \caps "shall i go walk the woods so wild?"}
%	poet = ""
%	composer = ""

%	meter = \markup {\italic "Moderate time."}
%	arranger = ""
}
\score {

	\new ChoirStaff {
	<<
		\new Staff = "up"  {
		<<
			\global
			\new 	Voice = "one" 	\fixed c' {
				\voiceOne
				bf8 bf8 bf8 bf4< f bf,>8| g4 f8 d4. | ef8 f8 g8 a4 g8 | c'4 bf8 a8_( g8) f8 | \mBreak
				< bf, bf>4 bf8 bf4< bf, f>8| g4 f8 d4< d bf>8| < ef a>4 g8 < bf, f>4< bf, d>8| < bf, ef>4 c8 < a, c>4. | \fine
			}	% end voice one
			\new Voice  \fixed c' {
				\voiceTwo
				<bf d>4 s2 | bf,2.| bf,4. ef4.| f4. c4.|
				 s2. | bf,4.~ bf,4 s8|
			} % end voice two
		>>
		} % end staff up
		
		\new Lyrics \lyricmode {	% verse one
		  Shall8 I go walk4 the8 | woods.4 so8 wild,2  Wandering,4 wand'ring4.| here4 and8 there,4 As8 |
		  I4 was8 once4 full8 sore4. beguil'd,4 A8 las!4 for8 love4 I8 die4 with8 woe.4. 
		}	% end lyrics verse one
		
		\new   Staff = "down" {
		<<
			\clef bass
			\global
			\new Voice {
				\voiceThree
				bf,4.~ bf,4 d8| ef4( d8 bf,4.)| g,4. c4 bf,8| a,4. f,4.
				d4.~ d4 d8| ef4 d8 bf,4 bf,8| c4. d4 g8 | c4. f4.| \fine
			} % end voice three
			
			\new 	Voice {
				\voiceFour
			}	% end voice four

		>>
		} % end staff down
	>>
	} % end choir staff

	\layout{
		\context{
			\Score {
			\omit  BarNumber
			%\override LyricText.self-alignment-X = #LEFT
			\override Staff.Rest.voiced-position=0
			}%end score
		}%end context
	}%end layout

}%end score