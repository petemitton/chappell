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

%  meter = \markup {\italic ""}
                                %	arranger = ""
}
\score {

  \new ChoirStaff {
    <<
      \new Staff = "up"  {
        <<
          \global
          \new 	Voice = "one" 	\relative c'' {
            %\voiceOne
            \partial 8 e16 d | c4 g8 e8. d16 c8 | d8. e16 d8 b'4 a16 b | c4 g8 e4 d8 | \partial 8*5 e c c c4 | \fine
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
      }%end score
    }%end context
  }%end layout

  \midi{}

}%end score
