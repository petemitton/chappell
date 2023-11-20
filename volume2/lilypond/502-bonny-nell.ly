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
            \partial 8 d'8 | b4._( g4) c'8 | a4._( fs4) b8 | g fs g e4 a8 | fs4._( d4) 8 | <d g>4 g8 <d a>8 b c' | \mBreak
            <d g b>4 b8 <g b> cs' d' | <g cs' e'>4 <fs d'>8 <e  a d'>4 cs'8 | \partial 8*5 <fs d'>4.~4 \bar "||" | \partial 8 a8 | a8. b16 a8 <fs a> b c' | d'8. e'16 d'8 <g b d'>4 <e a c'>8 | \mBreak
            <e g b>8. <fs a>16 <e g>8 4 <ds fs>8 | e4. b,4 8 | c4 <b, d>8 <c e> fs <d g> | g4 a8 fs4 <b, g>8  | <e a>8 b c' <c a>4 fs8 | \partial 8*5 <b, g>4.~4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s2.*8 | % end of first phrase
            s8 | \once \stemUp fs4 s8 s4. | g4 s8 s4. |
            s2.*3 | c4.~4 s8 | s2. | s4. s4 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one

      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            <fs a d'>8 | <g d'>4-> r8 r4 <e g c'>8 | <fs c'>4-> r8 r4 <d fs b>8 | <e b>4 r8 r4 <c e a>8 | <d a>4 s8 s4 c'8 | b4. fs |
            g4. e | a, a, | d d,4 | r8 | d'4. <c' d'> | <b d'> g4 a8 | 
            \stemUp b4. 4 a8 | g4.^~4 r8 | g4 8 4 8 | \stemNeutral a,4.~4 g,8 | c4. d | g g,4 | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s2.*8 % end of first phrase
            s8 | s2.*2 |
            s4. b, | e4.~4 s8 | e4 d8 c4 b,8 | s2.*2 | s4. s4 |
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