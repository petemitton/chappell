\version "2.24"
\language "english"

global = {
  \time 6/8
  \key f \major
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
            <a, f>4\p d8 <d f>4 g8 | a8. bf16 a8 d4 <cs e>8 | f8. g16 a8( \grace {f16} d'4) a8 | f4 e8 d4 r8 | \mBreak
            <a, f>4 d8 <d f>4 g8 | a8.( bf16) a8 d4 <cs e>8 | f8. g16 a8( \grace {f16} d'4) a8 | \partial 8*5 f4 e8 d4 \bar "||" | \mBreak
            \partial 8 d'16\f e' | \stemUp f'8. e'16 d'8 \stemNeutral <g cs'>4 <a d'>8 | <bf d'>4 d8 4 e8 | f8. g16 a8 <f c'>4 a8 | \mBreak
            <f c'>4 a8 <e g>4\p <a, e>8 | f8. g16 a8( \grace {f16} d'4) a8 | \partial 8*5 a,4 g8 f4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s2. | \stemUp d4 s8 s4. | d4 s8 s4. | s2. |
            s2. | d4 s8 s4. | d4 s8 s4. | s4. s4 |
            s8 | f4 s8 s4. | s2.*2 |
            s2. | a,4 s8 s4. | s4. s4 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Court -- iers, Court -- iers, | think not in scorn If | poor sil -- ly_swains in | love should be, |
        Love lies hid in | rags all torn, As | well as in_silks and | bra -- ve -- ry, |
        And the beg -- gar doth love his | lass as dear As | he that hath thou -- sands |
        thou -- sands, thou -- sands, | He that hath_thou -- sands | pounds a year. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            d4. bf, | f,~4 a,8 | d4 r8 d'4 a8 | f4 e8 d4 r8 |
            d4. bf, | f,~4 a,8 | d4 r8 d'4 a8 | f4 e8 d4 |
            r8 | d4. e4 f8 | g4.~4 <c g>8 | <f a>4 r8 a4( f8) |
            a4( f8 c4) cs8 | d4 r8 d'4 a8 | f4 e8 d4 | \fine
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