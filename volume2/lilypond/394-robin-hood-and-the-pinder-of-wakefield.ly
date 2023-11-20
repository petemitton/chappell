\version "2.22.0"
\language "english"

global = {
	\time 6/8
	\key f \major
}

mBreak = { \break }
lalign = { \once \override  LyricText.self-alignment-X = #LEFT }
dynamicsX =
#(define-music-function (offset)(number?)
  #{
     \once \override DynamicText.X-offset = $offset
     \once \override DynamicLineSpanner.Y-offset = #0
  #})
hyphen = { \once \override LyricHyphen.minimum-distance = #1.0 }

\header {
%	title = \markup {\medium \caps "Title."}
%	poet = ""
%	composer = ""

	meter = \markup {\italic ""} 
%	arranger = ""
}
\score {

	\new ChoirStaff {
	<<
		\new Staff = "up"  {
		<<
			\global
			\new 	Voice = "one" 	\fixed c' {
				%\voiceOne
                                 \repeat volta 2 {\partial 8 a8 | <e d'>4 d'8 d'4 d'8 |<g c> d' bf a4 <e d'>8 | <e d'>4 d'8 <bf d'>8. <a c'>16 <g bf>8 | \mBreak
                                 <f a>4.~<f a>4 d'8^\markup{\caps "Chorus."} | d'4 d'8 d'8. c'16 bf8 | \partial8*5 a4.~a4} | \partial 8 a8^\markup{\caps "Solo."} | <e a>4 a8 a4 a8 | \mBreak
                                 <f a>4 bf8 <e c'>4 <d g>8 | <e a>4 a8 <e g>8. <d f>16 <cs e>8 | d4.~4 g8^\markup{\caps "Chorus."} | a4 8 g8. f16 e8 | \partial 8*5 d4.~4 | \fine
			}	% end voice one
			\new Voice  \fixed c' {
				\voiceTwo
			} % end voice two
		>>
		} % end staff up

		\new Lyrics \lyricmode {	% verse one
In8 | Wakefield4 there8 lives4 a8 | jol -- ly Pin -- der,4 In8 | Wake4 -- field8 all8. on16 a8
4 green,4. In8 | Wake4 -- field8 all8. on16 a8 | 4 green;4. | Dare8 | make8 a tres -- pass4 to16 the |
town8 of Wake -- field,4 But16 his | pledge4 goes8 to8. the16 Pin4. -- fold,4. His8 | pledge4 goes8 to8. the16 Pin4. -- fold.4. |
		}	% end lyrics verse one
		\new Lyrics \lyricmode { % verse two
		  There’s8 | neither4 Knight8 nor4 Squire,8 | says the Pin -- der,4 Nor8 | Baron4 that8 is4 so8 |
		  4 bold,4. Nor8 | Baron4 that8 is4 so8 | 4 bold,4. |
		} % end lyrics verse two

		\new   Staff = "down" {
		<<
			\clef bass
			\global
			\new Voice {
				%\voiceThree
				d8\rest | <d a>2. | <e c'>4. <f c'>4 bf,8 | bf,4. g, |
				d8 a, f, d,4 <d d'>8 | 4 8 8. <c c'>16 <bf, bf>8 | <a, a>4.~4 | d8\rest | cs2. |
				d4. c!4 bf,8 | a,4. a, | d8 a, f, d,4 <g, g>8 | <a, a>4 8 <g, g>8. <f, f>16 <e, e>8 | <d, d>4.~4 | \fine
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