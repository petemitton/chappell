\version "2.22.0"
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

  % meter = \markup {\italic ""}
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
            a4.  b8 a8 g8 |
            fs4.  e8 d4 |
            d'4.  e'8 d'8 c'8 |
            b4.  a8 g4 |
            a4.  b8 a8 g8 | \mBreak
            fs4.  e8 d4 |
            g4 g4 fs4 |
            g2. \bar "||" |
            <b, d g>4 <b, d g>4 <d fs a>4  |
            <d g b>4. <d fs a>8 <b, g>4  |
            <c e c'>4 <d g b>4 <d fs a>4  | \mBreak
            b4 g2 |
            a4.  b8 a8 g8 |
            fs4 d4 e8 fs8 |
            g4 g4 fs4 |
            <d g>2. \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s2.|
            s2.|
            s2.|
            s2.|
            s2.|
            s2.|
            b,8 c8 d2 |
            d2.|
            s2.|
            s2.|
            s2.|
            <d g>4 <b, d>2|
            e2. |
            d4 s4 c4 |
            b,8 c8 d2 |
            s2.
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {
        % verse one

      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            fs4.  g8 fs8 e8 |
            a4.  g8 fs4 |
            b4.  c'8 b8 a8 |
            d'4.  c'8 b4 |
            fs4.  g8 fs8 e8 |
            a4.  g8 fs4 |
            g4 s2 |
            b2. |
            g4 g4 d4 |
            g4.  d8 e4 |
            g,4 d4 d4 |
            s2. |
            s2.|
            s2. |
            g4 s2 |
            b2. \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            d2. |
            d2. |
            s2.|
            g2. |
            d2. |
            d2. |
            e4 <d a>2
            g2.|
            s2.|
            s2.|
            s2.|
            g4 g2 |
            <c a>2. |
            <d a>2 <a, a>4  |
            e4 <d a>2|
            g2.
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