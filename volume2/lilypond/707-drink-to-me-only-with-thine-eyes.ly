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
            %\voiceOne
            <ef g>8 8 8 <ef af>4 8 | <ef bf> <ef af> <ef g> <ef f> <ef g> <ef af> | <ef bf> ef <c af> <ef g>4 <d f>8 | \mBreak
            ef4.~4. | <bf, ef g>8 8 8 <bf, ef af>4 8 | <bf, ef bf> <bf, ef af> <bf, ef g> <c ef f> <bf, ef g> <af, ef af> | %
            <ef bf> ef <c ef af> <bf, ef g>4 <d f>8 | \partial 8*5 ef4.~4 \bar "||" | \mBreak
            \partial 8 <ef bf>8 | 8 <ef g> <ef bf> <ef ef'>4 <ef bf>8 | 8 <ef g> <ef bf>8 4 <ef g bf>8 | %
            <ef af c'>4 <ef bf>8 <bf, f bf> af <bf, ef g> | 4.( <bf, d f>) | \mBreak
            <bf, df g>8 8 8 <c af>4 8 | <bf, f bf>8 af <bf, ef g> <c ef f> <bf, ef g> <af, ef af> | <ef bf> ef <c ef af> <bf, ef g>4 <d f>8 | ef2. | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            %\voiceTwo
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Drink to me on -- ly | with _ thine eyes, _ And | I _ will pledge with |
        "mine; . ." | Or leave a kiss but | in _ the cup, _ And | I'll _ not ask for | wine. |
        The | thirst _ that from the | soul _ doth rise, Doth | ask a drink _ di -- vine; |
        But might I of Jove’s | nec -- _ tar sup, _ I | would _ not change for | thine. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            ef8 ef ef <ef f>4 8 | <ef g> <ef f> ef <ef af> <ef bf> <ef c'> | <ef g>4 ef8 bf4 <bf, af>8 | \mBreak
            <ef g>4 <ef af c'>8 <ef g bf>4. | ef,8 8 8 f,4 8 | g, f, ef, af, bf, c | <bf, g>4 s4. \stemUp af8 | g4 <af c'>8 <g bf>4 |
            \stemNeutral <ef g>8 | 8 ef <ef g> <g bf>4 <ef g>8 | 8 ef <ef g>8 4 ef8 | af4 g8 d4 ef8 | bf,2. | 
            ef8 8 8 4 8 | d!4 ef8 af, bf, c | <bf, g>4 bf,8 4 <bf, af>8 | <ef g>2. | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            \stemDown s2.*6 | s4 bf,8 4 8 | ef4.~4 |
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