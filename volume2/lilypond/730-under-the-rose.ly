\version "2.24"
\language "english"

global = {
  \time 4/4
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
            \repeat volta 2 { \partial 4 ef4 | g4 8. ef16 f8.([ g16) af8. 16] | g8.[ ef16 f8. g16] f8.[ d16 bf,8. 16] | \mBreak
            <bf, g>4 g8. ef16 <c f>4 c'8. 16 | <d bf>4 f8. g16 ef4 } 4 | 8.[ f16  g8. af16] bf4 c'8. d'16 | \mBreak
            ef'4 c'8. d'16 bf8.[ g16 ef8. 16] | 8.([ f16) g8. af16] bf4 c'8. d'16 | <ef ef'>4 c'8. a!16 <d bf>4 c'8.( d'16) | \mBreak
            ef'4\pp c'8 ef' d'4 bf8 g | \stemUp <c af!>4 bf8. c'16 bf8.[ g16 ef8. <bf, f>16] | <bf, g>4 ef8. g16 <c f>4 c'8. 16 | \partial 2. <d bf>4 f8. g16 ef4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4 | s1*4 | ef1 |
            ef2. s4 | ef1 | s4 ef4 s2 | 
            \stemUp g1 | s4 d4 ef4 s4 | s4 bf,4 s4 ef | s d s |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        As | Mars and Mi -- ner -- va were | view -- ing of some im -- ple -- ments, "Bel -" |
        "- lo" -- na stept for -- ward and | ask -- ed the news; 
      }	% end lyrics verse one      
      
      \new Lyrics \lyricsto "one" {	% verse two
        Were | they for re -- pair -- ing those | war -- _ like _ in -- stru -- ments, That’s |
        now grow -- ing rust -- y for | want to be used? The | mo -- ney is with -- drawn, and our |
        trade is di -- mi -- nish -- ing, Me -- cha -- nics are wand’ -- ring with -- out shoes or hose; Come, |
        stir up the wars and our | trade will be flour -- ish -- ing. This | grand con -- ver -- sa -- tion was | un -- der the rose. |
      }	% end lyrics verse two
      
      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            d4\rest | bf4 8. g16 af8.[ bf16 c'8. d'16] | ef'8.[ g16 af8. bf16] <bf, d>4 d\rest | 
            ef,4 bf8. g16 af,2 | bf,4 af8. bf16  <ef g>4  d\rest | g8.[ af16 bf8. f16] g4 af8. bf16 |
            c'4 af8. bf16 g4 d4\rest | g8.[ af16 bf8. f16] g4 af8. bf16 | <c c'>4 a!8. c'16 <bf, bf>4 d\rest | 
            c'2 bf | af!4 4 g4.. d16 | ef4 g, af,2 | bf,4 af8. 16  <ef g>4 | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s4 | ef1 | ef2 s | 
            s4 ef s2 | s4 \once \stemUp bf,4 s2 | ef1 |
            ef2. s4 | ef1 | s4 f4 s2 |
            s1*3 | s4 bf, s |
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