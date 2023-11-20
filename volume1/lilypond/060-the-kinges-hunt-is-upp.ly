\version "2.22.0"
\language "english"

global = {
	\time 6/8
	\key ef \major
}

mBreak = { \break }

\header {
%	title = \markup {\medium \caps "The Kinges Hunt is upp."}
%	poet = ""
%	composer = ""

%	meter = \markup {\italic "Merrily."}
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
				\partial 8 bf8 |  < g ef' > 4 bf8 g8._( af16 ) bf8 |  < g ef' > 4 bf8  g8._( af16 ) bf8 | 
				c'8._( bf16 ) af8 g8._( f16 ) ef8 \mBreak
				 < d f > 4.~< d f > 4   < d bf >8  | c'af8 bf8 c'4  bf8  | af8._( g16 ) af8 bf4  bf8  | 
				 c'8._( d'16) ef'8 d'8._( ef'16) f'8  |  \partial 8*5 < g ef' > 4.~< g ef' > 4 \bar "||" \mBreak
			}
			\new Voice  \fixed c' {
				\voiceTwo
				s8 | s2.*4 |
				ef4.~ef4   < ef g >8  |  ef4  d8 ef4   < ef g >8  |  ef4. af4.  | s2 s8 |
			} % end voice two
		>>
		} % end staff up
		
		\new Lyrics \lyricmode {	% verse one
		  The8 | hunt4 is8 up,4 the8 | hunt4 is8 up,4 And8 | it4 is8 well4 nigh8 \mBreak
		  day;4. "."16 "."8. And8 | Harry4 our8 King4 is8 | gone4 hunting,4. To8 | bring4 his8 deer4 to8 | bay.4. 4 |
		}	% end lyrics verse one
		
		\new   Staff = "down" {
		<<
			\clef bass
			\global
			\new Voice {
				\voiceThree
				r8 |  < ef bf > 2. |  < ef bf > 2. |  < af,af > 4.   < ef bf >4. 
				 < bf,bf >8 d8 f8 bf4 bf8 | af4. ~af4 ef8 | f4. g4 ef8 | af4.   <bf,bf > 4.  |  < ef bf > 4. ~ < ef bf > 4
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