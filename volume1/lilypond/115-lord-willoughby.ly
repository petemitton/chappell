\version "2.22.0"
\language "english"

global = {
  \time 4/4
  \key g \major
}

mBreak = { \break }

\header {
  %	title = \markup {\medium \caps "Title."}
  %	poet = ""
  %	composer = ""

  % meter = \markup {\italic "In Marching time."}
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
            \partial 4 <ds fs b>4 |
            b4 b4 e'4 e'4 |
            d'4._(  c'8)  b4  c'8 d'8  |
            <g e'>4 e4 <c e g>4 <c fs a>4 | \mBreak
            <b, d g b>2. <d g b>4 |
            b4 b4 s2 |
            d'4.(  c'8)  b4 c'8 d'8 |
            <g e'>4 e4 <e g>4 <e a>4 | \mBreak
            \partial 2. <ds fs b>2. \bar "||" |
            \partial 4 <b, d b>4 |
            <b, e g>4 <b, fs>4 <b, e g>4 <e a>4 |
            b4.  b8 b4 <e g b>4 |
            <c e b>4 <c fs a>4 <b, g b>4 <g c'>4 |
            <fs a d'>2. d'8 d'8 | \mBreak
            <g d'>2 b4 c'8 d'8 |
            <g e'>2 <g b>4 <b, a>8 g8 |
            <b, fs>4 <g, e>4 <b, e>4 <b, ds>4 |
            \partial 2. <b, e>2. \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4|
            <e g>2 <e g>2 |
            fs2 g2 |
            s1|%4
            s1|
            <e g>2 <e g e'>4 <e c' e'>4 |
            <fs a>2 g2 |
            s1|%8
            s2.|
            s4|
            s1|
            <ds fs>2. s4 |
            s1|
            s2. <fs a>4  |%14
            s2 g2 |
            s1 |
            s1|
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {
        % verse one
        The4 8 fifteenth4. day4 of4 Ju2 -- ly,4 With4 glist’4 -- ring4 sword4 and4
        shield,2. A4 fa4 -- mous4 fight4 in4 Flan2 ders4 Was4 fought4 -- en4 in4 the4
        field:2. The4 most4 cou4 -- ra4 -- geous4 of4. -- ficers4. Were4 English2 Captains2 three;2. But8 the8
        bra2 vest4 in8 the8 bat2 tle4 Was4 brave4 Lord4 Wil4 -- lough4 -- by.2.
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            b,4 |
            e2 c2 |
            d2 g,2 |
            c2 b,4 a,4 |
            g,4 d4 g4 fs4 |
            e4 d4 c4 a,4 |
            d4 d,4 g,4 a,8 b,8 |
            c2 c4 c4 |
            b,2. |
            b,4 |
            e4 ds4 e4 c4 |
            b,2. g,4 |
            c4 d4 g4 e4 |
            d2. c4 |
            b,2 g,4 a,8 b,8 |
            c2 e4 <e, e>4  |
            <b, ds>4 <c e>4  <b, fs>4 <b, fs>4  |
            <e g>2. \fine
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