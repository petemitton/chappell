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
            d4 8 f8. g16 f8 | g4 8 a4. | 4 d'8 cs'4 d'8 | \partial 8*5 bf8 c'4 a \bar "||" | \partial 8 g8 | a4 g8 a4 g8 | \mBreak
            a4 b!8 c'4 8 | f'4 8 e'4 8 | d'8. e'16 d'8 cs'4 a8 | f'4. e'4. | d'8. e'16 f'8 g'4. | c'4 bf8 a4 g8 | a8. bf16 c'8 e4 8 | \partial 2. d2. | \fine 
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