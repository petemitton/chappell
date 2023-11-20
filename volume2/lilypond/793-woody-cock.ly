\version "2.24"
\language "english"

global = {
  \time 6/8
  \key f \major
}

mBreak = { \break }

\score {
      \new Staff = "up"  {
        <<
          \new 	Voice = "one" 	\fixed c' {
            \global
            %\voiceOne
            d'4 8 f'8. e'16 d'8 | cs' a a a8. b!16 cs'8 | d'4 8 f'8. e'16 d'8 | cs' a a a4. | \mBreak
            c'4 d'8 c'4 a8 | bf g g g8. a16 bf8 | a4 8 8. b!16 cs'8 | d' d d d4. | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            %\voiceTwo
            
          } % end voice two
        >>
      } % end staff up


  \layout{
    \context{
      \Score {
        \omit  BarNumber
      }%end score
    }%end context
  }%end layout

  \midi{}

}%end score