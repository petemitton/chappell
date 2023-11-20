\version "2.24.0"
\language "english"

global = {
  \time 6/8
  \key bf \major
}

mBreak = {\break }

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
            \partial 8 g8 |
            d'4 d'8 c'4 c'8 |
            <bf d'>8.  <a c'>16 <g bf>8 <fs a>4 g8 |
            d'8.  ef'16 d'8 c'4 ef'8 |
            <fs d'>4. g4 g8 | \mBreak
            d'4 d'8 c'4 c'8 |
            <bf d'>8.  <a c'>16 <g bf>8 <fs a>4 g8 |
            d'8.  ef'16 d'8 c'4 ef'8 |
            <fs d'>4. g4 r8 | \mBreak
            <g-> c'>4. g4 <g bf>8 |
            <fs a>4. g4 r8 |
            <g-> d'>4. g4 <g bf>8 |
            <fs a>4. g4 r8 | \mBreak 
            <g-> c'>4. g4 <g bf>8 |
            <fs a>4. g4. |
            <g-> d'>4. g4 <g bf>8  |
            \partial 8*5 <fs a>4. g4 \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8|
            g4. g4. |
            s2.|
            g4. g4. |
            s2.|
            g4. g4. |
            s2.|
            g4. g4. |
            s2.|
            s2.|
            s2.|
            s2.|
            s2.|
            s2.|
            s2.|
            s2.|
          } % end voice two
        >>
      } % end staff up
      
      \new Lyrics \lyricmode {	% verse one
        The8 cramp4 is8 in4 my8 purse4 full8 sore,4 No8 money4 will8 bide4 there8 -- in,4. a,4 And8
        if4 I8 had4 some8 salve4 therefore,4. O8 light8. -- ly16 then8 would4 I8 sing,4. a,4 8
        Hey4. ho!4 the8 cramp,4. a.4 8 Hey4. ho!4 the8 cramp,4. a,4 8
        Hey4. ho!4 the8 cramp,4. a.4 8 Hey4. ho!4 the8 cramp,4. a.4
      }	% end lyrics verse one
      
      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            r8 |
            <g bf>4. <g ef'>4. |
            d'4 d'8 c'4 bf8 |
            g4. g4. |
            <d c'>4. <g bf>4 r8 |
            <g bf>4. <g ef'>4. |
            d'4 d'8 c'4 bf8 |
            s4. c'4. |
            s4. <g bf>4 r8 |
            ef'4.( bf4) d'8 |
            c'4. bf4 r8 |
            bf4.( ef'4) d'8 |
            s4. <g bf>4 r8 |
            ef'4.( bf4) d'8 |
            c'4. bf4 r8 |
            bf4.( ef'4) d'8 |
            s2 s8 \fine
          } % end voice three
          
          \new 	Voice {
            \voiceFour
            s8 |
            s2.|
            g2. |
            bf,4. ef4 c8 |
            s2.|
            s2.|
            g2. |
            <bf, g>4. ef4 c8 |
            <d c'>4. s4.|
            g2. |
            g4.~g4 s8 |
            d2. |
            <d c'>4. s4.|
            g2. |
            g4.~g4 s8 |
            d2. |
            <d c'>4. <g bf>4|

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