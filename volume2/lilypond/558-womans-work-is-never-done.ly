\version "2.24"
\language "english"

global = {
  \time 4/4
  \key bf \major
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
            \repeat volta 2 { bf4. c'8 a4 bf | g g a g8( f) | bf4. <ef g c'>8 <d fs a>4 <fs d'>4 | g fs g2 | } \mBreak
            \once \stemUp bf4. c'8 d'4 <g ef'> | <a c'> <g bf> <f a> g8( f) | <f bf>4. <a c'>8 <bf d'>4 <g ef'> | <a c'> <g bf> <a c'>2 | \mBreak
            <d d'>4 <d bf> <d c'> <d a> | <d bf> <c g> <a, fs> ef8( d) | <d g bf>4. <ef g c'>8 <d fs a>4 <fs d'> | g4 fs g2 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s1*4 |
            g2. 4 | s1*3 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        O that I had | ne -- ver mar -- ried, | Since I led a | care -- full life; |
        Whilst that he doth | take his plea -- sure, | (Lest he should to | ru -- in run,) |
        Here I la -- bour | out of mea -- sure, | Wo -- man’s work is | ne -- ver done. |
      }	% end lyrics verse one     
      
      \new Lyrics \lyricsto "one" {	% verse two
        Things with me are | strange -- ly car -- ried, | Now I am be -- come a wife. |
      }	% end lyrics verse two
      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            d'4. ef'8 c'4 d' | bf ef' c' bf8 a | d'4. c8 d4 \once \stemUp <d c'> | bf a bf2 | 
            g,4. a,8 bf,4 c | f2. ef4 | d4. c8 bf,4 ef, | f,1 |
            bf4 g a fs | g ef d2 | g4. c8 d4 <d c'> | bf4 a bf2 | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            g1 | 4 ef f2 | g4. s8 s2 | g1 |
            s1*7 | g1 | 
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