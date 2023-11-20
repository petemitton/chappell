\version "2.24.0"
\language "english"

global = {
	\time 6/8
	\key g \major
}

mBreak = { \break }

\header {
%	title = \markup {\medium \caps "Title."}
%	poet = ""
%	composer = ""

%	meter = \markup {\italic ""}
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
				\repeat volta 2 { b8. c'16 d'8 d'4 c'8 | b8. c'16 b8 a4 g8 | 
				b8. c'16 d'8 d'8. c'16 b8 | <fs a>8. g16 <c a>8 <b, g>4. \bar ":|." |} \mBreak
				<d g b>4. <e g c'> | <d g b> <c fs a>4 <b, g>8 | 
				b8. a16 b8 c'4 b8 | <fs a>8. g16 <c fs>8 <b, g>4. | \mBreak b8. a16 b8 c'8. d'16 d'8 | 
				b8. a16 b8 <c fs a>4 <b, g>8 | b8. c'16 d'8 d'8. c'16 b8 | 
				<fs a>8. g16 <c fs>8 <b, g>4. \fine |
			}	% end voice one
			\new Voice  \fixed c' {
				\voiceTwo
				g4. fs | g fs4 g8 | f4. e | s2. |
				s2. *2 | g4. e | s2. | <d g>4 s8 <e g>4 s8 |
				<d g>4 s2 | <e gs>4. <e a>4 s8 | s2. |
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
				%\voiceThree
				g4. d | g,4 b,8 d4 g8 | g4. c | d g, |
				g c | g,4 b,8 d4 g8 | e4. a, | d g, | g c |
				g,4 b,8 d4 g8 | e4. a, | d g, | \fine
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