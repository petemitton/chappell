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

%	meter = \markup {\italic "Majestically."}
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
                          <cs a>4 a8 b cs'4 a | <gs e'> e e2 | e4 e8 fs gs4 e | <cs a> a, a,4. b,8 |

			}	% end voice one
			\new Voice  \fixed c' {
				\voiceTwo
			} % end voice two
		>>
		} % end staff up
		
		\new Lyrics \lyricmode {	% verse one
		  Forth4 from8 my sad4 and | dark -- some cell,2 | From4 the4 deep a4 -- byss of hell,4. Mad8 | \mBreak
		}	% end lyrics verse one
                \new Lyrics \lyricmode { % verse two
                  Fear4 and8 des -- pair4 pur -- sue my soul,2 | Hark,4 how4 the angry4 | fu -- ries howl,4. Plu-8 |
                } %end lyricsmode verse two
		
		\new   Staff = "down" {
		<<
			\clef bass
			\global
			\new Voice {
                          \voiceThree
                          s1*2 | gs4 s2. | s4 a, a,2 |
			} % end voice three
			
			\new 	Voice {
                          \voiceFour
                          <a, e a>4 a8 b cs'4 a | <e b> e e2 | <e, b, e>4 e8 fs gs4 e | <a, e> s2. |
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