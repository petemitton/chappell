\version "2.22.0"
\language "english"

global = {
	\time 4/4
	\key f \major
}

mBreak = { \break }

\header {
%	title = \markup {\medium \caps "Western wind, when wilt thou blow."}
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
				g4. a8 bf4 <d bf>4 | a8.( bf16) a8( g8) f4\fermata <a,d>4 | <d g>4. d8 f4 <e g>4 |
				f2.\fermata <bf,d bf>4|\mBreak
                              <d f a>4. g8 <a,f>4<bf,d>4 | <a,d f>4 <c e g>4 <a,f>4 <bf,d bf>4 |
                              <d f a>4 g8 g8 <d a d'>4.\fermata <d bf d'>8 | a16 g16 f16 g16  a16 bf16 a8 <bf,g>2 \bar "||"


			}	% end voice one
			\new Voice  \fixed c' {
				\voiceTwo
			        bf,2 s2 |d4 s2.| s1*2 |
			        s1*2 | s4 g4 s2|<d f a>2 s2 |
			} % end voice two
		>>
		} % end staff up
		
		\new Lyrics \lyricmode {	% verse one
		  Westron2 wynde4 when4 | wyll4 thou4 blow?4 The4 | smalle4. rain8 downe4 `doth'4 | rayne;2. `Oh!'4 |
		  if4. my8 love4 were4 | in4 my4 armys,4 `Or'4 | I4 in8 my8 bed4. a-8 | gayne.4 "."8 "." "."2 | \fine
		}	% end lyrics verse one
		
		\new   Staff = "down" {
		<<
			\clef bass
			\global
			\new Voice \fixed c' {
				\voiceThree
				<g,,d,>2. <g,,g,>4 |<d,f,>2. <d,f,>4 |<bf,,g,>2 <d,a,>4 <c,c>4 |<f,a,>2.\fermata g,,4|
				d,2 d,4 bf,,4 |d,4 c,4 f,4 g,,4 |d,4 bf,,4 f,,4._\fermata g,,8 |d,2 g,2|
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
			\override LyricText.self-alignment-X = #LEFT
			}%end score
		}%end context
	}%end layout

}%end score