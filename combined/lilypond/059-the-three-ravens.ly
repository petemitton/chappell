\version "2.22.0"
\language "english"

global = {
	\time 4/4
	\key bf \major
}

mBreak = { \break }

\header {
%	title = \markup {\medium \caps "Title."}
%	poet = ""
%	composer = ""

%	meter = \markup {\italic "Slowly, smoothly, and with great expression."}
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
                              \partial 4 g4 |g4 a4 bf4 d'4|<g c'>4 <d g bf>4 <ef g c'>2 |g4. a8 <d g bf>4 <g c'>4 |d'4. ef'8 d'4 d'4 \mBreak
                              g4 a4 bf4 g4 | a4 bf4 c'4 bf8 c'8 | <d d'>1( |  d'2.) d'4 | d'4 f'4 ef'4 d'4 \mBreak
                              c'4 bf4 a4. a8 | bf4 d'4 c'4 bf4 | a4 fs4 d4 bf8 c'8 |  <d g d'>2 c'8 bf8 a8 g8 | \partial 2. fs8 g8 <c a>4 <bf,g>4\fermata \bar "||"
			}	% end voice one
			\new Voice  \fixed c' {
				\voiceTwo
				s4 | d1 | s1 | d4 s2. |  <fs a> 2. s4 |
				d2 d2 |  <ef g>2 <ef g>2  | g2 fs2 | <d g>2. s4 | f!1 |
				f1 | d1 | d2. d4 | s2 ef2 | d4 s2 |
			} % end voice two
		>>
		} % end staff up
		
		\new Lyrics \lyricmode {	% verse one
		  There4 | were4 three4 ra8-8vens4 | sat4 on8 a8 tree,2 | Down4. a8 down,4 hey4 | down,4. hey8 down,4 They4 |
		  were4 as4 black4 as4 | they4 might4 be,4 With8 a8 | down2  "."8 8 "."8 8 | "."8 8 2 The4 | one of them said
		  to4 his4 mate,4. Where8 | shall4 we4 ‘now’4 our4 | breakfast2 take?4 With8 a8 | down,2 derry,4 derry,4 | derry4 down,4 down.4 |
		}	% end lyrics verse one
		
		\new   Staff = "down" {
		<<
			\clef bass
			\global
			\new Voice {
				\voiceThree
				r4 | bf1 | c'4 s4 c2 | bf,2 g4 ef4 | d2. r4 |
				s1 | s1 | bf2 c'2 | s1 | s1 |
				a2 c'2 | g,4 bf4 a4 g4 |  <d fs>2. g,8 a,8  | bf,2 c2| d2 g,4 \fermata 
			} % end voice three
			
			\new 	Voice {
				\voiceFour
				s4 | g2.f4 | ef4 g4 s2 | s1 | s1 |
				f2 g2 | c'2 a2 | d1 |  <g bf>2. r4 |  <bf, bf>4 d'4 c'4 bf4 |
				f1  | s1 | s1 | s1 | s2. |
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