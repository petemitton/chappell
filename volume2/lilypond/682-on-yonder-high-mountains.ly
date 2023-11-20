\version "2.24"
\language "english"

global = {
  \time 3/4
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
            \partial 4 <ef bf>4 | g4. f8 g([ af)] | <f bf>4 ef <d f> | g8^( ef) af^( g) f^( ef) | \mBreak
            <bf, d f>2 <f bf>4 | g4.( f8) <ef g>[ af] | <f bf>4 ef <d f> | %
            <ef g>8[ ef <c af> <bf, g> <af, f>8. <g, ef>16] | \partial 2 <g, ef>2 \bar "||" | \mBreak
            \partial 4 g8.( af16) | <ef bf>4 bf <ef c'>8.( <f d'>16) | ef'8([ d') c'( bf) <ef af>( g)] | %
            <ef ef'>4. <f c'>8 <g bf>([ <ef g>)] | f2 <c f af>8.\< <g bf>16 | \mBreak
            <ef af c'>4\f <bf df'>8( <af c'>) <g bf>( <f af>) | bf4\>( ef) <c ef f>4\pp | <bf, ef g> af8^( g) f8.^( ef16) | \partial 2 <g, ef>2 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            \stemUp s4 | ef4 s2 | s2. | \stemDown ef4 c8 bf, af, g, |
            \stemUp s2. | ef4 s2 | s2.*2 | s2 |
            ef4 | s2. | g4 s2 | s2. | \stemDown d4 df s |
            s4 \once \stemUp ef s | ef4 s2 | s4 <c ef>8[ bf, <af, d>] s | s2 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        You | vir -- gins, so | pret -- ty, Hear | what "I . ." "re -" |
        "- late," My | case you may | pi -- ty, Take | heed _ of _ my _  | fate. |
        How | I was for | sa -- ken you’ll | hear it through -- out, But I’ll |
        tra -- vel the | world_o’er To | find my love out. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            <ef g>4 | <ef bf>2 4 | <d bf> <c g> <bf, bf> | <ef bf>4 ef,2 |
            bf,4( bf,,) <d bf> | <ef bf>2 4 | <d bf> <c g> <bf, bf> | <ef bf> ef,2 |  ef4_( ef,) |
            \once \stemUp ef4 | <ef g>2 <c g>4 | 2 \stemUp c'8 bf | \stemNeutral <c af>4. <d af>8 <ef g>[ <g bf>] | bf2 <f af>8. <g bf>16 | 
            <f af c'>4 <f bf df'>8  <af c'> <g bf> <f af> | <g df'>4_( <af c'>) af, | bf,4 2 | ef4( ef,) | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s2.*8 | 
            ef8. f16 | s2. s2 c4 |
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