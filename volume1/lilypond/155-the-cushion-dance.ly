\version "2.22.0"
\language "english"

global = {
	\time 3/4
	\key g \major
}

mBreak = {\break}

\header {
%	title = \markup {\medium \caps "Title."}
%	poet = ""
%	composer = ""

%	meter = \markup {\italic "Slow."}
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
				<d b>4_(\p <b, g>4) <d a>4 | b4. b8 a4 | g4 g4 < c fs>4  | <b, g>2. | <d b>4_(\f <b, g>4) <d a>4 | b4. b8 a4 | \mBreak 
				g4 g4 fs4 | <b, g>2. \bar "||" | <d fs a>4\p a4 a4 | d'4. c'8 b4 | a4. g8 fs8 e8 | <a, fs>4 d2 | <d fs a>4\f a4 a4 | \mBreak 
				d'4. c'8 b4 | a4. g8 fs8 e8 | <a, fs>4 d2 \bar "||" | <d b>4_(\p <b, g>) <d a> | b4. b8 a4 | g4 g4 <c fs>4 | <b, g>2. | \mBreak 
				<d b>4_(\f <b, g>4) <d a>4 | b4. b8 a4 | g4 g4 fs4 | <b, g>2. \bar "||" | 
				\time 6/8 <b, d g>4^\markup {\italic "Quick."} g8 g4 <fs a>8 | b8. a16 b8 g8. a16 b8 | \mBreak
				a8. b16 c'8 b8. a16 b8 | <fs a>4.~ <fs a>4 a8 | <fs a>4 a8 a8. b16 c'8 | 
				<d g d'>4 d'8 <fs a d'>4 c'8 | b8. a16 g8 b4 <c fs a>8 | <b, g>2. \fine | \mBreak
				
			}	% end voice one
			\new Voice  \fixed c' {
				\voiceTwo
				s2. | g4( e4) fs4 | fs4 e8 d8 s4 | s2.*2 | g4( e4) fs4 |
				fs4 e8 d8 c4 | s2.*2 | <d a>2 g4 | e4 c2 | s2.*2 |
				<d a>2 g4 | e4 c2 | s2.*2 | g4( e4) fs4 | fs4 e8 d8 s4 | s2. |
				s2. | g4( e4) fs4 | fs4 e8 d8 c4 | s2.*2 | g4 s2 |
				d8 s4 d8 s4 | s2. | s4. <d fs>8 s4 | s2. | d4.~ d4 s8 | s2. |
			} % end voice two
		>>
		} % end staff up
		
		\new Lyrics \lyricmode {	% verse one
		  
		}	% end lyrics verse one
		
		\new   Staff = "down" {
		<<
			\clef bass
			\global
			\new Voice {
				g,4( g4) fs4 | e4( c4) d4 | b,4 c4 d4 | e4 d8 c8 b,8 a,8 | g,4( g4) fs4 | e4( c4) d4 |
				b,4 c4 d4 | g,4 b,4 g,4 | d,2. | fs4 d4 e4 | c4 a,2 | d4. a,8 fs,8 a,8 | d,2. | 
				fs4 d4 e4 | c4 a,2 | d4. c8 b,8 a,8 | g,4( g4) fs4 | e4( c4) d4 | b,4 c4 d4 | e4 d8 c8 b,8 a,8 | 
				g,4( g4) fs4 | e4( c4) d4 | b,4 c4 d4 | g,2. | g,4. d4. | g4. e4. |
				fs4. g4. | d'4 a8 d4. | d4. c4. | b,4. a,4. | d4. d4. | g4 d8 g,4. | \fine
			} % end voice three
	% end voice four

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