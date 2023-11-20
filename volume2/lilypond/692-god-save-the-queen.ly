\version "2.24"
\language "english"

global = {
  \time 3/4
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
            d'4 d' d' | 4. e'8 fs'4 | g' g' g' | 4. a'8 b'4 | e'4 a' a' | 4. g'8 fs'4 | b'4 g'4. fs'8 | e'2 d'4 \bar "||" | \mBreak
            fs'4 fs' fs' | 4. e'8 d'4 | d' d' d' | 4. c'8 b4 | e'4 e' fs' | g' b c' | d' g a | a2 g4 | \fine
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
            \clef treble <g' b'> <fs' a'> <g' b'> | a'2. | g'4 fs' e' | \clef bass \stemUp d'2. | e'2 d'4 | cs'2 d'4^~ | 4 e' d' | cs'2 s4 |
            fs'4 e' d' | cs'2 d'4 | b a g | fs2 g4 | \stemNeutral c b, a, | e d c | \stemUp c'\rest b c' | d'2 s4 | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s2. | fs'4 e' d' | e' d' c' | b a g | c'2 b4 | a2 b4 | g2. | a2 d4 |
            d'4 cs' b | as fs b | g fs e | d d e | s2.*2 | d2. | g,4\rest d g |
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