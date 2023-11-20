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
            g8. a16 bf8 a8. bf16 c'8 | bf8. a16 g8 <d f>4 f8 | bf4 8 c'4 8 | <d bf d'>2. | \mBreak
            d'8. ef'16 d'8 c'8. bf16 a8 | bf8. a16 g8 f8. g16 <ef a>8 | bf4 g8 \tieUp fs8.^( e!16) fs8 | <bf, g>2. | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            \stemUp bf,4 s8 d4 s8 | d4 s8 s4. | \stemDown ef4 s8  <ef a>4. | s2. |
            \stemUp bf4 s8 fs4 s8 | g4 s8 d4 s8 | \stemDown d4. c | s2. |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        Ro8. -- bin16 Hood,8 Ro8. -- bin16 Hood,8 | said8. lit16 -- tle8 John,4 Come8 | dance4 be8 -- fore4 the8 | Queen,2. |
        In8. a16 red8 pet8. -- ti16 -- coat8 | And8. a16 green8 jack8. -- et,16 A8 | white4 hose8 8 and a8 | green.2.|
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            g4. fs | g bf | g f | bf,8 d f bf4 a8 |
            g4. d | g, bf,4 c8 | d4. d | g,2. | \fine
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