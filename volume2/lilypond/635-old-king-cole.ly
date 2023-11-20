\version "2.24"
\language "english"

global = {
  \time 4/4
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
            %\voice One
            d4 d <d bf>4 8 a | a g fs( g) d4 fs | <d g> <c fs a> <d g bf> <c g c'> | <fs a d'>2. bf8 c' | \mBreak
            d'4 \stemUp ef'8 d' c'4 d'8 c' | bf4 c'8 bf <fs a>4 \stemNeutral bf8 c' | d'4 g <ef bf>8 a <c g> fs | <bf, g>1 \bar "||" | \mBreak
            <bf, g>8( fs) g( a) <d bf>4 a8 bf | <ef c'> bf a g <d fs>4 d | <d g>8 fs <d g> <fs a> <g bf> a <g bf>( c') | <fs a d'>2. \bar ";" bf8( c') | \mBreak
            d'4 \stemUp ef'8 d' c'4 d'8 c' | bf4 c'8 bf <fs a>4 \stemNeutral \bar ";" bf8 c' | d'4 g <ef bf>8 a <c g> fs | <bf, g>1 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s1*4 |
            s4 g2 fs4 | g4 ef s2 | s1*2 |
            s1*4 | 
            s4 g2 fs4 | g ef s2 | s1*2 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Old King Cole was a | mer -- ry old soul, And_a | merry old soul was | he; And he |
        call’d for his pipe And he | call’d for his bowl, And he | call’d for_his fid -- _ dlers _ | three. |
        Ev’ -- ry fid -- ler he | had a fine _ fiddle, A | ve -- ry fine _ fid -- dle had | he, Then |
        twee, tweed -- le dee, tweed -- le | dee went the fiddler, And so | mer -- ry we‘ll _ all _ | be. |
     }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            bf4 a s2 | bf4 bf g a | bf, a, g, ef, | \stemNeutral d, fs,8 a, d4 g8 a |
            bf4 g a d | ef c d g,8 a, | bf,4 ef c d | g, bf,8 d g2 |
            g2 g | c d4 8 c | bf,4 8 a, g,4 ef, | d, fs,8 a, d4 g8 a |
            bf4 g a d | ef c d g,8 a, | bf,4 ef4 c d | g,1 | \fine
         } % end voice three

          \new 	Voice {
            \voiceFour
            g4 fs g d | ef ef bf, d8 c | s1*2 |
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