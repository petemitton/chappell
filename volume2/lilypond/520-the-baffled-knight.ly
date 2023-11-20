\version "2.24"
\language "english"

global = {
  \time 6/8
  \key ef \major
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
            \partial 8 ef8 | 4 bf8 8.( c'16) bf8 | g4 f8 ef4 <g b! d'>8 | <g c' ef'>4 d'8 c'8.( d'16) ef'8 | \mBreak
            <f b! d'>4. <ef c'>4 <g b d'>8 | ef'8.( d'16) c'8 \stemUp bf8. af16 g8 | c'4 f8 f8.( g16) af8 | bf8.( af16) g8 ef4 d8 | \partial 8*5 ef4. bf4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | s2. | d4. ef4 s8 | s4. g4 s8 |
            s2. | <g c'>4 s8 f4 ef8 | 4. d | ef s4. | s4. s4 | 
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        It8 | was4 a8 Knight4 was8 | drunk4 with8 wine,4 A8 | riding4 a8 -- long4 the8 |
        way,4. Sir;4 And8 | there4 he8 met8. with16 a8 | la4 -- dy8 fine,4 A8 -- mong4 the8 cocks4 of8 | hay,4. Sir.4 |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r8 <ef g>2. | \stemUp bf4 af8 g4 g,8 | \stemNeutral c4. ef |
            g4. c'4 g,8 | c4. d4 ef8 | af,4. bf, | g,4 ef,8 \stemUp g4 f8 | \stemNeutral <ef g>4.~4 | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s8 | s2. | bf,4. ef4 s8 | s2. |
            s2.*3 | s4. bf,4. | s4. s4 | 
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