\version "2.22.0"
\language "english"

global = {
	\time 2/4
	\key bf \major
}

mBreak = { \break }

\header {
%	title = \markup {\medium \caps "Title."}
%	poet = ""
%	composer = ""

%	meter = \markup {\italic "With expression."}
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
                          \repeat volta 2 { \partial 8 g16_( a) | bf8. c'16 bf8 a16_( g) | <a, fs>8 d4 d8 | <d g>8 <c fs a> <bf, g bf> <g c'> | <fs a d'>4. <d fs a>8 | \mBreak
                          <d bf>8 g <ef c'>8. <g bf>16 | <d a> g fs e! d8\noBeam bf16 c' | d'8 g16_( a) bf8. a16 | \partial 4. <bf, g>4. } | \partial 8 g8 | \mBreak
                          a8 a a bf16_( c') | d'8 a16_( g) fs e! d8 | g8. g16 a_( bf) c'_( d') | <g bf>4. bf8 | <ef a c'> <d bf d'> c'8. bf16 | \mBreak
                          <d bf>2 | s2 | <g bf>16 c' d' g <g bf>8 <fs a> | fs16 g <fs a> d <d g bf>8 <c fs a> | \partial 4. <bf, g>4. \fine | 
			}	% end voice one
			\new Voice  \fixed c' {
                          \voiceTwo
                          s8 | <d g>4 ef | s2*3 |
                          s2 | s4. <d g>8 | <d g>[ <bf, g> <d g> <c fs>] | s4. | s8 |
                          d2 | d8 ef s4 | \stemUp d4 \stemDown fs4 | s4. g16 f | s4 <f bf>8 a |
                          s2 | <bf d'>16 ef' f' bf <bf d'>8 <a c'> | s2*2 | s4. |                         
			} % end voice two
		>>
		} % end staff up
		
		\new Lyrics \lyricmode {	% verse one
                  The8 | fair8. -- est16 nymph8 the | val8 -- leys4 Or8 | mount8 -- ains e -- ver | bred,4. The8 |
		  shep8 -- herd’s joy,8. So16 | beau -- ti -- ful and coy,8 Fair | Phi -- li -- da8. is16 | dead!4. | But8 |
                  cruel4 fate,8 the | beau -- ties en -- vying | Of8. this16 bloom8 -- ing8 | rose,4. So8 | ready4 to8. dis-16 |
                  close,2 | With16 a frost un -- kind8 -- ly | Nipt16 the bud un -- time8 -- ly, | So16 a -- way her glo8 -- ry | goes.4. | 
		}	% end lyrics verse one
                \new Lyrics \lyricmode {% verse two
                  On8 | whom8. they16 oft8 have | tend8 -- ed4 And8 | ca8 -- rol’d in the | plains,4. And8 |
                  for8 her sake,8. Sweet16 | Rounde8 -- lays16 did make,8 Ad -- mir’d by youth8. -- ful16 | swains.4. | 8 |
                }% end lyrics verse two

		
		\new   Staff = "down" {
		<<
			\clef bass
			\global
			\new Voice {
                          \voiceThree
                          r8 | g,4 c | d4. d16 c | bf,8 a, g, f,!16 ef, | d,4. s8 |
                          g,8 ef c4 | fs,4. g,16 a, | bf,8[ ef d d] | \stemDown g4( \stemUp g,8) | d8\rest |
                          s2*2 | s4 c'8 a | bf4. bf8 | s2 |
                          bf,8 f, bf,,4 | bf,8 d s4 | s2 | d8\rest d, s4 | g,8[ d g] | \fine
			} % end voice three
			
			\new 	Voice {
                          \voiceFour
                          s8 | s2*3 | s4. d8 |
                          s2*3 | s4. | s8 |
                          fs4. g16 a | bf8[ c' d'] d\rest | bf g d4 | g8 f ef8. d16 | c8 bf, f \stemUp f, \stemDown |
                          s2 | s4 f | g8 bf d'4 | s4 d | s4. |
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

}%end scored