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

  % meter = \markup {\italic "Moderate time and with expression."}
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
            \partial 4 d4 | <d g>4 <ef g>8 a8 <d g bf>4 <d a>8 g8 | fs4 g8 a8 <bf, d g>4 <ef g>4 | \mBreak
            f!8. g16 <c f>8_( ef8) d8_( ef8) <d bf>8 c'8 | d'4 c'8. bf16 <f c'>4 <ef f>4 | <d d'>4 <ef bf>8 d'8 <f c'>4 a8 c'8 | \mBreak
            <d  bf>4 a8. g16 fs4 d4 | ef4 f8 g8 d4 <bf, d g>8 a8 | \partial 2. <d g bf>4 a8. g16 <bf, g>4 \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4 | s1 | <c d>2 s2 |
            c4 s2 d4 | e!2 s2 | s1 |
            s4 d4 s2 | s1 | s4 <c fs>4 s4 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {
        % verse one
        It4 was4 a8 blind8 beg4 gar8 had8 long4 lost8 his8 sight,4 He4
        had8. a16 16 fair8 16 8 daughter4 of8 beau4 -- ty8. most16 bright,4 And4 ma4 -- ny8 a8 gal4 -- lant8 brave8
        sui4 tor8. had16 she,4 For4 none4 was8 so8 come4 -- ly8 as8 pret4 ty8. Bes16 -- sie.4
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            fs4 | s2. bf,4 | s1 |
            s1*3 |
            s1*2 | d,2 g,4 | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            d8. c16 | <bf, g>4 <c g>4 <f, g>4 s4 | d2 g4 <ef bf>4 |
            <f bf>4 <f a>4 bf4 a4 | <g bf>2 <f a>4 <f a>4 | <bf, bf>4 <d bf>4 <f a>2 |
            g4 bf4 d'4 d4 | <c g>2 <bf, g>4 g,4
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