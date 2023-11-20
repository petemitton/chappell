\version "2.22.0"
\language "english"

global = {
  \time 4/4
  \key f \major
}

mBreak = {}

\header {
  %	title = \markup {\medium \caps "Title."}
  %	poet = ""
  %	composer = ""

  % meter = \markup {\italic "Boldly and marked."}
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
            \partial 4 f8_( g8) |
            <c a>4 <d f>4 <d bf>4  a8( g8)  |
            <f a>4. <g bf>8 <f a>4 <f c'>4 |
            bf4 <f a>4 <c g>4 < b,! f>4 | \mBreak
            g2. c8_( d8)  |
            <c e>4 c4 <a, f>4 e8( d8)  |
            g4. a8 g4 <g c'>4 |
            <f a>4 g8( f8)  <d g>4 <bf, c>4 |
            \partial 2. <a, f>2. \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4|
            s2. f4 |
            s1|
            d8 e8 s2. |
            <e g>4. <f a>8 <e g>4 s4 |
            s2. a,4 |
            d2. s4 |
            s4 c4 s2 |
            s2. |
          } % end voice two
        >>
      } % end staff up
      
      \new Lyrics \lyricmode {	% verse one
        When4 as4 the4 Duke4 of4 Nor4. -- man8 -- dy,4 With4 8 glist’ring4. spear4 and4
        shield.2. Had4 en4 -- ter’d4 in4 -- to4 fair4. England,4. And4 foil’d4 his4 foes4 in4 field.2.
      }	% end lyrics verse one
      
      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            r4 |
            f4 d4 g4 c4 |
            f2. a4 |
            g4 f4 e4 d4 |
            c2. r4 |
            c4 a,4 d4 f,4 |
            bf,4. c8 bf,4 e,4 |
            f,4 a,4 bf,4 <c e>4 |
            <f, f>2. \fine
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