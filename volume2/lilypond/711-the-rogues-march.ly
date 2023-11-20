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
            %\voiceOne
             s2. | \grace {s8. \bar ""} <g b>4 8 8 <a c'> <b d'> | <c' e'>4 8 4. | <b d'>8 8 8 4 <c' e'>8 | <b d'>4.( <g b>4) r8 | \mBreak
             <g b>4 8 8 <a c'> <b d'> | <c' e'>4 8 4. | <g b>8 <c' e'> <a fs'> <b g'>4 <g b>8 | <fs a>4.~4 r8 \bar "||" | \mBreak
             <g g'>4 r8 <g fs'>4 r8 |  <g e'>4 r8 <g d'>4 r8 | <g cs' g'>4 g'8 <a d' fs'>4 fs'8 | %
             <g cs' e'>4.\trill( <fs d'>4) r8 | <g b>4\f b8 <g b> c'! d' | <g e'>4 e'8 <g e'>4. | \mBreak
             <g d'>8 d' d' <g d'>4 e'8 | <g d'>4.( b4) r8 | <d g b>4\sf b8 <g b> c' <b d'> | 
             <g c' e'>4 <c' e'>8 4. | <b d'>8 <c' e'> <a fs'> <b g'>4 <g b>8 | <fs a>4.( g4) r8 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            %\voiceTwo
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one

      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice = "two" \fixed c {
            %\voiceThree 
            s2. | \grace {d16( e fs} g2.) | \grace {d16( e fs} g2.) | \grace {d16( e fs} g4.) \grace {d16( e fs} g4.) | \grace {d16( e fs} g4.~) 4 r8 |
            \grace {d16( e fs} g2.) | \grace {d16( e fs} g2.) | \grace {d16( e fs} g4.) g, | d4.( g4) r8 |
            <g e'>4 r8 <g d'>4 r8 | <g c'>4 r8 <g b>4 r8 | <e g cs'>4 r8 <d a d'>4 r8 | <a e'>4.( d'4) r8 | <g, g>4 g8 g a b | c'4 8 4. |
            b8 8 8 4 c'8 | b4.( g4) r8 | <f,! f!>4.~8 <e, e> <d, d> | <c, c>4. <a,, a,> | <d, d>4. 4. | 4.( <g, g>4) r8 | \fine
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