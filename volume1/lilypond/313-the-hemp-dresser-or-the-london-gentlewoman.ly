\version "2.22.0"
\language "english"

global = {
        \time 6/8
        \key g \major
}

mBreak = { \break }

\header {
%	title = \markup {\medium \caps "Title."}
%	poet = ""
%	composer = ""

%        meter = \markup {\italic "Gracefully."}
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
                          \partial 8 g8 | g4 d'8 d'8. e'16 d'8 | c'4 b8 a_( b) c' | <g d'>4 g8 g4 a8 | <d b>4. d'4 g8 | \mBreak
                          g4 d'8 d'8._( e'16) d'8 | c'4 b8 a_( b) c' | d'4 g8 <b, g>4 <fs a>8 | \partial 8*5 <g b>4. d'4 \bar "||" | \partial 8 d'8 | \mBreak
                          b4 a8 g_( a) b | <fs a>4 fs8 d4 d8 | d4 g8 g4 a8 | <d b>4. d'4 d'8 | \mBreak
                          b4 a8 g a b | <d a>4 fs8 d4 d8 | <b, d>4 g8 <b, g>4 <fs a>8 | \partial 8*5 <g b>4. s4 \fine |
                        }	% end voice one
                        \new Voice  \fixed c' {
                          \voiceTwo
                          s8 | s4. b | e fs | s e | s2. |
                          d2. | e4. c | s2. | s8*5 | s8 |
                          d4. d | s2. | s4. e | s2. |
                          <d fs>4. b, | s2.*2 | s4. d'4 |
                        } % end voice two
                >>
                } % end staff up

                \new Lyrics \lyricmode {	% verse one
                  The8 | sun4 had8 loos’d4 his8 | wea4 -- ry8 team,4 And8 | turn’d4 his8 steeds4 a8 | graz4. -- ing,4 Ten8 |
                  fa4 -- thom8 deep4 in8 | Nep4 -- tune’s8 stream4 His8 | The4 -- tis8 was4 em8 -- bra4. -- cing;4 | The8 |
                  stars4 tripp’d8 in4 the8 | fir4 -- ma8 -- ment,4 Like8 | milk4 -- maids8 on4 a8 | May4. -- day,4 Or8 |
                  coun4 -- try8 lass -- es a | mum4 -- ming8 sent,4 Or8 | school4 -- boys8 on4 a8 | play4. day.4 |
                }	% end lyrics verse one

                \new   Staff = "down" {
                <<
                        \clef bass
                        \global
                        \new Voice {
                          \voiceThree
                          d8\rest | <g b>4. g, | c d | b, c | g, g,4 d8\rest |
                          <g b>4. <f! a> | <e gs> a | <d g! b> d | g,_~g,4 | d8\rest |
                          g,4. b, | d2. | b,4. c | g,_~ g, |
                          d4. e | fs2. | g4. d | g,_~ g,4 | \fine
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
                        }%end score
                }%end context
        }%end layout

        \midi{}

}%end score