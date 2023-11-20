\version "2.22.0"
\language "english"

global = {
  \time 6/8
  \key e \minor
}

lalign = { \once \override  LyricText.self-alignment-X = #LEFT }
mBreak = { \break }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

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
            \partial 8 b8 | b_( a) g a g fs | g fs g e4 b8 | b a g a g fs |
            g8 fs g e4 d8 | d e d d e d | d e d <fs d'>4 <g e'>8 |
            b8 a g a g fs | g fs g e4 ds16 ds | e4. g | \partial 8*5 b8. [a16 <ds g>8] <ds fs>16_( e8.) \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | e2.~ | e4 s8 s4. | e2.~ |
            e4 s8 s4. | s2.*2 |
            e2.~ | e4 s8 s4. | s2. | \stemUp ds4 s8 s4 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        An8 | an4 -- cient8 sto -- ry I’ll | tell you a -- non,4 Of16 a | no8 -- ta -- ble prince that was |
        cal8 -- led King John.4 He8 | rul’d o -- ver Eng -- land with | main and with might,4 For8 |
        he8 did great wrong, and main -- tain’d lit -- tle right,4 Der16 -- ry | down,4. down, | hey8. der16 -- ry8 \lalign down.4 |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            d8\rest | g4. c'8 b a | b a b g4 d8\rest | g4 s8 c' b a |
            b8 a b g4 s8 | s2.*2 | 
            g4. c'8 b a | b a b g4 s8 | s2. | s4. a16 g8. | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s8 | e2.~ | e4.~ e4 s8 | e2.~ |
            e4.~ e4 <fs a>8 | <g b>4. <fs a> | <g b> <d a>4 <c c'>8 |
            e2.~ | e4.~ e4 <fs a>8 | <g b>4. <e b> | <b, fs b>4 <b, b>8 e4 |
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
