\version "2.22.0"
\language "english"

global = {
  \time 3/4
  \key g \minor
}

mBreak = { \break }

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
            <d g>4_\markup{ \italic "Slow." } d'4. c'8 | bf4. c'8 a4 | <d g>4 g4 <c d>4 | <bf g>2. | <ef g>4 d'4. c8 | bf4. c'8 a4 | \mBreak
            <d g>4 <c ef g>4 <c d>4 | g2. \bar "||" |
            \time 6/8 g4^\markup{ \italic "Quick"} d'8 d'4 c'8 | d'8. ef'16 d'8 c'4 a8 | bf4 bf8 c'8. d'16 bf8 | <fs a>4 g8 g4. | \mBreak
            g4 d'8 d'4 c'8 | d'8. ef'16 d'8 c'4 a8 | bf4 bf8 c'8. d'16 bf8 | \partial 8*5 <c fs a>4 g8 <bf, g>4 \bar "||" |
            \partial 8 <bf, g>8 | a8. bf16 a8 fs4 fs8 | g8. a16 g8 d4 g8 | \mBreak
            bf4 bf8 c'8. d'16 bf8 | <fs a>4 g8 g4 <d g>8 | a8. bf16 a8 fs4 fs8 |
            g8. a16 g8 d4 g8 | bf4 bf8 c'8. d'16 bf8 | <c fs a>4 g8 <bf, g>4. \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4 d4 s4 | g4 ef2 | s2.*2 | s4 <d a>4 s4 | <d g>4 <c fs>2 |
            s2. | g2. | s4. ef4. | g4. fs4. | g4. ef4 g8 | s2. |
            bf,4. <ef g>4. | g4. fs4. | <d g>4. <ef g>4 <d g>8 | s8*5 | s8 | ef4. d4. | bf,4. d4. |
            d4. ef4 g8 | s2. | ef4. d4. | bf,4. d4. | <d g>4. <ef g>4 <d g>8 | s2. |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {
        % verse one

      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            s4 a2 | s2.*3 | s4 fs,4 s4 | g,4 a,2 |
            bf,4 c4 fs4 | <g bf>2. | bf4. s4. | s2. | s4. c4. | d4. s4. |
            s2. | bf,4. a,4. | g,4. c,4. | d,4. g,4 | s8 | c4. d4. | s4. bf,4. |
            g,4. c4. | s2.*3 | g,4. c,4. | d,4. g,4. |
          } % end voice three

          \new 	Voice {
            \voiceFour
            <g bf>4 fs4 d4 | <ef g>4 <c c'>2 | <d bf>2 <d a>4 | <ef g>4 <ef g>4 <bf, d>4 | <c g>4 s4 d4 | s2. |
            s2 d4 | g,2. | g4. c'4. | bf4. a4. | g4. s4. | s4. g4. |
            g,4. c4. | s2.*2 | s8*5 | g8 | s2. | ef4. s4. |
            s2. |  d4. g4 <g bf>8 | <c c'>4. <d g>4. | <ef g>4. <bf, g>4. | s2.*2 |
            \fine
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