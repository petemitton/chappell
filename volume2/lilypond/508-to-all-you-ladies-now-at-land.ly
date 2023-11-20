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
            \partial 4 f4 | <d f> <f bf> <ef a> <d bf> | <c c'>8( bf) a( g) f2 | <ef g>2 <d f>4. <c ef>8 | <bf, d>( <c ef>) <d f>4 <d bf> f | \mBreak
            <d f>4 <f bf> <ef a> <d bf> | <c c'>8( bf) a( g) f2 | <ef g>2 <d f>4. <c ef>8 | \partial 2. <bf, d>8( <c ef>) <d f>4 <d bf> \bar "||" | \partial 4 <f a c'> | <f bf d'> <f bf> <g c'> <f a> | \mBreak
            <d bf>4 a8( g) f2 | <bf, g>2-> <b,! f>4 ef8( d) | <c ef>4 c ef' <g c'> | <f a> <ef g>8 <d f> <ef g>4 <d f>8 <c ef> | \partial 2. <bf, d> <c ef> <d f>4 <d bf> | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            %\voiceTwo
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        To4 | all you la -- dies | now at land,2 | We men4. at8 | sea4 in -- dite, But | 
        first4 would have you | un -- der -- stand2 | How hard4. it8 | is4 to write: | The | mus -- es now, and | 
        Nep4 -- tune too, We | must im -- plore to | write to you, With8 a | fa,4 la8 la la,4 la8 la, | la la la4 la. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r4 | bf,4 d' c' bf | a2 r2 | c4 d8 ef f4 f, | bf, bf, bf, r |
            bf,4 d' c' bf | a2 r | c4 d8 ef f4 f, | bf, bf, bf, | f | bf d ef f | 
            g4 f8 ef d2 | ef d | c4 c ef' ef | f2 f, | bf,4 bf, bf, |
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