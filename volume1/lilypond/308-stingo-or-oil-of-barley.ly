\version "2.22.0"
\language "english"

global = {
	\time 6/8
	\key g \major
}

mBreak = {}

\header {
%	title = \markup {\medium \caps "Title."}
%	poet = ""
%	composer = ""

%	meter = \markup {\italic "Jovially."}
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
                                 <b, e>4 e8 b4 g8 | <d a>8 fs4 d d8 | e4 e8 <ds b>4 g8 | e4. g4. | \mBreak
                                 <b, e>4 e8 b4 g8 | <d a>4 fs8 d4 d8 | e4 e8 <ds b>4 g8 | \partial 8*5 e4. g4 \bar "||" | \partial 8 g8 | <b, e g>4 <e g>8 <e g>4 fs16_( g) | \mBreak
                                 <d fs a>4 <fs a>8 <fs a>4 <d fs a>8 | <d g b>4 b8 s4. | s4. s4 g8 | <b, e g>4 <e g>8 g8. fs16 <b, e g>8 | \mBreak
                                 <d fs a>4 a8 a8._( b16) c'8 | b8._( <fs a>16) <e g>8 <ds a>8 fs4 | e4. g4. \fine |
			}	% end voice one
			\new Voice  \fixed c' {
				\voiceTwo
				s2.*4 |
				s2.*5 |
				s2. | s4. <g e'>4 <fs d'>8 | <g b>4. d'4 s8 | s4. \stemUp e4 \stemDown s8 |
				s4. \stemUp <c e>4 s8 | <e g>4 s8 s4. | s2. |
			} % end voice two
		>>
		} % end staff up
		
		\new Lyrics \lyricmode {	% verse one
		   There’s4 a8 lus4 -- ty8 | li8 -- quor4 which Good8 | fel4 -- lows8 use4 to8 | take4. -- a,4 It8 |
		   is4 dist8 -- ill’d4 with8 | Nard4 most8 rich,4 And8 | wa4 -- ter8 of4 the8 | lake4. -- a;4 | Of8 | Hop4 a8 lit4 -- tle8 |
		   quan4 -- ti8 -- ty,4 And8 | Barm4 to8 it4 they8 | bring4. too;4 Being8 | bar4 -- rell’d8 up,4 They8 |
		   call’t4 a8 cup4 Of8 | dain4 -- ty8 good Old4 | Stin4. -- go.4. |
		}	% end lyrics verse one
		
		\new   Staff = "down" {
		<<
			\clef bass
			\global
			\new Voice {
				\voiceThree
				s2.*3 | g4. b |
				s2.*3 | g4. b4 | d8\rest | <e, e>4 s4. <e, e>8 | 
				<d, d>4  s4. <d, d>8 | s2.*2 | s4. s4 <e, e>8 |
				<d, d>4. <a,, a,> | <b,, b,> fs8 a4 | g4. b | \fine
			} % end voice three
			
			\new 	Voice {
				\voiceFour
				<e g>2. | <d fs> | <c g>4. <b, b> | e2. |
				<e g>2. | <d fs> | <c g>4. <b, b> | e4.~ e4 | s8 | s4 <e b>8 <e b>4 s8 |
				s4 <d a d'>8 <d a d'>4 s8 | <g, g>4. <c c'>4 <d a>8 | g4. b | <e, e>4 <e b>8 <e b>4 s8 |
				s2. | s4. b, | e2. |
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