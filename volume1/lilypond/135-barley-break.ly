\version "2.22.0"
\language "english"

global = {
  \time 3/4
  \key g \major
}

mBreak = { \break }

\header {
  %	title = \markup {\medium \caps "Title."}
  %	poet = ""
  %	composer = ""

  % meter = \markup {\italic "Stately."}
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
            \repeat volta 2 { \partial 4 <b, g>8\f <d fs a>8 | %0
            <d g b>4 <b, b>4 <b, a b>4 | %1
            <b, g b>2 <fs b>8 <e d'>8 | %2
            <d g d'>4 <d d'>4 <d c' d'>4 | %3
            <d b d'>2 <d a>8 b8 | %4
            <g c'>4 c'4 c'4 | %5
            c'2 d'4 | \mBreak %6
            <d b>4 <fs a>8 <e g>8 <fs a>4 | %7
            g2. \bar ":|." |  } %8
            \time 6/8 g8.^\markup \italic "Fast." fs16 g8 a8. g16 a8 | %9
            b8. c'16 d'8 d'4 g8 | %10
            a8. g16 a8 b8. a16 b8 | %11
            c'8. d'16 e'8 e'4 <d a>8 | \mBreak %12
            b8. c'16 d'8 e'8. fs'16 g'8 | %13
            fs'8. e'16 d'8 c'8. b16 a8 | %14
            b8. c'16 d'8 d'8. e'16 cs'8 | %15
            <fs d'>4 <fs d'>8 <fs d'>4. \bar "||" | %16
            d'4 e'8 d'4 g'8 | %17
            fs'8 d'8 e'8 d'4. | \mBreak %18
            b4 c'8 b4 e'8 | %19
            d'8 g8 c'8 b4. | %20
            d'4 d'8 g'4. | %21
            g4 g8 <fs g d'>4 <e g c'>8 | %22
            b8. a16 g8 a8 fs4 | %23
            <b, g>2. | \fine %24
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4 | %0
            s2.*4 | %1-4
            s4 c'8 b8 a8 g8 | %5
            fs4 e8 fs8 d4 | %6
            s2.*2 | %7-8
            d8 s4 fs8 s4 | %9
            g8 s4 s4. | %10
            d8 s4 d8 s4 | %11
            e8 s4 s4. | %12
            d8 s4 s4. | %13
            s2. | %14
            s4. e4. | %15
            s2. | %16
            g2.~ | %17
            g2. | %18
            g4.~ g4 s8 | %19
            s2. | %20
            g4. g4. | %21
            s2. | %22
            <d g>4 s8 c4. | %23
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
            s4 | %0
            g,4 s2 | %1
            s2 d8 c8 | %2
            b,4 s2 | %3
            s2.*13 | %4-16
            b4 c'8 b4 e'8 | %17
            d'4 c'8  b4. | %18
            d'4 e'8 d'4 g'8 | %19
            fs'4 e'8 d'4. | %20
            s2.*3 | %21-23
            g,2. | \fine %24
          } % end voice three

          \new 	Voice {
            \voiceFour
            g8 d8 | %0
            s4 g4 fs4 | %1
            e2 s4 | %2
            s4 b4 a4 | %3
            g2 fs4 | %4
            e4 e'8 d'8 c'8 b8 | %5
            a4 g8 a8 fs4 | %6
            g4 d'4 <d c'>4 ^\markup \italic "Repeat Piano."| %7
            <g b>2. | %8
            <g b>4. <d a>4. | %9
            <g, g>4.~ <g, g>4 <g b>8 | %10
            <fs a>4. g4. | %11
            <c g>4.~ <c g>4 <d fs>8 | %12
            <g, d g>2. | %13
            <g, d a>2. | %14
            <g, d g>4. <a, g>4. | %15
            <d fs>4 <d a>4 <d a>4 | %16
            g2.~ | %17
            g2. | %18
            g2.~ | %19
            g2. | %20
            <g b>4. <fs b>4. | %21
            <e b>4. <b, g>4 <c g>8 | %22
            <d g>4. d4. | %23
            s2. | %24
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