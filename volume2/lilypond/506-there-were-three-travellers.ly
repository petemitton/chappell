\version "2.24"
\language "english"

global = {
  \time 6/8
  \key g \major
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
            \partial 8 d8 | g4 a8 b a g | b c' d' d'4 c'16 b | c'4 d'8 e'4 d'8 | c' e' d' b g g | \mBreak
            g8 a g e fs g | a4 8 d4 d'8 | d' c' b a b c' | \partial 8*5 b8 g4~4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | d4. d | g g | g e | fs s | 
            d4. c | c b,4 d8 | e4. c4 s8 | s8 s2 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        There8 | were4 three8 travel4 -- lers,8 | travel4 -- lers8 three,4 With16 a | hey4 down,8 ho4 down,8 | lang tree down derry,4 And8 |
        they8 would go tra -- vel the | North4 Count8 -- ry,4 Without8 | e -- ver a sti -- ver of | mo8 -- ney.2 | \fine
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r8 | <g b>4. 4. | <g d'> <g b> | <g e'> <g c'> | <g d'>4. 4 r8 |
            <b, g>4. <c g> | <d, d> <e, d>4 <b, g>8 | <c g>4. <d fs> | g  g,4 | \fine 
          } % end voice three

          \new 	Voice {
            \voiceFour
            s8 | s2.*6 | \stemUp s4. s4 a8 | g4. s4 |
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