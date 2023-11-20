\version "2.24"
\language "english"

global = {
  \time 3/4
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
            \repeat volta 2 { e4. 8 4 | 4. 8 4 | f'4 e' d' | c'4. bf8 a4 | d' c' bf | a f2 | } \fine
          }	% end voice one
          \new Voice  \fixed c' {
            %\voiceTwo
            
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Heave and ho, | rum -- be -- low, | Row the boat, | Nor -- man, row, | Row to thy | le -- man. |
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