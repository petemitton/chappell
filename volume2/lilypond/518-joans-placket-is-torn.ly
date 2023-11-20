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
            \repeat volta 2 { \partial 8 ef16 f | g8. af16 g8 g8. f16 ef8 | f8. g16 f8 f8. bf16 af8 | g8. f16 ef8 f8. ef16 d8 | \mBreak
            \stemUp \partial 8*5 ef8.[ f16 <g, ef>8] 4 } | \partial 8 bf8 | ef'4 bf8 c'4 bf8 | ef'4 bf8 c'4 bf8 | <ef ef'>4 bf8 g f ef | d8. ef16 f8 <d f>4 ef16 f | \mBreak
            g8. af16 g8 g8. f16 ef8 | f8. g16 f8 f bf <c af> | g8. f16 ef8 f8. ef16 d8 | \partial 8*5 ef8.[ f16 <g, ef>8] 4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | \stemUp bf,4 s8 bf,4 s8 | d4 s8 bf,4 s8 | bf,4 s8 c4 s8 | 
            g,4 s4. | s8 | \stemDown ef2.-> | ef-> | s2.*2 |
            \stemUp ef4 s8 ef4 s8 | c4 s8 s4. | ef4 s8 d4 s8 | g,4 s8 
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        Joan’s8 | plack8. -- et16 is8 torn,8. 
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            \stemNeutral r8 | ef,4 r8 g,4 r8 | bf,4 r8 d4 r8 | ef4 c8 af,4 bf,8 | 
            ef,4 ef8 4 | r8 | \stemUp ef,4 g8 af4 g8 | ef,4 g8 af4 g8 | \stemNeutral ef,4 g8 bf8. af16 g8 | bf4.~4 r8 | 
            ef4. c | af,~4 f,8 | bf,4. <bf, af> | ef,4 ef8 4 | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s2.*4 | 
            s8 | ef,2. | ef, | s2.*2 |
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