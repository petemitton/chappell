\version "2.22.0"
\language "english"

global = {
  \time 6/8
  \key c \major
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
            \partial 8 c'8 | <e c'>4 g8 e4 g8 | <f d'>4.~<f d'>4 g8 | <e c'>4 b8 c'4 d'8 | s2. | \mBreak
            d'8. e'16 f'8 e'8 d'8 c'8 | <g d'>4 b8 g8. a16 <f b>8 | <e c'>4 g8 e4 g8 | \partial 8*5 <e c'>4.~<e c'>4 \fine |

          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | s2.*2 | s4. a4. | <g c' e'>4.~<g c' e'>4 e'8 |
            g4. g4. | s2.*2 | s8*5 |

          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one

      }	% end lyrics verse one
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {

          } % end voice three
          \new Voice { % voice four
            r8 | <c g>2. | <c g b>2. | <c g c'>4. f,4. | c,2. |
            b4. c'4. | <g b>4.~<g b>4 <g d'>8 | <c c'>2. | <c, c>4.~<c, c>4 | \fine

          } % end voice four
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
