\version "2.24.0"
\language "english"

global = {
	\time 6/8
	\key c \major
}

mBreak = { \break }

\header {
%	title = \markup {\medium \caps ""}
%	poet = ""
%	composer = ""

%	meter = \markup {\italic "In moderate time."}
%	arranger = \markup{\smallCaps "With the old harmony by Byrd."}
}
\score {

	\new ChoirStaff {
	<<
		\new Staff = "up"  {
		<<
			\global
			\new 	Voice = "one" 	\fixed c' {
				\voiceOne
				g4. g8. a16 b8 | c'4. c'8. d'16 e'8 | d'4 c'8 b8. a16 b8 | c'2. | g4 g8 g8. a16 b8 | \mBreak
				c'4. c'8. d'16 e'8 | d'4 c'8 b8. a16 b8 | \partial 8*5 c'4.~c'4 \bar "||" \mark \markup\italic\small "Fine." | \partial 8 d'8 | 
				e'4. e'8. d'16 c'8 | d'4.~d'4 d'8 | \mBreak
				b8. c'16 d'8 d'8. c'16 b8 | a4.~<a d'>4 b8 | c'8. d'16 c'8 b4 g8 | a8. b16 c'8 b4 g8 | a4 g8 fs8. e16 fs8 | \mBreak
				g4.~g8. a16 b8 | c'8. d'16 c'8 b4 g8 | a8. b16 c'8 b4 g8 | a8. b16 g8 fs8. e16 fs8 |  <b, d g>2. \bar "||" \once \override Score.RehearsalMark.self-alignment-X =
    #RIGHT \mark \markup\italic\small "D.C. al Segno."\fine
			}	% end voice one
			\new Voice  \fixed c' {
				\voiceTwo
				s2. | <e g>4. e8. f16 g8 | f4 e8 f4 f8 | <e g>2. | s8*5 f8 |
				e8. f16 g8 a4 g8 | f4 e8 g4 f8 | <e g>4. <e g>4 | f8 | g8. a16 b8 c'4. |<g b>4.~<g b>4. |
				g2. | fs4.~fs4 <d g>8 | <e g>4 <e g>8 <d g>4 e8 | f4 e8 <d g>4 d8 | f4 c8 d4 d8 |
				<b, d>4.~<b, d>8. c16 d8 | e8. f16 e8 d4 g8 | f4 e8 d4 d8 | f4 d8 d4. | s2. |
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
				<g b d'>4\segno <f a>8 <e g c'>4 <d f>8 | g8.\mark \markup{\small "a"} c'16 g8~g8. c'16 g8 | a8. b16 c'8 d'4 g8~ |
				g8. c'16 g8~g8. c'16 g8 | <g b d'>4 <f a>8 <e g c'>4 <d f>8 |
				<c g c'>4. <f c>4 <c c'>8 | a8. b16 c'8 d'4. | e'8. a'16 e'8~e'8. c'16 | g8~ | g8. c'16 g8~g8. c'16 g8~ | g8. g16 d8~d8. g16 d8~ |
				d8. g16 d8~d8. g16 d8 | d'8. c'16 b8 a4 g8 | <c g c'>4 <c g c'>8 <g d>4 g8 | <f c'>4 c8 g4 <f a>8 | c'4 g8 a4 a8 |
				g4 d8 r8 g8 d8 | g4 g8 g8. f16 e8 | d4 c8 g8 a8 b8 | c'4 b8 a8. g16 a8 | g4 d8 r8 g8 d8 |\fine
			} % end voice three
			
			\new 	Voice {
				\voiceFour
				s2. | c4. c4. | f4 c8 g4 g,8 | c4. c4. | s2. |
				s2. | f8. g16 a8 g4. | c4. c4 | c8 | c4. c4. | g,4. g,4. |
				g,4. g,4. | d4. d4. | s2.*2 | f4 e8 d4 d8 |
				r8 g,8 d8 g,4. | c4 c8 g,4. | s4. g,4 g8 | f4 g8 d4 d8 | r8 g,8 d8 g,4. |
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
			\override Staff.Rest.voiced-position=0
			}%end score
		}%end context
	}%end layout

}%end score