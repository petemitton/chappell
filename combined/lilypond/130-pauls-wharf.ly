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
            \repeat volta 2 { \partial 8 s8 | %0
            d'4 e'8 b4 cs'8 | %1
            <fs d'>8 a8 fs8 d4 <a e'>8 | %2
            s2. | %3
            \partial 8*5 <fs d'>8 a8 fs8 d4 } | \mBreak %4
            \repeat volta 2 { \partial 8 fs8 | %-
            fs8 a8 fs8 g8 b4 | %5
            s2.*2 | %6-7
            \partial 8*5 s4. d4 | } %8
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            <a fs'>8 | %0
            gs4. g4. | %1
            s2. | %2
            <fs d'>8 cs'8 d'8 <g e'>8 b8 cs'8 | %3
            s8*5 | %4
            s8 | %-
            s2. | %5
            a8 d'8 b8 cs'8 e'4 | %6
            fs'8 e'8 d'8 e'8 b8 cs'8 | %7
            d'8 a8 fs8 s4 | %8

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
            s8 | %0
            s2.*3 | %1-3
            s4. s4 | %4
            s8 | %-
            a4. b4. | %5
            fs4 g8 e4. | %6
            s2. | %7
            s4. s4 | %8
          } % end voice three

          \new 	Voice {
            \voiceFour
            d8 | %0
            e4. a4. | %1
            d4.~ d4 cs'8 | %2
            d'4. a4. | %3
            d4.~ d4 | %4
            <d a>8 | %-
            d2. | %5
            d2. | %6
            <d a>4. <a, g>4. | %7
            <d fs>4.~ <d fs>4 | %8
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