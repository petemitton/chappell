\version "2.24"
\language "english"

global = {
  \time 4/4
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
            <b, g>4 8 <c a> <d b>4 <c a>8 <b, g> | <c fs>4. <b, e>8 a4. d8 | g4. a8 <g b>( c') <fs b> a | \mBreak
            g4 d' d' d | <b, g>4. <c a>8 <d b>4 <c a>8 <b, g> | <c fs>4. <b, e>8 <a, a>4 <b, g>8 fs | <c e>4. <b, d>8 < c e>( <d fs>) <e g> <c e> | \mBreak
            <b, d>4 g4 4. 8 | 4 d' b8( c') d'4 | fs a a4. 8 | \mBreak
            g4 d' b4. a8 | g( a) b( c') <g d'>4. g8 | 4 d' e'8( d') c'( b) | \mBreak
            a8( g) fs( e) <d fs>4 <c e>8 <b, d> | <e g>4. <b, d>8 <c e>( <d fs>) <e g> <c e> | <b, d>4 g <b, g>2 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s1 | s2 \stemUp a,4 s4 | b, s2. | 
            s1*4 |
            s2 b,4 s4 | s1*2 |
            s1*3 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Saw -- ney was tall, and of | no -- ble race, And | lov’d me bet -- ter than |
        a -- ny yen, But | now he ‘loves’ an _ -- o -- ther lass, And _ | Saw -- ney’ll ne’er be my |
        love a -- en. I | gave him_a fine Scotch | sark and band; I |
        put them on  with | mine own hand; I | gave him house, I |
        gave him land, Yet _ | Saw -- ney’ll ne’er be my | love a -- gen. 
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            g1 | a4. g8 fs2 | e <d d'>4 4 | 
            <g b>1 | g | a4. g8 fs4 e8 d | c2 c | 
            g2 g, | <g b> <g d'> | <a c'> <fs d'> |
            <g b>2 <g d'> | <g b> b | <g b> \stemUp c'8 b a g |
            fs4 a s2 | c c | g g, | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s1*12 | s2 c2 |
            d1 | s1*2 |
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