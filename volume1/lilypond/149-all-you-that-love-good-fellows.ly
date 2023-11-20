\version "2.22.0"
\language "english"

global = {
  \time 4/4
  \key c \major
}

mBreak = {\break}

\header {
  %	title = \markup {\medium \caps "Title."}
  %	poet = ""
  %	composer = ""

  % meter = \markup {\italic "In marching time."}
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
            \partial 4 g4  | \repeat volta 2 {<e c'>4  g4 <e c'>4 <g d'>4 | <c' e'>2 <g d'>4 <d g b>4 | <c g c'>4 g4 <b, g>8 f8 e8 d8 |}
            \alternative {{c2. g8 f8 |} {\partial 2. c2. | }} \bar ".." \mBreak
            \partial 4 <e g c'>4 | <g b d'>4 <g c' e'>4 <g a d'>4 <fs a>4 | <g d'>4 d'4 d'4 <fs c' e'>4 |
            <g d'>4. <e g c'>8 <d g b>4 <c fs a>4 | <b, g>4 g4 <g g'>4. f'8 | <g c' e'>4 c'4 <g e' c'>4 <g b d'>4 \mBreak
            <g c'>4 g4 g4 <c e g>4 | a8 b8 <c g c'>4 <d f d'>4 <d f b>4 | \partial 2. <e c'>2. \bar "||" |
            \partial 4 <c e g>4 | <f a>4 <e g>4 <f a>4. <e g>8 | <f a>4 <e g>4 <f a>4. <e g>8 | \mBreak
            <c f>2 <c e>2 | <b, d>2. <e c'>4 | <g d'>4  <c' e'>4 <g d'>4 <e d'>4 |
            <g d'>4. <c' e'>8 <g d'>4 <g d' g'>8 f'8 | <g c' e'>4 <g d'>8 c'8 c'4 b4 | \partial 2. <e c'>2. \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4 | s1*3 | s2. g4 | s2. |
            s4 | s1*5 |
            s1 | <c f>4 s2. | s2. | s4 | c1 | c1 |
            s1*4 | s2 <g d'>2 | s2. |
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
            r4 | c,2 <c c'>4 <g d'>4 | <c' e'>2 <g d'>4 <f, f>4 | <e, e>4 r4 <g, d g>4 r4 | <c e g>4 g,4 g,8 f,8 e,8 d,8 | <c e g>2. |
            c4 | g,4 c4 d4. c8 | b,2. a,4 | b,4. c8 d4 d4 | g4. f!8 e4 d4 | c4 e4 g4 f4 |
            e2. c4 | f4 e4 d4 g4 | c2. | c4 | f,2. c4 | f2. c4 |
            a,4 f,4 c4 c,4 | g,4 g,,4 g,4 <e c'>4 | <g d'>4 <c' e'>4 <g d'>4 <e c'>4 | <g d'>4. <c' e'>8 <g d'>4 <b,, b,>4 | <c, c>4 <e, e>4 <g, g>2 | <c c'>2. |
            \fine
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