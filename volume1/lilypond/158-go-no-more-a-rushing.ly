\version "2.22.0"
\language "english"

global = {
  \time 4/4
  \key g \minor
}

mBreak = { \break }

\header {
  %	title = \markup {\medium \caps "Title."}
  %	poet = ""
  %	composer = ""

  % meter = \markup {\italic "Moderate time."}
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
            g8 a8  bf8 c'8 <fs d'>4 g4 | <c ef g>4 <a, d fs>4 <bf, d g>2 | s2. bf4 |
            <ef g bf>4 <c f a>4 <d f bf>2 | bf8 c'8 d'8 ef'8  <f f'>4 <f d'>4 | \mBreak
            s1 | <d g>8 a8 <d g bf>8 c'8 <fs a d'>4 g4 | <c ef g>4 <a, d fs>4 <bf, d g>2 \bar "||" |
            d'4_\f d'4 d'4 ef'8 f'8 | g'4 s2. | c'4_\p c'4 c'4 d'8 ef'8 | \mBreak
            <c' f'>8 ef'8 d'8 c'8 <bf d'>2 | <fs a d'>8_\f d8 d8 d8 <d fs>4. fs8 | <d g>8 a8 <d g bf>8 c'8 <d fs a>4 d4 |
            <d g>8 a8 <d g bf>8 c'8 <fs a>4 g4 | <c ef g>4 <a, d fs>4 <bf, d g>2 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            d2 s2 | s1 | bf8 c'8 d'8 ef'8 <a f'>4 s4 | s1 | f2 s2 |
            <g c'>8 bf8 a8 g8 fs4 d4 | s1*2 | bf1~ | bf4 <bf ef' g'>4 <bf f'>2 | a1 |
            f2 f2 | s1*4 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {
        % verse one
        Go8 no8 more8 a8 rush4 -- ing,4
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            s1 | c4 s4 g,2 | s1 | s2 bf,2 | s1 |
            s1 | s4 g,4 d,4 ef,4 | c,4 d,4 a,2 | bf1~ | bf4 s2. | s1 |
            a,2 bf,2 | d2 c2 | bf,4 g,4 d4 c4 | bf,4 g,4 d,4 ef,4 | c,4 d,4 g,2 | \fine

          } % end voice three

          \new 	Voice {
            \voiceFour
            <g bf>2 <d a>4 <f a>4 | s4 d4 s2 |<g bf>2 <f c'>4 <g bf>4 | ef4 f4 s2 | <bf d'>2 <a c'>4 bf4 |
            <ef g>2 <d a>4 <c fs>4 | <bf, g>4 s2. | s1 | bf,4 bf,4 bf,4 c8 d8 | ef4 <ef bf>4 <d bf>2 | <f c'>1 |
            s1*5
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