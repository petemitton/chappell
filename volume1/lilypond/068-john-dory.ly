\version "2.22.0"
\language "english"

global = {
	\time 6/8
	\key c \major
}

mBreak = { \break }

\header {
%	title = \markup {\medium \caps "john dory"}
%	poet = ""
%	composer = ""

%	meter = \markup {\italic "Cheerfully."}
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
				\partial 8 < e g>8| a4 g8 a4 b8 | < e c'>4 g8 g4 e16 e16 | f4 e8 < b, d>4 g8 |\mBreak
				c4. c4 <d g>8 | <e c'>4 c'8 <a d'>4 d'8 | <gs e'>4 e'8 e'4 <a e'>8 | d'4 c'8 c'4 b8 | \mBreak
				 <e g c'>4. <e g c'>4 <c g>8 | f4 e8 d4 g8 | c4. <c g c'>4 <c e>16 <c e>16 | f4 e8 d4 g8 | \partial 8*5 c4.~ c4 |\fine
			}	% end voice one
			\new Voice  \fixed c' {
				\voiceTwo
				s8 | f4. f4.| s4. s4 c8| c4. s4.|
				s2.*3|  <f a>4. <d g>4. | 
				s2. | c4. b,4. | s2. |c4. b,4. | 
			} % end voice two
		>>
		} % end staff up
		
		\new Lyrics \lyricmode {	% verse one
		  As8 | it4 fell8 on4 a8 ho4 -- li8 -- day,4 And16 up16 -- on4 a8 ho4 ly8 |
		  tide,4. a4 John8 Do4 -- ry8 bought4 him16 an16 | am4 -- bling8 nag4 To8 | Pa8-8ris8 for4 to8 |
		  ride,4. a,4 To8 Pa4 -- ris8 for4 to8 | ride,4. a,4 And8 up4 -- on8 a4 ho8 -- ly4. tide.4
		}
		\new   Staff = "down" {
		<<
			\clef bass
			\global
			\new Voice {
				\voiceThree
				c8| f4. d4.| c4._~ c4 c8| d4. g4 g,8|
                              c4. c4 b,8 | a,4. f4. | e4.~ e4 c8 | d4. g4. |
                              c4. c4 e8 | d4. g4. | a4. e4 c8 | d4. g,4. | c4.~ c4 | \fine
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
			\override Staff.Rest.voiced-position=0
			}%end score
		}%end context
	}%end layout

}%end score