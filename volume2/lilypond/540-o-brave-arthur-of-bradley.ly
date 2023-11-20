\version "2.24"
\language "english"

global = {
  \time 9/8
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
            ef8. f16 ef8 4 c'8 bf g ef | <bf, f>4 f8 f g ef d c bf, | ef8. f16 ef8 4 c'8 bf( c') d' | \mBreak
            <g ef'>4 ef8 ef( f) ef d( c) bf, | <ef bf>4 bf8 <ef c'>4 c'8 <ef bf> af g | f8. g16 f8 <a,! f>4 ef8 <bf, d> c bf, | \mBreak
            <ef bf>4 bf8 <ef c'>4 c'8 <ef bf> c' <af d'> | <g ef'>4 ef8 ef( f) ef d c bf, | <g ef'>4 ef'8 <af d'>4 c'8 bf( g) ef | \mBreak 
            <c f>4 f8 <af, f> g ef <bf, d>4 bf,8 | ef'4 8 d' ef' c' bf( g) ef | <c f> g ef <af, d>( c) d <g, ef>4 r8 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            \stemUp g,4 s8 s2. | s4.*3 | g,4 s8 s2. | 
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        See ye not Pierce the pip -- er, His | cheeks as big as a mit -- re, A | pip -- ing am -- ong the swains That |
        dance on yond -- der plains? Where | Tib and Tim do trip it, And | youths to the horn -- pipe nip it, With |
        ev’ -- ry one his carr -- iage To | go to yon -- der mar -- riage, Not | one should stay be -- hind, But | 
        go with Ar -- thur of Brad -- ley, | Oh! fine Ar -- thur of Brad -- ley, | Ar -- thur of Brad -- ley, O. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            ef,4.~4 af8 g4 d8\rest | d4.~4 c8 bf,4 d8\rest | ef4.~4 af8 g4 d8\rest |
            ef4. g, bf,4 d8\rest | g4. af g8 f ef  | d4. f bf,4 d8\rest |
            g4. af g4 f8 | c4. <c a!> <bf, bf>4 d8\rest | ef,4. f, g, |
            a,4. f, bf,4 d8\rest | <c g>4. 4. <ef g> | af, bf, ef,4 r8 | \fine
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