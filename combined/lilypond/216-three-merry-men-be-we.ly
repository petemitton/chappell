\version "2.22.0"
\language "english"

global = {
  \time 4/4
  \key bf \major
}

sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }
mBreak = { \break }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

%  meter = \markup {\italic "Moderate time and gaily."}
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
            d'4 c'8 d'8 bf4 f4 | bf4 a8 bf8 d4 ef4 | f4 bf8. a16 bf8( c'8) <bf d'>4 | <f a c'>2. c'4 |
            c'4 c'8 a8 f4 f4 | <bf f'>4 <bf f'>8 <a ef'>8 <bf d'>4 bf4 | c'4 c'4 c'8( d'8) ef'4 | \partial 2. d'2. \fine |

          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            d1 | d2 d4 c4 | d2 f2 | s1 |
            <f a>2 s2 | f2 f4 f4 | <f bf>2 <f a>2 | <f bf>2. |

          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        Three4 merry4 men4 and4 | three4 merry4 men,4 And4 | three4 merry4 men4 be4 | we2. a,4 |
        I4 in8 the8 wood,4 and4 | thou4 on8 the8 ground,4 And4 | Jack4 sleeps4 in4 the4 | tree.2. |

      }	% end lyrics verse one
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            \voiceThree
             <bf, f>1 | <bf, f>1 | f1 | s2 f,4 r4 |
            s1 | s2 bf,4 s4 | s2 f,2 | bf,2 bf,,4 | \fine

          } % end voice three
          \new Voice { % voice four
            \voiceFour
            s1*2 | bf,2 d2 | f2 s2 |
            f2. ef4 | d4 d8 c8 s4 d4 | f2 s2 | s2. |

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
