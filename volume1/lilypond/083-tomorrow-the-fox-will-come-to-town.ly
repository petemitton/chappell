\version "2.24.0"
\language "english"

global = {
  \time 6/8
  \key g \major
}

mBreak = {}

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
            \partial 8 <b, g>8|
            <a, fs>fs8 <b, g>8 <c a>4 <d b>8|
            <c a>4 <b, g>8 <c a>fs8 d8 |
            g4. <g b>4. |
            <b d'>4_( <a c'>8)  <g b>4 <b, g>8|
            <a, fs>fs8 <b, g>8 <c a>4 <d b>8| \mBreak
            <e c'>4 <d b>8 <c a>4 <d b>16 <e c'>16|
            <d b d'>4 <g b>8 <c fs a>4 a8 |
            <b, g>4.~<b, g>4 <b, g>8|
            <a, fs>4 <b, g>8 <c a>4 <d b>8|
            <c a>4 <b, g>8 <c a>4 d8 | \mBreak
            <b, g>g8 g8 <g b>4 b8 |
            <b d'>4 <a c'>8 <g b>4 <b, g>8|
            <a, fs>4 <b, g>8 <c a>4 <d b>8|
            <e c'>4 <d b>8 <c a>4. |
            <d g b>4. ^\f <d fs a d'>4. | \mBreak
            <b d'>4 b8 d'4 <b, g>8 |
            <a, d fs>4 <b, g>8 <c a>4 <d b>8|
            <e c'>4 <d b>8 <c a>4 <d b>16 <e c'>16|
            <d b d'>4 <g b>8 <c fs a>4 a8 |
            \partial 8*5 <b, g>4.~<b, g>4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8|
            s2.|
            s2.|
            b,4 s8 s4. |
            s2.|
            s2.|
            s2.|
            s2.|
            s2.|
            s2.|
            s2.|
            s2.|
            s2.|
            s2.|
            s2.|
            s2.|
            <d g>4.~<d g>4 s8 |
            s2.|
            s2.|
            s2.|
            s2 s8 |

          } % end voice two
        >>
      } % end staff up
      
      \new Lyrics \lyricmode {	% verse one
        To8 -- morrow4 the8 fox4 will8 | come4 to8 town,4. | Keep,4. keep,4. | keep,4. keep;4 To8 --  | morrow4 the8 fox4 will8 |
        come4 to8 town,4 O8 | keep4 you8 all4 well8 | there.2 8 I8 | must4 de8 -- sire4 you8 | neighbours4. all,4 To8 |
        hal8 -- lo8 the8 fox4 out8 | of4 the8 hall,4 And8 | cry4 as8 loud4 as8 | you4 can8 call,4. | Whoop,4. whoop,4.
        whoop,4 whoop,8 whoop.4 And8 | cry4 as8 loud4 as8 | you4 can8 call,4 O8 keep4 you8 all4 well8 8 there.2 
      }	% end lyrics verse one
      
      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            g8 |
            d4. d4. |
            d4. d4. |
            g,4. g,4. |
            g,4. g,4. |
            d4. c4 b,8 |
            a,4. a4. |
            d4. d4. |
            g4. g,4 g,8 |
            d4. d4. |
            d4. d4. |
            g,4. g,4. |
            g,4. g,4. |
            d4. c4 b,8 |
            a,4. a4. |
            d4. d4. |
            g4.~g4 g,8 |
            d4. c4 b,8 |
            a,4. a4. |
            d4. d4. |
            g4. g,4 | \fine
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