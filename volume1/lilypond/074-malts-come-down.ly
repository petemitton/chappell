\version "2.24.0"
\language "english"

global = {
	\time 6/8
	\key g \major
}

mBreak = { \break }

\header {
%	title = \markup {\medium \caps ""}
%	poet = ""
%	composer = ""

%	meter = \markup {\italic ""}
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
				\partial 8 g8 | g8. a16 b8 b8.( a16) b8 | 
				g8.( a16) b8  c'4 c'8 | b8.( a16) b8 a4 g8 | fs8.( e16) fs8 <b, g>4. \mBreak
				g8.( a16) b8 <d b>4. | g8.( a16) b8 c'4. | 
				b8. a16 b8 a4 g8 | \partial 8*5 fs8. e16 fs8 <b, g>4 \bar "||" | \fine
			}	% end voice one
			\new Voice  \fixed c' {
				\voiceTwo
				s8 | d4. d | e e | ds e | c s |
				d s | e e | ds e | c s4 |
			} % end voice two
		>>
		} % end staff up
		
		\new Lyrics \lyricmode {	% verse one
		  There's8 | ne-8.ver16 a8 maid4 in8 | all4 this8 town,4 But8 |well4 she8 knows4 that8 | malt's4 come8 down,4. |
		  Malt's4 come8 down,4. | malt's4 come8 down,4. | From8. an16 old8 an-4gel8 | to8. a16 French8 crown.4 |
		}	% end lyrics verse one
		
		\new   Staff = "down" {
		<<
			\clef bass
			\global
			\new Voice {
				%\voiceThree
				r8 | <g b>4. <fs g b> | <e g b> <g, g> | <b, fs> <c e> | <d! g> <g, g> |
				<g b> <fs g b> | <e g b> <g, g> | <b, fs> <c e> | <d! a> <g, g>4 | \fine
			} % end voice three
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