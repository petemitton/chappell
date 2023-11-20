\version "2.24"
\language "english"

global = {
  \time 6/8
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
            \partial 8 g16\f a | <d g b>4. <d fs a> | <b, g>8 <g, b, e> <a, d fs> <g, b, g>4 a16\pp b | <e g c'>4. <d g b> | <d fs a>8 <d fs>8. <e g>16 <fs a>4 b16\f cs' | \mBreak
            <b d'>8. <c' e'>16 <b d'> <a c'> <g b>8 4 | <e a c'>8 <a c'>8. <g b>16 <fs a>4 <d g b>8 | <e g> <c e> <c e a> <d fs> d <d g> | \partial 8*5 8 fs8. 16 <d g>4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | s2.*4 |
            fs4 s8 s4. | s8 \stemUp e4 s4. | s2. | s8 d4 s4 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Fa la | la la | la la la la, Fa la | la la | la la la la, Fa la |
        la la la la lal la, | Fa la la la, Fa | lal la, fa lal la, fa lal la la la. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r8 | g4. d | e8 e d e4 r8 | c4. g, | d8 d8. 16 4 r8 |
            b,4. e8 4 | a,8 4 d g,8 | \stemUp c c a, a fs g | a8 4 b4 | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s8 | s2.*6 | s4. d8 d b, | d8 4 g, |
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