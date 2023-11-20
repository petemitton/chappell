\version "2.22.0"
\language "english"

global = {
  \time 3/8
  \key ef \major
}

sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }
mBreak = { \break }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

%  meter = \markup {\italic "Very slow and smoothly."}
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
            \repeat volta 2 {\partial 8 bf8 | bf8. c'16 d'8 | <g ef'>8 bf8 g8 | af8. bf16 g8 | f4 bf8 | bf8. c'16 d'8 | ef'8 bf8 g8 | f8 ef8 d8 | \partial 4 ef4 }
            \repeat volta 2 {\partial 8 ef8 | c'8. d'16 c'8 | bf8 af8 g8 | af8. bf16 g8 | f4 g8 | af8. bf16 c'16 d'16 | ef'8 bf8 g8 | f8 ef8 d8 | \partial 4 ef4 }

          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | bf4 af8 | s4. | d4 ef8 | d4. | bf4 af8 | g4 s8 | c4 s8 | s4 |
            s8 | ef4. | f4 ef8 | d4 ef8 | d4. | f4. | ef4 ef8 | c4. | s4 |

          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        By8 | force8. I16 am8 | fix8 -- ed8 my8 | fan8. -- cy16 to8 | write,4 In8 -- gra8. -- tit16 -- ude8 | will8 -- eth8 me8 | not8 to8 re8 -- frain:4 |
        Your8 | tra8. -- ces16 in8 | places,4 to8 | out8. -- ward16 allure8 -- ments,4 Do8 | move4 my16 en16 -- deavour4 to8 | be8 the8 more8 | plain:4 |

      }	% end lyrics verse one
       \new Lyrics \lyricmode {	% verse two
         Then8 | blame8. me16 not,8 | ladies,4 al8 -- though8. I16 in8 -- dite4 What8 | light8. -- y16 love8 | now8 amon4 -- gst8 you8 doth8 | reign:4 |
         Your8 | nic8. -- ings16 and8 | ’tic8. -- ings,16 with8 | sund8. -- ry16 pro8 -- curements,4 To8 | pub8 -- lish8 your8 | light8 -- ie8 love8 | do8 me8 con8 -- strain4 |

      }	% end lyrics verse two

      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            s8 | s4.*3 | bf,4 af,8 | g,4 f,8 | ef,4. | s4 f8 | g4 |
            s8 | s4.*3 | bf,4. | f, | g,4 c8 | af,4 f8 | g4 |

          } % end voice three
          \new Voice { % voice four%
            \voiceFour
            r8 | g4 f8 | ef4. | f4 ef8 | s4.*3 | af,4 bf,8 | ef,4 |
            d8\rest | af4. | d4 ef8 | f4 ef8 | s4.*3 | s4 bf,8 | ef,4 |

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
