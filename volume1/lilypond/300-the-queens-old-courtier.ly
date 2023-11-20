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

%	meter = \markup {\italic "To be sung ad. lib. upon one note."}
%	arranger = ""
}
\score {
	\new ChoirStaff {
	<<
				\defineBarLine "i" #'("" "" "")
		\new Staff = "up"  {
		<<
			\global
			\new 	Voice = "one" 	\fixed c' {
				\voiceOne
                <cs e a>1\fermata \bar "i" | s1 \bar "i" | s1 | <b, e gs b>2 a4. b8 | \mBreak
                s2 <d gs b>4 <e a> | <a, d gs>4 fs s2 | <e a cs'>2 <d gs b> | <cs a>1 \fine |
			}	% end voice one
			\new Voice  \fixed c' {
				\voiceTwo
				s1*3 | s2 e2 |
				<e a cs'>2 s2 | s <d fs d'>4^\fermata e'8 d' | s1 |
			} % end voice two
		>>
		} % end staff up
		
		\new Lyrics \lyricmode {	% verse one
		  \markup {With an old song, made by an old ancient pate,}1 | 1*3 |
		  old2 Cour4 -- tier4 | of the Queen’s, And8 the | Queen’s2 old | Courtier.1 |
		}	% end lyrics verse one
		\new Lyrics \lyricmode {	% verse one
		  \markup {Of an old worshipful gentleman, who had a great estate,}1 | 1 |
		}	% end lyrics verse two
		\new Lyrics \lyricmode {	% verse one
		  \markup {Which kept an old house at a bountiful rate,}1 | 1 |
		}	% end lyrics verse three
		\new Lyrics \lyricmode {	% verse one
		  \markup {And an old porter to relieve the poor at his}1 | 1*2 | gate.2 Like4. an8 |
		}	% end lyrics verse four
		
		\new   Staff = "down" {
		<<
			\clef bass
			\global
			\new Voice {
				%\voiceThree
				<a, e a>1\fermata | s1*2 | <e, e>2 fs,4. gs,8 | 
				<a,, a,>2 <b,, b,>4 <cs, cs> | <d, d>2 <d, b,>^\fermata | <e, a, e> <e, b, e> | <a, cs e a>1 | \fine
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
			\override LyricText.self-alignment-X = #LEFT
			}%end score
		}%end context
	}%end layout
	
	\midi{}

}%end score