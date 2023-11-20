\version "2.24"
\language "english"

global = {
  \time 4/4
  \key d \major
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
            \repeat volta 2 { <fs d'>4 d'8. 16 <g cs'>4 cs' | <cs b> b <d a> d' | <d a> <b, e g> <d fs> <cs e> | d1 } | \mBreak
            <d fs>4 fs8. g16 <d a>4 <d fs a> | <d g b>4 4 <d fs a> <fs d'> | <g cs'> <a d'> <b e'> <g cs'> | \mBreak
            <fs d'>8 cs' d' e' d'4 \once \stemUp 4 | <d a> <fs a d'> <g b e'> <g a cs'> | <fs a d'>1 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s1*7 | s2. <d g>4 | s1*2 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Fair Ro -- sa -- lind in | wo -- ful wise Six | hearts has bound in | thrall: |
        As yet she un -- de -- ter -- min’d lies, Which | she her spouse shall |
        call,8 "." "." ". " "." Which | she her spouse shall | call. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            d2 e | g fs2 | \stemUp 4 g a g | fs1 |
            d,4 r fs d | g g, d d, | e, fs, g, a, |
            b,2. 4 | fs, d, g, a, | d1 | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s1*2 | s2 a4 a, | d fs, g, a, |
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