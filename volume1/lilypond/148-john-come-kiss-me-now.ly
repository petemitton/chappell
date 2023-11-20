\version "2.22.0"
\language "english"

global = {
  \time 2/4
  \key f \major
}

mBreak = { }

\header {
  %	title = \markup {\medium \caps "Title."}
  %	poet = ""
  %	composer = ""

  % meter = \markup {\italic "Rather slow and stately."}
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
            f8. g16 a8 g16 f16 | bf8 d8 bf8 a16 g16 | f8.g16 a16 g16 a16 bf16 | c'8 c8 c'4 | f8. g16 a8 g16 f16 | \mBreak
            bf16 a16 bf16 c'16 d'8 c'16 bf16 | a16 bf16 c'16 a16 g8. f16 | f2 \bar "||" | s2*3 | \mBreak
            s2 | s4 a8 a8 | bf8 c'8 d'16 c'16 bf16 a16 | g8 a8 g8. f16 | f2 \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s2 *5 |
            s4 f4 | f4 f8 e8 | f2 | <f c'>4 <f a f'>8 e'8 | <f bf d'>4. <g bf e'>8 | <a f'>8 a16 bf16 <f c'>8 <f bf d'>8 |
            <g bf e'>8 <a f'>8 <g c' f'>8 e'8 |  <f c' f'>8 c'16 bf16 f4 | d4 g8 d8 | e8 f8 f8 e8 | f2 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {
        % verse one
        John,8. come8. kiss16 me16 now,8 now,8 now,8
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            s2*4 | <a, f>4 <f, f>4 |
            s2 | f8 a8 c'4 | s4 f,4 | s2*3 |
            s4 c4 | s2*2 | c'2 | <f a>4 s4 |
            \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            <f a>4 <f c'>4 | <g bf>8 <g bf>8 <g bf>4 | <d a>4 <d f>4 | <c e g>8 <c e g>8 <c e g>4 | s2 |
            <d f>4 <bf, f>4 | c4. c8 | <f a>4 s4 | a4 f4 | bf4. g8 | d'4 a8 bf16 a16 |
            g8 f8 s4 | a4 d'4 | g4 bf8 g8 | c'4 c4 | s4 f,4 |
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