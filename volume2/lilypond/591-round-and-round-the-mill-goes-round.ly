\version "2.24"
\language "english"

global = {
  \time 4/4
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
            \partial 4 <d fs a>4 | <fs d'> cs'8 b <d a>4 g8 fs | <cs g>4 fs8 e <d fs>4 e8( d) | g( fs) g a <d g b>4 cs'8 d' | \mBreak
            <e e'>4 <d e> <cs a> <a, d fs> | g!8( fs) g a <d g b>4 4 | \stemDown <e g b>8( e') e' d' <e a cs'>4 b8( cs') | \mBreak
            \stemUp d'8( cs') b a <d b> a g( fs) | <d g>4 <cs a> d \textMark \markup {\caps "Chorus." } b8( cs') | d'( cs') b a <d b> a g( fs) | \partial 2. <d g>4 <cs a> d | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4 | s1*2 | \stemUp d4 s2. |
            s1 | <b, d>4 s2. | s1 |
            d4 s2. | s1 | d4 s2. | s2. |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        We’ll | glad -- den our hearts with the | best of our cheer, Our | spi -- rits we’ll raise with his |
        honour’s strong beer; Re -- gard -- less of cares that_the | mor -- row may rear, We’ll |
        make this the mer _ -- riest | night of_the year, We’ll | make this the mer _ -- riest | night of_the year.
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            d4 | <d a>2 <d fs> | <a, e> d | b g |
            <e a cs'>4 <e gs b> <a, a> d | g,!2 g4 fs | e2 a |
            b8 a g fs g fs e d | e4 <a, g> <b, fs> b, | b8 a g fs g fs e d | e4 <a, g> <d fs> | \fine
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