\version "2.24"
\language "english"

global = {
  \time 4/4
  \key ef \major
}

mBreak = { \break }

\score {

  \new ChoirStaff {
    <<
      \new Staff = "up"  {
        <<
          \global
          \new 	Voice = "one" 	\fixed c' {
            \voiceOne
            \partial 4 bf4 | ef'2 d'4 c' | bf2 c'4 d'8 ef' | g4 <ef g> <c f af> <bf, d f> | \mBreak
            ef2. <f bf>4 | ef'2 d'4 <ef c'> | bf2 c'4 d'8 ef' | g4 <ef g> <c f af> <bf, d f> | \partial 2. ef2. \bar "||" | \mBreak
            \stemNeutral \partial 4 bf4 | g ef g <f bf> | <ef ef'>2 <g c'>4 d'8 ef' | %
            <f bf d'>4 <d bf> <ef g c'> <c f a!> | <d f bf>2 <ef bf c'>4 <f bf d'> | \mBreak
            <ef bf ef'>2 <f af d'>4 <d f c'> | \stemUp bf2 c'4 d'8 ef' | g4 <ef g> <c f af> <bf, d f> | \partial 2. ef2. | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4 | ef1 | 2 2 | 4 s2. |
            s1 | ef2. s4 | g4. f8 ef2 | 4 s2. | s |
            s4 | s1*4 |
            s1 | ef4 ef c s | s1 | s2. |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Oh! | where, and oh! | where is your _ | High -- land lad -- die |
        gone? Oh! | where, and oh! | where is your _ | High -- land lad -- die | gone? |
        He’s | gone to fight the | French for King _ | George up -- on the | throne, And its |
        oh! in my | heart, how I _ | wish him safe at |  home! |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            d4\rest | g2 bf4 af | g2 s | s4 c f, bf, |
            g2. s4 | c'2 bf4 s | s1 | s4 c f, bf, | g2. |
            \stemNeutral d4\rest | <ef bf>2. <d bf>4 | <c g>2 <ef c'> | f4 g c f | bf, bf2 af!4 | 
            g2 f4 af | g <g, ef> <af, ef> <a,! c f> | <bf, ef bf> c f, bf, | <ef, g>2. | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s4 | ef1 | 2 <af, af>4 bf8 c' | <bf, bf>4 s2. |
            ef,4 bf, ef <d bf> | c2. <d af>4 | <ef g>2 <af, af>4 bf8 c' | <bf, bf>4 s2. | ef,4 bf, ef |
          }	% end voice four

        >>
      } % end staff down
    >>
  } % end choir staff

  \layout{
    \context{
      \Score {
        \omit  BarNumber
      }%end score
    }%end context
  }%end layout

  \midi{}

}%end score