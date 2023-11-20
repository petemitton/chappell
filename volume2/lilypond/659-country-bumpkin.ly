\version "2.24"
\language "english"

global = {
  \time 6/8
  \key f \major
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
            \partial 8 e8 | \once \stemUp bf4\sf 8 a4 8 | g( a) f e( d) c | f4 a8 a( g) a | \mBreak
            f4 a8 a( g) a | \once \stemUp bf4\sf 8 a4 8 | g a f e( d) c | f'4 c'8 <f d'> c' bf | \stemNeutral \partial 8*5  <e g>4. e4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | f2. | s | s4. \stemUp c4 s8 |
            s4. c4 s8 | \stemDown f2. | s2.*2 | s8*5 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        A | coun -- try bumpkin who | trees did grub, A | vicar that us’d the |
        pulpit to drub, And | two_or three more, o’er_a | stoup of strong bub, Late | met on a jolly oc -- ca -- sion. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            d8\rest | d'4. c' | bf4 a8 g4. | <f a> f, |
            \stemNeutral <f a>4. f, | \stemUp d' c' | bf4 a8 g4. | \stemNeutral <f a>4. <bf, bf> | <f c'>4.( <f a>4) | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s8 | f2.~ | f | s |
            s2. | f2.~ | f | s2. | s8*5 | 
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