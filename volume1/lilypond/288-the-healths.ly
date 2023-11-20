\version "2.22.0"
\language "english"

global = {
  \time 4/4
  \key g \major
}

mBreak = { \break }

\header {
                                %       title = \markup {\medium \caps "Title."}
                                %       poet = ""
                                %       composer = ""

%  meter = \markup {\italic "Moderate time."}
                                %       arranger = ""
}
\score {

  \new ChoirStaff {
    <<
      \new Staff = "up"  {
        <<
          \global
          \new    Voice = "one"   \fixed c' {
            \voiceOne
            \partial 4 s4 | s1 | <g b>4 g2 s4 | s2 b4.( c'8) | s2. a8( b) | \mBreak
            s2 b4 a | <e g b>2 a4( g) | <fs a>4 <g b> <fs a>4. <e g>8 | <fs a>2( <d g b>4) <c fs a c'>4 | \mBreak
            s1 | <g b>4 g2 s4 | s2 b4. c'8 | s1 | \mBreak
            c'4. c'8 b4 a | <e g b>2( <a, d a>4) <b, d g> | <fs a>4 <g b> <fs a>4. g8 | \partial 2. <b, g>2. \fine |
          }       % end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            b8\mf c' | <g b d'>2 <fs a d'>4 c' | s2. c'8 d' | <g c' e'>2\cresc g4 s4 | <fs a d'>2. s4\p |
            <e a c'>2 s2 | s1*2 | s4 e s2 |
            <d g b d'>2\f <fs a d'>4 c' | s2. c'8( d') | <g c' e'>2 g4 s4 | <fs a d'>2. a8\p( b) |
            <e a>2 s2 | s1 | d1 | s2. |
          } % end voice two
        >>
      } % end staff up
      \new Lyrics \lyricmode {        % verse one
        Come,4 | faith,2 since4 I’m | part -- ing,2 And8 that | God2 knows | when2. The4 |
        walls2 of4 sweet | Wick2 -- ham2 | I4 shall see4. a8 -- gain,2. Let’s4 |
        e’en2 have4 a | fro -- lic,2 And4 | drink2 like4. tall8 | men,2. Till4 |
        heads4. with8 healths4 go | round,2. Till4 | heads with healths4. go8 | round.2. |
      }       % end lyrics verse one
      \new Lyrics \lyricmode { %verse two
        4 | 1*10 | 2.. bold8 | 1 |
        } % end lyrics verse two
      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r4 | <g, d g>2 <d, d> | <g,, g,>2. r4 | <c, c>2 <e, e> | <d, d>2. r4 |
            <a, e a>1 | <e, e> | <d, d>2 <d a> | <d, d>4 <c, c> <b,, b,> <a,, a,> |
            <g,, g,>2 <d, d> | <c, c>2. r4 | <c, c>2 <g, d g> | <d, d>2. r4 |
            <a, e a>1 | <e, e>2 <fs, fs>4 <g, g> | <d, d>2 <d c'> | <g, d g>2. | \fine
          } % end voice three
          \new    Voice {
            \voiceFour
          }       % end voice four

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
