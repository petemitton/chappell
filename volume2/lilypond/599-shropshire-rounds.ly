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
            \repeat volta 2 { d'4 cs' b | a8 e4 g8 fs[ e] | d'16 e' d'8 cs'16 d' cs'8 b16 cs' b8 | <fs a>8 d4 fs8 e[ d] } | \mBreak
            \repeat volta 2 { <b, g>8  e <b, fs> d <b, g> e | <a, a>8 e4 g8 fs[ a] | d' fs e e' cs' a | d' d4 fs8 e[ d] | } | \mBreak
            \repeat volta 2 { <a fs'>8 g'16 fs' <a e'>8 fs'16 e' <a cs'>8 <gs b> | <a cs'>8 e'4 <gs b>8 <a cs'>[ a] | %
            <a fs'>16 g'! a' cs' b8 e'16 d' cs'8 a | d' d d16 e fs8 e d } | \mBreak
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
            <d d'>4 <cs cs'> <b, b> | <a, a>4 4 4 | <b, b> <a, a> <g, g> | <d, d>4 4 4 |
            <e, e'>4 <b,, b,> <e, e> | <cs, cs> <a,, a,> <d, d> <b,, b,> <g,, g,> <a,, a,> |  \ottava -1 d, \ottava 0 <d, d>8 8 8 8 |
            <d, d>4 <cs, cs> <a,, a,>8 e | a4 e a, | <d, d>8 <fs, fs> <g, g> <e, e> <a, a> a, | <d, d>4 <d, d>16[ <e, e> <fs, fs>8] <e, e> <d, d> |
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