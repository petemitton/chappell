\version "2.24"
\language "english"

global = {
  \time 6/8
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
            \partial 8 g16 f | ef4 ef'8 d' c' bf | c'( d') ef' bf af g | <c c'> af f <bf, bf> g ef | \mBreak
            d8. ef16 f8 <af, d f>4 g16 f | ef4 ef'8 d' c' bf | c' d' ef' bf af g | <c c'> af f <bf, bf> g ef | \mBreak
            \partial 8*5 <bf f>8 ef d <bf ef>4 \bar "||" | \partial 8 d16 ef | f8. g16 f8 f_( g) af | \stemDown <ef bf>8^(  c') d' <g ef'> bf g | | \mBreak
            \stemUp af8. bf16 af8 g8. af16 g8 | <ef f>_( g) ef d_( c') bf | ef4 ef'8 d' c' bf | \mBreak
            c'8( d') ef bf af g | <c c'> af f <bf, bf> g ef | \partial 8*5 <bf f>[ ef d] <bf, ef>4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | ef2. | ef | s |
            \once \stemUp af,4 s2 | ef2. | ef | s |
            s8*5 | s8 | s2.*2 |  
            \stemUp ef4 s8 ef4 s8 | s2. | \stemDown ef2. |
            s2.*2 | s8*5 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        The _ | Spring is com -- ing, re -- solv’d to ban -- ish The | king of the ice with his |
        tur -- bul -- ent train, With her | fai -- ry wand _ she | bids them all van -- ish, And | wel -- comes the sun -- shine to |
        earth _ a -- gain | Then _ | maid -- ens, fore -- go the | win -- t’ry kir -- tle, And |
        lace ev’ -- ry bod -- ice with | bright greeen string, And | twine each lat -- tice with |
        wreaths of myr -- tle To | hon -- our the ad -- vent of | joy _ -- ful Spring. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            d8\rest | g4 c'8 bf af g | af bf c' g f ef | s2. |
            s4. bf, | g4 c'8 bf af g | af bf c' g f ef | s2. |
            af8 g f s4 | d8\rest | s2.*2 |
            s2.*2 | g4 c'8 bf af g |
            af8 bf c' g f ef | s2. | af8[ g f] g4 | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s8 | ef2. | ef | af4. g |
            f4. s | ef2. | ef | af4. g |
            bf,4. <ef g>4 | s8 | <d bf>4. <af bf> | <g bf> <ef bf> |
            c'4. bf | a!4. bf8 <bf, af>4 | ef2. |
            ef2. | af4. g | bf,4. ef4 |
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