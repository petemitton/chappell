\version "2.24"
\language "english"

global = {
  \time 4/4
  \key f \major
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
            f8. g16 a8 a bf g a4 | a8[ g] g[ f] a[ g] g[ f] | \mBreak
            f8. g16 a8 a bf g a4 | f8[ d] d[ c] f[ d] d[ c] | d'[ f'] c'[ d'] bf16( a) g( f) a4 | \mBreak
            a8[ g] g[ f] a[ g] g[ f] | d'[ f'] c'[ d'] bf16( a) g( f) a4 | f8[ d] d[ c] f[ d] d[ c] | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            %\voiceTwo
            
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Breth -- ren, I must haste a -- way, | Hal -- le -- lu -- jah, hal -- le lu -- jah; |
        Here I can no long -- er stay, | Hal -- le -- lu -- jah, hal -- le -- lu -- jah; | Hap -- py, hap -- py, may you be, |
        Hal -- le -- lu -- jah, hal -- le -- lu -- jah, | Un -- to all e -- ter -- ni -- ty, | Hal -- le -- lu -- jah, hal -- le -- lu -- jah. |
      }	% end lyrics verse one
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