\version "2.24"
\language "english"

global = {
  \time 6/8
  \key c \major
}

mBreak = {}

\score {

  \new ChoirStaff {
    <<
      \new Staff = "up"  {
        <<
          \global
          \new 	Voice = "one" 	\fixed c' {
            %\voiceOne
            \partial 8 c8 | c8.-> d16 c8 c'4 8 | d'8. c'16 b8 a4 g8 | 8. a16 g8 4 e8 | \mBreak
            g4.~4 e8 | <c e>4-> <c a>8 a8. gs16 a8 | <c e>4 <c a>8 4 <f b>8 | \stemUp c'8.( b16) a8 <d b>4 gs8 | \partial 8*5 <c a>4.~4 \bar "||" | \mBreak
            \partial 8 <d g>8 | g8. a16 g8 <c c'>4 b8 | <c a>4.~4 <f a>8 | a8. b16 a8 <d d'>4 c'8 | b4.^~8. c'16 d'8 | \mBreak
            <e e'>4 c'8 <d d'>4 b8 | c'8.( b16) a8 g4 e8 | g8. a16 b8 <c c'>4 e8 | <b, d>4.~8. c'16 d'8 | \mBreak
            <e e'>4 c'8 <e d'>4 b8 | c'8.( b16) a8 <c g>4 e8 | f8.( g16) a8 <e g>4 <d f b>8 | \partial 8*5 <c e c'>4.~4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | s2.*4 | s4. \stemUp c4 s8 | s2. | e4 s8 s4. | s4. s4 |
            s8 | e4 s8 s4. | s2. | fs4 s8 s4. | d4.~4 s8 |
            s2. | c4 s8 s4. | c4 s2 | s2. |
            s2. | e4 s2 | c4 s2 | s4. s4 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Come | lass -- es and lads, get | leave of your Dads, And_a -- way to the May -- pole | 
        hie, For | ev’ -- ry fair has a | sweet -- heart there, And_the | fidd -- ler’s stand -- ing | by. |
        For | Wil -- ly shall dance with | Jane, And | John -- ny has got his | Joan, _ To |
        trip it, trip it, | trip it, trip it, | Trip _ it up and | down, _ To |
        trip it, trip it, | trip it, trip it, | Trip it up and | down. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r8 | <c, c>4 <c e g>8 4 8 | <c f a>4 8 <c f b>4 8 | <c e c'>4 <c e g>8 4 8 |
            <c e g>4 8 4 <e, e>8 | <a,, a,>4 <a, e a>8 4 8 | <a,, a>4 <a, e a>8 4 <d a>8 | <e a>4 r8 <e, e>4 r8 | a,4 e8 a4 | 
            b,8 | \grace { c,16^( } c4.) e | f4 f,8 f4. | \grace { d,16^( } d4.) fs | g4 g,8 g8. a16 b8 |
            <c c'>4 a8 <c b>4 g8 | \stemUp a8.( g16) f8 e4 r8 | \stemNeutral e4 r8 c4 r8 | g4 g,8 g8. a16 b8 |
            <c g c'>4 r8 <e gs b>4 r8 | <a, e a>4 r8 <c e>4 r8 | d4 r8 g4 g,8 | c4.~4 | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s2.*8 |
            s8 | s2.*5 | c4.~4 s8 |
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