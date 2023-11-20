\version "2.22.2"
\language "english"

global = {
  \time 9/8
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
            %\voiceOne
            \partial 8 d8 | g8. a16 g8 <bf, bf> a g <d fs>8 a4 | g8. a16 g8 a f a <ef g c'>4. | g8. a16 g8 bf c'16 bf a g fs8 a4 | \partial 1 f'!8.[ ef'16 d'8] <ef c'> a <d bf> < bf, g>4 | \fine 
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | \stemUp bf,4 s2 s4. | d4 s2 s4. | s1 s8 | \stemDown <f! f'!>4
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        My8 | name8. is16 old8 Hew -- son the cob -- ler.4 |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r8 | g4. <ef g> <d a> | <g bf> <f c'> c | <g bf> <ef g bf> <d a d'> | \grace bf,16( d'8.) c'16 bf8 <c a>4 <d fs>8 g4 | \fine
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