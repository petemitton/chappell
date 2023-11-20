\version "2.24"
\language "english"

global = {
  \time 6/8
  \key af \major
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
            \partial 8 c8 | <af, ef>8 ef <bf, g> <c af> <bf, g> <af, f> | <c af c'>4. <df f bf>4 <c e! g>8 | af8. bf16 <c f c'>8 <df g>4 <bf, f>8 | \mBreak
            e!4.~4 c8 | <af, f>4 <bf, g>8 <c af> <bf, g> <af, f> | \stemUp c'4. bf8. af16 bf8 | c'8.( df'16) <ef af ef'>8 <c af>4 <ef g bf>8 | \partial 8*5 c'4.~4 \bar "||" | \mBreak
            \partial 8 c'8 | c'8.( df'16) <ef af ef'>8 <c af>4 <f af bf>8 | <ef af c'>4. bf8.( af16) bf8 | c'8. df'16 <ef af ef'>8 <df g>4 <bf, f>8 | e!4.~4 c8 | \mBreak
            <af, f>8 f <bf, g> <c af> <bf, g> <af, f> | <c ef gf c'>4. f'8. af16 <b,! f af>8 | af8.( bf16) <c af c'>8 <bf, e! g>4 f8 | \partial 8*5 <af, f>4.~4 | \fine
            
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            \stemUp s8 | s2.*2 | <c f>4 s2 |
            c4 s2 | s2. | \stemDown <c af>4 df8 <ef g>4 s8 | \stemUp <ef af>4 s2 | <ef af>4  s4. |
            s8 | <ef af>4 s2 | s4. <ef g>4 s8 | <ef af>4 s2 | c4 s2 |
            s2. | s4. f4 s8 | <c f>4 s2 | s4. s4 | 
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        My lodg -- ing it is on the cold ground, And oh! ve -- ry hard_is my |
        fare, But that which troub -- les me most, is The un -- kind -- ness of my dear. | 
        Yet still I cry, “O turn, Love,” And “Prith -- ee, Love, turn to me, For |
        thou art the man that I long for, And a -- lack! what re -- me -- dy!” |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r8 f,2.~ | 8 g, af, bf,4 c8 | f4 af,8 bf,4 df8 |
            c4 b!8( c'4) r8 | f,2. | ef, | af,4 c8 ef4 ef,8 | af,4 d'!8 ef'4 |
            r8 | af,4 c8 f4 df8 | ef4 ef,8_( ef4) r8 | af,4 c8 bf,4 df8 | c4 b!8( c'4) r8 |
            f,2.^\cresc | af,4. df,4^\f df8^\p | c4 8 4. | f4.~4 | \fine
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