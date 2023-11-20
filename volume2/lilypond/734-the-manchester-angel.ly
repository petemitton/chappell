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
            \partial 8 ef16 f | <ef g>4 g8 ef( f) g | <d af>4 f8 d4 ef8 | <d f>4 g8 ef4 8 | \mBreak
            \stemUp ef4.~4 f8 | g4 af8 bf( c') d' | ef'4 c'8 af4 bf8 | \stemDown <ef c'> d' ef' <ef d'>4 c'8 | \mBreak
            \stemUp <d bf>4.~4 f8 | g4 af8 bf( c') d' | ef'4 c'8 af4 bf8 | \stemDown <ef c'> d' ef' <ef d'>4 c'8 | \mBreak
            \stemUp <ef bf>4.~4 ef16 f | <ef g>4 g8 ef( f) g | <d af>4 f8 d4 ef8 | <d f>4 g8 ef4 8 | \partial 8*5 4.~4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | s2.*4 | ef2. | ef | s |
            s | ef4. f | ef2. | s |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        In _ | com -- ing down to | Man ches -- ter, to | gain my li -- "ber - " |
        "ty,  .  .  ." I | saw one of the | pret -- tiest girls that | e -- ver my eyes did |
        "see;  .  .  ." I | saw one of the pret -- tiest girls that | e -- ver my eyes did |
        see. At the An -- gel Inn in | Man -- ches -- ter there | lives the girl for me. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r8 | <ef bf>2. | <f af> | \stemUp af4 bf8 g4 s8 |
            \stemNeutral <ef g>4.~4 r8 | <ef bf>2. | <c af> | <af, af>4. 4. |
            <bf, f>4.~4 r8 | ef4. <d bf> | <c af>2. | <af, af>4. <c af> |
            <ef g>4.~4 r8 | <c c'>2. | <f af> | \stemUp af4 bf8 g4 s8 | <ef g>4.~4 | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s8 | s2.*2 | bf,4.( ef4) <ef g>8 |
            s2.*11 | bf,4.( ef4) <ef g>8 | s4. s4 |
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