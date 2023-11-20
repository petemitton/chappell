\version "2.22.0"
\language "english"

global = {
	\time 6/8
	\key g \major
}

mBreak = { \break }

\header {
%	title = \markup {\medium \caps "Yonder comes a Courteous Knight"}
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
				 <b,g>4 g8 <d g>4 d8 |<c fs>4 <b, g>8 <a, b>4. | a8. b16 c'8 d'4 d'8 |e'8. d'16 c'8 b4. | \mBreak
				 g8. g16 d8 g8.( a16) b16 c'16 | d'4 c'8 <d g b>4 b8 | <g c'>4 c'8 <g b d'>4 <g c' e'>8 | 
				 c'8. d'16 <g b>8 <fs a>4 <d fs a>8 | \mBreak
				 b8.( a16) g8 a8. fs16 d8 | <b, g>4 <d fs a>8 <d b>8 g8 <d fs a>8 | 
				 d'8.( c'16) <d g b>8 a8. a16 d8 | c'8.( b16) a8 <d b>8 g8 r8 | \mBreak
			}	% end voice one
			\new Voice  \fixed c' {
				\voiceTwo
				s2.*2 | <d fs>4. <d g>4.| g4. g4. |
				b,4. d4. | <d a>4. s4. | s2. |fs8 s8*5 |
				<d g>8 s4 d8 s4 | s2. | <d g>8 s8*5 | <d fs>8 s8*5 |
			} % end voice two
		>>
		} % end staff up
		
		\new Lyrics \lyricmode {	% verse one
		  Yon-4der8 comes4 a8 cour-4teous8 knight,4. Lus-8.ti-16ly8 rak-4ing8 o-8.ver16 the8 lay,4.	
		  He8. was16 well8 'ware4 of16 a16 | bon-4ny8 lass,4 As8 | she4 came8 wand'8.ring8. | o-8.ver16 the8 way.4 Then8 |
		  she4 sang8 down8. a16 down,8 | hey4 down8 derry,4 Then8 | she4 sang8 down8. a16 down,8 | hey4 down8 derry.4 8 |
		}	% end lyrics verse one
		
		\new   Staff = "down" {
		<<
			\clef bass
			\global
			\new Voice {
				%\voiceThree
				g,4 r8 b4.( | a4 g8 fs4.) | c'4. b4. | c'4. <g d'>4. |
				g,4 r8 b4.( | fs4. g4) fs8 | e4. d4 c8 | a4 g8 d'4 d,8 |
				g,4. fs,4. | e,4 d,8 g,4 d,8 | b,4 g,8 d4. | d,4. g,4. |
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