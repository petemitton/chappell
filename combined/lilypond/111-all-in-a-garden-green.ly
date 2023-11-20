\version "2.22.0"
\language "english"

global = {
  \time 4/4
  \key f \major
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
            c'2 c'4 c'4 |
            a4.  bf8 c'4 a4 |
            d'4 c'4 bf4 a4 |
            g2. a4 | \mBreak
            bf4.  c'8  d'8_( e'8) f'4 |
            f4.  g8  a8( bf8) c'4 |
            <bf, e bf>4 <c f a>4  g8 f8 g4 |
            <a, f>1  \bar "||" | \mBreak
            c'4.(  c'8)  d'4 f'4 |
            f'4 e'4 f'2 |
            a4.  a8 <g bf>4 <f a>4 |
            <c e g>4 <a, f>4 <c e g>2 |
            a4.(  g8)  f8 g8 a4| \mBreak
            bf4.  a8  g8( a8 bf4)  |
            c'4._(  bf8)   a8( bf8) c'4 |
            d'4.  c'8 bf4 a4 |
            <bf, d g>4 <a, f>4 g8 f8 g4 |
            <a, f>1  \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            f1 |
            f2. f4 |
            f2 e4 f4 |
            e1 |
            f2 f2 |
            f2 f2 |
            s2 <c e>2 |
            s1|
            <c g>2 <f a>2 |
            <g c'>2 <f c'>2 |
            f2 bf,2 |
            s1|
            c2 d2 |
            d2 e2 |
            e2 f4 e4 |
            d4.  e8 f8 g8 c4 |
            s2 <c e>2 |
            s1
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {
        % verse one
        All2 in4 a4 gar4. -- den8 green4 Two4 lov4 -- ers4 sat4 at4 ease,2. As4
        they4. could8 scarce4 be4 seen4. a8 mong,4 A4 -- mong4 the4 leaf4 -- y4 trees.1
        They2 long4 had4 lov'd4 y4 -- fere,2 And4. no8 8 longer4. than4 tru4 -- ly,2 In2 that4 time4
        of4. the8 8 year,4. In2 that4 time4 of4. the8 year4 Com4 -- eth4 ’twixt4 May4 and4 July.1
      }	% end lyrics verse one
      \new Lyrics \lyricmode {
        % additional text
        1*9 2 (together)
      }

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            <f a>1 |
            c'2. s4 |
            s1 |
            s1 |
            d2 bf,2 |
            a,2 f,4 a,4 |
            g,4 f,4 c2 |
            f1 |
            e2 d2 |
            c2 a,2 |
            d2 g,2 |
            c4 d4 c2 |
            f,1 |
            g,1 |
            a,1 |
            bf,4.  c8 d8 e8 f4 |
            g4 d4 c2 |
            f1 \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s1|
            f4.  g8 a4 <f c'>4 |
            bf4 a4 g4 f4 |%3
            c'2 c2 |%4
            s1 |
            s1|
            s1|
            s1|
            s1|
            s1|
            s1|
            s1|
            s1|
            s1|
            s1|
            s1|
            s1|
            s1
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