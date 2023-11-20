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

  % meter = \markup {\italic "Rather slow."}
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
            \partial 4 d4 | %0
            g4. g8 a8( bf8) c'8( a8) | %1
            bf4.( c'8) bf4 <d g d'>4 | %2
            c'4. bf8 a8( bf8) c'8( a8) | %3
            <d f bf>2. <d g d'>4 | \mBreak %4
            c'4. bf8 a4 c'4 | %5
            bf4. a8 g4 bf4 | %6
            a4. g8 g4 fs4 | %7
            <bf, d g>1 | \bar "||" %8
            <g, d g>2^\markup \smallCaps "Chorus." <d g bf>2 | %9
            <c ef a>4 <c d fs>4 <bf d g>2 \fine |

          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4 | %0
            bf,4 s4 <d fs>2 | %1
            <d g>2. s4 | %2
            s2 <ef f>2 | %3
            s1 | %4
            <ef g>2 <ef f>2 | %5
            <d f>2 <d ef>2 | %6
            <c ef>2 <c d>2 | %7
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {
        % verse one
        There4 was4. a8 8 shep4 -- herd’s4 daugh2 -- ter,4 Came4 trip4 -- ing8 on4 the4 way,2. And4 |
        there,4. by8 chance,4 a4 Knight4. she8 met,4 which4 caused2 her4 to4 stay.1 Sing,2 trang,2 dil4 -- do4 dee.2
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            r4 | %0
            g2 d2 | %1
            g,2. bf,4 | %2
            c2 f2 | %3
            bf,2. bf,4 | %4
            c2 f,2 | %5
            bf,2 ef,2 | %6
            a,2 f,2 | %7
            g,1 | %8
            bf,2 g,2 | %9
            c4 d4 g,2 \fine | %10
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