\version "2.24"
\language "english"

global = {
  \time 4/4
  \key c \major
}

mBreak = { \break }


\score {

  \new ChoirStaff {
    <<
      \new Staff = "up"  {
        <<
          \new 	Voice = "one" 	\fixed c' {
            \global
            \voiceOne
            \partial 4 <e g>4 | <e g c'>2 4. 8 | <d g b>4 <c e c'> <c g>4. <c f>8 | 4 4 <e a> <d f> | \partial 2. <b, d g>4 4 <c e c'> \bar "||" | \mBreak
            \partial 4 <e g>8 8 | c'4 8 8 <e c'>4 4 | <e b> <e c'> <c g>4. <c e>8 | <c f>4 4 <e a> <d f> | g4. 8 <c e c'>2 \bar "||" | \mBreak
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s1*4 |
            s4 | e2 s | s1*2 | \once \stemUp <b,! d>4 <b, d> s2 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        The boar’s head in | hand bear I, Be -- deck’d with bays and rose -- ma -- ry, |
        And I | pray you, my mas -- ters, | be mer -- ry,  {Quot es -- tis in con -- vi -- vi -- o.} | wibble eeee
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            s4 | s1 | s2 s4. g8 | a4 a a a | g, s c |
            s4 | s1 | s2 e4 
          } % end voice three

          \new 	Voice {
            \voiceFour
            c'4 | 2 4. 8 | g4 a e4. c8 | f4 f c d | s g s |
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