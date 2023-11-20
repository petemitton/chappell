\version "2.22.0"
\language "english"

global = {
	\time 3/4
	\key g \minor
}

sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }
mBreak = { \break }

\header {
%	title = \markup {\medium \caps "Title."}
%	poet = ""
%	composer = ""

	meter = \markup {\italic "Slow."}
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
				\partial 8 d8 | g8. a16 <d bf>8 a16_( g16) <fs a>4 | g8. a16 <d bf>8 a16_( g16) fs8 d8 | bf8. bf16 s2 | \mBreak 
			}	% end voice one
			\new Voice  \fixed c' {
				\voiceTwo
				s8 | d4 s2 | d4 s2 | d4 <g c'>8 <g ef'>8 <g d'>4 |
			} % end voice two
		>>
		} % end staff up
		
		\new Lyrics \lyricmode {	% verse one
		  It8 | was8. a16 youth-8.ful16 knight4 | Lov’d8. a16 gal-8 lant8 la-8dy,8 | Fair8. she16 was8 and8 bright;4 | 
		}	% end lyrics verse one
		\new Lyrics \lyricmode {	% verse two
		  Her-8self8. she16 did8 be-16have,16 So4 | courteously4. as8 may8 be,8 | Wedded4 they8 were,8 brave;4 |
		}	% end lyrics verse two
		\new   Staff = "down" {
		<<
			\clef bass
			\global
			\new Voice {
				\voiceThree
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