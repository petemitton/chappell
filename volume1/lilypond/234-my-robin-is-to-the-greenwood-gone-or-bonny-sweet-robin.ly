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

%  meter = \markup {\italic "Slowly and ad libitum."}
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
            \partial 8 d8 | f8. g16 f8 <cs e>4 d8 | <c! c'!>8( a) d' a4. | f8. g16 f8 <cs e>4 d8 | \mBreak
            <c! c'!>8 a d' a4. | a8 d' c' bf8. a16 g8 | c'8. bf16 a g f8. e16 d8 | c'4 a8 f8. g16 a8 | \partial8*5 <d g>8. f16 <cs e>8 d4 |
\fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | d4. s4. | s2.*2 |
            s2.*3 | <c f>4. d4 <c f>8 | s4. s4 |

          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        My8 | Ro8. -- bin16 is8 to4 the8 green4 -- wood8 gone,4. |

      }	% end lyrics verse one
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            s8 | s2. | a4 bf8 s4. | s4. a,4 bf,8 |
            a4 bf8 c'4 cs'8 | d'2. | c'4. s | a,4. bf,4 f,8 | \partial 8*5 bf8.[ a16 g8] f4 | \fine

          } % end voice three
          \new Voice { % voice four
            \voiceFour
            r8 | d2. | f,4. <f c'>4 <e cs'>8 | <d d'>4. s4. |
            f,4. f | fs g | e4 c8 <d a>4. | s2. | g,4 a,8 d4 |

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
