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

  % meter = \markup {\italic ""}
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
            \repeat volta 2 { <g b>4 <fs a>8 <e g>4 <d fs>8 | %1
            <c e>4 <e g>8 <d a>4. | %2
            <d b>4 <a d'>8 <g c'>4 <g b>8 | %3
            <g a>4 <g b>8 <fs a>4. | \mBreak %4
            <g b>4 <fs a>8 <e g>4 <d fs>8 | %5
            <c e>4 <e g>8 <d a>4. | %6
            b4 d'8 <e c'>8( <d b>8) <c a>8 | %7
            <b, g>4 <a, fs>8 <b, g>4. } \mBreak %8
            c'4 c'8 c'4 e'8 | %9
            d'4 e'8 d'4( b8) | %10
            d'8( c'8) b8 a8( c'8) b8 | %11
            <fs a>4 <g b>8 a4. | \mBreak %12
            <ds b>4 a8 g4 <b, ds fs>8 | %13
            <b, e>4 g8 <d! a>4. | %14
            b4 d'8 <e c'>8( <d b>8) <c a>8 | %15
            <b, g>4 <a, fs>8 <b, g>4. \fine | %16
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s2.*6 | %1-6
            d8 g8 fs8 s4. | %7
            s2. | %8
            g2. | %9
            g2. | %10
            g4. g4. | %11
            s4. fs8 e8 d8 | %12
            s2.*2 | %13-14
            d8 g8 fs8 s4. | %15
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {
        % verse one
        Now,4 O8 now4 I8 needs4 must8 part,4. Part4 -- ing8 though4 I8 ab4 -- sent8 mourn.4.
        Ab4 -- sence8 can4 no8 joy4 im8 -- part,4. Joy4 once8 16 fled8 16 can8 ne’er4 re8 -- turn.4.
        Sad4 16 despair4 16 doth8 drive4 me8 16 hence,4 16 That4 des8 -- pair4 un8 -- kind4 -- ness8 16 sends;4 16
        If4 that8 part4 -- ing8 be4 of8 -- fence,4. It4 is8 16 she,8 16 who8 then4 of8 -- fends.4.
      }	% end lyrics verse one
      \new Lyrics \lyricmode {
        % verse two
        While4 I8 live4 I8 needs4 must8 love,4. Love4 lives8 not4 when8 life4 is8 gone;4.
        Now,4 at8 last,4 des8 -- pair4 doth8 prove,4. Love4 di8 -- vi4 -- ded,8 lov4 -- eth8 none.4.
      }	% end lyrics verse two
      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            g,2.~ | %1
            g,4. fs,8 e,8 d,8 | %2
            g4 fs8 e4 d8 | %3
            c4 cs8 d4. | %4
            g,2.~ | %5
            g,4. fs,8 e,8 d,8 | %6
            g,4. c4. | %7
            d4. g,4. | %8
            e4.~ e4 c8 | %9
            b,4 c8 b,4 g,8 | %10
            e4 d8 c4 cs8 | %11
            d2. | %12
            b,4.~ b,4 a,8 | %13
            g,4 e,8 fs,8 e,8 d,8 | %14
            g,4. c4. | %15
            d4. g,4. \fine | %16
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