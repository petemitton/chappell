\version "2.22.0"
\language "english"

global = {
	\time 6/8
	\key g \minor
}

ritardo = \markup {\italic "ritard."}

mBreak = {}

\header {
%	title = \markup {\medium "SONG OF THE VICTORY OF AGINCOURT."}
%	poet = ""
%	composer = ""

%	meter = \markup {\italic "Slowly and Majestically."}
%	arranger = "1415."
}
\score {

	\new ChoirStaff {
	<<
		\new Staff = "up"  {
		<<
			\global
			\new 	Voice = "one" 	\fixed c'{
				\voiceOne
				\partial 8 <d g bf d'>8^\f | <d fs a d'>4 <g c'>8 <d g d'>4 <ef g c'>8 | <d g c'>8 <d g bf>4 <d fs a>4 <d g d'>8 | <ef g d'>8\( c'8\) <d a>8 <bf, d g>8\( a8\) g16\( d16\) | <a, d f!>8 <g, cs e!>4 <f, d>4 <d f a>8 | <c e g d'>4 <c f c'>8 <d f d'>8\( c'8\) <d g bf>8 |\mBreak
				<c f a>8 <bf, e g>4^\pp <a, f>4 <d f>8 | <cs e a >4 <d f a>8 <bf, d g>4^\ritardo <bf, d f>8 | <a, d f>8 <g, cs e!>4 <fs, a,  d>4\fermata<d fs! a>16^\ff _\( bf16 | <ef! g c'>16 d'16 c'8\) <c g>8 <d g bf>8_\( <c fs a>16 g16 a8\) | <bf, d g>4.~ <bf, d g>4 s8 \bar "||"
			}	% end voice one
			\new Voice  \fixed c {
				\voiceTwo
			} % end voice two
		>>
		} % end staff up
		
		\new Lyrics \lyricmode {
		  \partial 8 Our8 | king4 went8 forth4 to8 | Nor-8 man-4 dy,4 With8 | grace4 and8 might4 of8 | chi-8 val-4 ry,4 The8 | God4 for8 him4 wrought8 |\mBreak
		  marv'4. lously,4 Where-8 | fore4 England4. may8 | call8 and4 cry,4 “De4 --8 o8 gra8. -16 ti16 -16 as!”8
		}
		\new   Staff = "down" {
		<<
			\clef bass
			\global
			\new Voice {
				\voiceThree
			} % end voice three
			
			\new 	Voice {
				\voiceFour
				\partial 8 <g, g>8 | <d,d>4 <ef, ef>8 <bf,, bf,>4 <c,c>8 | <g,, g,>8 <g,, g,>4 <d, d>4 <bf,, bf,>8 |
				<c, c>4 <fs,, fs,>8 <g,, g,>4 <bf,, bf,>8 | <a,, a,>8 <a,, a,>4 <d, d>4 <d f>8 | <c g>4 <a, f>8 <bf, f>4 <g, d g>8
				<c f a>8 <c g>4 <d f>4 bf,8 | a,4 f,8 g,4 g,8 | a,8 a,4 <d, a, d>4_\fermata <d, d>8 | 
				<c, c>4 <ef, ef>8 <d, d>8 <d, d>4 | <g, g>4 <d, d>8 <g, g>4 s8 \bar "||" 
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
