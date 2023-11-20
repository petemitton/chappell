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
            \partial 4 d'8. c'16 | bf8. c'16 a8._( bf16) g8( bf) a g | f8. g16 f8. ef16 <bf, d>4 d | \mBreak
            g8. a16 <c fs>4 <bf, d g>4 a8. a16 | <d bf>4 <d a>8 g <fs a d'>4 d'8._( c'16) | bf8._( c'16) a8. bf16 <bf, g>8 bf a g | \mBreak
            f!8._( g16) f8. ef16 <bf, d>4 d | <d g> <c ef g>8 a <bf, d bf>4 <d a>8 g | \partial 2. <d fs>8 g <c fs a>4 <bf, g> \fine | \mBreak
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            \stemUp <d a>4 | <d g> <c fs> \stemDown bf, <bf, ef> | <bf, c>  <a, c>	s2 |
            \stemUp d4 s2 d4 | s2. <d a>4 | <d g> <c fs> s4 \stemDown <bf, ef> |
            <bf, c>4 <a, c> s2 | s1 | s2. |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {
        % verse one
        It4 was4 a8 blind8 beg4 -- gar8 had8 long4 lost8 his8 sight,4 He4
        had8. a16 16 fair8 16 8 daughter4 of8 beau4 -- ty8. most16 bright,4 And4 ma4 -- ny8 a8 gal4 -- lant8 brave8
        sui4 tor8. had16 she,4 For4 none4 was8 so8 come4 -- ly8 as8 pret4 -- ty8. Bes16 -- sie.4
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            s4 | s2. c4 | s4 f, bf, <fs a> |
            g4 a, g, fs, | g, f,!8 ef, d,4 s | s2. c4 |
            s4 f,4 bf <fs a> | g c g, bf, | d d, g, | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            fs4 | g4 d ef s | f s2 d8. c16 |
            bf,4 s2. | s fs4 | g d ef s |
            f4 s2 d8. c16 | bf,4 s2. | s2. |
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