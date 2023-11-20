\version "2.22.0"
\language "english"

global = {
	\time 4/4
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
				<b, d g>4 4 g4. 8 | <e g a>4 <d fs b> <d g b> d' | <fs c'> <g b> a <fs a d'> | d' cs' <fs a d'>2 | \mBreak
				s2. <g b>4 | s2 <g b>4 d' | <fs c'>4 <g b> a <fs a d'> | d' cs' <fs a d'>2 \bar "||" | \mBreak
				<f! a d'>4 <e gs b>8 c' <c a>4 <c fs c'> | <d g! b> <e a>8 g <a, fs>4 <d a> | <c e>4 4 <b, d> <d g>8 a | <d g b>4 <c fs a> <b, g>2 | \fine
			}	% end voice one
			\new Voice  \fixed c' {
				\voiceTwo
				s2 \once \stemUp b,4 s | s2. d8 e | s1 | <e a>2 s2 |
				<fs a d'>4 8 d' <g d'>4 s | <g c' e'> <fs a d'>8 c' s4 d8 e | s1 | <e a>2 s2 |
				s1*4 |
			} % end voice two
		>>
		} % end staff up

		\new Lyrics \lyricmode {	% verse one
		  When4 Troy town4. for8 | ten4 years’ wars With -- stood the Greeks in | man4 -- ful wise;2 |
		  Yet4 did8 their foes4 in -- crease so fast, That | to re -- sist none | could suf -- fice.2 |
		  Waste4 lie8 those walls,4 that were so good, And | corn now grows where | Troy town stood.2 |
		}	% end lyrics verse one

		\new   Staff = "down" {
		<<
			\clef bass
			\global
			\new Voice {
				%\voiceThree
				g4 fs e2 | c4 d g, b | <a c'> <g d'> <fs d'> d | a2 d2 |
				d'4 c'! b e' | c' d' g b | a g fs d | a2 d | 
				d4 e a a, | b, c d fs8 g | a4 e8 fs g4 b,8 c | d4 d, g,2 | \fine
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