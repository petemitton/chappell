\version "2.24"
\language "english"

global = {
  \time 6/8
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
            %\voiceOne
            \partial 8 d'8 | g' a' b' e' fs' g' | fs' g' a' fs' e' d' | c' d' e' a b c' | e a g fs e d | g' a' b' e' fs' g' | \mBreak
            fs' g' a' fs' e' d' | cs' d' e' a d' cs' | \partial 8*5 d'4.~4 | \bar "||" %
            \partial 8 e'16 fs' | g'8 d' b g' d' b | e' c' a e' c' a | d' b g d' b g | \mBreak
            e a g fs e d | g' d' b g' d' b | fs' c' a fs' c' a | b c' d' e a fs | \partial 8*5 g4.~4 | \fine
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
            r8 | g,4. c d d, | a, b, | c d | g, c |
            d fs | a a, | d8 a, fs, d,4 | r8 | g,4. g | g, g | g, b, |
            c d | g, g | g, g | g, c4 d8 | g d b, g,4 | \fine
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