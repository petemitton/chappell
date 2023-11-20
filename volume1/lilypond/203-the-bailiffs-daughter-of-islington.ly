\version "2.22.0"
\language "english"

global = {
  \time 4/4
  \key g \minor
}

sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }
mBreak = { \break }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

  % meter = \markup {\italic "Rather slow."}
  %                             	arranger = \markup{ \caps "First Tune." }
}
\score {

  \new ChoirStaff {
	<<
      \new Staff = "up"  {
		<<
          \global
          \new 	Voice = "one" 	\fixed c' {
            \voiceOne
            \partial 4 d4 | bf4 a8 bf8 c'4 bf8 a8 | <g d'>4 <ef g>4 <d fs>4 d4 | <d bf>4 bf4 s2 | \mBreak
            s2. d4 | bf4 a8 bf8 c'4 bf8_(a8) | <g d'>4 <ef g>4 <d fs>4 d4 | <d g>4 a8 bf8 fs4 d4 | \partial 2. <bf, g>2. \fine | \mBreak
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4 | d2 fs2 | s1 | s2 c'8[^(d'16 ef'16 d'8 c'8)] |
            d'2. s4 | d2 fs2 | s1 | s4 d4 c2 | s2. |

          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        There4 | was4 a4 youth,4 and8 a8 | well-4 belov’d4 youth,4 And4 | he4 was8 a8 8 Squire’s4  8 |
        son;2. He4 | lov4 -- ed8 the8 bai4 -- liff’s4 | daugh4 -- ter4 dear,4 That4 | liv4 -- ed8 in8 Is4 -- ling4 -- ton.2. |

      }	% end lyrics verse one
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            r4 | g,2 a,2 | bf,4 c4 d4 r4 | s1 |
            s1 | s2 a,2 | bf,4 c4 d4. c8 | bf,4 g,4 s2 | g,2. | \fine

          } % end voice three
          \new Voice { % voice four%}
          \voiceFour
          s4 | s1*2 | g4 <g bf>4 <ef bf>4 <f a>4 |
          bf2 <d fs a>2 | <g, g>2 s2 | s1 | s2 d2 | s2. |

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
