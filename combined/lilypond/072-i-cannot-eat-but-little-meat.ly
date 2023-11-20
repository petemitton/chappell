\version "2.24.0"
\language "english"

global = {
	\time 4/4
	\key c \major
}

mBreak = { \break }

\header {
%	title = \markup {\medium \caps ""}
%	poet = ""
%	composer = ""

%	meter = \markup {\italic "In moderate time and well marked."}
	arranger = ""
}
\score {

	\new ChoirStaff {
	<<
		\new Staff = "up"  {
		<<
			\global
			\new 	Voice = "one" 	\fixed c' {
				\voiceOne
				\partial 8*5 g8 <c e g>4 <c e g>4 |<c f a>4 <c g>4 <c f a>4 <d f b>4 | <c e c'>2 c2 | 
				<b, f>4 <c e>4 <c f>4 <b, d g>4 | \mBreak
				<c e>4. c'8 <e g c>4 <e g c> | <e a c>^\< <e a c> <d a d'> <a d> |<gs b e'>2 <g e' g'!> \!\>| 
				<b d' f'>4 <g c' g'> <a c' f'> <g b d'>\! | \partial 2 <g, e>2 \fine |
			}	% end voice one
		>>
		} % end staff up
		
		\new Lyrics \lyricmode {	% verse one
		  I8 can-4not4 eat4 but4 lit-4tle4 meat.2 My2 sto-4mach4 is4 not4 |
		  good;4. But8 sure4 I think that I can drink2 With him4 that wears a hood.2
		}	% end lyrics verse one
		
		\new   Staff = "down" {
		<<
			\clef bass
			\global
			\new Voice {
				%\voiceThree
				r8 c4 c4 | f4 e4 f4 d4 | a,2 e2 | d4 c8 b,8 a,4 g,4 |
				c2 c4 b, | a, g, f, f | e2 c | d4 e f g | c'2 \fine |
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