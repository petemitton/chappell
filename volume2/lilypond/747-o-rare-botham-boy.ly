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
          \new 	Voice = "one" 	\fixed c' {
            \global
            %\voiceOne
            ef4. <d f>8 <c ef> <d f> | <ef g>4 <ef c'>8 4. | 4 ef8 <d af>4 af8 | <ef g>4 ef8 c4. | ef4. <d f>8 <c ef> <d f> | \mBreak
            <ef g>4 <ef c'>8 4. | <ef bf>4 ef8 <d af>4 af8 | <ef g>4 ef8 c4. \bar "||" |  \stemUp bf4 g8 ef'4 d'8 | c'4 ef'8 bf4. | \mBreak
            bf4 g8 ef'4 d'8 | c'4 ef'8 bf4. | ef'4 8 4 d'8 | s4 af8 <ef g> af bf | c'4 8 4 <d f bf>8 | \mBreak
            <ef g>4 ef8 c4. | <bf, ef>4. <d f> | <ef g>4 <ef c'>8 4. | <ef bf>4 ef8 <d af>4 af8 | <ef g>4 ef8 c4. | \mBreak
            <bf, ef>4. <bf, d f> | <bf, ef g>4 <c ef c'>8 4.\fermata | <ef bf>4 ef8 <d bf>4 bf8 | <ef g>4 ef8 4. | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s2.*4 | bf,4 s2 |
            s2.*3 | ef2.~ | 4. g |
            ef2.~ | 4. g | <ef g>~ 4 8 | <ef af c'>4 s2 | <ef af>4.~4 s8 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 
        _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
        _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
        _ _ _ O rare | Bo -- tham boy, | Rant -- ing, roar -- ing, | all my joy, |
        O rare | Bo -- tham boy. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \new Voice {
            \global
            \voiceThree
            g4. s | ef,4 af,8 4. | g,4. f, | ef, af, | g, f, |
            \stemNeutral ef,4 af,8 4. | g, f, | ef, af, | g,4 ef,8 c4 bf,8 | af,4 c8 ef4. |
            g4 ef8 c'4 bf8 | af4 c'8 ef'4. | c4.~4 bf,8 | af,4. ef | af,4.~4 bf,8 |
            c4. af, | g, f, | ef,4 af,8 4. | g, f, | ef, af, |
            g,4. bf, | ef4 <af, af>8 4.\fermata | <bf, g> <bf, f> <ef g>4 <ef, ef>8 4. | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            ef4. bf, | s2.*4 |
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