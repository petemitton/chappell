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
          \new 	Voice = "one" 	\fixed c' {
            \global
            %\voiceOne
            \partial 4 d4 | <bf, g>4 g <ef g>8 fs g( a) | <d bf>4 <d g bf> <f a c'>2 | <d bf d'>4.-> <ef a c'>8 <f bf> a g4 | \mBreak
            <a, f>2^( <bf d>4) d | <bf, g> g <ef g>8 fs g a | <d bf>4 <d g bf> <c g c'>2 | %
            <fs a d'>4.-> <d fs c'>8 <d g c'>_( bf) <c ef g>4 | \partial 2. <bf, d g>2. \bar "||" | \mBreak
            \partial 4 <g bf d'>8 ef' | <a c' f'>4 <bf d'> <ef a d'>8 c' <f bf>4 | <g bf c'>4 <f a c'> <f bf d'> <d bf>8\p c' | %
            <d bf d'>4 g <bf, d g>8 f d4 | f2. d4 | \mBreak
            g4 <ef g> <d g>8 <c fs>\cresc <bf, g> <d a> | <g bf>4 <ef g bf> <ef g c'>2 | %
            <d a d'>4.-> <d fs c'>8 <d g c'>8( bf) <c ef g>4 | \partial 2. <bf, d g>2.\! | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            %\voiceTwo
            
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        We | are poor fro -- zen out | gar -- den -- ers, | _ _ _ _ _ 
        _ _ _ _ _ _ _ _ _ _ We’ve | got no work to | do. |
         _ _ _ _ _ _ _ _ _ _  _ _ _ _ _ _ _ _ _ _  _ _ _ _ _ _ _ a -- las! what shall we do? |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            d4 | g,2 c | g4 4 f2 | bf,4. c8 d4 ef | 
            f2( bf,4) d | g,2 c | g4 4 ef2 | d4. 8 g,4 c | g2. |
            g,4 | f, bf, c d | ef f bf bf, | g,2 bf, | \stemUp <a c'>4.  <g bf>8 <f a>4 <fs a> |
            <g bf>4 g4 8  s4. | \stemNeutral ef,4 ef c2 | fs,4. d8 g,4 c | g,2. | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s1*8 |
            s4 | s1*3 | f,2. d4 |
            g,4 c bf,8 a, g, f,! |
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