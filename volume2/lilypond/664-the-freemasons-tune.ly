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
            \partial 8 d8 | <b, g> a b b( a) g | <d fs> g a a g fs | <b, g> a b <d b> a g | <d b>8 d'4~4 c'16 b | \mBreak
            c'8 e' e' <a e'>( d') c' | <d b> a g <b d'>4 c'16 b | <e c'>8 b c' <fs a> b c' | \partial 8*5 <d b>8 g4~4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | s4. \stemUp d4 s8 | s2.*3 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Come, | let us pre -- pare, We | brothers that are Met to -- geth -- er on mer -- ry oc -- ca -- sion, Let us _ |
        drink, laugh, and sing, Our | wine has a spring, ’Tis a | health to an ac -- cept -- ed | Ma -- son. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r8 | g4 r8 g,4 r8 | d4 r8 r4. | g4 r8 g,4 r8 | g4 r8 r4. |
            <a c'>4 r8 fs4 r8 | g4 r8 g,4 r8 | c4 r8 d4 r8 | g4.~4 | \fine
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