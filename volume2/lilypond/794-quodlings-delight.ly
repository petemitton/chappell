\version "2.24"
\language "english"

global = {
  \time 4/4
  \key c \major
}

mBreak = { \break }

\score {

  \new ChoirStaff {
    <<
      \new Staff = "up"  {
        <<
          \new 	Voice = "one" 	\fixed c' {
            \global
            \voiceOne
            \repeat volta 2 { a4 a c' b8 a | b4 b d' c'8 b | a4 a c' b8 a | gs4. e8 e'2 | } \mBreak
            \repeat volta 2 { g'!4 e' c'4. e'8 | d'4 b g4. d'8 | c'4 a gs4. b8 | a4 4 2 | } \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            c2 c | f f | e e | e1 |
            c'1 | g | e2 e | <c e>1 |
          } % end voice two
        >>
      } % end staff up

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            a2 <f a> | <d a> <b, a> | <c a> <a, a> | <e b>_( e) |
            <e c'>1 | <g b> | <a c'>2 <e d'> | a1 |
          } % end voice three

          \new 	Voice {
            %\voiceFour
            \stemUp a2 s2 |
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