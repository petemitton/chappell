\version "2.22.0"
\language "english"

global = {
	\time 4/4
	\key a \major
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
				\voiceOne
                                 \partial 4 e | <cs a> a a4. a8 | a_( d') cs'_( b) a4 <e a> | <ds a> <e gs> <e fs> <ds b> | \mBreak
                                 e2. e4 | <e a>4 a8_( gs) fs4 fs8 fs | <b, e_(>8 fs) e_( d) cs4 <a, e> | <a, d> <d fs> <cs e> <b, gs>| \partial 2. <cs a>2. | \fine
			}	% end voice one
			\new Voice  \fixed c' {
				\voiceTwo
				s4 | s2 \stemUp e4 s4 | \stemDown fs2. s4 | s1 |
				s1*4 | s2. |
			} % end voice two
		>>
		} % end staff up

		\new Lyrics \lyricmode {	% verse one
In4 | sum -- mer time,4. when8 | leaves4 grow green, And | flow’rs are fresh and |
gay,2. Bold4 | Ro4 -- bin Hood and8 his | mer4 -- ry men Were | well dis -- pos’d to | play.2. |
		}	% end lyrics verse one

		\new   Staff = "down" {
		<<
			\clef bass
			\global
			\new Voice {
				%\voiceThree
				d4\rest | <a, a>2 <cs a> | <d a>2. <cs a>4 | <b, b>2. <cs b>4 |
				<e gs>4 b, e, d\rest | <cs a>2 <d a> | gs, a,4 cs | fs b, e e | a,2. | \fine
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