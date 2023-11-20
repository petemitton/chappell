\version "2.24.0"
\language "english"

global = {
  \time 6/8
  \key g \major
}

mBreak = {}

\header {
%  title = \markup {\medium \fontsize #-2 \caps "The Doleful Dance and Song of Death:"}
%  subtitle = \markup {\medium \fontsize #-2 \caps "Intituled" \medium \fontsize #-1 \caps "Dance After My Pipe.—"\medium \fontsize #-2 \caps "To a Pleasant New Tune"}

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
            \partial 8 <d fs a>8|
            <d g b>4 g8 d'4 b8 |
            g4 d8 g8 b4 |
            a4 c'8  b8._(  a16) g8 |
            g8._(  fs16) g8 <d a>4 <d fs a>8 | \mBreak
            <d g b>4 g8 d'4 b8 |
            g4 d8 g8 b4 |
            a4 c'8  b8._(  a16) g8 |
            fs8( a8) b8 <c g c'>4 <g d'>8 | \mBreak
            <e g e'>4 c'8 <g d'>4 <e g c'>8|
            b8.(  a16) g8 <fs a>4 d8 |
            g4 fs8 <b, d g>4 d8 |
            b8.(  a16) g8 <fs a>4 <d fs a>8 | \mBreak
            <e g e'>4 c'8 <g d'>4 <e g c'>8|
            b8.(  a16) g8 <fs a>4 d8 |
            g4 fs8 <b, d g>4 d8 |
            \partial 8*5 <d fs b>8 <c a>4 <b, g>4 \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8|
            s2.|
            s2.|
            d2. |
            cs4. s4. |
            s2.|
            s2.|
            d2. |
            d4. s4. |
            s2.|
            <d g>4 s2 |
            <c e>4. s4. |
            <d g>4 s2 |
            s2.|
            <d g>4 s2 |
            <c e>4. s4. |
            s2 s8|

          } % end voice two
        >>
      } % end staff up
      
      \new Lyrics \lyricmode {	% verse one
        Can8 | you4 dance8 \markup {\italic "The"}4 \markup {\italic "shaking"}8 | \markup {\italic "of"}4 \markup {\italic "the"}8 \markup {\italic "sheets,"}8 A4 | dance4 that8 ev'4 -- ry8 | one4 must8 do;4 Can16 you16 |
        trim4 it8 up4 with8 | dain4 -- ty8 sweets,4 And8 | ev'4 -- ry8 thing4 that8 | 'longs4 there8 -- to?4 Make8 |
        rea4 -- dy,8 then,4 your8 | wind4 -- ing8 sheet,4 And8 | see4 how8 ye8 can8 be8 | stir4 your8 feet,4 For8 |
        Death8 is8 the8 man4 that8 | all4 must8 meet,4 For8 | Death8 is8 the8 man4 that8 | all8 must4 meet.4 |
        
      }	% end lyrics verse one
      
      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceFour
            d8 |
            g2.~|
            g2. |
            fs4. g4. |
            e4. fs4 <d c'!>8|
            g2.~|
            g2. |
            <fs a>4. g4. |
            <d a>4. <e g>4 b,8 |
            c4. b,4 a,8 |
            d4.~d4 d8 |
            g,4.~g,4 b,8 |
            d4.~d4 d8 |
            c4.( b,4) a,8 |
            d4.~d4 d8 |
            g,4. g,4 b,8 |
            d4. g4 | \fine
          } % end voice three
          
          \new 	Voice {
            \voiceThree
            s8|
            s2.|
            s2.|
            s2.|
            s2.|
            b4.s4. |
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
            s2 s8 |
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