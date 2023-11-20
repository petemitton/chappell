\version "2.24"
\language "english"

global = {
  \time 6/8
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
            \repeat volta 2 { <a, d>8 e d <a, fs>4 fs8 | <a, e> fs e <cs g>4. | <d fs>8 a d g4 fs8 | e d cs d4. | }\mBreak
            <fs d'>4 <e cs'>8 <e d'>4 a8 | <fs a>8 b c'! <g b>4 <fs a>8 | 8 b <e cs'!> d'( a) <g b> | <fs a> <e g> <d fs> e4( a8) | \mBreak
            b( a) g fs( g) a | <d b> a g fs( g) a | <d b> d' d g4 fs8 | <b, e> d cs d4. | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s2.*4 |
            s2.*2 | \stemUp s4. fs4 s8 | s4. cs4 s8 |
            d4 s2 | d4 s2 | s2.*2 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Ho! bro -- ther Teague, dost | hear de de -- cree? | Lil -- le  bur -- le -- ro, | bull -- en a la, |
      }	% end lyrics verse one
      
      \new Lyrics \lyricsto "one" {	% verse two
        Dat we shall have a | new de -- pu -- tie, | Lil -- le  bur -- le -- ro, | bull -- en a la, |
        Le -- ro, le -- ro, | lil -- li  bur -- le -- ro, | Lil -- li  bur -- le -- ro, bul -- len a "la, . . "
        Le -- ro, le -- ro, | lil -- li  bur -- le -- ro, | Lil -- li  bur -- le -- ro, bul -- len a la.
      }	% end lyrics verse two
      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            fs4. d | cs a, | d4 fs8 b4 a8 | <g b>4 fs8 <d fs>4. |
            d2. | d | d4.~4 g8 | a4. a,4 r8 |
            g8 fs e d4 r8 | g fs e d4 r8 | g4 fs8 b4 a8 | g4 a8 <d fs>4. | \fine
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