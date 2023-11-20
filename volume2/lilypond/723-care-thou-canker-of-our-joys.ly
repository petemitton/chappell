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
            \voiceOne
            \repeat volta 2 { bf4. c'8 bf4-> ef' | bf af af->( g) | ef4. g8 4-> f | f4. af8 af4->( g) | \mBreak
            bf4. c'8 <ef bf> c' <af d'> <g ef'> | <f bf>4 <d af> af->( g) | %
            ef4. g8 <c f>4-> \tuplet 3/2 { f8_( g af) } | <bf, ef g>4 <af, d f> <g, ef>2-> } | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            %
            \voiceTwo
            s2 ef | f ef | bf, c | <bf, d> <bf, ef> | 
            s1 | s2 ef | bf, s4 \once \stemUp af,4 | s1 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Care, thou can -- ker | of our joys, | Now the ty -- rant | reign is o’er; |
        Fill the mer -- ry, mer -- ry | bowl, my boys, | Join in bac -- cha -- na -- lian roar. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            g4. af8 g4 c' | s1 | g,2 af, | bf, ef, |
            s1 | d4 bf, c2 | g, af,4 f, | bf,4 4 s2 | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            d2\rest ef2 | <d bf> <ef bf> | s1*2 |
            g4. af8 g4 f8 ef | s1*2 | s2 ef | 
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