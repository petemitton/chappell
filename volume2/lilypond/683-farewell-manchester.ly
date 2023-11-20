\version "2.24"
\language "english"

global = {
  \time 2/4
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
            g4 f | ef8 af g4 | f8[ ef d ef] | <ef g>4( <d f>) | <bf, ef g> <bf d f> | \mBreak
            ef8^( <c af> <bf, g>4) | <bf, f>8[ <d bf> bf a!] | <d f bf>2 \bar "||" | <ef bf>4 <d af> | <ef g>8 ef' <ef c'>4 | \once \stemUp bf af | \mBreak
            <ef g>8 <ef ef'> <ef c'>4 | <g bf>8 ef af4 | <b,! g>8[ d ef <c af>] | <ef g>4 f8. ef16 | ef2 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s2*6 | s4 <c f> | s2*3 | ef8[ bf, c d] |
            s2 | s4 d8 c | s2 | s4 \stemUp d | s2 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Give that | wreath to me, | When the ros -- es | "die, . . ." | Nev -- er |
        let_it_be | Thrown neg -- lect -- ed | by. | Bloom and | scent may perish, | Yet those |
        leaves I’ll cherish, | Hall -- ow’d by_thy | touch, Then give that | wreath to _ | me. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            ef'4 d' | c' bf | af8[ g f g] | s2 | ef,4 bf, |
            g8 s8 s4 | s2*5 | 
            ef8 g, af,4 | ef, f, | \stemDown g,8_([ b,! c) af,] | \once \stemUp bf,4 <bf, af> | <ef g>2 | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            ef2~ | 2 | 2 | <bf, bf> | s |
            c8^( af,) ef4 | d8^( bf,) f4 | bf af | g f | ef af | g f | 
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