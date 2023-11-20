\version "2.22.0"
\language "english"

global = {
	\time 4/4
	\key f \major
}

mBreak = { \break }

\header {
%	title = \markup {\medium \caps "Ah! the sighs that come fro' my heart."}
%	poet = ""
%	composer = ""

%	meter = \markup {\italic "Smoothly and with expression."}
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
                              f4. g8 bf4 a4 | g8 d'4 d'8 d'4 d4 | 
                              <c f>4. <c e g>8 <c f a>4 <d f bf>4|<c f a>4.( g16f16 a4) a4|\mBreak
                              a4. bf8 <c g c'>4 <f a c'>4 | ef'8_( d'8) c'8( bf8) a4. a8 | 
                              d'4. g8 c'8 f8 bf8 bf8 | 
                              a16 bf16 c'16 bf16 a16 g16 a8 g2| 
			}	% end voice one
			\new Voice  \fixed c' {
				\voiceTwo
			 s2 f2| d2 s2 | s1*2 |
			 <d f>2 s2 | g2 fs2| d4 e!4 c4 <d g>4| <f a>2 <e g>2 \bar "||"
			} % end voice two
		>>
		} % end staff up
		
		\new Lyrics \lyricmode {	% verse one
		        Ah!4. the8 syghes4 that4 | come8 fro'4 my8 heart,4 They4 | grieve4. me8 passing2 | sore:...2. Syth4 |
		        I4. must8 fro'4 my4 | love4 de8-8 part,4. Fare-8 | well4. my8 joye8 for8 e-8ver-8 | more.1 |
		}	% end lyrics verse one
		
		\new   Staff = "down" {
		<<
			\clef bass
			\global
			\new Voice \fixed c' {
				\voiceThree
				a,4. bf,8 d4 c4 |<bf,,bf,>2. <bf,,g,>4|<c,a,>4. c,8 c,4 bf,,4|f,,1|
				d,2 e,4 f,4 |c,2 d,2 |<bf,,bf,>4 <c,g,>4 <a,,f,>4 g,,4 |<c, c>1||
			} % end voice three
			
			\new 	Voice {
				\voiceFour
				f,2 f,2| s1 |
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