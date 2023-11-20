\version "2.24"
\language "english"

global = {
  \time 9/8
  \key ef \major
}

mBreak = { }

\score {

  \new ChoirStaff {
    <<
      \new Staff = "up"  {
        <<
          \global
          \new 	Voice = "one" 	\fixed c' {
            %\voiceOne
            <ef g>4 g8 4 f8 ef4. | 4 bf8 4 g8 bf4( ef'8) | <d g>4 g8 <b,! g>4 f8 <c ef>4 d8 | \mBreak
            \partial 1 c4 c'8 <d g c'>4 b!8 <ef g c'>4 \bar "||" | \partial 8 bf8 | %
            <ef g bf>4 ef'8 <g ef'>4 <bf d'>8 <g ef'>4. | <ef g>4 bf8 4 g8 bf4 ef'8 | \mBreak
            <d g>4 g8 <b,!  g> af f <c ef>4 d8 | c4 c'8 <d g c'>4 b!8 <ef g c'>4. | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            %\voiceTwo
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        I made love to Kate, | Long I sigh’d for she, | Till I heard of late, That |
        she’d a mind for me. | I | met her on the greeen, | In her best ar -- ray, So |
        pret -- ty she _ did seem, She | stole my heart a -- way. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            <c g c'>2.~-> 4. | <ef g bf>2.~ 4. | b,! d c |
            af,4. g, c4 | r8 | ef4. 4 bf,8 ef,4. | ef g4 ef8 g4. |
            b,!4. d c | af, g, c | \fine
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