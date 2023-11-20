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
            \voiceOne
            \repeat volta 2 { \partial 4. f8 <d f>[ bf] | bf4( a8) bf ef' c' | <d bf>4_( <c a>) <f bf> | g4. f8 <g, f>[ <a, ef>] | \mBreak
            \partial 4. <bf, d>8 bf bf\rest | } \partial 4. f8 <bf, f>[ d] | f4. af8 <c g>[ ef] | <d g>2 <d fs a!>4 | \mBreak  
            \stemNeutral <d g bf>8[ g] <ef g ef'>( d') <g c'>( bf) | <f! a> c' bf\rest <a, f> <bf, ef>[ d] | c4( bf,8)[ <g b! d'>] <g c' ef'> <bf d'> | \mBreak
            <f bf d'>4( <a c'>) <f af d'> | <g ef'>8[ g] <ef bf> a! <ef g> f | \partial 4. <ef g> <d bf> bf8\rest | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4. | ef4. f8 g4 | s2. | bf,2 s4 |
            s2. | c2 s4 | s2. |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse 
        Of all the | girls that are so | smart, There’s | none like pret -- ty | 
        Sal -- ly; |
      }	% end lyrics verse one

      \new Lyrics \lyricsto "one" {	% verse two
        She is the | dar -- ling of my | heart, And | lives in our _ |
        al -- ley. |  There is no | la -- dy in the | land Is |
        half so sweet as | Sal -- ly; She is the | dar -- ling of my | 
        heart, And | lives in "our    .    .    .    .    ." _ _ _ | al -- ley. |
        
      }	% end lyrics verse two
      
      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r8 bf4 | c4. d8 c[ ef] | f2 d4 | ef4. d8 c[ f,] | 
            bf,4( bf,,8) | r8 d bf, | af,4( f,) ef8 c | bf,4 g, d, | 
            g,4 c ef | f( f,8) f, g,4 | \stemUp f^( d8) s4. |
            \stemNeutral f2 bf,4 | ef, c <f a> | <bf, bf> d8\rest |
          } % end voice three

          \new 	Voice {
            \voiceFour
            s2.*4 | s4. | s2.*4 |
            a,4( bf,8) g, c4 |
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