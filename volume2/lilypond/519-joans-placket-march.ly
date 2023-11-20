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
            \repeat volta 2 { \partial 8 <g bf>16 <f af> | <ef g>8 8 8 8 <g bf> <ef g> | <bf, f>8 16 16 16 16 8 <g, ef> <bf, f> | <ef g>8 16 16 16 16 <bf, f>8 16 16 16 16 | \mBreak
            \partial 8*5 \grace s16. <g, ef>8[ 16 16 16 16] 4 } | \partial 8 <g bf>8 | <g ef'>4 bf8 <af c'(>4\> <g bf)>8\! | <g ef'>4 bf8 <af c'(>4\> <g bf)>8\! | \stemUp ef' d' c' bf af g | \mBreak
            f8 16 16 16 16 <d f>8 <g, ef> <bf, f> | <ef g> 8 8 8 8 <g bf> <ef g> | <bf, f>8 16 16 16 16 8 <g, ef> <bf, f> | \mBreak
            \grace s8 <ef g>8 16 16 16 16 <bf, f>8 16 16 16 16 | \partial 8*5 <g, ef>8[ 16 16 16 16] 4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s2.*4 |
            s8 | s2.*2 | ef2. | 
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one

      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r8 | \grace { bf,,32^\pp( c, d, } ef,4) r8 r4. | \grace { ef,32( f, g, af, } bf,4) r8 r4. | \grace { bf,32( af, g, f, } ef,4) r8 \grace { ef,32( f, g, af, } bf,4) r8 |
            \grace { bf,32( c d } ef4) r8 r4 | r8 | ef,8. ef ef,4 r8 |  ef,8. ef ef,4 r8 | c'8 bf af g f ef | 
            a,!4.( bf,4) r8 | \grace { bf,32( af, g, f, } ef,4) r8 r4. | \grace { ef,32( f, g, af, } bf,4) r8 r4. | 
            \grace { bf,32( af, g, f, } ef,4) r8 \grace { ef,32( f, g, af, } bf,4) r8 | \grace { bf,32( c d } ef4) r8 r4 |  \fine
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