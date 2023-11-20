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
          \global
          \new 	Voice = "one" 	\fixed c' {
            %\voiceOne
            \repeat volta 2 { f4 d8 e16 f g f e d | e8 c4 g8 f[ e] | f8. g16 a8 g16 f d e f8 | a,8 d4 f8 e d | } \mBreak
            \repeat volta 2 { d'4 16 e' f'8 e' d' | e' c'4 g'8 f'[ e'] | f'8. g'16 a'8 g'16 f' e' f' e' d' | a8 d'4 f'8 e' d' | } \fine
          }	% end voice one
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
            <d, d>4 4 4 | <c, c>4 4 4 | <d, d>4 4 4 | 4 4 4 |
            <d, d>4 4 4 | <c, c>4 4 4 | <d, d>4 4 4 | 4 4 4 |
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