\version "2.22.0"
\language "english"

global = {
  \time 6/8
  \key a \major
}

mBreak = { \break }

\header {
  %	title = \markup {\medium \caps "Title."}
  %	poet = ""
  %	composer = ""

  % meter = \markup {\italic "Moderate time and trippingly."}
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
            cs'8 a4 e'4. | %1
            cs'8 a4 e'4. | %2
            cs'8 a4 e'4( cs'8) | %3
            b4.~ b4. | %4
            cs'8 a4 e'4. | \mBreak %5
            cs'8 a4 e'4. | %6
            cs'8 a4 <e e'>4( <a cs'>8) | %7
            b4.~ b4 <e gs>8 | %8
            <e a>4( gs8) fs4 e8 | %9
            <cs a>4( cs8) b,4( a,8) | %10
            a8 b8 cs'8 <d gs b>4 <cs a>8 | \mBreak %11
            <e a b>4.( <e gs b>4) <e gs>8 | %12
            <e a>4 gs8 fs4( e8) | %13
            <cs a>4 cs8 b,4( a,8) | %14
            a8 b8 cs'8 <e gs b>4 <cs a>8 | %15
            <cs a>4.~ <cs a>4. | \fine %16
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            e2. | %1
            e2. | %2
            e4. e4 a8 | %3
            a4. gs4. | %4
            e2. | %5
            e2. | %6
            e4. s4. | %7
            a4. gs4 s8 | %8
            s2.*2 | %9-10
            cs4. s4. | %11
            s2.*3 | %12-14
            cs4. s4. | %15
            s2. | %16
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {
        % verse one
        Trip8 and4 go,4. heave8 and4 ho,4. Up8 and4 down,4. to4 and4 fro.4 From8 the4 town4. |
        to8 the4 grove,4. Two8 and4 two4. let4 us8 rove,4 A8 may4. -- ing,4 a8 play4. -- ing;4. Love4 hath8 no4 gain-8 
        -say4. -- ing:4 So8 trip4 and8 go,4. trip4 and8 go,4. Mer8 -- ri8 -- ly8 trip4 and8 | go.2.
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            a2. | %1
            a2. | %2
            a,4. cs'4 a8 | %3
            e2. | %4
            a2. | %5
            a2. | %6
            a,4. cs'4 a8 | %7
            e4.~ e4 d8 | %8
            cs4 r8 r4 cs8 | %9
            fs4 r8 r4 fs8 | %10
            e4. e4 e8 | %11
            e4. e,4 d8 | %12
            cs4 r8 r4 cs8 | %13
            fs4 r8 r4 fs8 | %14
            e4. e4 a8 | %15
            a4. a,4. | %16
            \fine
          } % end voice three

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