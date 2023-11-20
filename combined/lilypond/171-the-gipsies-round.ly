\version "2.22.0"
\language "english"

global = {
  \time 6/8
  \key g \major
}

mBreak = { \break }
sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }

\header {
  %	title = \markup {\medium \caps "Title."}
  %	poet = ""
  %	composer = ""

  % meter = \markup {\italic "Boldly."}
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
            \repeat volta 2 {\sdown <a d'>4. b4 \sup g8 | \sdown b8. c'16 d'8 b4 \sup g8 | \sdown <e c'>4 b8 <g c'>4 <b d'>8 | <c' e'>2. } | c'4 b8 \sup c'4 d'8 | \mBreak
            e'4 f'!8 e'4 d'8 | c'4 b8 c'4 d'8 | \sdown  <g! e'>4.~ <g e'>4 <g b d'>8 | <g c' e'>4. <a d'>8. c'16 <g b>8 | \sup <fs a>4 g8 a8. b16 c'8 | \mBreak
            \sdown <g d'>8. c'16 b8 \sup <fs c'>8 <c a>4 | <b, g>2. | \sdown <e g e'>4. <a d'>8. c'16 <g b>8 | \sup <fs a>4 g8 <fs a>8. b16 c'8 |\sdown <g d'>8. c'16 <g b>8 <e c'>8 \sup <fs a>4 | g2. \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s2.*4 | s4. a4. |
            gs2. | a2. | s2.*2 | s4. fs4 s8 |
            s2.*4 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {
        % verse one

      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
          } % end voice three

          \new 	Voice {
            \voiceFour
            <fs a d'>4. <g d'>4. | <d fs b>4. <e g b>4. | <c g c'>4. <e c'>4 <g d'>8 | <c' e'>2. | <g e'>4. f!4. |
            e2. | a4. f!4. | \sup c4.~ c4 \sdown g8 | c'4. fs!4 g8 | d4 e8 d4. |
            \sup b,4 g,8 \sdown d4. | e8. d16 c8 b,8 g,4 | c'4. fs4 g8 | d4 e8 d4. | \sup b,4 \sdown e8 \sup c8 \sdown d4 | g2. | \fine
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