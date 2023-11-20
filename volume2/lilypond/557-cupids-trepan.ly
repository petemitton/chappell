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
            \voiceOne
            \partial 8 d8 | g8. a16 g8 <a, fs>4 fs8 | g8. a16 g8 d4 <c a>8 | bf8. c'16 bf8 f8. g16 a8 | \mBreak
            \stemNeutral <d bf>4.~4 <c a>8 | bf8. a16 bf8 c'8.( bf16) c'8 | d'8. c'16 bf8 \stemUp a8._( bf16) c'8 | bf8. a16 g8 a8. g16 fs8 | \mBreak
            <bf, g>4.-> <bf, ef bf>-> | <g, d>4.->~4 <bf, g>8 | fs8. e!16 d8 bf8. a16 bf8 | \partial 8*5 <bf, g>4.~4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            \stemUp s8 | bf,4 s8 s4. | bf,4 s8 s4. | d4 s8 \once \stemDown ef4 s8 | 
            s2. | d4 s8 \stemDown a4 s8 | bf4 s8 \stemUp ef4 s8 | g4 s8 c4 s8 |
            s2.*2 | a,4 s8 <d fs>4 s8 | s4. s4 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        [Now] | all you gal -- lants, in | ci -- ty or town, Come, lis -- ten a -- while to my | 
        song; To | you I’ll re -- late, in | seek -- ing a mate, How | that I have done my -- self | 
        wrong, Brave | boys! How | that I have done my -- self | wrong. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r8 | g4 r8 d4 r8 | g,4 r8 r4 f,8 | bf,4 r8 f4 r8 |
            bf8. f16 d8 bf,4 f8 | bf4 r8 f,4 r8 | bf4 r8 c4 r8 | d4 r8 d4 r8 | 
            ef4. g, | bf,4.~4 g,8 | d4 r8 d,4 r8 | g,4.~4 | \fine
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