\version "2.22.0"
\language "english"

global = {
  \time 4/4
  \key a \minor
}

sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }
mBreak = { \break }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

%  meter = \markup {\italic "Moderate time and smoothly."}
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
            \partial 4 e4 | a b c' b8 a | <d gs>4 <c a> <b, e> e | <e c'>4. c'8 <g c' e'>4 <f b d'> | \mBreak
            <e c'>2. s4 | b c' <d a d'> c'8( b) | s4 <d f a> e2 | <a, a>4 a8 b <e a c'>4 <d gs b> | \partial 2. <c a>2. \fine |

          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4 | e2. e4 | s1*2 |
            s2. c'4 | f2 s4 <e gs>4 | <e a e'> s b, c8 b, | s1 | s2. |

          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        And4 | how should I your | true -- love know From | many4. an8 -- o4 -- ther |
        one?2. O4 | by his coc -- kle hat and staff, And by his san -- dal | shoon.2. |

      }	% end lyrics verse two
            \new Lyrics \lyricmode {	% verse one
              4 | How4 should I2  | 1 | From4. an8 -- o4 -- ther |
              1 | By4 his4 2 | 1 | And4 his4 2 | 2. |

      }	% end lyrics verse two

      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            e8 d | c4 gs, a, c | b, a, gs,2 | a, g,!4 g, |
            c1 | d2 f4 e8 d | c4 d gs, a,8 g,! | f,2 e,4 e, | a,2. | \fine

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
