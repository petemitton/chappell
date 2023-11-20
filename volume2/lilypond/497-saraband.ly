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
            %\voiceOne
            <f bf d' f'>4\f 4 <f a d' f'> | <g bf g'>4. <ef a c' f'>8 <f bf d'>4 | <ef bf ef'>4 <f bf f'> <g bf ef' g'> | %
            <g c'>4. <c g bf>8 <c f a>4 | <bf, f bf> <c ef a c'>4. <d f bf d'>8 | \stemUp ef'4. f'8 d'4 | \mBreak
            \stemNeutral <g d' g'> <e! g c'>4. <f c' f'>8 | \stemUp e'!2\trill \grace {d'16 ef'} g'4 | \stemNeutral <bf d' f'>4\pp 4 <a d' f'>4 | %
            <g bf g'>4. <a f'>8 <f bf d'>4 | <bf ef'> <bf f'> <g bf g'> | <g c'>4. <c g bf>8 <c f a>4 | <f bf>4 <ef a c'>4. <d bf d'>8 | \mBreak
            \stemUp ef'4. f'8 d'4 | s2. | e'!2\trill \grace {d'16 e'} s4 \bar "||" | s2.\pp | bf'4. a'8 g'4( | \stemDown g'8) s8 s2 | \mBreak
            \stemUp s2. | s4 bf4. c'8 | <c f a>4. s8 s4 | s2. | c'2\trill \grace {bf16 c'} s4 | s2. | \mBreak
            s2.*3 | s4 bf4. c'8 | <c f a>4. s8 <d g bf d'>4 | s2. | c'2\trill \grace {bf16 c'} s4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s2.*5 | <g c'>4 <f c'> <f bf> |
            s2. | c'4 bf a | s2.*5 |
            <g c'>4 <f c'> <f bf> | <g d' g'>4 <e! g c'>4. <f c' f'>8 | c'4 bf <a f'> | <c' f' a'>4 4 4 | <bf f'>2 <bf ef'>4~ | 8 <c' a'> <a d' fs'>4. <bf d' g'>8 |
            <bf d' g'>4. <a f'>8 <g c' e'!>4 | <f a f'>4 f <c g> | s4. <a f'>8 <bf d'>4 | <bf g'>4 <bf f'> <f bf d'>8 <g bf ef'> | bf4 a <d bf> | <a c' f' a'>4\ff  4 4 |
            <bf f' bf'>4. <bf f' a'>8 <bf ef' g'>4~ | 8 <c' a'> <a d' fs'>4. <bf d' g'>8 | 4. <a f'>8 <g c' e'!>4 | <f a f'>4 f <c g> | %
            s4. <f a f'>8 s4 | <g bf ef' g'>4 <f bf f'> <f bf d'>8 <g bf ef'> | bf4 a <d bf> |
          } % end voice two
        >>
      } % end staff up

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            <bf, d f bf>4 <bf,, bf,> <bf, bf> | <ef, ef>4. <f, f>8 <bf,, bf,>4 | <g, bf, ef g>4 <d, f, bf, d> <ef, bf, ef> | %
            <ef, g, c ef>4. <ef, ef>8 4 | <d, f, bf, d> <c, a, c>4. <bf,, bf,>8 | 4 <a,, a,> <bf,, bf,> | 
            <bf,, bf,>4 4. <a,, a,>8 | <c, c>4 c, <f,, f,> | bf bf, bf | ef4. f8 bf,4 | g4 d ef | ef4. 8 4 | d4 c4. bf,8 |
            bf,4 a, bf, | 4 bf4. a8 | c'4 c f | f f' ef'! | d'2 ef'4 | c' d' d |            
            g4 g, c | d d e! | f4. d8 g4 | ef4 d bf,8 ef | f4 f, bf, | <f, f>4 <f f'> <ef ef'> | 
            <d d'>4. 8 <ef ef'>4 | <c c'> <d d'> <d, d> | <g, g> <g,, g,> <c, c> | <d, d>4 4 <e,! e!> | <f, f>4. <d, d>8 <g, g>4 | <ef,! ef!> <d, d> <bf,, bf,>8 <ef, ef> | <f, c f>4 <f,, f,> <bf,, bf,> | \fine
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