\version "2.24"
\language "english"

global = {
  \time 9/8
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
            \partial 8 d8 | \stemUp <d g>4 g8 b8. c'16 b8 <fs a>4 d8 | <d g>4 g8 b8. a16 b8 <g c'>4 \stemDown c'8 | %
             <g d'>4 d'8 d'8. c'16 b8 \stemUp <fs a>4 d8 |  \partial 8*8 g8. a16 g8 <d fs b>4 <c a>8 <b, g>4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | s4. \stemUp d4 s8 s4. | s4. d4 s8 s4. | \stemDown s4. e4 s8 s4. | \stemUp b,4 s8 s4. s4 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one

      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r8 b4 r8 g4 r8 d4 r8 | b4 r8 g4 r8 e4 r8 | b,4 r8 c4 r8 d4 r8 | e4 r8 d4 r8 g,4 | \fine
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