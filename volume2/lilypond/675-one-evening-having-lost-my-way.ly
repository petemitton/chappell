\version "2.24"
\language "english"

global = {
  \time 6/8
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
            %\voiceOne
            \partial 8 bf,8 | <g, ef>4 <bf, f>8 <ef g> f ef | <g bf>4 bf8 <g bf>4 ef'8 | <ef d'>4 <af c'>8 <g bf>4 <f af>8 | \mBreak
            <ef g>4 <bf, f>8 <g, ef>4 bf,8 | <g, ef>4 <bf f>8 <ef g> f ef | <g bf>4 bf8 <g bf>4 ef'8 | <ef d'> c' bf <ef a! c'>4 a8 | \mBreak
            \stemUp bf4.~4 8 | bf( g) af bf( c') bf | bf( af) g af4 8 | af f g af bf af | \mBreak
            \stemNeutral af8( g) f g4 bf8 | <g ef'>4^\cresc bf8 <g ef'>4 bf8 | <g ef'>4.\f ~4 d'16( c') | <ef bf>8 af g <d f>4 ef8 | \partial 8*5 ef4.~4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | s2.*7 |
            d4 r8 d4.-> | c2. | 4 r8 r4. | bf,2. |
            bf,4 s8 s4. | s2.*3 | s8*5 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        One | eve -- ning, hav -- _ ing | lost my way, By | chance I came "in - " |
        " - to" a wood, Sol | had been ve -- _ ry | hot that day, I | un -- der a cov -- ert |
        "stood;  .  .  .  " Long | time I had not | tar -- ried there, Be -- fore _ I heard _ a |
        rust -- ling noise, A | fe -- male voice said | "“Stay, my dear,”" Tho | man _ cried "“Zoons," not | "I.”  .  ."
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r8 | ef,4. ef | ef, ef | bf,, bf, |
            ef,4. ef | ef, ef | ef, ef | ef, f |
            bf,4 r8 <bf, f>4. | <c e!>2. | <f, f>4 r8 r4. | \once \stemUp d!2. |
            <ef, ef>4 r8 r4 bf8 | <ef ef'>4 bf8 <ef ef'>4 bf8 | <c g c'>4.~4 r8^\pp | \stemUp d4 s8 af4. | g4.^~4 | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s8 | s2.*10 | bf,2. |
            s2.*3 | s4 ef8 bf,4. | ef,4.( ef4) |
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