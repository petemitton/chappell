\version "2.22.0"
\language "english"

global = {
  \time 6/8
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

%  meter = \markup {\italic ""}
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
            \partial 8 <d g b>8 | c'8. d'16 e'8 <f b e'>4 <f d'>8 | <e c'>4.~4 s8 | \stemDown d'8.( c'16) b8 c'8.( b16) a8 \stemUp | gs4.~4 <e c'>8 | \mBreak
            g!8._( f16) e8 e8._( d16) c8 | e8._( f16) e8 a4 8 | g8._( f16) <c e>8 <c a>4 <b, g>8 | \partial 8*5 <c e>4.~4 \fine | 
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | \once \stemUp <e g>4 s8 s4. | s4. s4 e'8 | e4 s8 e4 s8 | s2. | 
            \stemUp d4 s8 b,4 s8 | s2. | c4 s8 s4. | s8*5 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        There8 | was8. a16 rich8 mer4 -- chant8 -- man,8*5 That8 | was4 both grave8 and | \lalign wise,8*5 He8 |
        kill’d4 a8 man4 in8 | \lalign Athens4. town,4 Great8 | \lalign quarels4 there8 did4 a8 -- \lalign rise.8*5 | 
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            s8 | s2. | c4 s8 s4. | s2. | s4. s4 a,8 | 
            b,4 c8 gs,4 a,8 | gs4. a4 b8 | s4 c8 s4. | c4._~4 | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            g8 | c'4. g | s4 g8 c'4. | gs a | e4 b8 e'4 s8 |
            s2. | e,4. f,4 f8 | e4 s8 f4 g8 | s8*5 |
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