\version "2.22.0"
\language "english"

global = {
  \time 6/8
  \key g \major
}

sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }
mBreak = { \break }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

 % meter = \markup {\italic "Smoothly and rather slow."}
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
            \partial 8 s8 | s4. a4 d8 | e4 g8 a4 s8 | s2. | \mBreak
            s2. | b4 a8 b4 c'8 | d'8_(e'8) d'8 a4 <d fs b>8 | <c g c'>4 s8 <d g b>4 <c fs a>8 | \partial 8*5 <b, g>4.~<b, g>4 \fine | \mBreak

          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            d'8 | c'8 b4 s4. | s4. s4 b8 | c'4 d'8 <g b e'>4 <f d'>8 |
            <e c'>4.~<e c'>4 <e c'>8 | fs!4. g4. | fs4.~fs4 s8 | s4 <g d'>8 s4. | s4. s4 |

          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        God8 | pros4 -- per8 long4 our8 | no4 -- ble8 king,4 Our8 | lives4 and8 safe4 -- ties8 |
        4 all;8 4 A8 | woe4 -- ful8 8 hunting8 8 | once4 there8 did4 In8 | Che4 -- vy-8 Chace4 be8 -- 4 fall.8 4 |

      }	% end lyrics verse one
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            b8 | e'4 d'8 c'4 b8 | a4 b8 c'4 d'8 | e'4 b8 s4. |
            s4. c4 s8 | s2.*2 | s4 b,8 s4. | s4. s4 |

          } % end voice three
          \new Voice { % voice four
            \voiceFour
            g8 | g2. | g2.~ | g4. g4. |
            c'4 g8 s4 <c g>8 | <d c'>4. <g b>4 <e g>8 | <d a>4.~<d a>4 d8 | e4 s8 d4. | g4.^~g4 | \fine

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
