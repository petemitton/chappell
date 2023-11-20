\version "2.22.0"
\language "english"

global = {
  \time 6/8
  \key c \major
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
            \repeat volta 2 { \partial 8 g8 | s4. b4 g8 | a4 a8 g4. | s4. b4 g8 | \partial 8*5 a8. g16 a8 <b, d g>4 } | \mBreak
            f8 a4 e8 g4 | d8 f4 e4 c8 | f8 a4 e8 g4 | f8. e16 d8 c4 c8 | \mBreak
            f8 a4 e8 g4 | d8 f4 e4 c8 | f8 a4 e8 g4 | \partial 8*5 f8 e8 d8 c4 \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | c'4 c'8 s4. | s4. <b, d>4 s8 | c'4 c'8 s4. | s4. s4 |
            s2.*4 |
            s2.*3 | s4. s4 |
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
            r8 | g4. g4. | fs4. g4. | e4 fs8 g4. | fs4. g4 |
            a4. c'4 g8 | a4 b8 <g c'>4. | a4. c'4 g8 | a4 b8 g4. |
            f4 f8 g4 c'8 | a4 b8 <g c'>4. | f4 f8 g4 e8 | a4 b8 g4 |
          } % end voice three

          \new 	Voice {
            \voiceFour
            s8 | <c e>4. <g, d>4. | d4. <g, d>4. | <a, c>4. <g, d>4. | d4. g,4 |
            d4 f8 c4 e8 | f4 d8 c4 e8 | d4 f8 c4 e8 | d4 g8 <c e>4. |
            <f, c>4. c4 e8 | <d f>4. c4 e8 | <f, c>4. c4 e8 | d4 g8 <c e>4 | \fine
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