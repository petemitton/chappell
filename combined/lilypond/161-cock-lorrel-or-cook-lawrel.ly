\version "2.22.0"
\language "english"

global = {
  \time 6/8
  \key g \minor
}

mBreak = { \break }

\header {
  %	title = \markup {\medium \caps "Title."}
  %	poet = ""
  %	composer = ""

  meter = \markup {\italic ""}
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
            \partial 8 a8 | a8 a8 a8 a4 a8 | a8 fs8 d8 fs4 d8 | d8 g8 g8 g4 fs8 | g4 a8 bf8. a16 g8 | \mBreak
            a8 a8 a8 a4 a8 | <d a>8 fs8 d8 fs8.( e!16) d8 | bf8 a8 bf8 c'8 d'8 bf8 | \partial 8*5 <fs a>4 g8 g4 \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | s2.*4 |
            ef2. | s2. | d4. fs4. | s8*5 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {
        % verse one
        Let’s8 cast8 a8 -- way8 care,4 and8 8 merrily4 sing,4 For8 there8 is8 a8 time4 for8 ev’4 -- ry8 thing,8. He16 that8
        plays8 at8 his8 work,4 And8 works8 at8 his8 play,4 Doth8 8 neither8 keep8 8 working8 nor8 ho4 li8 -- day.4
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            s8 | s2.*4 |
            s2.*2 | s4. a4 d'8 | c'4 bf8 bf4 | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            r8 | <c ef  a>2. | <d fs>4. <c d a>4. | <bf, d g>4. <d a>4. | <g bf>4. <g, g>4. |
            c'2. | <fs c'>4. <a c>4. | <g bf>4. d4. | g4.~ g4 |
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