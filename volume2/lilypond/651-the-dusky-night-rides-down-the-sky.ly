\version "2.24"
\language "english"

global = {
  \time 6/8
  \key c \major
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
            \partial 8 g8 | <e c'>4 c8 <d g>4 f8 | e8.( d16) e8 c4 g8 | a4 g8 f8.( e16) f8 | e4.~4 8 | \mBreak
            <d g>4 g8 <fs a>4 a8 | b8. a16 b8 g4 8 | <g c'>4 c'8 <b d'>4 d'8 | e'8.( d'16) e'8 c'4 g8 | \mBreak
            <f a>8( b) c' <f d'>( e') f' | <f g>8( a b <e c'>4)  <c g>8 | <c a>4 <c f>8 <b, d g>4 8 | c4.( 8) e c | \mBreak
            <b, d g>4 g8 4 8 | 4.~4 8 | <c e c'>4 c'8 4 8 | 4.~4 g8 | \mBreak 
            \stemUp a8( b) c' \stemNeutral d'( e') f' | <f g>( a b) <e c'>4 e8 | f8.( e16) f8 g4 8 | \partial 8*5 c4.~4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | s2.*4 |
            s2. | \once \stemUp g4 s8 s4. | s2. | c'4 s8 s4. |
            s2.*8 |
            \stemUp c4 s8 s4. | s2.*2 | s4. s4 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        The | dus -- ky night rides | down the sky, And | us -hers in the | morn; The |
        hounds all join in | glo -- _ rious cry, The | hounds all join in | glo -- rious cry, The |
        hunts -- man winds his | "horn,   .   .   ." the | hunts -- man winds his | "horn. . . ." Then a |
        hunt -- ing we will | go, a | hunt -- ing we will | "go,    .     ." a |
        hunt -- ing we will | go, _ a | hunt -- ing we will | "go.    .     ." |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r8 | <c g>4 r8 <b, g>4 r8 | <c g>4 r8 r4. | <f c'>4 r8 <g b>4 r8 | <c c'> e g c'4 r8 | 
            <b, g>4 r8 <d a>4 r8 | <g b>4 r8 r4. | <e c'>4 r8 <g d'>4 r8 | <c' e'>4 r8 r4. |
            <f c'>4 r8 <d c'>4 r8 | <g b>4 r8 <a c'>4 e8 | f4 d8 g,4 8 | c g, e, c,4 r8 |
            <g,, g,>4^\sf r8 r4 g8 | <e c'>4 <g d'>8 <c' e'>4 r8 | <c, c>4 r8 r4 g8 | <c c'>4 <g d>8 <c' e'>4 r8 |
            <f, f>4 r8 <d, d>4 r8 | <g, g>4 r8 <a, a>4 e8 | f8. e16 f8 g4 8 | c4.~4 | \fine
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