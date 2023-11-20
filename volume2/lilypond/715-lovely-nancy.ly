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
            \repeat volta 2 { \partial 4 g8.( f16) | ef4 4 8.( f32 g) | <d f>4 f <d f>8.( g32 af) | <ef g>4 <ef ef'>8^( c' bf g) | <ef g>4( <d f>) g8. f16 | \mBreak
            ef4 4 8.( f32 g) | <ef g>4 <d f> <ef ef'>8 <ef c'> | bf8.[( c'16) bf8( g]) <d f>8.( g16) | \partial 2 ef2 | } \repeat volta 2 { \partial 4 g8.( af16) | \mBreak
            \stemUp <ef bf>4  bf ef'8( c') | <af c'>4( <g bf>) g8. af16 | <ef bf>4 bf <ef ef'>8( g) | <ef g>4( <d f>) <d g>8.\pp( f16) | \mBreak
            ef4 4 8.( f32 g) | <c ef g>4 f <c ef af>8.( bf32 c') | %
            <ef g bf>8.( <af c'>16) <g bf>8( <bf, ef g>)  <af, d f>8.( <bf, g>16) | \partial 2 <g, ef>2 | } \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4 | s2.*6 | \once \stemUp ef4 s2 | s2. |
            s2 \stemUp ef4 | s2.*3 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Can | noth -- ing, "Sir, . ." | move you, Our | sor -- "rows   to" | mend, Have you
        no -- thing to | give, Sir, Have you | no -- thing to | lend? | My |
        heart does so | heave, I’m a -- fraid it will | break, Of |
        vic -- tuals we’ve | scarce had "A   .   .   ." | mor -- sel this | week. |
      }	% end lyrics verse one

      \new Lyrics \lyricsto "one" {	% verse two
        You | see the "sad . ." | fate We poor | maid -- ens_en -- dure, Can -- not | 
        char -- i -- ty | move you To _ | grant us a | cure? | How |
        hard is your | heart, How un -- kind is your | eye, If |
        no -- thing can | move you, Good | Sir, to com -- ply. |
      }	% end lyrics verse two

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            bf8.( af16) | <ef g>2 4 | <bf, bf>2 4 | <ef bf>4 c'8( af g ef) | bf2 8.( af16) | 
            <ef g>2 4 | <bf, bf>2 <c g>8 <af, af> | <bf g>2 <bf, af>4 | <ef g>2 | ef8.( f16) | 
            g4 4 c'8( af) | ef'2 ef8. f16 | g4 4 8 ef | bf2 b!4 | 
            c'2 4 | af2 f4 | bf4. bf,8 4 | ef2 | 
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