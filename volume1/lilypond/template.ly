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

			}	% end voice one
			\new Voice  \fixed c' {
				\voiceTwo
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
				\voiceThree
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