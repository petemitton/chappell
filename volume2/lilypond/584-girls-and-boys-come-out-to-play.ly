\version "2.24"
\language "english"

global = {
  \time 6/8
  \key f \major
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
            <f c'>4 a8 <e bf>4 g8 | <f c'>4 a8 f4 8 | <f g>4 a8 <f bf> a g | <f c'>4 a8 f4. | \mBreak
            <f c'>4 a8 <e bf>4 g8 | <f c'>4 a8 f4 8 | <c g>4 a8 <e bf> a g | <f c'>4 a8 f4. \bar "||" | \mBreak
            <f c'>4 a8 <f c'>4. | <f d'>4 bf8 <f d'>4 e'8 | f' e' d' c'( a) f | <c c'>4 a8 f4 r8 | \mBreak
            <f c'>4 a8 <f c'>4. | <f d'>4 bf8 <f d'>4 e'8 | f' e' d' c' a f | <c c'>4 a8 f4 r8 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            %\voiceTwo
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Girls and boys, come | out to play, The | moon doth shine _ as | bright as day: | 
        Leave your supper, and | leave your sleep, And | come_to your play -- fel -- lows | down the street. |
        Come with_a whoop, | come with a call, | Come with good will, or | not at all. |
        Up the ladder_and | down the wall, A | half -- pen -- ny roll _ will | serve us all. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            <f a>4. <f g> | <f a>2. | \stemUp bf4 c'8 d' c' bf | \stemNeutral <f a>2. |
            <f a>4. <c g>4 bf8 | <f a>4. 4. | <e g>4. <c g>4 bf8 | <f a>4. 4. | 
            <f a>4. 4. | <bf, bf>4. 4. | <bf d'> <f a> | 4 r8 r4 r8 |
            <f a>4. 4. | <bf, bf>4. 4. | <bf d'> <f a> | 4 r8 r4 r8 | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s2.*2 | f4. f | s2. |
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