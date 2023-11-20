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
            \voiceOne
            \partial 4. a4.-> | <e g>8 e c <a, d>4 <f b>8 | <e a c'>4.^( <b, as>4) <c as>8 | <e g!>8 e c d4 <d e>8 | \mBreak
            <c a>4 b8\rest a4.-> | <e g>8 e c <a, d>4 <f b>8 | <e a c'>4.( <b, gs>4) <c a>8 | <e g!>8 e c d4 <d e>8 | \partial 8*5 <c a>4.~4 \bar "||" | \mBreak
            \partial 8 <d b>8 | c'8. b16 c'8 d'8. c'16 b8 | <e c'>4. <f b>4 <g c'>8 | a8. gs16 a8 <d d'>4 <f b>8 | <b, gs>4 b8\rest a4.-> | \mBreak
            <e gs>8( e) c <a, d>4 <f b>8 | <e a c>4.( <b, gs>4) <c a>8 | <e g>8 e c d4 <d e>8 | \partial 4. <c a>4.\fermata | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            c4 d8 | s2.*3 |
            s2.*4 | s8*5 |
            s8 | \stemUp e4 s8 f4 s8 | s2. | c4 s8 s4. | s2. |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        Come,4. | o8 -- pen the door,4 sweet8 | Bet4. -- ty,4 For8 | ’tis8 a cold win4 -- ter’s8 |
        night,4 8 It4. | rains,8 and it blows4 and8 | thun4. -- ders,4 And16 the16 | moon8 it does give4 no8 | 8 light.4. 8 |
        ’Tis8 | all8. for16 the8 love8. of16 sweet8 | Bet4. -- ty,4 That8 | here8. I16 have8 lost4 my8 | way,4 8 Sweet,4. | 
        let4 me8 lie4 be8 -- yond4. thee,4 Un8 -- til it is break4 of8 | day.4. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            a,4 b,8 | c4. f4 d8 | e4.~4 a,8 | c4. <f a>4 <e gs>8 |
            <a, a>4 r8 a,4 b,8 | c4. f4 d8 | e4.~4 a,8 | c4. <f a>4 <e gs>8 | <a, a>4 e8 a4 |
            g8 | c'4. g | c d4 e8 | f4. 4 d8 | e4 r8 a,4 b,8 |
            c4. f4 d8 | e4.~4 a,8 | c4. <f a>4 <e gs>8 | <a, a>4. | \fine
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