\version "2.22.0"
\language "english"

global = {
  \time 6/8
  \key e \minor
}

mBreak = { \break }

\header {
                                %       title = \markup {\medium \caps "Title."}
                                %       poet = ""
                                %       composer = ""

%  meter =\markup {\italic "Cheerfully."}
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
            \partial 8 e8 | e4 s8 b4 a8 | b8.( c'16) c'8 fs8.( e16) d8 | e4 fs8 g4 a8 | b8 fs4 e4 e8 | \mBreak
            e4 s8 b4 a8 | b8.( c'16) d'8 fs8. e16 d8 | e4 fs8 g4 a8 | \partial 8*5 b fs4 e4 | \mBreak
            \repeat volta 2 { \partial 8 e8 | e8 a4 d d8 | fs a4 d d8 | e4 fs8 g4 a8 | \partial 8*5 b fs4 e } | \mBreak 
          }       % end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | s4 b8 s4. | s2. | s4. e | ds4. e4 s8 |
            s4 b8 s4. | s2. | s4. e4. | ds4. e4 |
            s8 | s2.*2 | s4. e | ds s4 |
          } % end voice two
        >>
      } % end staff up
      \new Lyrics \lyricmode {        % verse one
        I8 | ne’er4 yet8 saw4 a8 | love4 -- ly8 crea4 -- ture,8 | Were4 she8 wid4 -- ow,8 | maid,8 or4 wife,4 But8 |
        straight4 with8 -- in4 my8 | breast4 her8 feature4 Was8 | paint4 -- ed,8 strange4 -- ly8 | to8 the4 life: |
        If8 | out8 of4 sight, Tho’8 | ne’er8 so4 bright,4 I8 | straight4 -- way8 lost4 her8 | pic8 -- ture4 quite. |
      }       % end lyrics verse one
      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            <e g>8 | <e g>4.~ <e g>4 <fs a>8 | <g d'>4 b8 d'4 r8 | c4. c | b, e4 <e g>8 |
            <e g>4.~ <e g>4 <fs a>8 | <g d'>4 b8 d'4 r8 | c4. c | b, e4 |
            <d a>8 | <d a>4.( <d fs>4) <d fs>8 | <d a>4.( <d fs>4) <d fs>8 | <c g>4. c | b, e4 |
          } % end voice three
          \new    Voice {
            %\voiceFour
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
