\version "2.22.0"
\language "english"

global = {
	\time 6/8
	\key ef \major
}

mBreak = { \break }

\header {
%	title = \markup {\medium \caps "Title."}
%	poet = ""
%	composer = ""

%	meter = \markup {\italic "Pastoral character."}
%	arranger = \markup {\caps "\"A mery Ballet of the Hathorne Tre.\""}
}
\score {

	\new ChoirStaff {
	<<
		\new Staff = "up"  {
		<<
			\global
			\new 	Voice = "one" 	\fixed c' {
				\voiceOne
				\partial 8 bf8 \repeat volta 2 {  g4 ef8 ef4 ef8| g4 af8 bf( af) g| af4 f8 f4 f8 | af4 bf8 c'8( bf8) af8|\mBreak
				g4 ef8 ef4 ef8|<ef ef'>4 ef'8  d'( c') bf|<g c'>4 c'8 d'4 bf8| c'4 a8  f( g) < df af>|\mBreak
				<ef g>4 ef8 ef4 ef8| g4 af8 bf8( af8) g8| af4 f8 f4 f8| af4 bf8 c'8( bf8) af8|\mBreak
				g4 ef8 ef4 ef8| < ef ef'>4< ef ef'>8 d'8( c'8) bf8 | af4 f8 f4 f8 | < f f'>4 ef'8 d'8( c'8) bf8 }
			}	% end voice one
			\new Voice  \fixed c' {
				\voiceTwo
			} % end voice two
		>>
		} % end staff up
		
		\new Lyrics \lyricmode {	% verse one
		   It8 was4 a8 maid4 of8 my4 coun-8try,4 As8 she4 came8 by4 a8 haw4-thorn8 tree,4 As8
		   full4 of8 flow'rs4 as8 might4 be8 seen,4 She8 marvell'd4 to8 see4 the8 tree4 so8 greeen.4 At8
		   last4 she8 ask8-8ed8 of4 this8 tree,4 How8 came4 this8 fresh4-ness8 un8-8to8 thee,4 And8
		   ev'8-8ry8 branch4 so8 fair4 and8 clean?4 I8 mar8-8vel8 that4 you8 grow4 so8 green.4 The8
		}	% end lyrics verse one
		
		\new   Staff = "down" {
		<<
			\clef bass
			\global
			\new Voice {
				\voiceFour
				r8| <ef bf>2.|<ef bf>2.|<ef f c'>2.|<ef f d'>2.|
				< ef bf>4. < d bf>4.| < c a>4. < g bf>4.| ef4.  e4. |<f a>4 r8 r4< bf, bf>8|
				< ef bf>2.| < ef bf>2.| < ef f c'>2.|< ef f d'>2.
				< ef bf>4. < ef bf>4.| < d c'>4 c'8 bf8 af8 g8| f4. <ef af c'>4.| d4. bf,4 s8|
			} % end voice three
			
			\new 	Voice {
				\voiceThree
				s8 s2.*4|
				s2.*2 | ef'4 c'8 bf4 g8 |
				s2. *8 |
				bf2. |
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