\version "2.24"
\language "english"

global = {
  \time 6/8
  \key c \major
}

mBreak = { }

\score {
      \new Staff = "up"  {
        <<
          \new 	Voice = "one" 	\fixed c' {
            \global
            %\voiceOne
            e'4 8 8. d'16 e'8 | f'4 8 e'4. | d'4 8 8. e'16 f'8 | e'8. d'16 e'8 d'4. | \mBreak
            e'8. f'16 g'8~8 e' c' | b8. c'16 d'8~8 b g | g c'4 8. d'16 e'8 | d'8. c'16 d'8 c'4. | \fine
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