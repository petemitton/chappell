\version "2.22.0"
\language "english"

global = {
  \time 4/4
  \key ef \major
}

sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }
mBreak = { \break }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

%  meter = \markup {\italic "Rather slowly and very smoothly."}
%                                	arranger = \markup{ \caps "Second Tune." }
}
\score {

  \new ChoirStaff {
	<<
      \new Staff = "up"  {
		<<
          \global
          \new 	Voice = "one" 	\fixed c' {
            \voiceOne
            \partial 4 bf8 af8 | g4. f8 <g, ef>4 bf8 af8 | g8. af16 f8. g16 <g, ef>4 g8_(af8) | bf4 bf8 bf8 ef'4 ef'4 | \mBreak
            <ef g bf>2. af8_(g8) | s4 c'8 d'!8 ef'4 d'8_(c'8) | bf4. af8 <ef g>4 <bf, ef>4 | g8_(f8) ef8 f8 <g, ef>4 <af, d>4 | \partial 2. <g, ef>2. \fine |

          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            <bf, f>4 | <bf, ef>4 <af, d>4 g,4 <bf, f>4 | <bf, ef>4 <af, d>4 s2 | s4 <ef g>4 <ef bf>2 |
            s1 | c'4 <ef af>4 <ef af>4 <ef af>4 | f2 s2 | c2 s2 | s2. |

          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        There4 | was4. a8 youth,4 and8 a8 well-8. be16 -- lov8. -- ed16 youth,4 And4 | he4 was8 a8 squi4 -- er’s4 |
        son;2. He4 | lov4 -- ed8 the8 bai4 -- liff’s4 | daughter2 dear,4 That4 | liv4 -- ed8 in8 Is4 -- ling4 -- ton.2. |

      }	% end lyrics verse one
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            d4 | ef4_(bf,4 ef,4) d4 | ef4_(bf,4 ef,4) r4 | r4 ef4 g2 |
            ef2 <ef df'>2 | <af c'>4 af8 bf8 c'4 bf8 af8 | d2 ef4 g,4 | af,2 bf,4 bf,4 | ef,2. | \fine

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
