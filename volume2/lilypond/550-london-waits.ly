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
            %\voiceOne
            g4 e e | d2 8 8 | g a b4 b | d'2 a4 | g e e | \mBreak
            d2 4 | g8 a <g b>4 <fs a> | g2. \bar "||" | <b, g>4 <d a> <g b> | <d a>2 <b, g>4 | <d a> <b, g> <d a> | <g b> <b, g>2 | \mBreak
            <d g>8 fs g <fs a> <g b> <a c'> | <d fs a>2 <b, g>4 | <d fs a> <b, g> <d fs a> | <d g b>4 <e g e'>2\fermata \bar "||" | g4 e e | d2 8 8 | \mBreak
            g8 a b4 b | d'2 a4 | g e e | d2 4 | g8 a <d g b>4 <c fs a> | <b, g>2. | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            %\voiceTwo
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Past three o’ | clock, and a | cold _ fros -- ty | morn -- ing; | Past three o’ |
        clock, good | mor -- row, mast -- ers | all. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            <e g>2. | <g b> | <e g> | <d fs> | <e g> | 
            <g b>2. | b8 c <d d'>4 <d c'> | <g b>2. | r2. | r | r | r |
            <b, g>4. <d a>8 <g b> <a c'> | <d a>2 <e g>4 | <d a> <e g> <d a> | <g b>  <c g c'>2\fermata | <e g>2. | <g b> | 
            <e g>2. | <d fs> | <e g> | <g b> | \stemUp b8 c' s2 | g,2. | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s2.*22 | e4 d d | s2. |
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