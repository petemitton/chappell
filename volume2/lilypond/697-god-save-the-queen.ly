\version "2.24"
\language "english"

global = {
  \time 3/2
  \key g \major
}

mBreak = { \break }

\score {

  \new ChoirStaff {
    <<
      \new Staff = "up"  {
        <<
          \global
          \new 	Voice = "one" 	\fixed c' {
            \voiceOne
            g2 g g | fs2. g4 fs4. g8 | a4. b8 c'2 a | b2. a4 2 | \mBreak
            g2 g fs | g1. \bar "||" | d'2 d' d' | d'2. c'4 b2 | c' c' c' | \mBreak 
            c'2 r4 b a2 | a b4 c' d'2 | c' b a | g g g | 1. | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            d2 d c | d d2 4. e8 | fs2 g fs4 e | d c d e fs e |
            d4 c d2. c4 | b,1. | g2 a b | fs2. a4 g2 | d e fs4 g |
            c'2 s4 g fs2 | fs d g | e g4 e d2 | b,2 d e | b,1. | \fine
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
            \voiceThree
            b2. a4 g2 | a a2 4 b8 c' | d'2 c' c'2~ | 4 b8 a b4 c' d'2 |
            g4 a b2 a | g1. | d'2. c'4 b2 | a a b | a g fs |
            e2 e fs | fs fs4 e d2 | c d4 e fs2 | g4 a g2 g | g1. |
          } % end voice three

          \new 	Voice {
            \voiceFour
            g2. fs4 e2 | d d d | d4 c8 d e2 fs | g g g |
            e2 d4 c d2 | g,1. | b2. a4 g2 | d d g | fs e d |
            c2 a, d | d d4 c b,2 | a, b,4 c d2 | e4 fs b,2 c | g,1. | \fine
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