\version "2.24"
\language "english"

global = {
  \time 6/8
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
            \partial 8 c8 | c4 d8 <c e>4 f8 | <b, g>4 a8 <d b> a g | <f a> b c' <f d'> b g | \mBreak
            <e c'>4.~4 c8 | c4 d8 <c e>4 f8 | <b, g>4 a8 <d b> a g | <f a> b c' <f d'> b g | \partial 8*5 <e c'>4.~4 \bar "||" | \mBreak
            \partial 8 b16( c') | d'8. c'16 b8 c'8. d'16 e'8 | <f a>4.~4 f'8 | e'8. d'16 c'8 b8. c'16 d'8 | g4.~4 <bf e'>8 | \mBreak
            <a f'>4 <g e'>8 <f d'>4 <e c'>8 | b!8. c'16 d'8 g4 8 | a8. b16 c'8 <f d'> b g | \partial 8*5 <e c'>4.~4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s2.*8 | 
            s8 | g4 s8 g4 s8 | s2. | g4 s8 g4 s8 | s2. |
            s2. d4 s8 s4. | f4 s8 s4. | s4. s4 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Of | all the sim -- ple | things we do, To rub | o -- ver a whim -- si -- cal |
        life, There’s | no one fol -- ly | is so true As that | ve -- ry bad bar -- gain, a | wife. |
        We’re | just like a mouse in a | "trap,  .  .  " Or | rat that is caught in a | gin; We |
        start and fret, and | try to es -- cape, And | rue the sad hour we came | in. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r8 | c4. a, | g,2. | f,4. d,4 g,8 |
            c,4 g,8 c4( r8 | c4.) a, | g,2. | f,4. d,4 g,8 | c,4 g,8 c4 |
            r8 | b,4 g,8 e4 c8 | f4 c8 f,4 r8 | c4 e8 g4 f8 | e4 g8 c'4 c8 |
            f4.~4 8 | g4.~4 e8 | f4 s8 d4 g8 | c4.~4 | \fine
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