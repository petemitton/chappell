\version "2.24"
\language "english"

global = {
  \time 2/2
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
            \repeat volta 2 { <bf, d f>4 f8 f d4 ef8( f) | <ef g>4 4  <d f>2 | <ef g>8( a) bf4 <ef a> bf8 bf | <d bf d'>4^( c') bf2 } | \mBreak
            <f d'>4 ef'8 d' <ef c'>4 bf8( a) | <d bf>4 <g c'> <c a> f | <ef g>8 a bf4 <ef a> \stemUp bf8( c') | bf8( c') d'( ef') <a c'>2 | \mBreak
            f4 8 8 d4 ef8( f) | <ef g>4 4 <d f>2 | <ef g>8( a) bf4 <ef a> bf8( c') | <d bf d'>4^( c') bf2 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s1*7 | \stemUp f4 f s2 |
            s1*4 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Come, jol -- ly Bac -- chus, god of wine, Crown this night with _ | plea -- sure; |
        Fill up the migh -- ty | spark -- ling bowl, That | ev’ _ -- ry true and | loy -- al soul |
        May drink and sing with -- out con -- troul, | To sup -- port our | plea -- sure. |
      }	% end lyrics verse one
      
      \new Lyrics \lyricsto "one" {	% verse two
        Let none at cares of | life re -- pine, | To des -- troy our _ | plea -- sure; |
      }	% end lyrics verse two

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            \once \stemUp f4 r bf,4 d\rest | ef g bf bf, | ef r f r | bf,1 |
            bf2 f | g4 ef f2 | ef c | d4 bf, f ef | 
            <d bf>2 <bf, f bf> | <ef bf>4 g bf bf, | ef2 f | bf, <bf, bf> | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            <bf,, bf,>4 s2. | s1*3 |
            s1*8 |
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