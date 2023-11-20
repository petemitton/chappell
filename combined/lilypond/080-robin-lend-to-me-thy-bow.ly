\version "2.24.0"
\language "english"

global = {
  \time 4/4
  \key d \major
}

mBreak = {}

\header {
  %	title = \markup {\medium \caps "Title."}
  %	poet = ""
  %	composer = ""

%  meter = \markup {\italic "Smoothly and slowly."}
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
            d4 e8 fs8 g4 fs4 |
            e4 e4 d4 d'4 |
            cs'4 b4 a4 fs4 |
            <d g>4 <cs a>4 <d fs>4.  d8 | \mBreak
            g8 a8 b8 cs'8 d'4 a4 | 
            cs'8 b8 a8 g8 fs4 a4  |
            <d b>4 <g e'>4 <fs d'>4 <e cs'>4|
            <fs d'>1 \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s2 b,2 |
            cs2. d4 |
            d2. d4 |
            s1|
            b,4 g4 d2 |
            d4 cs4 d4 d4 |
            s1|
          } % end voice two
        >>
      } % end staff up
      
      \new Lyrics \lyricmode {	% verse one
        Now4 Ro8 -- bin,8 lend4 to4 | me4 thy4 bow,4 Sweet4 Ro4 -- bin4 lend4 to4 me4 thy4 bow,4 For4
        I8 must8 now8 a8 hunt4 -- ing4 | with8 my8 la8 -- dy8 go,4 With4 | my4 sweet4 la4 -- dy4 go.1
      }	% end lyrics verse one
      
      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            <d fs>2 g,2 |
            a,2 b,4 b4 |
            a4 g4 fs4 d4 |
            e4 a,4 d2 |
            e2 fs2 |
            g4 a4 b4 fs4 |
            g4 e4 a4 a,4 |
            d1 | \fine
          } % end voice three
          
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