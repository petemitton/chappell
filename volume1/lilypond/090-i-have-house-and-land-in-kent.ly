\version "2.24.0"
\language "english"

global = {
  \time 2/4
  \key g \minor
}

mBreak = { }

\header {
  %	title = \markup {\medium \caps "Title."}
  %	poet = ""
  %	composer = ""

%  meter = \markup {\italic "Moderate time."}
  %	arranger = ""
}
\score {

  \new ChoirStaff {
    <<
      \new Staff = "up"  {
        <<
          \global
          \new 	Voice = "one" 	\fixed c' {
            \voiceOne
            \partial 4 <bf, g>8 <d fs a>8 |
            <d g bf>d'8 <ef g c'>bf8 |
            <f! a>8.  f16 g8 a8 |
            bf8 bf8 c'8 c'8 |\mBreak
            <fs d'>4 d'8 d'8 |
            c'8 bf16 a16 bf8 g8 |
            <d fs>d8 bf16 c'16 d'8 |
            c'8 g8 <d bf>8 <c a>8 | \mBreak
            <bf, g>8 g8 <d g d'>8 <d a d'>8 |
            c'8 bf16 a16 bf8 <d g>8 |
            <d fs>d8 bf16 c'16 d'8 |
            <ef g c'>8 <c g>8 <d g bf>8 <d fs a>8 |
            \partial 4 <bf, g>4 \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4|
            s2|
            s4 ef4 |
            d4 g4 |
            s4 g4 |
            d4 d4 |
            s4 d4 |
            ef4 s4 |
            s2|
            <d g>4. s8 |
            s4 <d g>8 <d g>8 |
            s2|
            s4
          } % end voice two
        >>
      } % end staff up
      
      \new Lyrics \lyricmode {	% verse one
        I8 have8 house8 and8 land8 in8 Kent,8. And16 if8 you'll8 love8 me,8 love8 me8 |
        now.4 Two8 -- pence8 | half8 -- pen16 -- ny16 is8 my8 | rent,8 I8 can16 -- not16 come8 | ev8 -- ’ry8 day8 to8 |
        woo.8 Yes,8 two8 -- pence8 half8-pen16 -- ny16 is8 his8 | rent,8 He8 can16 -- not16 come8 | ev8 -- ’ry8 day8 to8 | woo.4
      }	% end lyrics verse one
      
      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            g,8 d8 |
            g4 ef4 |
            s2 |
            s2 |
            a4 s4 |
            s2 |
            s2 |
            s2 |
            g4 bf,8 fs,8 |
            g,4. bf,8 |
            d8 d8 g,8 bf,8 |
            c8 ef8 d8 d8 |
            g4 \fine
          } % end voice three
          
          \new 	Voice {
            \voiceFour
            s4|
            s2|
            <f c'>2 |
            <bf, bf>4 <ef g>4 |
            d8.  c16 <bf, g>4 |
            <a, fs>4 <g, g>4 |
            <d a>4 <g, g>4 |
            <c g>4 <d g>8 <d fs>8 |
            ef8 d16 c16 s4 |
            s2|
            s2|
            s2|
            
          }	% end voice four

        >>
      } % end staff down
    >>
  } % end choir staff

  \layout{
    \context{
      \Score {
        \omit  BarNumber
        %\override LyricText.self-alignment-X = #LEFT
        \override Staff.Rest.voiced-position=0
      }%end score
    }%end context
  }%end layout

}%end score