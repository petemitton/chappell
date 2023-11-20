\version "2.24"
\language "english"

global = {
  \time 6/8
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
            \partial 8 d8 | <bf, g>4 <d a>8 <g bf>4 <a c'>8 | <bf d'>8. <c' ef'>16 <bf d'>8 <a f'>4. | \stemUp c'8 a c' f'4 d'8 | <ef c'>4 <g bf>8 a8. g16 fs8 | \mBreak
            \stemNeutral <bf, g>4 <d a>8 <bf d>4 <a c'>8 | <bf d'>8. <c' ef'>16 <bf d'>8 <d' g'>4 <d' fs' a'>8 | bf'8. a'16 g'8 d'4 <c' fs'>8 | \partial 8*5 <bf g'>4.~4 \bar "||" | \mBreak
            \partial 8 d'8 | | g'4 a'8 bf'8. a'16 bf'8 | d'4 f'8 g'4. | c'8 a c' \stemUp f'4 d'8 | <ef c'>4 <g bf>8 a8. g16 fs8 | \mBreak
            \stemNeutral <bf, g>4 <d a>8 <g bf>4 <a c'>8 | <bf d'>8. <c' ef'>16 <bf d'>8 <d' g'>4 <d' fs' a'>8 | bf'8. a'16 g'8 d'4 <c' fs'>8 | \partial 8*5 <bf g'>4.~4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | s2.*2 | s4. f4. | s4. \once \stemUp fs4 s8 |
            s2.*2 | <d' g'>4 s8 s4. | s4. s4 |
            s8 | s2.*2 | s4. f4. | s4. \once \stemUp fs4 s8 |
            s2.*2 | <d' g'>4 s8 s4. | s4. s4 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one

      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r8 | <g, d g>2.~ | 4. <f, f>4.~-> | 4. <a, f>4 bf,8 | c4. d |
            <g, d g>2.~ | 4 g,8 bf,4 d8 | g4 bf8 d'4 d8 | g,4 d8 g4 |
            r8 | \stemUp bf4 c'8 d'4. | \stemNeutral <g bf> <d bf> | <f a> <a, f>4 bf,8 | c4. d | 
            <g, d g>2.~ | 4 g,8 bf,4 d8 | g4 bf8 d'4 d8 | g,4 d8 g4 | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s2.*8 |
            s8 | g2.
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