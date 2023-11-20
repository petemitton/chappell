\version "2.22.2"
\language "english"

global = {
  \time 6/8
  \key g \major
}

mBreak = { \break }
lalign = { \once \override  LyricText.self-alignment-X = #LEFT }
dynamicsX =
#(define-music-function (offset)(number?)
   #{
     \once \override DynamicText.X-offset = $offset
     \once \override DynamicLineSpanner.Y-offset = #0
   #})
hyphen = { \once \override LyricHyphen.minimum-distance = #1.0 }

\header {
  %	title = \markup {\medium \caps "Title."}
  %	poet = ""
  %	composer = ""

  meter = \markup {\italic ""}
  %	arranger = ""
}
\score {

  \new ChoirStaff {
    <<
      \new Staff = "up"  {
        <<
          \global
          \new 	Voice = "one" 	\fixed c' {
            %\voiceOne
            <b, d>4 d8 4 8 | <c e>4 fs8 <b, g>4 b8 | <e a>4 g8 <a, d g>4 fs8 | <b, g>2. | \mBreak
            <b, d>4 d8 4 8 | <c e>4 fs8 <b, g>4 b8 | <b, a>4 g8 <a, d g>4 fs8 | \partial 8*5 <b, g>4.~4 \bar "||" | \mBreak
            \partial 8 a8 | <d b>4 b8 <d d'>8 g4 | fs8 d4~4 a8 | <d b>4 c'8 a4 <cs g>8 | <d a>2. | \mBreak
            g8 d4 <b, g>8 d4 | d4 8 4 <b, d>8 | <c e>8 e4 <c fs>4 fs8 | <b, g>2. | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        Fri4 -- ar8 Ba4 -- con8 | walks4 a8 -- gain,4 And8 | Doc4 -- tor8 Faus4 -- tus8 | too;2. |
        Pros4 -- er8 -- pine4 and8 | Plu4 -- to8 [reign]4 ‘O’er’8 | ma4 -- ny16 a16 gob4 -- lin8 | 4 ‘crew.’4. | 
        With8 | that4 a8 mer -- ry4 | de8 -- vil2 To8 | ‘take4 an8 air4 -- ing’8 | vow’d,2. |
        Hug8 -- gle,4 dug8 -- gle,4 | ha,4 ha,8 ha,4 The8 | De8 -- vil4 laugh’d4 a8 | loud.2. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            <g, g>4 r8 <b, g>4 r8 | <c g>4 r8 <e g>4 r8 | <c e>4 r8 d4 r8 | g,4 d8 g4. | 
            <g, g>4 r8 <b, g>4 r8 | <c g>4 r8 <e g>4 r8 | <c e>4 r8 d4 r8 | g,4 d8 g4 |
            r8 | <g, g>4 r8 <b, g>4 r8 | <d a>4 r8 <fs a>4 r8 | g4^( a8 fs4) e8 | fs4 e8 d4 c!8 | 
            <b, g>4 r8 <g, g>4 r8 | <b, g>4 r8 r <g, g>4 | <c g>4 r8 d4 r8 | g,2. | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
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
      }%end score
    }%end context
  }%end layout

  \midi{}

}%end score