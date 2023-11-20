\version "2.24"
\language "english"

global = {
  \time 4/4
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
            \partial 4 d'8 cs' | d'4 d d a8 g | fs a d'4 8 fs' e' d' | e'4 e e e'8 d' | cs' e' a'4 4 b'8 cs'' | \mBreak
            d''8 cs'' b' a' b' a' g' fs' | g' fs' e' d' d' cs' b a | b d' <g cs'> e' <fs d'> fs' <a e'> g' | \partial 2. <a fs'>4 d' d' \bar "||" | \mBreak
            \partial 4 a8 g | fs a d' a fs a d' a | b4 g g b8 a | gs b e' b gs b e' b | cs'4 a a g'8 fs' | \mBreak
            g'4 b'->~8 a' g' fs' | g' fs' e' d' d' cs' b a | b d' <g cs'> e' <fs d'> fs' <a e'> g' | \partial 2. <a e'>4 d' d' | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            %\voiceTwo
          } % end voice two
        >>
      } % end staff up

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r4 | d, <d fs a>4 4 r | d, <d fs a>4 4 r | g, <g b>4 4 r | a, <a cs'>4 4 <g a e'> |
            <fs a d'>4 r <d fs b> r | <b, d g>4 r <a, e a>4 r | <g, g> <a, a> <b, b> <cs cs'> | <d d'>4 4 4 |
            r4 | <d a d'> r <d a d'> r | <g d'> <g b d'>4 4 r | <e b e'> r <e b e'> r | <a e'> <a cs' e'>4 4 r |
            <b, d g>4 r <g, d g> r | <b, d g> r <a, e a>4 r | <g, g> <a, a> <b, b> <cs cs'> | <d d'>4 4 4 | \fine
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