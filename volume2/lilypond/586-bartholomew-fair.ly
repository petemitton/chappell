\version "2.24"
\language "english"

global = {
  \time 6/8
  \key ef \major
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
            \partial 8 bf16( af) | g8.( f16) ef8 ef( f) g | <c af>4 g8 <c f>4 ef8 | d( f) f <d f>4\fermata g8 | \mBreak
            \stemUp af8. bf16 c'8  <ef bf> g ef | af8. g16 af8 <d f> bf af | \partial 8*5 g([ ef) ef8] 4 \bar "||" | \mBreak
            \partial 8 g8 | af8.( bf16) c' d' ef'8( d') c' | bf( af) g <c f>4 ef8 | d f f <bf, d f>4\fermata g16( af) | \mBreak
            <bf, ef bf>4. <d f af> | g8.( af16) g8 f( bf) af | \partial 8*5 g([ ef) ef8] 4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | \stemUp ef4 s8 s4. | s2.*2 |
            ef4 s8 s4. | c4 s8 s4. | ef4 s4. |
            s8 | s2.*3 |
            s2. | ef4 s8 d4 s8 | ef4 s4. |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Ad -- zooks! che’s went the | o -- ther day to | Lon -- don tow, In |
        Smith -- field such gaz -- ing, such | thrust -- ing and squeez -- ing, was | ne -- ver knwon. |
        A | zit -- ty of wood! some | volks do call it | Bar -- tle -- dom Fair, But |
        che’s zure | nought but kings and | queens live there. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r8 | <ef, ef>4. <c g> | <f, f> <af, f> | <bf, f> <bf, bf> |
            <c af>4. <ef g> | <af, f> <bf, f> | ef4. 4 |
            r8 | <c ef af>4. 4. | \once \stemUp bf4 ef8 af,4. | bf,4. af, |
            g,4. f, | ef,4 g,8 bf,4. | ef4. 4 | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s2.*6 |
            s8 | s2. <d f>4 s8 s4. | s2. |
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