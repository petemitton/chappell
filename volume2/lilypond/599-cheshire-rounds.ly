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
            \repeat volta 2 { fs'8 e'16 fs' g' fs' e' d' fs' g' a'8 | b' e'4 d'8 cs' a | fs'8 e'16 fs' g' fs' e' d' fs' g'a'8 | a8 d'4 a8 fs d } | \mBreak
            \repeat volta 2 { b8 a16 b c'! b a g fs4 | e8 e'4 d'8 cs' b16 a | b8 a16 b c'! b a g fs8. e16 | d8 d'4 a8 fs d | }
          }	% end voiceone
          \new Voice  \fixed c' {
            %\voiceTwo
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one

      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            <d, d>4 4 4 | <g, g> <e, e> <a, a> | <d, d>4 4 4 | 4 4 4 |
            <g, g>4 4 <d, d> | <g, g> <e, e> <a, a> | <g, g>4 4 <a, a> | <d, d>4 4 4 |
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