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
            \partial 8 <b,! d>8 | ef4. d8 c4 <ef g> | af8( g) f( ef) <d bf>4. 8 | ef'4. d'8 <ef af c'>4 <ef bf> | bf8( af) g( af) g4. 8 | \mBreak
            <ef g>4 af8 bf c'( bf) af( g) | af( g) f( ef) <c f>4 <b,! ef>8 d | c4 <g c'> <d g c'> <d g b!> | \partial 8*7 <ef g c'>4 4 r4 r8 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | \stemUp c4 s2. | c4 s2. | \once \stemDown <ef bf>4 s2. | c4 d ef s |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        To -- bac -- co’s but an | In -- dian weed, Grows | green at morn, cut | down at eve, It |
        shews our de -- cay, we | are but clay: Think of | this when_you smoke to -- bac -- co. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            g,8 | c2. 4 | f8 ef d c bf,4. af,8 | g,2 af,4 g, | f, bf, ef, r | 
            ef4 f8 g af g f ef | f ef d c d4 g, | af, ef,8 f, g,4 g,, | c, c, r4 r8 | \fine
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