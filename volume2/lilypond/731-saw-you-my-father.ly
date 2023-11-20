\version "2.24"
\language "english"

global = {
  \time 4/4
  \key c \major
}

mBreak = { }

\score {

  \new ChoirStaff {
    <<
      \new Staff = "up"  {
        <<
          \global
          \new 	Voice = "one" 	\fixed c' {
            \voiceOne
            c8.( d16) e8. f16 <e g>4 4 | <f a> f'8. d'16 c'8( b) a( g) | c'4 d'8. c'16 <g b>4 b8 a | \mBreak
            <b, g>2. <d f!>4 | e8. d16 e8 c' <c e>4 d8 c | d8.( c16) d8 e f4 g8._( a16) | \mBreak
            g4 e8 g g( f) e d | \partial 2. c2. | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s1 | s4 f d d | g <e g> d <d fs> | 
            s1 | \once \stemUp c4 s2. | b,4( bf,) <a, d>2 |
            c2 b,! | s2. |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Saw you my fa -- ther? | Saw you my mo -- ther? | Saw you my true love _ |
        John? He | told his on -- ly dear That he | soon would be here, But |
        he to an -- o -- ther is | gone. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            c2 <c c'>4 <c b> | <c a> <d a> g <f b> | <e c'> a, d d |
            g2 g, | c c | g4 g d2 |
            \stemUp e4 c d g8 f | e2. | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s1*6 | g,2 g, | c2. |
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