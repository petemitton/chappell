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
            \partial 8 d8 | g8. fs16 g8 bf8. a16 g8 | a4.~4 8 | bf a d' c'8. bf16 a8 | <bf, g>4.~4 d8 | \mBreak
            g8. fs16 g8 bf8. a16 g8 | a4.~4 8 | bf a d' c'8. bf16 a8 | \partial 8*5 <bf, g>4.~4 \bar "||" | \mBreak
            \stemNeutral \partial 8 bf16 c' | <g d'>8 g g ef'8.( d'16) c' b! | <g c'>4.( <fs d'>4) c'8 | bf8. a16 g8 <ef g> c' bf | <d bf>4.( <d a>4) d8 | \mBreak
            g8. fs16 g8 bf8. a16 g8 | <cs e! a>4.~4 <c! fs a>8 | <bf, g bf> <c fs a> <d g d'> c'8. bf16 <c fs a>8 | \partial 8*5 <bf, g>4.~4 | \fine          
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | d4. d4.~4 c8 ef4 8 | d4. d | s2. |
            d4. ef4.~ | 4 c8 ef4 8 | d4. d | s8*5 |
            s8 | s4. g4 s8 | s2. | \stemUp g4 s2 | s2. |
            s4. d4 \stemDown <d g>8 | s2. | s4. <ef g>4 s8 | s8*5 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
       Can8 | love8. be16 cont8 -- roll’d8. by16 ad8 -- vice!8*5 Can8 | mad -- ness and rea8. -- son16 a8 -- gree?8*5 O8 | 
       Mol8. -- ly!16 who’d8 e8. -- ver16 be8 | wise,8*5 If8 | mad -- ness be lov8. -- ing16 of8 | thee?8*5 | 
       Let8 | sages4 pre8 -- tend4 to16 des -- pise8*5 The8 | joys8. they16 want8 spirits4 to8 | taste;8*5 Let8 |
       us8. seize16 old8 Time8. as16 he8 | flies,8*5 And16 the | bless8 -- ings of life8. while16 they8 | last.8*5 |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceFour
            r8 | <g bf>4. <ef g> | <c g>4.~4 8 | d4. 4. | g,4.~4 s8 |
            <g bf>4. <ef g> | <c g>4.~4 8 | d4. 4. | g,~4 |
            d8\rest | bf4. c | a d | ef <c g> | <d g>4.( <d fs>4) d16 c |
            bf,4. g,4 bf,8 | s4 e!8 a4 s8  | s2. | g4.~4 | \fine
          } % end voice three

          \new 	Voice {
            \voiceThree
            s8 | s2.*2 | g8 c' bf a8. g16 fs8 | g,4 d8 g4 r8 |
            s2.*2 | g8 fs bf a8. g16 fs8 | g,4 d8 g4 |
            s8 | s2.*3 | s8*5 fs8 |
            g4. 4 s8 | a,4 s4. d8 | g, a, bf, c4 d8 | s8*5 |
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