\version "2.22.0"
\language "english"

global = {
  \time 4/4
  \key c \major
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
            \partial 4 e4 | <c e a> e <c a> <e gs b> | c'4. d'8 c'4 <e c'> | <f b> <d a> <b, e a> gs | \mBreak
            <c e a>2. e4 | <c e a> e <c a> <e gs b> | c'4. d'8 c'4 <e a c'> | <f b> <d a> <b, e a> gs | \mBreak
            \partial 2. <c e a>2. \bar "||" | \partial 4 4 | b4. a8 <d g b(>8 c') <d g d'>4 | g4. a8 g4 <d g> | <e c'> <e b c'> <a d'>8( e') <f b d'>( e') | \mBreak
            <e c'>2. <e g c'>4 | b4. a8 <d g b(> c') <d g d'>4 | g4. a8 g4 <e a c'> | <f b> <d a> <b, e a> gs | \partial 2. <c e a>2. | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4 | s1 | <e a>4 s2. | s1 |
            s1*2 | <e a>4 s2. | s1 |
            s1 | <d g>4 s2. | \stemUp e4 s2. | s1 |
            s1 | \stemDown <d g>4 s2. | e4 s2. | s1 | s2. |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        “Un4 -- done! un -- done!” the | law4. -- yers8 cry,4 And | ram -- ble up and |
        down,2. “We4 | know not8 the8 way4 to | West4. -- min8 -- ster4 Now | Char -- ing Cross is |
        down.”2. | Then4 | fare4. thee8 well,4 old | Char4. -- ing8 Cross,4 Then | fare thee well, old
        stump;2. Thou4 | wast4. a8 thing4 set | up4. by16 a king,4 And | so pull’d down by8 the | Rump.2. | \fine
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r4 | <a,, a,>2 <f, f>4 <e, e> | <a, a>2. <a,, a,>4 | <d, d> <f, f> <e, e>2 |
            <a, a>4 <a,, a,>8. 16 4 r | 2 <f, f>4 <e, e> | <a,, a,>2. 4 | <d, d> <f, f> <e, e>2 |
            <a, a>2. | 4 | <g, g>2 4 <b, b> | <c c'>2. <b, b>4 | <a, a> <g, g> <f, f> <g, g> |
            <c c'>4 <c, c>8. 16 4 4 | <g, g>2 4 <b, b> | <c c'>2. <a,, a,>4 | <d, d> <f, f> <e, e>2 | <a, a>2. | \fine
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