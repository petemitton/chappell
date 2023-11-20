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
            %\voiceOne
            \repeat volta 2 { \partial 4 d4 | <bf, g> <d bf> <d a> <d fs d'> | <d g c'>8 bf <d a> bf <d fs>4 d | \stemUp <bf, g> a8 bf c'( bf) a( bf) | \mBreak
            \partial 2. <bf, g>2. } | \stemNeutral \partial 4 <c a>4 | <d bf> bf8( c') <f d'>4 d'8( ef') | <f d'> ef' d' c' <d bf>4 bf | \mBreak
            <d bf>4 a8 bf <g c'> d' c' bf | <c a>2. <d d'>4 | <fs c'> <g bf> a <fs c'> | <g bf> <c g> <d fs> d | \mBreak
            \stemUp <bf, g>4 a8 bf c'( bf) a( bf) | <bf, g>2 <bf, d> | <a, f>2. <c d>4 | <bf, g> a8 bf c'( bf) a( bf) | \partial 2. <bf, g>2. | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4 | s1*2 | s2 \stemUp <d g>4 s4 | 
            s1*7 |
            s2 <d g>4 s4 | s1*2 | s2 <d g>4 s4 | s2. |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        _ | He that will not | mer -- ry, mer -- ry be, With_a | ge -- ner -- ous bowl and |
        toast, | 
      }	% end lyrics verse one
      
      \new Lyrics \lyricsto "one" {	% verse two
        May | he in Bride -- well | be _ shut _ up, And | fast bound _ to a | 
        post. | Let | him be mer -- ry, | mer -- ry, mer -- ry there, And |
        we will be mer -- ry, mer -- ry | here; For | who can know where | We may go To_be |
        mer -- ry an -- o -- ther | year, Brave | boys, To_be | mer -- ry an -- o -- ther | year. |
      }	% end lyrics verse two

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r4 | g,4 g fs d | g g, d d | <g, d g> r <g, d g> r | 
            <g, d g>4 bf,8 d g4 | f | <bf, f bf> r <bf, f bf>4 r | <bf, f bf>4 r <bf, f bf> r |
            <g bf>4 r <ef g> r | f c8 a, f,4 bf | a g fs a | g ef d d |
            <g, d g>4 r <g, d g> r | <g, d g>2 2 | <f, f>2. <d fs>4 | <g, d g>4 r <g, d g>4 r | <g, d g> bf,8 d g4 | \fine
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