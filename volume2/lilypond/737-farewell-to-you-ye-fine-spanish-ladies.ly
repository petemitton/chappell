\version "2.24"
\language "english"

global = {
  \time 3/4
  \key bf \major
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
            \partial 4 d4 | <bf, g> g <c fs> | <d g>2 <ef g>8( a) | <d bf>4 <c a> g | <a, fs> d4. 8 | \mBreak 
            <d g>4 g <c fs> | <bf, g>2 8 <c a> | \once \stemUp bf4 a g | <d fs a>2 <ef f! a>4\p | <d f bf> a <ef g> | <ef g c'> bf <f a> | \mBreak  
            <fs a d'>4( g) <ef g>8 a | <a, fs> e! d4 <d a d'>8 c' | <d g bf>4 <c fs a> <d g> | <a, fs> d d | d g <d fs> | \partial 2 <d g>2 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4 | s2.*6 | cs2. | s2.*2 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Fare -- well and a -- dieu to | you, Spa -- nish | la -- dies! "Fare -" |
        well and a -- dieu to you, | la -- dies of | Spain! For | we’ve re -- ceived | or -- ders to |
        sail for old | Eng -- _ land, But we | hope in a | short time to | see you a | gain. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r4 | g,2 a,4 | bf,2 c4 | d ef2 | d c4 |
            bf,2 a,4 | g,2 g4 | ef2. | d2 f4 | bf,2 ef4 | c2 f4 |
            d4( ef) c | d2 fs,4^\f | g,4 a, bf,8 c | d2 \stemUp fs4 | g4 <g bf> a | bf2 | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s4 | s2.*13 | s2 c4 | bf, ef d | g2 |
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