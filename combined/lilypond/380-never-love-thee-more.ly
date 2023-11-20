\version "2.22.0"
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

%  meter = \markup {\italic "Rather slowly and smoothly."}
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
            \partial 8 d8 | 4 8 g4 a8 | b4 8 d4 8 | <b, b>4 b8 <c a>4 <d g>8 | e4.~ 4 <b, d>8 | \mBreak
            d4 8 g4 a8 | <b, b>4 b8 d4 8 | b4 8 a4 g8 | \partial 8*5 <d fs d'>4.~4 \bar "||" | \partial 8 d'8 | \mBreak
            <d b>4 b8 a4 g8 | s2. | s4. <c a>4 <d g>8 | e4.~4 d8 | \mBreak
            d4 8 <b, g>4 <c a>8 | <d b_(>8 <e c')> <fs d'> <g e'>4 <g d'>8 | 8 b4 <fs a> g8 | \partial 8*5 g4.~4 \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | b,2. | b,2. | s2.*2 | 
            b,2. | s2. | d4. cs | s2. |
            s2. | <g c'>4 <b d'>8 <c' e'>4 <g d'>8 | 4 b8 s4. | s <a, c> |
            b,4. s | s2.*2 | s8*5 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        My8 | dear4 and8 on4 -- ly8 | love,4 take8 heed4 How8 | thou4 thy8 -- self4 ex8 -- pose,8*5 By8 | 
        let4 -- ting8 long4 -- ing8 | lov4 -- ers8 feed4 Up8 -- on4 such8 looks4 as8 | \lalign those.8*5 | I’ll8 |
        mar4 -- ble8 -- wall4 thee8 | round4 a8 -- bout,4 And8 | build4 with8 -- out4 a8 | door;8*5 But8 |
        if4 thy8 heart4 do8 | once4 break8 out,4 I’ll8 | ne8 -- ver4 love thee8 | \lalign more.8*5 |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            s8 | s2.*4 |
            s2.*4 |
            s2. | g4.~4 8 | 4. s | s fs, |
            g,4. s | s2. | b8 g4 s4. | s8*5 | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            d8\rest | <g, d g>2. | 2. | 4. <a, fs>4 <b, g>8 | <c g>4.~4 <g, g>8 |
            <g, d g>2. | g4. <fs a> | <e g> <e g> | <d a>4.~4 | d8\rest | 
            <g, d g>2. | e4 d8 c4 b,8 | 4 g,8 <a, fs>4 <b, g>8 | <c g>4. s | 
            s4. <e g> | <d g>4. <c g>4 <d b>8 | d4. <d c'>4 <g b>8 | <g b>4.~4 |
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