\version "2.24"
\language "english"

global = {
  \time 3/4
  \key d \major
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
            d8[ d'(] d')[ a] fs d | cs[ e(] e)[ b,] cs4 | d8[ d'(] d')[ a] fs4 | d8[ fs(] fs)[ b] a[ e] | \mBreak
            d8[ d'(] d')[ a] fs16 g a fs | e8 cs'16 d' e' d' cs' b cs' d' e' cs' | 
            \cadenzaOn
            \once \override Rest.stencil =          #(lambda (grob)
             (grob-interpret-markup grob #{
               \markup  "&c."
               #}))f1\rest
          }	% end voice one
        >>
      } % end staff up
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