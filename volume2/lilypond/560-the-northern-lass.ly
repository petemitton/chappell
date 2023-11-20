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
            <bf g>4\p\< <d a>8 <g bf>4 <a c'>8\! | <bf d'>8. <a c'>16 <bf d'>8 <a f'>4.\sf | %
            <a c'>4\mf <bf d'>8 <d' f'>4 <bf d'>8 |<a c'>8. a16 g8 f4. | <bf, g>4\p <d a>8\cresc <g bf>4 <a c'>8 | \mBreak
            <bf d'>8. <c' ef'>16 <d' f'>8 <ef' g'>8.\f <f' af'>16 <ef' g'>8 | <d' f'>8\p\> <bf d'>4 f'16(\pp d' c' a bf8) | \partial 8*5 g4.~4 \bar "||" | %
            \partial 8 d'16\mf ef' | <bf f'>4\< <bf g'>8 <c' af'>4\> <bf g'>8\! | <bf f'>8 d'4 <bf f'>4. | \mBreak
            <a! c'>4\p <bf d'>8 <d' f'>4 <bf d'>8 | <a c'>8. a16 g8 f4\fermata d'16\mf ef' | %
            <bf f'>4\< <bf g'>8\! <c' af'>4\> <bf g'>8\! | <bf f'>8 d'4 <bf f'>4. | <bf d'>4\cresc <a c'>8 <bf d'> ef'16 f' g'8 | \mBreak
            <bf f'>4.\f~4\fermata 8\p | <bf g'>4\< g'8\! <c' af'>4\> <bf g'>8\! | <bf f'>8 d'4 <bf f'>4. | <a! c'>4 <bf d'>8 <d' f'>4 <bf d'>8 | <a c'>8. a16 g8 f4. | \mBreak
            <bf, g>4\mf <d a>8\cresc <g bf>4 <a c'>8 | <bf d'>8. <c' ef'>16 <d' f'>8 <bf ef' g'>8.\ff <f' af'>16 <ef' g'>8 | <d' f'>8\> <bf d'>4\! f'16(\pp d' c' a bf8) | \partial 2. g2. | \fine
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
          \new Voice {
            %\voiceThree
            <g, d>2.~ | 4. <f, c> | <f c'>4 <bf d'>8 <d' f'>4 <bf d'>8 | <f c'>2. | <g, d>4.~4 <f, f>8 |
            <bf, f>4. <ef, ef> | <bf, f> d' | <g bf>4.~4 | bf16 c' | d'4 ef'8 af4 ef'8 | d'8 bf4 d'4. |
            <f c'>4 <bf d'>8 <d' f'>4 <bf d'>8 | <f c'>4.~4\fermata bf16 c' | d'4 ef'8 af4 ef'8 | d'8 bf4 d'4. | <bf f'>4 <f f'>8 <bf f'>4 <ef ef'>8 | 
            <bf d'>4.( 4)\fermata d'8 | e'4. af4 e'8 | d'8 bf4 d'4. | <f c'>4 <bf d'>8 <d' f'>4 <bf d'>8 | <f c'>2. |
            <g, d>4.~4 <f, f>8 | <bf, f>4 <bf,, bf,>8 <ef, ef>4. <bf, f>4. d' | <g bf>2. | \fine
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