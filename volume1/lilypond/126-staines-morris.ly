\version "2.22.0"
\language "english"

global = {
  \time 4/4
  \key e \minor
}

mBreak = { \break }

\header {
  %	title = \markup {\medium \caps "Title."}
  %	poet = ""
  %	composer = ""

  % meter = \markup {\italic "C"}
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
            b4 e'4 cs'4^\markup \super "a" ds'4 | %1
            e'4 d'!8_( c'!8) b4.( c'8) | %2
            d'8_( e'8) d'8_( c'8) <g b>4 <fs a>8_( <e g>8) |%3
            <ds fs>8( e8) <ds fs>8( g8) e2 | \mBreak %4
            g8_(^\p a8) b8_( c'8) <e b>4 <fs a>8_( <e g>8) | %5
            <ds fs>8_( e8) <ds fs>8_( g8) e2 | %6
            <b, g_(>8 a8) b8_( c'8) <e b>4 <fs a>8_( <e g>8) %7
            <ds fs_(>8 e8) <d fs_(>8 g8) e2 |  %8
            \repeat volta 2 { <b, g>4^\f <b, g>8^\markup \italic "Repeat in Chorus." g8 d4 d4 | %9
            <c e_(>8 fs8) <c g>8 a8 b4.( c'8) | %10
            d'8_( e'8) d'8 c'8 <g b>4 <fs a>8_( <e g>8) | %11
            <ds fs_(> e8) <ds fs>_( g8) e2 | } %12

          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            g2 a4 fs4 | %1
            e2. g4 | %2
            fs2 s2 | %3
            s2*2 | %4
            e2 s2 | %5
            s2 e4 d!8 c8 | %6
            s2*6 | %7-9
            s2 d4 g4 | %10
            fs2 s2 | %11
            s2*2 | %12
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {
        % verse one
        Come,4 ye4 young4 men,4 come4 a4 8 long,4. With4 your4 mu4 -- sic,4 dance,4 and4 song,2
        Bring4 your4 lass4 -- es4 in4 your4 8 hands,4. For4 ’tis4 that4 which4 love4 4 commands.2
        Then4 to8 the8 8 Maypole4 8 come4 a4 way,2 For4 it8 is8 now4 a4 ho4 -- li4 -- day.2
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            e2 a,4 b,4 | %1
            c4 b,8 a,8 g,4 e4 | %2
            d2 g4 a4 | %3
            b4 b,4 e2 | %4
            e2 g4 a4 | %5
            b4 b,4 c4 b,8 a,8 | %6
            e2 g4 a4 | %7
            b4 b,4 e2 | %8
            g,4 g,4 b,4 b,4 | %9
            c4 e4 g4 e4 | %10
            d2 g4 a4 | %11
            b4 b,4 e2 | %12
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