\version "2.22.2"

\new Staff {
  <<
    \time 6/8
    \clef bass
    \new Voice = "a" {
      \voiceFour           
                                %\time 6/8 \clef bass
      \appoggiatura c,8 c2. \appoggiatura c,8 c2.
    }
    \new Voice = "b" {
      % \voiceThree
      % \grace s8  e2. \grace s8 e2.
    }
  >>
}
