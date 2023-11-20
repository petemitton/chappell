\version "2.22.0"
\language "english"

global = {
  \time 6/8
  \key g \minor
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

%  meter = \markup {\italic "Gracefully."}
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
            \repeat volta 2 { \partial 8 g8 | 8._( a16) g8 fs4 d8 | <g bf>4. <fs a>4 d'8 | 8._( ef'16) d'8 <a c'>4 <f a>8 | <bf f'>4._( <bf d'>4) <a ef'>8 | \mBreak
            <bf f'>8 d'4 bf8.( c'16) d'8 | <ef c'>4 a8 <d fs>4 fs8 | g8. a16 <c g>8 <d fs>4 d8 | \partial 8*5 <g bf>4. <fs a>4 }
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | s2.*2 | f!4 s2 | s2. |
            s4. \stemUp d4 s8 | s2.*2 | s8*5 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        One8 | morn4 -- ing8 bright,4 for8 | my4. delight,4 In8 -- to4 the8 fields4 I8 | \lalign walked,8*5 There8 |
        did8 I4 \lalign see4 a8 | lad,4 and8 he4 8 | With8. a16 fair8 maid4 -- en8 | talk4. -- ed.4 |
      }	% end lyrics verse one
      \new Lyrics \lyricmode { % verse two
        It8 | seem’d4 to8 me4 they8 | could4 not8 agree4 A8 -- \lalign  bout4 some8 pret4 -- ty8 | \lalign bargain,8*5 He8 |
        offer’d8 a4 groat,4 but8 | still4 her8 note4 Was8 | four4 -- pence8 -- half4 -- penny8 -- far4. -- thing.4 |
      }

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            d8\rest | bf4. a | g, d,4 d8\rest | s2. | d4. bf,4 c8 |
          } % end voice three

          \new 	Voice {
            \voiceFour
            s8 | g4. d | s2. | bf4. f4 ef8 | s2. |
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
