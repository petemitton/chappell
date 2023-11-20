\version "2.24"
\language "english"

global = {
  \time 9/8
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
            c'8.( d'16) c'8 e'4 f'8 g'4. | b4 c'8 d'4 e'8 d'( b) g | <e c'> b a g( e) c' <b, d>4. | \mBreak
            <c c'>4. c4 <b, d>8 <c e>( d) c \bar "||" | \stemUp f8.( g16) f8 a8. b16 c'8 e4. | f8.( e16) d8 d8.( e16) d8 e8.( f16) e8 | \mBreak
            f8. g16 f8 a8.( b16) c'8 <c e>4. | <c c'> c4 <b, d>8 <c e>( d) c | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8*18 | s4. \stemUp c4 s8 s4. |
            s8*9 | a,4 s8 c4 s8 c4 s8 | a,4 s8 b,4 s8 c4 s8 |
            a,4 s8 c4 s8 s4. | s4. s4. s4. |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        O you mer -- ry souls, | Christ -- mas is a com -- ing, | We shall have flow -- ing bowls, |
        Dancing, pip -- ing, drumm -- ing, | De -- li -- cate minc’d _ pies, | For to feast each vir -- gin, |
        Ca -- pon and goose, like -- wise | Brawn_and a_dish of stur -- geon. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            <c' e'>4. <c' g'> <c' e'> | <g d'> <g b> <g b> | c e g | 
            e,4. \once \stemDown g, c | f, f c | d g, c |
            f,4. f c | e, \once \stemDown g, c |
          } % end voice three

          \new 	Voice {
            \voiceThree
            s8*27 | s4. e4 s8 s4. | s8*18 |
            s8*9 | s4. e4 s8 s4. |
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