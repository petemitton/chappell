\version "2.24"
\language "english"

global = {
  \time 3/4
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
            \voiceOne
            \partial 4 g8. d16 | <b, g>4 <g b> <fs g d'> | d'8._( c'16) <d g b>4 g8._( a16) | <g b>4 c'8_( b) a8._( g16) | \mBreak
            g2 g8. d16 | <b, g>4 <g b> <fs g d'> | d'8._( c'16) <d g b>4 g8._( a16) | <g b>4 c'8_( b) a8._( g16) | \partial 2 g2 \bar "||" | \mBreak
            \partial 4 fs8. g16 | <a, e a>4 e a8._( g16) | fs8._( e16) d4 <d g>8 <c d> | <b, g>4 <b, f! g>8 <c a> <d f b> g | <c e c'>2 <c fs! b>8 a | \mBreak
            <b, g>4 <d b> <f! g d'> | d'8._( c'16) <d g b>4 g8._( <g a>16) | <g b>4 c'8_([ b) a8._( g16)] | \partial 2 <b, g>2 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            \stemUp b,4 | s2. | <e g>4 s2 | s4 g fs | 
            s2 b,4 | s2. | <e g>4 s2 | s4 g4 fs | s2 | 
            s4 | s2 <a, cs>4 | <a, d>4 s2 | s2.*2 |
            s2. | <e g>4 s2 | s4 <e g>4 <c fs> | s2 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        O we | sail’d to Vir -- gi -- nia, And | thence to Fay- |
        -al, Where we | wa -- ter’d our | ship -- ping And | then we weigh'd | all. |
        Full in | view on the | seas, boys, Se -- ven | sail we _ did es -- py; O we |
        man -- ned our | cap -- stan, And | weigh’d speed -- i -- ly. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            g8. d16 | <g, g>2 4 | 4 4 b8. c'16 | <d d'>4 <d a> <d c'> | 
            s4 g,4 s4 | s2. | s2 \stemDown b8. c'16 | s2. | s4 \stemUp g, | 
            d4\rest | <cs, cs>2 <a,, a,>4 | <d, d>4. <c, c>8 g[ fs] | g4 s2 | <c, c>4 <a,, a,>-> <d, d> |
            <g,, g,>2 <b,, b,>4 | 4 <g,, g,>4 \stemDown b8. <e c'>16 | \stemNeutral s4 <d, d>4 4 | s2 | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            \stemDown g,4 | s2. | s2 e4 | s2. |
            <g b>4 s4 <g, g>8. d16 | <g, g>2 4 | 4 4 e | <d d'>4 <d a> <d c'> | <g b>4 s4 |
            s4 | s2. | s2 <b,, b,>8 <a,, a,> | <g,, g,>4 <g, g>4 4 | s2. |
            s2. | s2 e4 | <d d'>4 s2 | <g, g>2 |
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