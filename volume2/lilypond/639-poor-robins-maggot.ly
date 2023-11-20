\version "2.24"
\language "english"

global = {
  \time 6/8
  \key bf \major
}

mBreak = { }

\score {

  \new ChoirStaff {
    <<
      \new Staff = "up"  {
        <<
          \global
          \new 	Voice = "one" 	\fixed c' {
            %\voiceOne
            \partial 8 d16 ef | f8. g16 f8 8. g16 f8 | d4 f8 4 d16 ef | f8. g16 f8 8. g16 f8 | \mBreak
            \stemUp c'4 f8 4 d16( ef) | f8. g16 f8 8. g16 f8 | bf4 f8 c'4 f8 | d'8. c'16 bf8 f bf a | \mBreak
            <d bf>4 bf,8 4. | \stemDown d'8. c'16 bf8 d'8. c'16 bf8 | \stemNeutral <f c'>4 f8 4. | d'8. c'16 bf8 d'8. c'16 bf8 | \mBreak
            ef'8.( d'16) ef'8 <f c'>4. | d'8. c'16 bf8 d'8. c'16 bf8 | ef'8.( d'16) c'8 ef'8.( d'16) c'8 | d'8. c'16 bf8 f bf a | \partial 8*5 <d bf>4 bf,8 4 | \fine 
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | s4. ef4. | d4.~4 s8 | s4. d4 s8 |
            c4.~4 s8 | s4. ef4. | d ef | \once \stemUp d4 s8 d4 c8 |
            s2. | f4 s8 f4 s8 | s2. | bf4 s8 s4. |
            g4 s8 s4. | f4 s8 f4 s8 | ef4 s8 f4 s8 | f4 s8 d4 c8 | s4. s4 | 
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        When you | court a young vir -- gin of | six -- teen years, You may | ban -- ish your sor -- rows, your | 
        griefs and cares: Your | whin -- ing and pin -- ing will | ne -- ver, ne -- ver, | Steer you to har -- bour— Then |
        cease your fears. | Pleas -- ure and joy let our | face a -- dorn,_Be | live -- ly and gay as a |
        sum -- mer‘s morn,_Push | home your af -- fairs or you | e -- ver, e -- ver, | Just -- ly will mer -- it the | fair one’s scorn. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            bf,16 c | d4. <c a> | <bf, bf>4.~4 bf,16 c | d4. <bf, f> | 
            <g, f>4.~4 bf,16 c | d4. <c a> | <bf, bf> <a, f> | <bf, f>4 d8 f4. |
            bf,4 8 4. | 4. bf | bf a | g <g bf> |
            <c bf>4. <f a> | bf <g bf> | <c bf> <f a> | <bf, bf>4 d8 f4. | <bf, f>4 bf,8 4 | \fine
          } % end voice three

          \new 	Voice {
            %\voiceFour
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