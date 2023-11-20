\version "2.24"
\language "english"

global = {
  \time 9/8
  \key c \major
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
            \repeat volta 2 { \partial 8 <g e'>8 |  <g d'> b g <f a>4 b8 <e c'> d' <g e'> | \partial 1 <g d'>8 b g <f a>4 b8 <e c'>4 } | \jump "Fine."
            \repeat volta 2 { \partial 8 <e c'>8 | <f b>8 c' a <b, gs>4 e8 <b, gs>8 fs e | \alternative { \volta 1 { \partial 1 <e a>8[ a b] <d gs>4 <c a>8 <b, gs b>4 }
                                                                                                          \volta 2 { \partial 1 <e a>8[ a b] <d gs>4 <c a>8 4 } } } | \jump "D.C." \fine
          }	% end voice one
          \new Voice  \fixed c' {
            %\voiceTwo
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one

      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            c'8 | b4. g c4 c'8 | b4. g c4 | a8 | d4. e d | c b,4 a,8 e,4 | c4. b,4 a,8 4 | \fine
          } % end voice three

          \new 	Voice {
            %\voiceFour
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