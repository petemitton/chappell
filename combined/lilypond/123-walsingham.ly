\version "2.22.0"
\language "english"

global = {
  \time 3/4
  \key c \major
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
            \voiceOne
            c'8 d'8 e'4 d'4 | %1
            <e a c'>4 a4 e4 | %2
            c'8 d'8 <c' e'>4 <b d'>4 | %3
            <e c'>2. | %4
            b8. c'16 d'8 d'8 e'8 d'8 | %5
            <e a c'(>4 a4) e4 | %6
            b8 c'8 d'4 c'8_( b8) | %7
            <c a>2. | \fine \mBreak

          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            <e a>2 <f a>4 | %1
            s2. | %2
            e4 g4 f4 | %3
            s2. | %4
            f4 a4 <e b>4 | %5
            s2. | %6
            f4 <d a>4 <e gs>4 %7
            s2. | %8
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {
        % verse one
        As8 I8 went4 to4 Wal4 -- sing4 -- ham,4 To8 the8 shrine4 with4 speed,2.
        Met8. I16 with8 a8 jol8 --  ly8 pal2 mer4 In8 a8 pil4 grim’s4 weed.2.
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            a,2 s4 | %1
            s2.*2 | %2-3
            s2 c4 | %4
            s2 gs,4 | %5
            a,2 c4 | %6
            s2. | %7
            s2. | \fine %8


          } % end voice three

          \new 	Voice {
            \voiceFour
            s2 d4 | %1
            a2. | %2
            a4 g4 g4 | %3
            c'4 g4 s4 | %4
            d4 f4 s4 |%5
            s2. | %6
            d4 f4 e4 | %7
            a2. | %8
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