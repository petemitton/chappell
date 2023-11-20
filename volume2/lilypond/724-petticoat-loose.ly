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
            \repeat segno 2 { \repeat volta 2 { \partial 8 <b, fs>8 | <b, g>4 <b, e>8 <ds fs> ds b, | <b, g>4 <b, e>8 <ds fs> ds b, | d!8. e16 d8 4 a8 | d8. e16 d8 4 <b, fs>8 | \mBreak
            <b, g>4 <b, e>8 <ds fs> ds b, | <b, g>4 <b, fs>8 <ds fs> ds b, | e8. fs16 e8 4 b8 | %
            \partial 8*5 e4.~4 \fine } |  \partial 8 <c fs>8 | <b, g> a b <d a> b c' | \mBreak
            <d b>8 a g <d fs> e d | \stemUp d'8. e'16 d'8 d' a <d fs> | d'8. e'16 d'8 8 a <ds fs> | <e g> a b <e a> b c' | <e b> a g <ds fs> e ds | \mBreak
            e'8. fs'16 e'8 8 b g | e'8. fs'16 e'8 e' b g | <d! g> a b <d a> b c' | <d b> a g <d fs> e d | d'8. e'16 d'8 8 a <d fs> | \mBreak
            d'8. e'16 d'8 8 a <ds fs> | <e g> a b <e a> b c' | <e b> a g <ds fs> e ds | e8. fs16 e8 4 b8 | \partial 8*5 e4.~4 | } \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s2.*8 | s8 | s2. |
            s2. | \stemUp d4 s2 | d4 s2 | s2.*2 |
            b4 s2 | b4 s2 | s2.*2 | d4 s2 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one

      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            ds,8 | e,4 g,8 b,4 ds,8 | e4 g,8 b,4 8 | d!8. e16 d8 4 a8 | d8. e16 d8 4 ds,8 |
            e,4 g,8 b,4 ds,8 | e,4 g,8 b,4 8 | e8. fs16 e8 4 b8 | e4.~4 | d8 | g4. fs |
            g4. d | fs~4 d8 | fs4.~4 b8 | e4. c | g, b, |
            g4.~4 e8 | g4.~4 e8 | b,4. fs, | g, d | fs~4 d8 |
            fs4.~4 b8 | e4. c | g, b, | e8. fs16 e8 4 b8 | e4.~4 | \fine
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