\version "2.22.0"
\language "english"

global = {
  \time 6/8
  \key g \minor
}

sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }
mBreak = { \break }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

%  meter = \markup {\italic "Moderate time."}
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
            \partial 8 d8 | g8.( a16) bf8 a4 g8 | fs4 g8 a4 d8 | <d g>4 <d a>8 <d bf>4 <g c'>8 | \mBreak
            <fs a d'>4.~<fs a d'>4 d8 | g8.( a16) bf8 a4 g8 | fs4 g8 a4 d8 | <d g>4 <d a>8 <d bf>4 <g c'>8 | \partial 8*5 <fs a d'>4.~<fs a d'>4 \bar "||" \mBreak
            \partial 8 s8^\f | a8.( bf16) c'8 c'4 c'8 | f'4 c'8 c'4 <f a>8 | <f bf>4 <ef a>8 <d f bf>4 <f a c'>8 | s2. | \mBreak
            c'4 bf8 a8.( bf16) c'8 | bf4 a8 g8.( a16) bf8 | a4 g8 fs8.( e!16) fs8 | \partial 8*5 <bf, g>4.~<bf, g>4 \fine |


          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | d4. ef4. | d4.~d4 s8 | s2. |
            s2. | <bf, d>4. <c ef>4. | d4.~d4 s8 | s2. | s2 s8 |
            d'8 | f!2. | f4.~f4 s8 | s2. | <f bf d'>4.~<f bf d'>4 d'8^\p |
            g4. f4. | f4. ef4. | ef4. c4. | s2 s8 |

          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        Sing8 | care4 a8 -- way4 with8 | sport4 and8 play,4 Pas8 -- time4 is8 all4 our8 |
        8 pleasure;2 If8 | well4 we8 fare,4 For8 | nought4 we8 care,4 In8 | mirth4 con8 -- sists4 our8 | 8 treasure.2 |
        Let8 | lun4 -- gis8 lurk,4 And8 | drudges4. work,4 We8 | do4 de8 -- fy4 their8 | 8 slavery:2 He8 |
        is4 but16 a16 fool4 That8 | goes4 to8 school,4 All8 | we4 de8 -- light4 in8 | 8 bravery.2 |

      }	% end lyrics verse one
      \new Lyrics \lyricmode { %verse two
        2.*8 | 8 | 8 [lankies]4.
}


      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            r8 | <g bf>4. <c c'>4. | <d a>4.~<d a>4 c'8 | bf4 fs8 g4 ef8 |
            s2. | g,4. s4. | a4.~a4 s8 | s2. | d4.~d4 |
            s8 | s2.*2 | d4 c8 bf,4 f,8 | s2. |
            s4. f8. g16 a8 | s4. ef8. f16 g8 | s2. | s2 s8 | \fine

          } % end voice three
          \new Voice { % voice four
            \voiceFour
            s8 | s2.*3 |
            d4.~d4 r8 | s4. c4. | d4.~d4 c'8 | bf4 fs8 g4 ef8 | s2 s8 |
            r8 | <f c'>2.^\f | <ef a>4.~<ef a>4 ef8 | s2. | bf,,4.~bf,,4 r8 |
            <ef c'>4. f4. | <d bf>4. ef4. | <c a>4. <d a>4. | <g, g>4.~<g, g>4 |

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
