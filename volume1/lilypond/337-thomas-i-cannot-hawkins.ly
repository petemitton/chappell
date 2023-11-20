\version "2.22.0"
\language "english"

global = {
  \time 6/8
  \key d \major
}

mBreak = { \break }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

%  meter = \markup {\italic "Gaily."}
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
            \repeat volta 2 { \partial 8 d8 | fs g a b4 a8 | d'4 cs'8 b4 a8 | fs g fs <cs e>4 d8 |
                              \partial 8*5 d8 d'4~ d' | }
            \partial 8 s8 | cs'4 d'8 e'4 d'8  \mBreak |
            cs'8. d'16 cs'8 <gs b>4 a8 | cs'8. d'16 e'8 e'8. d'16 cs'8 | cs'8. d'16 cs'8 <gs b>4 a8 | fs8. g!16 fs8 e4 d8 | d d' d d d' a | fs8. g16 fs8 <cs e>4 d8 | \partial 8*5 d8 d'4~ d'4 \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | d2. | d2. | d4. s4. | s8*5 | d'8 | a2.~ |
            a4. s4. | a2. | a4. s4. | d4. s4. | s2. | d4 s2 | s8 s2 |
          } % end voice two
        >>
      } % end staff up

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            d8\rest | d e fs g4 fs8 | b4 a8 g4 fs8 | a4. <a, g> | <d fs>4.~ <d fs>4 | d8\rest | a4 b8 cs'4 b8 |
            a8. b16 a8 e4 a,8 | a8. b16 cs'8 cs'8. b16 a8 | a8. b16 a8 e4 a,8 | b,4. <e g>4 <b, b>8 | <b, b>4. <fs a> | <a, a> <a, g> | <d fs>4.~ <d fs>4 | \fine
          } % end voice three

          \new 	Voice {
            
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