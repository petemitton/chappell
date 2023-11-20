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
            \partial 8 g8 | e c e g e g | a f a g4 8 | c' d' e' a b c' | \mBreak
            <f d'>8 b g <e c'>4 b16( c') | <g d'>8. e'16 d'8 <g d'> b g | <f d'> b g <e g>4 e16 f | g8. a16 g8 <cs g> f e | \mBreak
            <d f>8 d e <d f>4. | <c e>4 g8 e c4 | f4 a8 f d4 | e g8 a d' c' | \partial 8*5 b8. a16 b8 <e c'>4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo 
            s8 | s2.*6 | \stemUp d4 s2 |
            s2.*4 | f4 s4. | 
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        As | I was a driv -- ing my wag -- gon one day, I | met a young dam -- sel, tight, | 
        bux -- om, and gay, I | kind -- ly ac -- cost -- ed her | with a low bow, And I | felt my whole bo -- dy I |
        can -- not tell how: | Gee ho, dob -- bin, | hi ho, dob -- bin, | Gee ho, dob -- bin, gee | up and gee ho. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r8 | <c e g>4 r8 4 r8 | <c f a>4 r8 <c e g>4 r8 | <a, e a>4 r8 <f c'>4 r8 |
            <d b>4 g8 <c c'>4 r8 | <b, g>4 r8 <g, b>4 r8 | <b, g>4 r8 <c g>4 r8 | <bf, g>4 r8 <a, a>4 r8 |
            <d a>4 r8 <b,! g>4. | <c g> <e g> | <d a> <b, g> | <c g c'> <f a> <g d'> <c c'>4 | \fine
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