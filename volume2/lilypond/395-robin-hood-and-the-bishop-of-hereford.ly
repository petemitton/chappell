\version "2.22.0"
\language "english"

global = {
	\time 4/4
	\key c \major
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
\partial 4 g | <e c'> c'8 c' c'4 <c g> | <c a> g8 f e4 <c g> | <c a> a <b, d> e8 f | \mBreak
<e g>2. g4 | <c e> d8 c <c g>[ g g8. g16] | <c a>4 <f d'>8 c' <d b>4 a8 g  | <c c'>4 <a d'> <g c' e'> <f b d'> | \partial 2. <e c'>2. | \fine
			}	% end voice one
			\new Voice  \fixed c' {
				\voiceTwo
			} % end voice two
		>>
		} % end staff up

		\new Lyrics \lyricmode {	% verse one
O4 | some they8 will talk4 of | brave Robin Hood, And | some of ba -- rons |
bold;2. But4 | I’ll tell8  ye how he serv’d8. the16 | Bish4 -- op8 of Here4 -- ford,8 And | robb’d4 him of his | gold.2. |
		}	% end lyrics verse one

		\new   Staff = "down" {
		<<
			\clef bass
			\global
			\new Voice {
				%\voiceThree
				g4 | <c c'>2. e4 | f e8 d c4 e | f2 g |
				c4 e8 g c'4 d\rest | c2 e | f g | a4 f g g, | c2. | \fine
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