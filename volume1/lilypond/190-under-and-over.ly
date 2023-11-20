\version "2.22.0"
\language "english"

global = {
  \time 6/8
  \key f \major
}

sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }
mBreak = { \break }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

  % meter = \markup {\italic "Cheerfully."}
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
            \repeat volta 2 { \partial 8 d8 | d4 d'8 c'4 bf8 | a4. g8.^(f16) e8 | f8.^(g16) a8 g8.^(a16) f8 | \mBreak
            e4. cs4 cs8 | d4 d'8 cs'4 d'8 | e'4. a4 a8 | bf8._(c'16) d'8 d'8._(e'16) cs'8 | \partial 8*5 d'4.~d'4 } | \mBreak
            \partial 8 d'8 | c'4 c'8 <a c'>8._(<g bf>16) <f a>8 | g4 g8 g8.^(f16) e8 | f8. g16 a8 g8. a16 f8 | \mBreak
            e4.^(cs4) cs8 | d4 d'8 cs'4 d'8 | e'4. a4 a8 | bf8._(c'16) d'8 d'8._(e'16) cs'8 | \partial 8*5 <f d'>4.~<f d'>4 \fine |

          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | s4. g4. | f4. cs4. | d4. cs4 d8 |
            cs4. s4. | s4. g4 f8 | e4. f4. | d4. f4 e8 | f4.~f4 |
            f8 | g4. s4. | d4. cs4. | d4. cs4 d8 |
            cs4. s4. | s4. g4 f8 | e4. f4. | d4. f4 e8 | s8*5 |

          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        As8 | I4 abroad4. was8 | walk4. -- ing,4 I8 | heard4 two8 lo4 -- vers8 |
        talk4. -- ing4 One8 | to4 an8 -- o4 ther8 | 4 speaking,8 4 Of8 | lo8. -- vers’8. con4 stan8 -- 4 cy.8 4 |
        For8 | under4 and8 o4 ver,8 | over4 and8 un4 der,8 | Un8. -- der16 and8 o8. -- ver16 a-8 |
        4 -gain.8 4 Quoth8 | she,4 8 sweetheart,8 8 I8 | love4. thee,4 As8 | 8 maidens8 8 should4 love8 | 4 men.8 4 |

      }	% end lyrics verse one%
      \new Lyrics \lyricmode { %verse two
        As8 | in4 a8 mea4 -- dow8 | turn4. -- ing,4 Up8 | on4 a8 sum4 -- mer’s8 |
        morn4. -- ing,4 I8 | heard4 these8 lo4 -- vers8 | 4 mourning8 4 ’Cause8 | of8. love’s8. cru4 -- el8 -- 4 ty.8 4 |
        }

      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            s8 | s2.*3 |
            s4. a4. | a4. s4. | cs4. d4. | g,4. a,4. | d,4 a,8 d4 |
            s8 | s2.*3 |
            s4. a4. | a4. s4. | cs4. d4. | g,4. a,4. | d,4 a,8 d4 | \fine

          } % end voice three
          \new Voice { % voice four
            \voiceFour
            r8 | d4. e4. | f4. e4. | d4 f8 e4 d8 |
            a,4. a4 g8 | f4. e4 d8 | s2.*2 | s8*5 |
            d8 | e4. f4. | bf4. a4. | d4 f8 e4 d8 |
            a,4. a4 g8 | f4. e4 d8 | s2.*2 | s8*5 |

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
