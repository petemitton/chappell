\version "2.24"
\language "english"

global = {
  \time 2/4
  \key f \major
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
            <a, c f>4 <c g c'> | <c f a>4. <f d'>8 | <a c'>[ a <c g> f] | <e g>[ e d c] | <c f>4 <c g c'> | \mBreak
            <c f a>4. <f d'>8 | <f c'>[ f' <bf d'> g'] | <g e'>2 \bar "||" | <g c' e'>4 <g c' e' g'> | <f c'>4. <bf e'>8 | <a f'>[ c' <f c'> a] | \mBreak
            <f d'>4. c'8 | \stemDown <f d'>([ bf) <d bf>( g)] | \stemUp <c e>[ g c <f a c'>] | <d f bf>[ a <bf, e g>8. f16] | <a, f>2 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            %\voiceTwo
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Come, sweet | lass! This | bon -- ny wea -- ther | Let’s to -- ge -- ther; | Come, sweet |
        lass! Let’s | trip it on the | grass: | Ev’ -- ry -- where Poor | Jock -- ey seeks his |
        dear, And | un -- less | you ap -- pear, He | sees no beau -- ty | here. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            <f, f>4 <e, e> | \once \stemUp f4. bf,8 | f4 a | c' r | <a, a> <e, e> |
            <f, f>4. bf8 | a4 bf | c'2 | <c c'>4 <bf, bf> | <a, a>4. g8 | f4 a8 f |
            bf4. a8 | bf4 <bf, g> | <bf, g> <a, f>8 f, | g,4 c | f f, | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s2 | f,4 s4 | s2*3 |
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