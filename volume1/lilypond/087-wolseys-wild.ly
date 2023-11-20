\version "2.24.0"
\language "english"

global = {
	\time 6/8
	\key d \major
}

mBreak = { \break }

\header {
%	title = \markup {\medium \caps "Title."}
%	poet = ""
%	composer = ""

%	meter = \markup {\italic "Moderate time."}
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
\partial 8 a8 |
 <fs d'>4 a8  fs8_( a8) fs8 |
 g8( a8) fs8 <cs e>4 d8 |
 <fs d'>4 a8 fs8 a8 fs8 | \mBreak
 \partial 8*5 cs'8 b8 cs'8 d'4 \bar "||"| 
 \partial 8 a8 |
 <d_( fs>g8) a8 d4 a8 |
 b8( cs'8) d'8 <e cs'>4 a8 |
 <d_( fs>g8) a8  a8_( b8) a8 |
 b8( cs'8) d'8 cs'4 a8 | \mBreak
 fs8 g8 a8 e8 fs8 g8 |
 fs8 g8 a8  g8( a8) b8 |
 fs8 g8 a8  e8( fs8) g8 |
\partial 8*5 fs8( e8) <cs e>8 d4 \fine |
			}	% end voice one
			\new Voice  \fixed c' {
				\voiceTwo
				s8|
s2.|
 d4. s4. |
s2.|
 g4. fs4 |
s8|
s2.|
 g4. s4. |
 s4. d4. |
 g4. e4. |
 d4. cs4. |
 d4. d4. |
 d4. b,4. |
 a,4 s4. |
			} % end voice two
		>>
		} % end staff up
		
		\new Lyrics \lyricmode {	% verse one
Quoth8 | John4 to8 Joan4 wilt8 | thou4 have8 me?4 I8 | prithee4 now,8 wilt?8 And8 I'se8 |
marry4 with8 thee,4 | My8 | cow,4 my8 calf,4 my8 | house,4 my8 rents,4 And8 | all4 my8 lands4 and8 | tenements:8*5 O8 |
say,8 my8 Joan,8 say8 my8 Joan,8 | will8 not8 that8 do?4 I8 | cannot4 come8 ev’4 -- ry8 | day4 to8 woo.4
		}	% end lyrics verse one
		
		\new   Staff = "down" {
		<<
			\clef bass
			\global
			\new Voice {
				\voiceFour
				s8|
s2.|
 d2. |
s2.|
s2.|
s2.|
s2.|
s2.|
s2.|
s2.|
s2.|
s2.|
 a,4. d4 | \fine
			} % end voice three
			
			\new 	Voice {
				\voiceThree
				r8 |
 d,2. |
 b4 a8 g4 fs8 |
 d,2. |
 a,4. d4 |
 |
 r8 |
 d4. fs4. |
 g4. a4. |
 d4. fs4. |
 g4. a4. |
 d4. a,4. |
 d4 cs8 b,4 g,8 |
 d,4. g,4. |
s4 g8 fs4 |
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