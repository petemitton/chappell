\version "2.22.0"
\language "english"

global = {
	\time 4/4
	\key ef \major
}

mBreak = { \break }

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
                                \partial 4 ef4 | ef4. f8 g4 <ef af>4 | bf4 af8 g f4 <ef c'> | bf4. bf8 <c ef af>4 <bf, ef g> | \mBreak
                                <d f>2 ef4 ef | ef4. f8 <ef g>4 <ef af> | <ef g bf> <f af>8_( <ef g>) <d f>4 <d f c'> | bf4. bf8 <d af>4 <ef g> | \mBreak
                                \partial 2. <d f>2 ef4 \bar "||" | \partial 4 g^\f | c'4. c'8 a!4 f | bf4. bf8 g4 <f bf> | \stemDown ef'4. s8 s2 \stemUp | \mBreak
                                s1 | c'4.^\pp af8^\cresc bf4. g8 | af4. f8 <ef g>4 <ef c'>^\mf | bf4. bf8 af4 <bf, ef g> | \partial 2. <d f>2 ef4 \fine |
                              }	% end voice one
			\new Voice  \fixed c' {
                          \voiceTwo
                          s4 | s1 | <bf, ef>2 <c ef>4 s4 | ef2 s |
                          s1*3 | \stemUp ef4 s2. |
                          s1 | g4 s2. | f4 s2. | \stemDown <ef g>4 s8 ef'8 <ef c' ef'>4 <ef bf d'> |
                          <ef a! c'>2 <d bf> | d ef | ef4 d s2 | ef2 <c ef>4 s4 | s2. |
			} % end voice two
		>>
		} % end staff up
		
		\new Lyrics \lyricmode {	% verse one
		  Since4 | first4. I8 saw4 your | face I8 re -- solv’d4 To | ho4. -- nour8 and4 re-4 |
                  -nown2 you,4 If | now4. I8 be4 dis -- dain’d I wish My | heart4. had8 ne4 -- ver |
                  known2 you.4 | What! | I4. that8 lov’d4 and | you4. that8 lik’d,4 Shall | we4. be8 -- gin4 to |
                  wran2 -- gle? | No,4. no,8 no,4. my8 | heart4. is8 fast,4 And | can4. -- not8 dis4 -- en -- tang2 -- gle.4 |
		}	% end lyrics verse one
		
		\new   Staff = "down" {
		<<
			\clef bass
			\global
			\new Voice {
                          \voiceThree
                          s4 | s2. c4 | g,2 af,4 s | s1 |
                          af2 g4 d\rest | g2. s4 | bf,2. af,4 | g,2 f,4 ef,4 |
                          af2 g4 | d\rest | s1 | s2. d4 | c2 a,!4 bf,4
                          s4 g,4 bf,2 | s1*3 | af2 g4 | \fine
                        } % end voice three
			
			\new 	Voice {
                          \voiceFour
                          d\rest | ef2. s4 | s2. <af, f>4 | <bf, g>2 bf,4 bf,4~ |
                          bf,4 bf, ef s | c2. c4 | s1*2 |
                          bf,4 bf,, ef, | s | <ef c'>2 <f c'> | <d bf> <ef bf>4 s4 | s1 |
                          f4 s2. | af!4. f8 g4. ef8 | f4 bf, ef4 <a,! f> | <bf, g>2 bf,4 bf,~ | bf, bf, ef |
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