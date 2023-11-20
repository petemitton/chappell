\version "2.24"
\language "english"

global = {
  \time 6/8
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
            d8. e16 d8 d'8. cs'16 d'8 | b8. a16 b8 a4. | d8. e16 d8 d'8. cs'16 d'8 | b4. a | \mBreak
            d8. e16 d8 d'8. cs'16 d'8 | b8. a16 b8 <cs a>4 <c! fs>8 | g8. a16 g8 fs8. g16 fs8 | <cs e>4. d \bar "||" | \mBreak
            fs8. g16 a8 4. | 8. <e g>16 <d fs>8 <cs e>4 e8 | fs8. g16 a8 8. b16 a8 | g8. fs16 <cs e>8 d4. | \mBreak
            \textMark \markup { \caps "Chorus." } fs8. g16 a8 <d a>4. | a8. <e g>16 <d fs>8 <cs e>4 e8 | fs8. g16 a8 8. b16 a8 | g8. fs16 <cs e>8 d4. | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            \stemUp s2.*5 | d4 s2 | b,4 s8 d4 s8 | s2. |
            d4 s8 d4 s8 | fs4 s2 | d4 s8 d4 s8 | b,4 s2 |
            d4 s2 | fs4 s2 | d4 s8 d4 s8 | b,4 s2 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Here’s to the maid -- en of | bash -- ful fif -- teen, | Now to the wi -- dow of | fif -- ty; |
        Here’s to the flaun -- ting ex -- tra -- va -- gant quean, And | here’s to the house -- wife that’s | thrif -- ty. |
        Let the toast pass, | Drink to the lass, I | war -- rant she’ll prove an ex -- cuse for the glass. |
        Let the toast pass, | Drink to the lass, I | war -- rant she’ll prove an ex -- cuse for the glass. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            <d fs a>2. | \once \stemUp g4. <fs a> | <d fs a>2. | \once \stemUp g4. <fs a> | 
            <d fs a>4. <b, fs b> | <e gs> <a, a>4 <d a>8 | <b, g>4. <d a> | <a, g> <d fs> |
            d4. fs | a a, | d fs, | g,4 a,8 d4. |
            <d, d>4. <fs, fs> | <a, a>  \ottava #-1 a,, | d, fs,, | g,,4 a,,8 d,4. | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s2. | d2. | s2. | d2. |
            s2.*4 |
            s2.*4 |
            s2.*4 |
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