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

 % meter = \markup {\italic "Rather slowly and smoothly."}
                                %	arranger = ""
}
\score {

  \new ChoirStaff {
	<<
      \new Staff = "up"  {
		<<
          \global
          \new 	Voice = "one" 	\fixed c' {
            \partial 8 d8 | <b, g>4 <c a>8 <d b>4 <b, g>8 | <d b>4 <c a>8 <b, g>4 <e b>8 | <e c'>4 <d f b>8 <c e a>4 <b, e gs>8 | \mBreak
            <c e a>4.~<c e a>4 <c e a>8 | <e c'>4 <e c'>8 <d a d'>4 c'8 | <d g b>4 <c fs a>8 <b,g>4 <fs b>8 |
            b8_(a8) g8 g4 fs8 | \partial 8*5 <b, d g>4.~<b, d g>4 \fine |

          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | s2.*6 |
            e4 s8 <a, d>4. | s8*5 |

          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        In8 | Peas4 -- cod8 time,4 when8 | hound4 to8 horn4 Gives8 | ear,4 till8 buck4 be8 |
        4 kill’d:8 4 And8 lit4 -- tle8 lads,4 with8 | pipes4 of8 corn,4 Sat8 | 16 keep8 -- 16 ing8 beasts4 a8 -- 4 field8 4 |

      }	% end lyrics verse one
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            r8 | g2.~ | g4.~ g4 gs8 | a4 d8 e4. |
            a,4 e8 a4.~ | a4 g8 fs4. | g4 d8 e4 d8 | c4. d4. | g,4.~g,4 | \fine

          } % end voice three
          \new Voice { % voice four

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
