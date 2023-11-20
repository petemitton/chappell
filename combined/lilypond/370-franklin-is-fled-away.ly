\version "2.22.0"
\language "english"

global = {
	\time 3/4
	\key g \major
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
                                 <b, d g>4 <b, e g> <e a> | fs4. e8 d4 | g <e g> <c fs a> | <b, g b>2. | <d g b>4 <e g b> <e g c'> | \mBreak
                                 <g b>4. <fs a>8 <g b>4 | <d fs a> <d f! a> <b, e gs> | <c e a>2. \bar "||" | s2. | <d g b>4. <c a>8 <b, g>4 | a a g | \mBreak
                                 fs4. e8 d4 | g <fs g> <e g> | d'4. c'8 b4 | <e g a>4 <c fs a>4. <b, g>8 | <b, g>2. \fine | \mBreak
			}	% end voice one
			\new Voice  \fixed c' {
				\voiceTwo
				s2. | \stemUp d4 s2 \stemDown | s2.*3 |
				d2. | s2.*2 | <d a d'>4 <fs a d'> <d a c'> | s2. | e4. c8 d e |
				s2.*2 | d8 e fs4 g | s2.*2 |
			} % end voice two
		>>
		} % end staff up

		\new Lyrics \lyricmode {	% verse one
		  Frank4 -- lin, my | loy4. -- al8 friend,4 | O hone, O | hone!2. | In4 whom my |
		  joys4. do8 end,4 | O4 hone! O | hone!2. | Frank4 -- lin, my | heart’s4. de8 -- light,4 | Since last he |
		  took4. his8 flight4 | Bids4 now the | world4. good8 night.4 | O4 hone,4. O8 | hone!2. |
		}	% end lyrics verse one

		\new   Staff = "down" {
		<<
			\clef bass
			\global
			\new Voice {
				\voiceThree
				s2 a4 | 4. g8 fs4 | <g b> g a, | g,2. | s2 c4 |
				g,2. | s2. | a,2. | s2.*2 | a2. |
				a4. g8 fs4 | g g g | b,4. a,8 g,4 | c4 d2 | s2. | \fine
			} % end voice three

			\new 	Voice {
				\voiceFour
				g4 e c | d2. | e4 c s | s2. | g4 e s | 
				s2. | d4 d e | s2. | fs!4 d fs | g2. | c4. a,8 b, c |
				d2. | e4 d c | s2.*2 | g2. |
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