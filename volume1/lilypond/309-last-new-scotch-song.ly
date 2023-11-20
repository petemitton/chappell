\version "2.22.0"
\language "english"

global = {
	\time 6/8
	\key e \minor
}

mBreak = { \break }

\header {
%	title = \markup {\medium \caps "Title."}
%	poet = ""
%	composer = ""

%	meter = \markup {\italic "Gracefully."}
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
                                 e4 <b, ds fs>8 <b, e g>4 <d! fs a>8 | b8.( a16) <d d'>8 d4 <b, d>8 | <c e>4 e8 b8.( a16) g_( fs) | e4. g | \mBreak
                                 e4 <b, ds fs>8 <b, e g>4 <d! fs a>8 | b8.( a16) <d d'>8 d4 <b, d>8 | <c e>4 e8 b8.( a16) g_( fs) | \partial 8*5 e4. g4 \bar "||" | \partial 8 g8 \mBreak
                                 <e g>4 g8 g8._( a16) g8 | <fs a>4 a8 a8._( b16) a8 | <g b>4 b8 e'8._( d'16) <fs c'>8 | <g b>4. d'4 g8 | \mBreak
                                 <b, g>4 g8 <e a>4 a8 | <ds fs b>4  <ds fs b>8 \stemDown <e b>4 \stemUp s8 | b8.( <fs a>16) <e g>8 fs8.( e16) ds8 | e4. b | \fine
			}	% end voice one
			\new Voice  \fixed c' {
				\voiceTwo
				s2. | \stemUp <d g>4 s2 | s4. ds4 s8 | s2. |
				s2. | \stemUp <d g>4 s2 | s4. ds4 s8 | s4. s4 | s8 | \stemDown
				s2.*4 |
				s2. | s4. e'8.^( d'16) <e a c'>8 | \stemUp <e g>4 s8 ds4 s8 \stemDown | s2. |
			} % end voice two
		>>
		} % end staff up
		
		\new Lyrics \lyricmode {	% verse one
		  Cold4 and8 raw4 the8 | north4 did8 blow4 Bleak8 | in4 the8 morn4 -- ing8 | ear4. -- ly |
		  All4 the8 trees4 were8 | hid4 with8 snow;4 Dag8 -- gled4 in8 win4 -- ter’s8 | year4. -- ly:4 | As8 |
		  I4 came8 ri4 -- ding8 | on4 the8 slough,4 I8 | met4 a8 far4 -- mer’s8 | daugh4. -- ter,4 With8 |
		  ro4 -- sy8 cheeks4 and8 | bon4 -- ny8 brow,4 Good8 | faith,4 made8 my4 mouth8 | wa4. -- ter. |
		}	% end lyrics verse one
		
		\new   Staff = "down" {
		<<
			\clef bass
			\global
			\new Voice {
				\voiceThree
				g4 s2 | s2.*2 | g4. b |
				g4 s2 | s2.*2 | s4. s4 | s8 |
				s2.*4 |
				s4. c | b,4 a,8 g,4 a,8 | b,4. a8. g16 fs8 | s2. | \fine
			} % end voice three
			
			\new 	Voice {
				\voiceFour
				e,4 b,8 e4 d8 | g4 <b, g>8 <d fs>4 <g, g>8 | <c g>4 <c g>8 <b, b>4. | e2. |
				e,4 b,8 e4 d8 | g4 <b, g>8 <d fs>4 <g, g>8 | <c g>4 <c g>8 <b, b>4. | <e g>4._( <e b>4) | d8\rest |
				<e b>2. | <d d'> | <g d'>4. c'8. b16 a8 | g4. b |
				e4. s | s2. | s4. b, | <e g>2. |
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