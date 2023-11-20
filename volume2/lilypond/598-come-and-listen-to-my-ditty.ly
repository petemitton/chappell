\version "2.24"
\language "english"

global = {
  \time 3/4
  \key f \major
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
            \repeat volta 2 { \partial 4 <f a>8 <e c'> | <d bf>4 <c a>8( <bf, g>) f e | f4 <c g> <f a>8 <e c'> | <d bf>4 <c a>8( <bf, g>) f e | 
                              \alternative { \volta 1 { \partial 2 e2 } 
                                             \volta 2 { \partial 4. e4. } }} \bar "||" | \mBreak
            \partial 4. a8 bf[ a] | d'4. c'8 <f bf>[ <f a>] | g8.( a16) <f bf>4 <e a>8 g | f4. d8 <c e>[ <b,! g>] | \mBreak
            c2 g8 a | <d g bf>4 a8([ g)] <c e c'>8 e | <c f>4 <c e g> <f bf f'>8 d' | c'4. a8 <e bf>[ g] | \partial 2 f2 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s2.*5 |
            f4 s2 | f4 s2 | s2. | 
            s2. | s4 \once \stemUp <bf, e>4 s | s2. | e4 s2 | s |
        
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Cease, rude | Bo -- reas, blust’ -- ring | rai -- ler! List, ye | lands -- men, all to | \volta 1 me! |
        _ From bound -- ing | bil -- lows, first in | mo -- tion When the | dis -- tant whirl -- winds |
        rise, To the | tem4 -- pest -- troub -- led | o -- cean, Where the | seas con -- tend with | skies. |
      }	% end lyrics verse one


      \new Lyrics \lyricsto "one" {	% verse two
        Mess -- mates, | hear a broth -- er | sai -- lor Sing the | dan -- gers of the _ sea:
      }	% end lyrics verse two
      
      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            f,4 | bf,2 a8 g | f4 s2 | s2 a8 g | a2 | a4.  |
            s4. | s2.*2 | s2 g8 f |
            s4 c, d\rest | g, c bf, | a, c d8 bf, | a,4( f,) g8 bf | s2 |
          } % end voice three

          \new 	Voice {
            \voiceFour
            s4 | s2 c4 | d4 e f | bf,2 c4 | f4 f,8 d\rest | f4 f,8 |
            c'8 d'[ c'] | bf4. a8 d'8[ c'] | bf4 <g d'> <a cs'> | <d a d'> d g, |
            <c e>4 s2 | s2.*2 | s2 c4 | <f a>2 | \fine
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