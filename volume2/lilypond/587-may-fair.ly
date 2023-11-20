\version "2.24"
\language "english"

global = {
  \time 3/4
  \key bf \major
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
            <d f>4( d) <c ef> | <d f>2 <f d'>4 | <ef c'>2 <d bf>4 | <ef g>2. | <d f>4( d) <c ef> | \mBreak
            <d f>2 <f d'>4 | <ef c'>2 <d bf>4 | <f c'>2. \bar "||" | <f c'>4 d' ef' | <f f'>4( ef') <bf d'> | <ef ef'>4^( <f d'>) <ef c'> | \mBreak
            <d bf>4( <c a>) f | <f bf> d'2 | <ef g>2 c'4 | <d f>4 <c a>2 | <d bf>2. | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            %\voiceTwo
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Gol -- den | slum -- bers | kiss your | eyes, | Smiles a- |
        -wake you | when you | rise, | Sleep, pret -- ty | wan -- tons, | do not |
        cry, And | I will | sing a | lul -- la -- by. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            <bf, bf>2.~ | 2 <bf, f>4 | <bf, a>2 <bf, bf>4 | <ef bf>2. | <bf, bf>2.~ |
            2 <bf, f>4 | <bf, a>2 <bf, bf>4 | <f a>2. | a,4 bf, c | d2 g4 | c2. |
            f2 ef4 | d bf2 | ef2. | f | bf, | \fine
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