\version "2.24"
\language "english"

global = {
  \time 3/8
  \key g \major
}

mBreak = { \break }

\score {

  \new ChoirStaff {
    <<
      \new Staff = "up"  {
        <<
          \new 	Voice = "one" 	\fixed c' {
            \global
            \voiceOne
            <b, g>4 b8\rest | <d fs a>4 b8\rest | b8. d'16 b8 | a8. <e g>16 <fs a>8 | b8. a16 g8 | <c e g> e d | \mBreak
            d8 g <d b> | <g b>4( a8) | <b, g>4 r8 | <d fs a>4 r8 | b8. d'16 b8 | a8. <e g>16 <fs a>8 | b8. a16 g8 | \mBreak
            \stemNeutral <c e g>8 e d | d <c e> <b, g>8 | 4. \bar "||" | d'4( e'8) | d' b g | \textMark \markup { \italic "Sym." } d4 e8 | \mBreak
            d b, g, | <g d'> b g | <g, d> b, g, | <e g e'>4 d'16 c' | <d g b>8( <fs a>4_\fermata) | <b, g>4  r8 | <d a>4 r8 | \mBreak
            \stemUp b8. d'16 b8 | a8. g16 a8 | b8. a16 g8 | <e g> e d | d <c e> <b, g> | g4. | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            \stemUp s4. | s | <d g>4 s8 | <d fs>4 s8 | <d g>4 s8 | s4. |
            s4. | d4_( fs8) | s4.*2 | <d g>4 s8 | <d fs>4 s8 | <d g>4 s8 |
            s4.*13 |
            <d g>4 s8 | <d fs>4 s8 | <d f!>4-> s8 | s4.*2 | b,4 s8 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Lost, | lost, | lost is my qui -- et, for | e -- ver, since | Hen -- ry has |
        left me to | mourn, | To | for -- get him how | vain my en -- dea -- vour, "a -" |
        las! will he | ne -- ver re -- turn? | Ah! | well -- a -- day! | _ _
        _ _ _ | well -- a -- day! | _ _ _ | Ah! well -- a -- day! | Lost, | lost, |
        lost is my | qui -- et, for | e -- ver, since | Hen -- ry has | left me to mourn. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            g4 r8 | d4 r8 | g,4 r8 | d4 r8 | g4 r8 | c4 b,8 |
            b,4 g,8 | d,4. | g,4 r8 | d4 r8 | g4 r8 | d4 r8 | g,4 r8 |
            c4 b,8 | b, c g, | g,4. | b4 c'8 | <g b d'>4. | b,4 c8 |
            <g, b, d>4. | b8 g4 | b,8 g,4 | c4.\f | d\fermata | e4\p r8 | fs4 r8 |
            g4 s8 | d4 s8 | g, 4.( | c4) b,8 | b, c g, | g,4. | \fine
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