\version "2.24"
\language "english"

global = {
  \time 6/8
  \key g \major
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
            \partial 8 d'8 | 8. e'16 d'8 b4 g8 | g8. a16 g8 fs8. e16 fs8 | g e d g4 d8 | \mBreak
            b,4.~4 g8 | 8.( a16) g8 fs4 8 | \stemUp a8. b16 a8 fs4 a8 | b8.( cs'16) d'8 4 cs'8 | \partial 8*5 d'4.~4 | \mBreak
            \partial 8 d'8 | 8. e'16 d'8 a4 b8 | c'4.^~^(8. d'16) e'8 | d'8 b4 a g8 | fs4.^~4 fs'8 | \mBreak
            g'8 d'4 e'8 d'4 | c'4 b8 a^( b) c' | b8.^( a16) g8 4 fs8 | \partial 8*5 <b, g>4.~4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | s2.*5 | s4. s4 d8 | d4. fs4 e8 | fs4.~4 |
            r8 | f!2. | e4. fs! | g4 s8 cs4. | d4.~4 s8 | 
            g4. <g b> | e e | d c4 s8 | s8*5 | 
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        You | lass -- es and lads, Take | leave of your Dads, And a -- way to the May -- pole |
        hie, There | ev’ -- ry he Has | got him a she, And_the | min -- strels stand -- ing | by. |
        For | Wil -- ly has got his | Gill, And | John -- ny has his | Joan, To |
        jig it, jig it, | jig it, jig it, | jig it up and down. | 
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            r8 | b4. d'4 b8 | \stemNeutral <b, g>4. <d a> | <g b> <g b> |
            g4 d8 g,4 d8\rest | <b, g>4. <c g> | <cs a> <d a>4 fs,8 | g,4. a, | d,4.~4 | 
            d8\rest | d2. | g,4. a | b8 g4 e4. | d c! |
            b,4. g, | a, c | d d, | g4.~4 | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s8 | g2. | s2.*2 |
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