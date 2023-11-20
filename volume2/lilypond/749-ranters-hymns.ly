\version "2.24"
\language "english"

global = {
  \time 6/8
  \key ef
  \major
}

mBreak = { \break }

\score {

  \new ChoirStaff {
    <<
      \new Staff = "up"  {
        <<
          \new 	Voice = "one" 	\fixed c' {
            \global
            %\voiceOne
            ef4-> bf,8 ef4 <d f>8 | <ef g>4 <f af>8 <g bf>4 bf8 | <c c'>4 af8 <bf, f>4 d8 | ef4.~4 bf,8 | \mBreak
            ef4-> bf,8 ef4 <d f>8 | <ef g>4 <f af>8 <g bf>4 bf8 | <c c'>4 af8 <bf, f>4 d8 | \partial 2. <bf, ef>2. \bar "||" | \mBreak
            \repeat volta 2 { <c c'>4 c'8 \once \stemDown <ef c'>8( d') ef' | <ef bf>4 bf8 <bf, bf>4. | <c g>4-> ef8 c4 ef8 | <c g>4-> ef8 c4. | ef4 bf,8 ef4 <d f>8 | \mBreak
            <ef g>4 <f af>8 <g bf>4 bf8 | \alternative {\volta 1 {<c c'>4 af8 <bf, f>4 d8 | <bf, ef>2. } \volta 2 {<c ef c'>8 bf af <ef g>4 <d f>8 %
                                                                                                                   | <bf, ef>2.}} } | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            \stemUp s2.*3 | bf,4 s2 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Stop! poor sin -- ner, | stop and think be -- fore you fur -- ther | go! How |
        can you sport up -- on the brink of | e -- ver -- last -- ing | woe? |
        Hell be -- neath is | gap -- ing wide, | Ven -- geance waits the | dread com -- mand, | If you do not |
        turn a -- side, _ | You will all be damn’d!
      }	% end lyrics verse one

      \new Lyrics \lyricsto "one" {	% verse two
        _ _ _ _ _ _ _ _ _ _ _ _ _ _ 
        _ _ _ _ _ _ _ _ _ _ _ _ _
        Once a -- gain, I | charge you, stop! | For, un -- less you warn -- ing take, | Here, you are "a -"
        ware you’ll drop _ | _ _ _ _ _ In -- to a burn -- ing | lake.
      }	% end lyrics verse two
      
      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            \once \stemUp g4 bf,8 <g, ef>4 <bf, f>8 | <ef g>4 <f af>8 <g bf>4 r8 | <af, af>4 r8 <bf, af>4 r8 | <ef g>4 bf,8 ef4 r8 |
            \once \stemUp g4 bf,8 <g, ef>4 <bf, f>8 | <ef g>4 <f af>8 <g bf>4 r8 | <af, af>4 r8 <bf, af>4 r8 | <ef g>2. |
            <af, af>4 r8 <c af>4 r8 | <ef g>4 r8 <g, ef>4 r8 | <c g>4 ef8 c4 ef8 | <c g>4 ef8 c bf, af, | \once \stemUp g4 r8 <g, ef>4 <bf, f>8 |
            <ef g>4 <f af>8 <g bf>4 r8 | <af, af>4 r8 <bf, af>4 r8 | <ef g>2. | af,8 g, f, \stemUp bf4 af8 | \stemDown <ef g>2. | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            <ef, ef>4 s2 | s2.*7 |
            s2.*4 | ef,4 s2 |
            s2.*3 | s4. bf,4 8 | s2. |
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