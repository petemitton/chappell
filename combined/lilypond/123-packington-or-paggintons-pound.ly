\version "2.22.0"
\language "english"

global = {
  \time 6/8
  \key g \major
}

mBreak = { \break }

\header {
  %	title = \markup {\medium \caps "Title."}
  %	poet = ""
  %	composer = ""

  % meter = \markup {\italic "Slow and plaintive."}
  %	arranger = ""
}
\score {

  \new ChoirStaff {
    <<
      \new Staff = "up"  {
        <<
          \global
          \new 	Voice = "one" 	\fixed c' {
            g8. fs16 g8 a8 fs8 d8 | %1
            g8. fs16 g8 a4 a8 | %2
            b8. c'16 d'8 c'8 a8 f8 | %3
            g8 b8 d8 g4~ g8 | \fine %4
          }	% end voice one
        >>
      } % end staff up
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