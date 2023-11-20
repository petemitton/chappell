\version "2.22.0"
\language "english"

global = {
  \time 4/4
  \key g \major
}

sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }
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
            \partial 4 d4 | <b, g>4 d4 <b, g>4 d4 | g8._( a16) b8._( c'16) d'4 b4 | c'4 d'4 e'8._( d'16) c'8_( b8) | a2. d4 | \mBreak
            g4 g8 fs8 e4 g4 | <d a>4 fs4 d4 d4 | g4 g8 g8 a4 fs4 | \partial 2. <b, d g>2. \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4 | s1 | s2. <d g>4 | <c g>4 g8. fs16 e4 e4 | fs2. s4 |
            s4 d4 c4 b,4 | s2. d4 | d4 <b, e>4 <c e>4 <a, d>4 | s2. |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {
        % verse one
        Queen4 Eleanor2 was4 a4 | sick4 wom4 -- àn,4 And4 | a-fraid4 that4 she4 should4 | die,2. Then4 |
        she4 sent8 for8 two4 friars4 | out4 of4 France4 To4 | speak4 with8 her8 spee4 -- di4 -- |ly.2. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            r4 | <g, g>4 r4 <g, g>4 r4 | <g, g>4 r4 r4 \sdown g4 | e4 \sup <b, g>4 <c g>4 <a, a>4 | <d a>4 a,4 d,4 r4 |
            s4 <b, g>4 <c g>4 \sdown e4 | \sup <d fs>4 r4 r4 fs4 | <b, g>4 e4 a,4 \sdown d4 | \sup g,2 \sdown g4 \fine |
          } % end voice three

          \new 	Voice {
            \voiceFour
            s4 | s1*5 | s2. d8. c16 | s1 | s2. |
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