\version "2.24"
\language "english"

global = {
  \time 2/4
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
            c'8 e'4 c'8 | b8 d'4 b8 | a a'4 g'8 | fs'4 d' | c'8 e'4 c'8 | b d'4 e'16 fs' | g'8[ d' e' c'] | b4 g | \bar "||" \mBreak
            e8->[ d c e] | d->[ c b, d] | a,8 a4 g8 | fs4 d | e8->[ d c e] | d->[ c b, d] | g[ d e c] | b,4 g, | \fine
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
            c4\f-> e-> | g-> b-> | c'-> a-> | d'-> b,-> | c e | g d | b, c | g,2 |
            e8[ d c e] | d[ c b, d] | c4 a, | d d, | e8[ d c e] | d[ c b, d] b,4 c | g,2 | \fine
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