\version "2.22.0"
\language "english"

global = {
	\time 4/4
	\key a \major
}

mBreak = { \break }

\header {
%	title = \markup {\medium \caps "Title."}
%	poet = ""
%	composer = ""

	meter = \markup {\italic "To be sung ad. lib. upon one note."}
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
                <c e a>1\fermata | <b, e gs b>2 a4. b8 | \mBreak
			}	% end voice one
			\new Voice  \fixed c' {
				\voiceTwo
				s1 | s2 e2 |
			} % end voice two
		>>
		} % end staff up
		
		\new Lyrics \lyricmode {	% verse one
		  
		}	% end lyrics verse one
		
		\new   Staff = "down" {
		<<
			\clef bass
			\global
			\new Voice {
				\voiceThree
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
			}%end score
		}%end context
	}%end layout
	
	\midi{}

}%end score