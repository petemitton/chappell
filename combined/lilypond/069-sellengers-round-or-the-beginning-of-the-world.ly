\version "2.24.0"
\language "english"

global = {
	\time 6/8
	\key c \major
}

mBreak = {\break }

\header {
%	title = \markup {\medium \caps "Sellenger's Round, or The Beginning of the World."}
%	poet = ""
%	composer = ""

%	meter = \markup {\italic "Smoothly and in moderate time."}
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
				 g4.->~ g8. a16 <f b>8 | c'4.~ c'8. d'16 <b e'>8 | d'4 c'8 b8 a8 b8 | <e c'>2. | \mBreak
				 g4.->~ g8. a16 <f b>8 | c'4.~ c'8. d'16 <b e'>8 | d'4 c'8 b8 a8 b8 | <e c'>4._~ <e c'>4 <f d'>8| <g e'>4._~ <g e'>8 d'8 c'8|\mBreak
				 <b d'>4.~<b d'>4 d'8 | b8. c'16 d'8~d'8. c'16 b8 | <fs a>4.( <fs d'>4) <g b>8 | c'8. d'16 c'8 b4 g8 | a8. b16 c'8 b4 g8 | \mBreak
				 a4 g8 fs8. e16 fs8 | <b, g>4.~<b, g>4 a16 b16 | c'8. d'16 c'8 b4 g8 | a8. b16 c'8 b4 g8 | a8. b16 g8 fs8. e16 fs8 | \mBreak
				 <b, g>2. | g4.->~g8. a16 <f b>8 | c'4.~c'8. d'16 <b e'>8 | d'4 c'8 b8. a16 b8 |<e c'>2. | \mBreak
				 b4.->~b8. a16 <f b>8 |c'4.~c'8. d'16 <b e'>8 | d'4 c'8 b8. a16 b8 | <e c'>2. \fine |
			}	% end voice one
			\new Voice  \fixed c' {
				\voiceTwo
				b,4.~ b,4 s8 | e4.~ e4 s8 | a4. g4 f8 | s2. |
				b,4.~ b,4 s8| e4.~ e4 s8| a4. g4 f8| s2.*2 |
				s2. | g2. | s2. | g4. d4. | fs4. d4. |
				e4. d4 c8 | s2. | g4. d4. | fs4. d4. | e4. d4 c8 |
				s2. | b,4.~b,4 s8 | e4. e4 s8 | a4. g4 f8 | s2. |
				b,4.~b,4 s8 | e4.~e4 s8 | a4. g4 f8 | s2. |
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
                                g4 f8 e4 d8 | c4 b,8 a,4 g,8 | f,4. g,4. | a,8. g,16 f,8 e,8 d,8 c,8 |
                                g4 f8 e4 d8| c4 b,8 a,4 g,8| f,4. g,4.| c,4. c4.| c4. e4.|
                                g4. g,4. | g4. b4. | d'4.( d4) g8 | e4. g4. | d4. g,4. |
                                c4. d4. | e8. d16 c8 b,8 a,8 g,8 | e4. g4. | d4. g,4. | c4. d4. |
                                g,4. g4.->~ | g4 f8 e4 d8 | b,4 a,8 g,4 f,8 | f,4. g,4. | a,8. g,16 f,8 e,8 d,8 c,8 |
                                g4 f8 e4 d8 | c4 b,8 a,4 g,8 | f,4. g,4. | c,2. | \fine
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
% 			\override Staff.Rest.voiced-position=0
% 						  \override Staff.VerticalAxisGroup.default-staff-staff-spacing.basic-distance = #8
% 						  \override Staff.VerticalAxisGroup.score-system-spacing =#'((basic-distance . 12)
%        (minimum-distance . 40)
%        (padding . 10)
%        (stretchability . 25))
			}%end score
		}%end context
	}%end layout

}%end score