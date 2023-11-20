\version "2.24"
\language "english"

global = {
  \time 3/4
  \key af \major
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
            \repeat volta 2 { \partial 4. <ef bf ef'>16( df') <ef af c'>8 <df af df'> | c'4( bf8) c'16[ bf] <c af>8 <bf, f bf> | af4( g8) <ef af>16[ g] <df f>8 ef | \mBreak
            \stemNeutral ef4( 8) df <g, c> bf, | \partial 4. af,8 af r | } \partial 4. <af c'>16( df') <bf ef'>8 <af c'> | <af f'>( ef' <af df'>) c' <af df'> bf | \mBreak 
            <g ef'>8( df' <g c'>) bf <g c'> af | <f df'>( c' <f bf>4.)  af8 | g ef r <ef bf ef'>16( df') <ef af c'>8 <df af df'> | \mBreak
            \stemUp c'4( bf8) <df g c'>16[ bf] <c af>8 <bf, f bf> | af4( g8) <ef g bf>16[ c'] <f bf df'>8 f | %
            af4.( g8) f[ ef] | \partial 4. <df f> <c af> bf\rest  | \fine   
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4. | <df ef>4. <df g>8 s4 | <bf, ef>4. s4. | 
            s2.*6 |
            <df ef>4. s4. | <bf, ef> s | <c f>4 df df | s4. |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Of all the | girls that _ are so | smart, There’s _ none like |
        pret -- _ _ _ty | Sal -- ly; |
      }	% end lyrics verse one
 
      \new Lyrics \lyricsto "one" {	% verse two
        She is the | dar -- ling _ of my | heart, And _ lives in |
        "our    .    .    .    .    .    ." _ _ _ | al -- ley. |  There’s ne’er a | la -- dy in the  
        "land  .  .  ." that’s half so | "sweet   .   .  " as | Sal -- ly, She is the |
        dar -- ling _ of my | heart, And _ lives in | "our    .    .    .     .    ." _ _ al -- ley. |
      }	% end lyrics verse two
      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            g8 af[ f] | g4. ef8 f[ df] | ef4. <c af>8 <df af>[ <c af>] | 
            \stemUp af8 f g4 ef8 df | <af, c>4 r8 | \stemNeutral af g[ af] | df4 f bf, |  
            c4 ef af, | bf, df8 c df4 | ef4 r8 g af[ f] |
            g4. ef8 g df | ef4. 8 bf,[ df] | f4 bf, <ef g> | <af, af>4 r8 | \fine 
          } % end voice three

          \new 	Voice {
            \voiceFour
            s4. | s2.*2 | 
            bf,4 ef ef, | s2.*2 | 
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