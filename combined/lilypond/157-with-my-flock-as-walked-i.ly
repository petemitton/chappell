\version "2.22.0"
\language "english"

global = {
  \time 6/8
  \key g \minor
}

mBreak = { \break }

\header {
  %	title = \markup {\medium \caps "Title."}
  %	poet = ""
  %	composer = ""

  % meter = \markup {\italic "Gracefully."}
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
            d'4 g8 <c fs>4 <bf g>8 | a4 g8 fs8.( e16) d8 | bf8.( a16) <d g>8  <c fs>4 <bf, g>8 | <c fs a>4. <bf, g>4. | \mBreak
            d'4 g8 <c fs>4 <bf, g>8 |
            a4 g8 fs8._( e16 d8) |
            bf8. a16 <d  g>8 <c fs>4 <bf, d g>8 |
            <c fs a>4. <bf, g>4 d'8 |\mBreak
            f'!8. ef'16 <f bf d'>8 <f a c'>4 <ef a>8 | <d bf>4 <g c'>8 <fs a d'>4 d'8 | <g d'>4 g8 <c fs>4 <bf, g>8 | <c fs a>4. <bf, g>4. \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            \stemUp d4. s4. | \stemDown ef4. a,4. | \stemUp <d fs>4 s2 | s2. |
            d4. s4. | \stemDown ef4. \stemUp a,4 s8 | <d fs>4 s2 | s2. |
            <f! bf d'>4 s2 | s2.*3 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {
        % verse one
        With4 my8 flock4 as8 walk4 -- ed8 I,4 The8 plains4 and8 16 mountains4 16 o4. ver,4.
        Late,4 a8 dam4 -- sel8 pass’d4 me8 8 by;4  With8. an8 in8 -- tent4 to8 move4. her,4 I8
        stept8 in16 her8 way;4 She8 stept4 a8 -- wry,4 But16 oh!16 I4 shall8 e4 -- ver8 love4. her.4.
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            bf4. a4 g8 | c4. d4. | d8. c16 bf,8 a,4 g,8 | d,4. g,4. |
            bf4. a4 g8 | c4. d4. | d8. c16 bf,8 a,4 g,8 | d4. g4. |
            bf,4 d8 f4 f8 | g4 ef8 d4 c8 | bf,4. a,4 g,8 | d,4. g,4. | \fine
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
        \override Staff.Rest.voiced-position=0
      }%end score
    }%end context
  }%end layout

}%end score