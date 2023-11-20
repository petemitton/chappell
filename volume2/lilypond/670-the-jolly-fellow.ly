\version "2.24"
\language "english"

global = {
  \time 2/4
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
            \repeat volta 2 { <bf, g bf>4 bf8. af16 | g8. af16 <bf, ef bf>4 | ef8.[ 16 f8. 16] | <bf, ef g>4 ef | } <c f>4 f8. ef16 | d8.( ef16) f4 | \mBreak
            <bf, f bf>4 bf8. af!16 | g8.( af16) bf4 | <ef bf ef'>4 ef'8. d'16 | %
            c'8.[( d'16) ef'8.( c'16)] | bf8.[ c'16 bf8. af16] | <ef g>4 ef | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            \stemUp s4 <bf, f> | bf, s | s <bf, d> | s2 | s4 c4 | bf, s |
            s4 <d f>4 | ef s | s \stemDown <g bf> | <ef af> af | d d | s2 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Come, let us | drink a bout, | Drive a -- way all | sor -- row, | For p’r’aps we | may not, |
        For p’r’haps we | may not, | For p’r’haps we | may not | meet a -- gain to -- mor -- row. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            ef4 d | ef g, | \stemUp g s | s2 | f4 a! | bf, r |
            \stemNeutral d4 bf, | ef r | g ef | af c'8. af16 | bf4 <bf, bf> | <ef bf> ef | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s2*2 | c4 bf, | ef2 | a,!4 f, | s2 |
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