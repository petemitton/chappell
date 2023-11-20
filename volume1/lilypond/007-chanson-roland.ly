\version "2.22.0"
\language "english"

global = {
	\time 3/2
	\key g \major
}

mBreak = { \break }

\header {
%	title = \markup {\medium "CHANSON ROLAND."}
%	poet =
%	composer = "About 1250."

%	meter = \markup {\italic "Rather slow and smoothly."}
%	arranger =
}
\score {

	\new ChoirStaff {
	<<
		\new Staff = "up"  {
		<<
			\global
			\new 	Voice = "one" 	\fixed c{
				\voiceOne
				d''2 a'2 g'2 | fs'4. g'8 a'2 r2 | c''2 a'1 | b'2 g'1 | d''2 a'2 g'2 | \break
				fs'4. g'8 a'2 b'2\rest | c''2 b'2 a'2  | <b g'>1. | a'2 a'2 g'2  | fs'2 e'2 d'2  | \break
				<fs' a'>2<g' b'>2<a' c''>2  | <d' g' b'>1. | d''2 a'2 g'2  | fs'4. g'8 a'2 c''2  | <g' b'>1 a'2  | \partial 1. g'1.  |
			}	% end voice one
			\new Voice  \fixed c {
				\voiceTwo
				<d' b'>2 e'2 cs'2 | d'4. e'8 fs'2 r2 | a'2 fs'1 | g'2 b1 | fs'2 d'2 cs'2 |
				d'4. e'8 fs'2 r2 |  <e' g'>2<d' g'>2<d' fs'>2 | s1. | <d' fs'>2 e'2 cs'2 |  d'1. |
				 d'1. | s1. |  fs'2 d'2 cs'2 |  d'1<e' g'>2 |  d'1<d' fs'>2 |  b1 s2 \partial 1. |
			} % end voice two
		>>
		} % end staff up
		\new   Staff = "down" {
		<<
			\clef bass
			\global

			\new 	Voice {
				\voiceFour
				 s1 e2 | s1 d2 |  s1 d2 | s1 d2 | s2 fs e |
				 s1.  | s1. |  s1. | d2 cs2 a,2 |  d1. |
				 s1.  | s1. |  d2 fs2 e2 | s1. | s1. | \partial 1. s1. |
			}	% end voice four
			\new Voice {
				\voiceThree
				g,2 c2 s2|d1 s2|d,1 s2|g,1 s2|d,2 s1 |
				d1 d2\rest | c2 d1 | g,1. | a1.  | a2 g2 fs2  |
				d,1 d2 | g,2 b,2 g,2 | s1. | d1 c2 | d1 d,2 | \partial 1. g,1. |
			} % end voice three
		>>
		} % end staff down
	>>
	} % end choir staff

	\layout{
		\context{
			\Score {
			\omit  BarNumber
			\override LyricText.self-alignment-X = #LEFT
			}%end score
		}%end context
	}%end layout

}%end score
