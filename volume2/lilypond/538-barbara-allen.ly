\version "2.24"
\language "english"

global = {
  \time 3/4
  \key d \major
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
              \partial 4 s8 d | fs8 g a4. g8 | fs e d4. e8 | <d fs> a <d fs d'>4 <d gs d'> | <e cs'>8 a4. r8 cs'8 | \mBreak
              <d g d'>8 b g4 a8( b) | <d a> fs d4. e8 | <d fs> a <d b>4 <cs a> | \partial 2 fs8 d4. | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4 | s4 e4 cs | d s2 | s2.*2 | 
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        In8 | Scar -- let Town, where | I was born, There | was a fair maid | dwell -- in’, Made | 
        ev’ -- ry youth cry, | Well -- a -- day? Her | name was Bar -- bara | Al -- len. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r4 | a4 cs a, | d2 r4 | d b, b, | a2 r4 |
            b2 r4 | fs2 r4 | d g, a, | d2 |
          } % end voice three

          \new 	Voice {
            \voiceFour
            s4 | d s2 | s2.*3 |
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