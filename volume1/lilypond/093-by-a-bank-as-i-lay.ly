\version "2.22.0"
\language "english"

global = {
  \time 4/4
  \key c \major
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
            <d g b>4 <c g>4  a4( b4)  |
            c'8._(  b16)  c'8._(  d'16)  c'2 |
            b8.  c'16 d'8 d'8 d'4 d'8 c'8 |
            b8.  a16 g8.  a16 fs2 | \mBreak
            a8. bf!16 c'8 c'8 <bf d'>8 <a c'>8 <a c'>4 |
            b!8.  c'16 d'8 d'8 <c' e'>8 <b d'>8 <b d'>d'8 |
            c'4.  b8  a4( b4)  |
            c'8._(  b16)  c'8._(  d'16)  c'2 \fine | 
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s2  c4( f4) |
            e1 |
            d2 g4 e4 |
            d4 d4 d2 |
            <c f!>4 <f a>4 f2 |
            <d g>4 <g b>4 g2 |
            g2  c4( f4) |
            e1 \fine |
          } % end voice two
        >>
      } % end staff up
      
      \new Lyrics \lyricmode {	% verse one
        By4 a4 bank2 as4 I4 lay,2 Musing4 on8 a8 thing4 that8 was8 past8. and16 gone,8. heigh16 ho!2
        In8. the16 merry4 month8 of8 May,4 O8.  somewhat8. be8 -- fore8 the8 day,8 Me8 --  thought4. I8 heard2 at4 the4 last.2
      }	% end lyrics verse one
      
      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            g4 e4 f4 d4 |
            c1 |
            g2 b,4 c4 |
            g,4 b,4 d2 |
            f!2  f,!2 |
            g2 g,2 |
            e2 f4 d4 |
            c1 \fine
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