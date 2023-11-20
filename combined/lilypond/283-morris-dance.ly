\version "2.22.0"
\language "english"

global = {
	\time 4/4
	\key bf  \major
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
				g4. bf8 a g s4 | s4 g'8 a' s4 d' | <f c'>4 <g bf> <f bf d'> <ef a c'> | <d bf>2. <fs d'>4 | g4. bf8 a g s4 | \mBreak
				s4 g'8 a' s4 d' | <f c'> <g bf> <f bf d'> <ef a c'> | \partial 2. <d bf>2. \bar "||" | \partial 4 s4 | c'4. e'8 d'4. g'8 | c'4. ef'8 d'4. g8 | \mBreak
				g'4 bf' a' g'8 fs' | s1*4 | \mBreak
				s1*3 | <d g d'>4\f c'8 bf a4 s8 g | g1 \fine | \mBreak
			}	% end voice one
			\new Voice  \fixed c' {
			  \voiceTwo
			  bf,2. g'4 | f' s bf' d8 ef | s1*2 | s2. g'4 |
			  f'4 s bf' d8 ef8 | s1 | s2. | <bf d'>4 | g2 g | g g |
			  bf2 c' | <bf g'>2. <c' ef' g'>8\ff a' | <d' bf'>4 bf <f bf d'> <ef a c'> | <d bf>2. <f bf d'>8\p ef' | <f bf f'>4 <g bf d'> <g c' ef'> <g d'>8 c' |
			  <fs a d'>2. d'8 ef' | <f! bf f'!>8 f' ef' d' <g bf g'>4 c'8 d' | <ef a ef'> ef'8 d' c' <f a f'>4 bf8 c' | s2 <d g>4 fs | bf,1 |
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
			  \voiceThree
			  s1 | a4 ef' s bf,8 c | s2. f,4 | bf,4 bf,8 c s4 c' | bf2. s4 |
			  a4 ef' s bf,8 c | d4 s2 f,4 | bf,2. | s4 | s1*2 |
			  s1*2 | s2. f,4 | bf,2. bf,8 c | s2 c4 s |
			  s2. bf,8 c | d4 c8 bf, s4 a,8 bf, | c4 bf,8 a, d4 g,8 a, | bf,4 a,8 g, d4 d, | g,1 | \fine
			} % end voice three
			
			\new 	Voice {
			  \voiceFour
			  <g, g>2. <ef bf>4 | f2 <bf d'>4 s | d ef f s | s2 d | g2. <ef bf>4 |
			  f2 <bf d'>4 s | s ef f s | s2. | <g bf d'>4 | <g c' ef'>2 <g bf d'> | <g c' ef'> <g bf d'> |
			  <d g bf d'>2 <d a c'> | <g bf>2. <f c' ef'>4 | <bf d'> d8 ef f4 s | s1 | d4 g s ef |
			  d2. s4 | s2 ef4 s | s1*3 |
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
	\midi{}

}%end score