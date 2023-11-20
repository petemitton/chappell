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
            \partial 8 f8 | bf8. c'16 bf8 <f a> bf c' | <f d'> bf d' c'8. bf16 a8 | bf8. c'16 bf8 a8. g16 f8 | \mBreak
            <e! g>8 c e f4 8 | <bf, g> ef g bf8. a16 g8 | <bf, f> d bf <b,! g>4. | \mBreak 
            c'8. d'16 ef'8 a8. g16 f8 | <d bf>4. <bf, f>4 d8 | ef8. f16 <ef g>8 <d f> bf <c a> | \partial 8*5 <d bf>4.~4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            \stemUp s8 | f4 s8 f4 s8 | s4. f4 s8 | e!4 s8 f4 s8 |
            s2. | s4. bf,4 s8 | s2. |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        When | migh -- ty roast beef was the | Eng -- lish -- man’s food, It en -- nob -- led our  hearts, and en- |
        -rich -- ed our blood; Our | sol -- diers were brave and our | cour -- tiers were good. |
        Oh, the roast beef of old | Eng -- land! And | oh, for old Eng -- land’s roast | beef! |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r8 | <bf d'>4 r8 <f c'>4 r8 | <bf, bf>4 r8 <f a>4 c'8 | <g bf>4 r8 <f c'>4 r8 |
            <c bf>4 r8 <f a>4  r8 | ef!4 r8 g8. f16 ef8 | d4 r8 g,4 f8 | 
            ef4. f | g4. d4 \stemUp af8 | g4 \stemNeutral c8 f4 f,8 | bf,4.~4 | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s8 | s2.*7 | s4. s4 bf,8 | ef4 s8 s4. | s4. s4 |
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