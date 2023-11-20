\version "2.22.0"
\language "english"

global = {
	\time 4/4
	\key g \minor
}

mBreak = { \break }

\header {
%	title = \markup {\medium \caps "Title."}
%	poet = ""
%	composer = ""

%	meter = \markup {\italic "Lively."}
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
                                <d bf d'>8_( c') bf a bf4 f | g8_( a) bf_( c') a4 d'8_( c') | bf_( a) g4 g4. fs8 | \mBreak
                                g2. d4 | g a bf4. bf8 | c'4 d' ef'4. e'8 | d'8_( c') bf4 a4. g8 | g1 \bar "||" | \mBreak
                                f4 g8_( a) bf4. d8 | ef8_( f) g4 f4. f8 | g_( a) bf4 a4. bf8 | c'2. d'4 | \mBreak
                                ef'4 d' c'4. bf8 | a4. g8 f4 f | g8_( a) bf4 a4. bf8 | <d bf>1 \bar "||" | \mBreak
                                d'8_( c') bf a bf4 f | g8_( a) bf_( c') a4 d'8_( c') | bf_( a) g4 g4. fs8 | g2. d4 | \mBreak
                                g4 a bf4. bf8 | c'4 d' ef'4. ef'8 | d'_( c') bf4 a4. g8 | \fine |
			}	% end voice one
			\new Voice  \fixed c' {
                          \voiceTwo
                          s1 | ef2 c4 d | d2 d |
                          d2. s4 | d2 d | g g | g fs | s1 |
                          d2 s | s1 | ef2 e!2 | f2. f4 |
                          g2 g | c s | ef ef | s1 |
                          <d bf>4 s2. | ef2 c4 d | d2 d | d2. s4 |
                          d2 d | g g | g fs | s1 |
			} % end voice two
		>>
		} % end staff up
		
		\new Lyrics \lyricmode {	% verse one
		  I'll4 go8 no more4 to8 the | New4 Ex -- change, There | is no room4. at8 |
                  all,2. It4 | is so throng’d4. and8 | crow4 -- ded by4. the8 | gal4 -- lants of4. White8 -- hall.1 |
                  But4 I’ll go4. to16 the16 | Old4 Ex4 -- change,4. Where8 | old4 things are4. in8 | fashion;2. For4 |
                  now4 the Kew’s4. be8 -- come4. the8 shop4 Of8 this8 | bless4 -- ed Re4. -- for8 -- mation.1 |
                  Come,4 my8 new Court4 -- iers, | what d’ye lack? Good | con -- scien -- ces?4. if8 | you4. do,4. Here’s4 |
                  long4 and wide,4. the8 | on4 -- ly wear,4. The8 | straight4 will trou4. -- ble8 | you.1 |
		}	% end lyrics verse one
		
		\new   Staff = "down" {
		<<
			\clef bass
			\global
			\new Voice {
                          \voiceThree
                          g,2. s4 | s1*2 |
                          s1*2 | s2 c | s1*2 |
                          s1*3 | s2. <bf, bf>4 |
                          s1 | f1 | s1*2 |
                          g,2. s4 | s1*3 |
                          s1*4 | \fine
			} % end voice three
			
			\new 	Voice {
                          \voiceFour
                          s2. d4 | ef2 f4 fs | g2 <d a> |
                          <g bf>2. d4\rest | bf2 g | ef s | <d bf> <d c'> | <g bf>1 |
                         bf1 | <ef g bf>2 <d bf> | <ef bf> g | <f a>2. s4 |
                          <ef bf>2 <ef g> | ef <d bf> | <ef bf> f | <bf, f>1 |
                          s2. d4 | ef2 f4 fs | g2 <d a> | <g bf>2. d4\rest |
                          bf2 g | ef <c c'> | <d bf> <d c'> | <g bf>1 |
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