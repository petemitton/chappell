\version "2.24"
\language "english"

global = {
  \time 6/8
  \key ef \major
}

mBreak = {  }

\score {

  \new ChoirStaff {
    <<
      \new Staff = "up"  {
        <<
          \global
          \new 	Voice = "one" 	\fixed c' {
            %\voiceOne
            \repeat segno 2 { <ef bf>4 r8 <d bf>4.~ | 8 g ef' bf g ef | af4 r8 af4. | af8 f g <d af> g f | \mBreak
            <ef bf>4 r8 <d bf>4.~ | <ef bf>8 g ef' bf g ef | c ef af <d g> af f ef4.~4  \volta 1 \fine bf8 | \mBreak
            <ef bf>8 g af <ef bf> g af | <ef bf> g ef' bf g ef | <c af> f g <c af> f g | <bf, af> f g <d af> g f | \mBreak
            <ef bf>8 g af <ef bf> g af | <ef bf> g ef' bf g ef | c ef af <d g> af f | ef4.( 8) g af |}
          }	% end voice one
          \new Voice  \fixed c' {
            %\voiceTwo
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Oh! dear!_what can the mat -- ter be? | Dear! dear! what can the mat -- ter be? |
        Oh! dear!_what can the mat -- ter be? | John -- ny‘s so long at the fair.  He |
        prom -- ised he’d buy me a | fair -- ing should please me, And then for a kiss, Oh! he | vowed he would teaze me; He |
        prom -- ised he’d buy me a | bunch of blue rib -- bons, To | tie up my bon -- ny brown | hair. And it’s |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            <ef g>4 r8 <bf, af>4.( | <ef g>4) r8 <g bf>4 r8 <f c'>4 r8 <ef c'>4.( | <d bf>4) r8 bf4 af8 |
            g4 r8 <f af>4.( | <ef g>4) r8 <g, ef>4.^( | <af, ef>) \once \stemUp bf4 af8 | <ef g>4.~4 r8 |
            <ef g>4 r8 4 r8 | 4 r8 r4. | f4 r8 ef4 r8 | d4 r8 bf4 af8 |
            g4 r8 4 r8 | 4 r8 <g, ef>4.( | <af, ef>4.) bf,4 af,8 | g,( af, f, ef,4) r8 | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s2.*6 | s4. bf, | s2. |
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