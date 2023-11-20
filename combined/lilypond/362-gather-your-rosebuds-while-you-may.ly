\version "2.22.0"
\language "english"

global = {
  \time 4/4
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
            \voiceOne
            d'4 8 8 4. c'8 | b4 a8.( g16) <b, g>4. b8 | 4. a8 g( a) b( c') | s1 |
            a4 a8 b c'4. d'8 | e'4 d'8 c' b4. <fs c'>8 | <g d'>4 <e c'_(>8 b) <fs a>4. g8 | 4 2. \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            d1~ | \stemUp 4 c4 s2 \stemDown | d2 e4 g | <fs a d'>4 2. |
            f!2 d~ | 8 fs! g a b4 s | s1*2 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        Gath4 -- er8 ye rose4. -- buds8 | while4 \lalign ye4 may,4. Old8 | Time4. is8 \lalign still4 \lalign a | fly4 -- ing;2. |
        And4 this8 same flow’r4. that8 | smiles4 to -- day,4. To8 -- mor4 -- \lalign row will4. be8 | dy4 -- ing.2. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
                                %\voiceThree
            <g b>2 <fs a> | g4 <d fs> <g, g>2 | g e | d4 2. |
            d2 a,4. b,8 c d e fs g4. a8 | b4 c' d' <d c'> | <g b>4 2. | \fine
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
                                %\override LyricText.self-alignment-X = #LEFT
      }%end score
    }%end context
  }%end layout

  \midi{}

}%end score
