\version "2.22.0"
\language "english"

global = {
  \time 6/8
  \key bf \major
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
            \voiceOne
            \partial 8 bf,8 | bf,4 <bf, bf>8 <bf, a>4 <bf, g>8 | <bf, f>4 <bf, ef>8 <bf, d>4 <bf, f>8 | <g, ef>4 d8 <a, c>4 bf,8 | \mBreak
            <ef bf>4.( <d bf>4) bf,8 | bf,4 <bf, bf>8 <bf, a>4 <bf, g>8 | <bf, f>4 <bf, ef>8 <bf, d>4 <bf, f>8 | <g, ef>4 d8 <a, c>4 bf,8 | \mBreak
            \partial 8*5 <d bf>4.~<d bf>4 | \bar "||" \partial 8 f8 | <f bf>4 <a c'>8 <bf d'>4 <c' ef'>8 | <ef c'>8( a) <d bf> <ef g>4 <d f>8 | <bf, d bf>4 a8 <bf, e! g>4 f8 | \mBreak
            <a, f>4.~<a, f>4 f8 | <f bf f'>4 d'8 bf8.( c'16) d'8 | <g ef'>4 c'8 a8._( g16) a8 | <f bf>4 d8 c4 <c f a>8 | \partial 8*5 <d f bf>4.~<d f bf>4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | s2.*7 | s8*5 | 
            s8 | s2.*5 | \stemUp s4. f4 s8 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        Know8 this,4 my8 breth4 -- ren,8 | Heav’n4 is8 clear,4 And8 | all4 the8 clouds4 are8 |
        4 gone,4.  The8 | right4 -- eous8 man4 shall8 | flou4 -- rish8 now;4 Good8 | days4 are8 com4 -- ing8 |
        4 on.4. | Then8 | come,4 my8 breth4 -- ren,8 | 16 and8 16 be8 glad,4 and8 | eke4 re8 -- joice4 with8 |
        4 me;4. Lawn8 | sleeves4 and8 Ro4 -- chets8 | shall4 go8 down,4 and8 | hey,4 then8 up4 go8 | 4 we.4. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            bf,8 | 4 g8 f4 ef8 | d4 c8 bf,4 d8 | ef4. f4 bf,8 |
            <bf, g>4._( <bf, f>4) bf,8 | bf,4 g8 f4 ef8 | d4 c8 bf,4 d8 | ef4. <f, ef>4 <bf, d>8 | 
            <bf, f>4.~<bf, f>4 | f8 | <d bf>4 <f c'>8 <bf d'>4 <c' ef'>8 | <f c'>4 <g bf>8 <ef bf>4 <bf, bf>8 | g,4. c4. | 
            f4. ef! | <d bf> <g bf> | <ef c'> <f c'> | \stemUp bf a4 f,8 | \partial 8*5 bf,4.~bf,4 | \fine 
          } % end voice three

          \new 	Voice {
            \voiceFour
            s2.*8 |
            s8 | s2.*6 | d4 ef8 f4 s8 |
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