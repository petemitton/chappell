\version "2.22.0"
\language "english"

global = {
	\time 4/4
	\key c \major
}

mBreak = { \break }

\header {
%	title = \markup {\medium \caps "Title."}
%	poet = ""
%	composer = ""

%	meter = \markup {\italic "Rather slow."}
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
				<c e a>4 a8 b8 c'4 <e b>8 a8 | <d gs>4 <c a>4 <b, e>2 | <e a>4 a8 b8 <e a c'>4 b8 c'8 | <g d'>2. b8 c'8 | \mBreak
				d'8 c'8 d'8 b8 e'4 <e gs b>8 b8 | <e a c'>8 c'8 <e b>8 a8 <e gs b>4 e8 e8 | <e a>4 <c a>8 <d b>8 <e a c'>4 <d gs b>4 | <c a>1  |
				\fine
			}	% end voice one
			\new Voice  \fixed c' {
				\voiceTwo
				s1*3 | c'2 b4 r4 |  
			} % end voice two
		>>
		} % end staff up
		
		\new Lyrics \lyricmode {	% verse one
		  Go4 from8 my8 win4 -- dow,8 my8 love,4 my4 love;2 Go4 from8 my8 win4 -- dow,8 my8 dear;2. For8 the8 
		  wind8 is8 in8 the8 west,4 And8 the8 cuck8 -- oo's8 in8 his8 nest,4 And8 you8 can't4 have8 a8 lodg4-ing4 here.1
		}	% end lyrics verse one
		
		\new   Staff = "down" {
		<<
			\clef bass
			\global
			\new Voice {
				a,2. c4 | b,4 a,4 gs,2 | c2 a,2 | gs,2. r4 | 
				r2 r4 e4 | a,4 c4 e4 d4 | c4 f4 e4 e4 | a1 |
				\fine
			} % end voice three
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