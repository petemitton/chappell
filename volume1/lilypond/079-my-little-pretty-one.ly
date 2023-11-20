\version "2.24.0"
\language "english"

global = {
  \time 3/4
  \key g \major
}

mBreak = { \break }

\header {
  %	title = \markup {\medium \caps "Title."}
  %	poet = ""
  %	composer = ""

  %	meter = \markup {\italic ""}
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
            d4 d4 <d g>4|
            fs4.  g8 fs4 |
            g4 g4 <e c'>4 |
            b4.  c'8 b4 | \mBreak
            <g b>4 d'4 b4 | 
            a4.  g8 fs4 |
            g4 fs4.  e8 |
            a8( ^\markup {\italic "rall."} b8 c'8 b8)  a8( g8)  |
            fs2. \bar "||" | \mBreak
            d8.  ^\markup {\italic "a tempo"} d16  g4 fs4 | 
            e4.  e8 <a, d>4|
            d8.  d16 e4 g4 |
            fs4.  g8 a4 | \mBreak
            <ds b>4  <e g>4 <fs d'!>4|
            b4.  c'8 d'4 |
            e'8 ^\markup {\italic "rall."} d'8 c'4 b4 |
            a4.  b8 <fs a>4 |
            <g b>2. \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s2.|
            s2.|
            c2 s4 |
            d2. |
            s4 g2 |
            e2 d4 |
            s2.|
            e4 e4 e4 |
            s2.|

            s2.|
            s2.|
            b,4 c4 s4 |
            a,2 e4 |
            s2.|
            g2 g4 |
            g4 a4 g4 |
            fs2. |
            s2.|

          } % end voice two
        >>
      } % end staff up
      
      \new Lyrics \lyricmode {	% verse one
        My4 lit4 -- tle pret4. -- ty8 one,4 My4 pret4 -- ty4 ho4. -- ney8 one,4
        She4 is4 a4 joy4. -- ly8 one,4 And4 gen4. -- tle8 as8 "."8  "."8 "."8 can4 be.2.
        With8 a8 beck4 she4 comes4. a8 -- non,4 With8. a16 wink4 she4 will4. be8 gone.4
        No4 doubt4 she4 is4. a8 -- lone4 of4 all4 that4 e4. -- ver8 I4 see.2.
      }	% end lyrics verse one
      
      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            g2 s4  |
            a2. |
            e2 c4 |
            g2. |
            e4 b,2 |
            c2 d4 |
            b2. |
            c4 a,4 c4 |
            a2. | 
            |
            <d fs>4 <b, g>2 |
            <c g>2 fs,4 |
            g,4 c,2 |
            d,2 c,4 |
            b,,4 e,4 d,!4 |
            g,2 b,,4 |
            c,2. |
            d,2 d,4 |
            g,2. | \fine
          } % end voice three
          
          \new 	Voice {
            \voiceFour
            b,2 g,4 |
            d2. |
            s2.|
            s2.|
            s2.|
            s2.|
            e2. |
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