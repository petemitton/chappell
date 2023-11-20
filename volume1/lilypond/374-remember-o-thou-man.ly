\version "2.22.0"
\language "english"

global = {
	\time 3/4
	\key g \minor
}

mBreak = { \break }
lalign = { \once \override  LyricText.self-alignment-X = #LEFT }
dynamicsX =
#(define-music-function (offset)(number?)
  #{
     \once \override DynamicText.X-offset = $offset
     \once \override DynamicLineSpanner.Y-offset = #0
  #})

\header {
%	title = \markup {\medium \caps "Title."}
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
				<bf, g>4 <d g> <bf, g> | <d bf>4. <c fs a>8 <bf, g>4 | fs4. 8 <d g>4 | a4. fs8 d4 | <d g> <bf, g> <ef g> | \mBreak
				<d g bf>4. <d fs a>8 <d g>4 | <c fs>4 fs <bf, d g> | <a, fs a>2. \bar "||" | <d f! bf>4 <d f d'>4 4 | <f d'>4. <f c'>8 <d bf>4 | \mBreak
				<f a>4 <f c'>4 4 | <ef c'>4. <g bf>8 <fs a>4 | <d g bf>4 <d fs a> <bf, g> | fs4. g8 a4 | bf4. a8 <d fs bf>4 | <bf, g>2. \fine |
			}	% end voice one
			\new Voice  \fixed c' {
				\voiceTwo
				s2.*2 | \stemUp c4 s2 | d4 s2 | s2. | 
				s2.*4 | d4 s2 |
				s2.*3 | \stemDown c4 d d | d ef s | s2. |
			} % end voice two
		>>
		} % end staff up

		\new Lyrics \lyricmode {	% verse one
		  Re4 -- mem -- ber, | O4. thou8 man,4 | O4. thou8 man,4 | O4. thou8 man,4 | Re -- mem -- ber, |
		  O4. thou8 man,4 | thy4 time is | spent.2. | Re4 -- mem -- ber, | O4. thou8 man,4 | 
		  how4 thou art | dead4. and8 gone,4 | And4 I did | what4. I8 can,4 | there4. -- fore8 re4 -- pent.2. |
		}	% end lyrics verse one

		\new   Staff = "down" {
		<<
			\clef bass
			\global
			\new Voice {
				%\voiceThree
				g,4 bf, g, | g4. d8 ef4 | a,2 bf,4 | fs,8 a, d4. c8 | bf,4 ef c | 
				d4. c8 bf,4 | a,2 g,4 | d, d c | bf, bf bf | bf4. a8 g4 |
				f4 a a | c'4. g8 d'4 | g4 d ef | a,4 bf, fs, | g, c d | g2. | \fine
			} % end voice three

			\new 	Voice {
				%\voiceFour
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