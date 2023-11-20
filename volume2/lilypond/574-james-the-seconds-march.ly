\version "2.24"
\language "english"

global = {
  \time 4/4
  \key c \major
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
            <g c' e'>4. <b d'>8 <c' e'> <d' f'> <e' g'>4 | <g c'>4 g <g c'> <b d'> | %
            <c' e'>4 8 <d' f'>8 <e' g'>4 <d' f'>8 <c' e'> | <b d'> <a c'> <b d'> <c' e'> <b d'>4 <g b d' g'> | \mBreak
            <g c' e'>4. <b d'>8 <c' e'> <d' f'> <e' g'>4 | <g c'> g <g c'> <b d'> | %
            <c' e'>4. f'8 <c'f'>2\trill \grace {e'16 f'} | <b g'>1 \bar "||" | \mBreak
            \stemNeutral <g g'>4 f'8 e' d'4 <g b d g'> | <g c' e'>4. d'8 c'4 <g e'> | 
            <d d'> c'8 b a4 <d fs a d'> | <d g b>4. a8 g4 r8 \tuplet 3/2 {d'16( e' f')} | \mBreak
            <g g'>4 f'8 e' d'4 <g b d' g'> | e'4. f'8 <c' g'>4 <e c'> | <a c' d'> <a c' e'>8 f'  \stemUp d'4. c'8 | <e c'>1 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s1*13 | c'4 s2. | s2 <g c'>4 b |
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
            <c, c>4. <g d'>8 <c' e'> <d' f'> <e' g'>4 | <e c'>4 g <e c'> <g d'> | %
            <c' e'>4 8 <d' f'> <e' g'>4 <d' f'>8 <c' e'> | <g d'>4 8 <c' e'> <g d'>4 <g,, g,> |
            <c, c>4. <g d'>8 <c' e'> <d' f'> <e' g'>4 | <e c'> g <e c'> <g d'> | \stemUp e'2 f' | s g' | 
            e'4 d'8 c' b4 <g, g> | <c c'> g e c' | b a8 g fs4 <d, d> | <g, g> d b, f! |
            e4 d8 c b,4 g, | a, g,8 f, e,4 a | f d g g, | c1 | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s1*4 |
            s1*2 | c'4 b a d' | <g g'>4 b8 d' s2 |
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