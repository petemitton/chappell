\version "2.24"
\language "english"

global = {
  \time 4/4
  \key ef \major
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
            \partial 4 bf,4 | ef4. f8 g( f) ef( d) | c2 c' | <ef bf>4 g af8( g) f( ef) | <bf, d f>2. bf,4 | \mBreak
            ef4. f8 g( f) ef( d) | c2 <d af c'> | <ef bf>4 <ef g> af8( g) f( g) | \partial 2. ef2. \bar "||" | \mBreak
            \partial 4 bf4 | ef'4. f'8 g'( f') ef'( d') | <g ef'>4 bf2 g4 | <ef ef'>4 g af8( g) f( ef) | <d f>2. bf,4 | \mBreak
            ef4. f8 g( f) ef( d) | c2 <d af c'> | <ef bf>4 <ef g> <c ef af>8 g <af, d f> g | \partial 2. ef2. | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4 | s1*2 | s2 \stemUp <bf, ef>4 s4 | s1 |
            bf,4 s bf, s | s1 | s2 <c ef>4 <af, d> | s2. | 
            s4 | s1*2 | s2 ef4 s4 | s1 |
            bf,4 s4 bf,4 s4 | s1*2 | s2. |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        The | dread -- ed hour, my | dear Love, | Comes to us at | last, Yet |
        I, by ling’ -- ring | here, love, | Hold the mo -- ments | fast. |
        In | spite of all I’ll | cher -- ish A | fix’d and last -- ing | joy, A |
        dream too bright to | per -- ish, | Time will not _ des -- troy. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r4 | <ef, ef g>1 | <af, ef> | <g, ef>2 ef, | bf, af, |
            g,2 ef, | af, f, | g,4 c f, bf, | \once \stemUp g2. |
            r4 | <ef bf>1 | 1 | <c c'>2 c | bf, af, |
            g,2 ef, | af, f, | g,4 c f, bf, | \once \stemUp g2. |
          } % end voice three

          \new 	Voice {
            \voiceFour
            s4 | s1*7 | ef2. |
            s4 | s1*7 | ef2. | \fine
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