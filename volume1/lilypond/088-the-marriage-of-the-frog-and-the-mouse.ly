\version "2.24.0"
\language "english"

global = {
  \time 3/8
  \key g \major
}

mBreak = { }

\header {
  %	title = \markup {\medium \caps "Title."}
  %	poet = ""
  %	composer = ""

  %meter = \markup {\italic "Moderate time."}
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
            \repeat volta 2 {\partial 8 d8 |
            <b, d g>g8 <d fs a>8|
            <d g b>d'8 b8 |
            g8.  g16 <fs a>8|
            <g b>d'8 b8 | \mBreak
            b16 c'16 d'8 b|
            e'8 d'8 b|
            d'8.  e'16 d'16 c'16|
            \partial 4 <d b>8 g8 |}
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8|
            s4.|
            s4.|
            d4 s8 |
            s4.|
            g4. |
            g4. |
            fs4. |
            s4 |
          } % end voice two
        >>
      } % end staff up
      
      \new Lyrics \lyricmode {	% verse one
        It8 was8 a8 frog8 in8 the8 well,8 Hum8. -- ble16 -- dum,8 hum8. -- ble16 -- dum,8
        And16 the16 merry8 mouse8 in8 the8 mill,8 twee8. -- dle,16 twee16 -- dle,16 twi8 -- no.8
      }	% end lyrics verse one
      
      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            r8 |
            g,4. |
            g,4. |
            b,4 d8 |
            g4. |
            g8 b8 g8 |
            c'8 b8 g8 |
            d4. |
            g4 
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
        \override Staff.Rest.voiced-position=0
      }%end score
    }%end context
  }%end layout

}%end score