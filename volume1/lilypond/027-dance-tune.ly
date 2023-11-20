\version "2.22.0"
\language "english"

global = {
	\time 6/8
	\key f \major
}

mBreak = {\break}

\header {
%	title = \markup {\medium "DANCE TUNE."}
%	poet = ""
%	composer = ""

%
%         meter = \markup {\italic ""}
%	arranger = \markup {\caps "About 1300."}
}
\score {

	\new ChoirStaff {
	<<
		\new Staff = "up"  {
		<<
			\global
			\new 	Voice = "one" 	\fixed c'{
				\voiceOne
				<c f a>4. <c a>8 g8 f8 | f8 e8 f8 g8 e8 c8 | c8 d8 e8 e8 d8 f8 | f8 e8 g8 f8 bf8 a8 | <c f a>4. <c a>8 g8 f8 | f8 e8 g8 g8 e8 c8 | \mBreak
				c8 d8 e8  e8 d8 f8  |  f8 e8 g8  f8 bf8 a8   |  g8 f8 e8  <f a,>4.  \bar "||" <f a c' >4. c'8 a8 f8   |  f8 e8 f8  g8 e8 c8   |  c8 d8 e8  e8 d8 f8   |  f8 e8 g8  f8 bf8 a8 | \mBreak
				<f a c'>4. c'8 a8 f8 | f8 e8 f8 g8 e8 c8 | c8 d8 e8 e8 d8 f8 | f8 e8 g8 f8 bf8 a8 | g8 f8 e8 f4. | s2.  | f8 e8 f8 g8 e8 c8 | \mBreak
				c8 d8 e8 e8 d8 f8 | f8 e8 g8 f8 bf8 a8 | s2. | f8 e8 f8 g8 e8 c8 | c8 d8 e8 e8 d8 f8 | f8 e8 g8 f8 bf8 a8  g8 f8 e8 <a, f>4. \bar "||"
			}	% end voice one
			\new Voice  \fixed c' {
				\voiceTwo
				s2. | s2. | s2. | s2. | s2. | s2. | 
				s2. | s2. | d4 c8 s4. | s2. | s2. | s2. | s2. | 
				s2. | s2. | s2. | s2. | d4 c8 a,4. | <f a c' f'>4. <f f'>16 c'16 a16 f16 f8 | s2. |
				s2. | s2. |  <f a c' f'>4. <f f'>16 c'16 a16 f16 f8 | s2. | s2. | bf,4. a,4. |  d4 c8 s4. | 
			} % end voice two
		>>
		} % end staff up
		\new   Staff = "down" {
		<<
			\clef bass
			\global
			\new Voice  \fixed c  {
				\voiceThree
				f4. s4. | <a, f>4. <c e>4. | e4 g8 f4 a8 | g4 bf8 s4. | f4. s4. | s2. |
				e4 g8 f4 a8 | g4 e8 f4. | bf,4 c8 f,4. \bar "||" s2. | s2. | s2. | s2. |
				 s2. | s2. | s2. | g4 e8 f4. |  bf4 c8 f4. \bar  "||" s2. | s2. 
				 <a, a>4. s4. | s2. | s2. | s2. | s2. | s2. | s2. |
			} % end voice three
			\new 	Voice \fixed c {
				\voiceFour
				s4. f,4. | s2. | c4. c4. | c4. <f a>4 r8 | s4. f,4. | <a, f>4. <c e>4. |
				c4. c4. | c4. d4. | s2. | f4. <a, f>4. | <d bf>4. <c e>4. | <c e>4. <c f>4. | <c g>4. <f a>4 r8 |
				f4. <a, f>4. | <d bf>4. <c e>4. | <c e>4. <c f>4. | c4. d4. | s2. |f4. <f, f>4. | <d b>4. <e c'>4. | 
				s4. <b, f>4. | <c bf>4. <f a>4 r8 | f4. <f a,>4. |  <b d>4. <e c'>4. | <a, a>4. <bf, f>4. | g,4. d4. | bf,4 c8 f,4. | 
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