\version "2.22.0"
\language "english"

global = {
	\time 4/4
	\key f \major
}

mBreak = { \break }

\header {
%	title = \markup {\medium \caps "Title."}
%	poet = ""
%	composer = ""

%  meter = \markup {\italic "Moderate time."}
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
                          c'4. d'8 c'4 g | a8_( g) f_( e) d2 | <c f>4. f8 <f bf>4 <f d'> | <e bf> <f a> <e g>2 | \mBreak
                          <d g>4. g8 <cs e a>4 <d f> | <d g> <d g bf> <cs e a>4. bf8 | <a c'>8_( bf) a_( g) <b,! f>4 <c e> | <b,! d>4. c8 c2 | \mBreak
                          <c e g>4^\f e8_( f) g4 c | <c f> <bf, e g> <a, f a>2 | <a, f>4. <c e g>8 <c f a>8_( bf) <c f c'>4 | <bf, e> <a, c f> <c e g>2 | \mBreak
                          <d g>4^\ff g8_( a) <d bf>8_( g) bf_( c') | <d g d'>4 c'8 bf <f a>2 | <d f a>4^\pp f <c f c'>4. a8 | <c e g>4. f8 <a, f>2 \fine
			}	% end voice one
			\new Voice  \fixed c' {
                          \voiceTwo
                          c1 | c2 d | s1*2 |
                          s1*2 | c!2 s2 | s1 |
                          s1*4 |
                          s1*4 |
			} % end voice two
                      >>
              } % end staff up
		
		\new Lyrics \lyricmode {	% verse one
		  Shall4. I,8 wast4 -- ing | in4 des -- pair,2 | Die4. be8 -- cause4 a | wo4 -- man’s fair?2 |
                  Or4. my8 cheeks4 make | pale with care,4. Be8 -- cause4 an -- o -- ther’s | ro4. -- sy8 are?2 |
                  Be4 she4 fair -- er | than the day,2 | Or4. the8 flow’4 -- ry | meads in May;2
                  If4 she be not | so to me,2 | What4 care I4. how8 | fair4. she8 be.2 |
		}	% end lyrics verse one
		
		\new   Staff = "down" {
                  <<
                    \clef bass
                    \global
                    \new Voice {
                      \voiceThree
                      s1 | f2 s | s1*2 |
                      s1*2 | s2 d4 c | s4 g, c2 |
                      c2. c8 bf,! | a,4 g, f,2 | s4. c8 s2 | s2 c |
                      bf,2 g,4 g,8 a, | bf,4 a,8 g, s2 | s a,2 | c4 c, f,2 | \fine
                    } % end voice three
                    
                    \new 	Voice {
                      \voiceFour
                      <f a>2 <e g> | f4 a, <bf, f>2 | <a, f> <d f>4 <bf, bf> | <g bf> <f c'> c'2 |
                      bf2 a4 d | bf4 g a2 | f4. e8 s2 | g4 s2. |
                      s1*2 | d4. s8 f4 a | g f s2 |
                      s1 | s2 d2 | d2 s | s1 |
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
			}%end score
		}%end context
	}%end layout
	
	\midi{}

}%end score