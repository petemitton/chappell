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
            \partial 8 g8 | <e g>4 g8 <f g>4 g8 | g e g c4 g8 | <e g> c' c' <fs c'> b c' | \mBreak
            <g b d'>4.~8 c'( d') | <g c' e'> d' c' <g b d> c'( b) | <e c'> b a g( e) f | \mBreak
            g8. a16 g8 <c g> c' e | <b, d>4.~8 e f | g8. a16 g8 g e g | \partial 8*5 c4.~4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            \stemUp s8 | s2.*6 | e4 s8 s4. | 
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Last | Sunday, by chance, I_en -- count -- er’d with Prance, That | man of up -- right con -- ver-
        -sation, Who | told me such news That | I could not choose But |
        laugh at his sad De -- cla -- ration. [Tol de | rol, de rol, tol de ro! | la.] |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r8 | <c g>4 r8 <d b>4 r8 | <e c'>4 r8 r4. | <c g>4 r8 a,4 r8 |
            g,4.( g4) r8 | c4 r8 g4 r8 | c'4 r8 r4. |
            c4 r8 e4 r8 | g4.( g,8) e f | g8. a16 g8 g e g | c4.~4 | \fine
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