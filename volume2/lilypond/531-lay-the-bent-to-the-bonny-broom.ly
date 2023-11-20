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
            %\voiceOn>
            \partial 4. g8\p <d fs bf> <c a> | <bf, g>4 <c a>8 <d bf> <ef c'> <d bf> | <c a>2  bf8\f <a c'> | <ef bf d'>4 <bf d'>8. c'16 <bf d'>16( <c' ef'>) <bf d'>( <a c'>) | \mBreak
            <bf d'>4. d'8\p <fs a d'> c' | <g bf>4 d' <ef c'>8 <g bf> | <fs a>2 g8\f <fs a> | <fs a> <g bf> <fs a> <e! g> <fs a> <d bf> | \partial 4. <bf, g>4. | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4. | s2. | s2 f4 | s2.
            s2.*2 | s2 d4 | d4 s2 | s4. |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        There was a | Lady in the North Count -- ry, Lay the | bent to the bon -- ny |
        broom, And she had | love -- ly daugh -- ters | three, Fa, la, | la, la, la la, la la, re. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r8 d4 | g2 c4 | f4( f,) <d, d>8 <f, f> | <bf, bf>4 <g, g>4 <f, f> |
            <bf, bf>2 d,4 | g,2 c4 | d4( d,) <bf,, bf,>8 <d, d> | <g, g>4 <d d'> <d, d> | <g, g>4. | \fine
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