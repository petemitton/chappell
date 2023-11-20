\version "2.24"
\language "english"

global = {
  \time 6/8
  \key f \major
}

mBreak = {  }

\score {
      \new Staff = "up"  {
        <<
          \new 	Voice = "one" 	\fixed c' {
            \global
            %\voiceOne
            f8. a16 c'8 c8. e16 g8 | d'8. bf16 g8 a8. f16 d8 | e16 f g8 f g16 a bf8 a | g8. f16 g8 f4. \bar "||" | \mBreak
            f8 g16 f bf8 f g16 f d'8 | c'8 a16 bf8 g16 a16. g32 f16 g a b! | c'16 d' e'8 a16 bf c'8 fs16 g a8 | e16 f g8 f e4. \bar "||" | \mBreak
            a8. g16 f8 c'8. bf16 a8 | bf8. f16 g f f'8. c'16 d' c' | e'4. c'8. g16 a g | bf16 a g f g8 f4. | \partial 2. a2. | \fine
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