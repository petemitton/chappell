\version "2.22.0"
\language "english"

global = {
	\time 6/8
	\key f \major
}

mBreak = { \break }

\header {
%	title = \markup {\medium \caps "Oft have I ridden upon my Grey Nag."}
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
				a8 f f f f f | a a bf c'4 c'8 | bf g g g4 g8 | bf4 c'8 d'4 bf8 |\mBreak
				a4 f8 f4 f8 | a4 bf8 c'4 c'8 | bf8. a16 g8 a8. g16 a8 |< c g>4. < c g> \bar "||"\mBreak
			}	% end voice one
			\new Voice  \fixed c' {
				\voiceTwo
				 c2.~ | c |  d~ |  d |
				 c2.~| c| c4. c|
			} % end voice two
		>>
		} % end staff up
		
		\new Lyrics \lyricmode {	% verse one
		  Oft8 have I riddden4 up-8on my grey nag,4 And8 with his cut tail4 he8 play'd4 the8 wag,4 And8
		  down4 he8 fell4 up-8on4 his8 crag.4 Fa,8 la,8. re,16 la,8 la,8. ri16 dan-8di-4.no.
		}	% end lyrics verse one
		
		\new   Staff = "down" {
		<<
			\clef bass
			\global
			\new Voice {
				\voiceThree
				< f a>2.~|< f a>|< b, g>~|< b, g>|
				< c a>~|< c a>|< c g>4. < c f>|< c e> < c e>||
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