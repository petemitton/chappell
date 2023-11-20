\version "2.22.0"
\language "english"

global = {
  \time 3/8
  \key d \major
}

sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }
mBreak = { \break }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

  % meter = \markup {\italic "Rather slow."}
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
            \partial 8 <d fs b>8 | <d fs b>4 <d fs b>8^\markup{\tiny a} | b8.( cs'16) d'8 | <e e'>4 <fs d'>8 |
            <fs cs'>4 <g cs'>8 | <fs d'>4 <fs a d'>8 | d'8.( e'16) fs'8 | e'8.( d'16) cs'8 | \mBreak
            d'4 d'8 | fs'8( d'8) <d a>8 | b8.( cs'16) d'8 | <g e'>4 <fs d'>8 | <fs as cs'>4 <as cs'>8 |
            d'8.( e'16) fs'8 | <b e'>4 <e g b>8 | <d fs d'>4 <cs fs as>8 | \partial 4 <d fs b>4 \fine |


          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | s4. | <e g>4 fs8 | s4.*3 | <g b>4 <fs a>8 | g4 <e g>8 |
            fs4 s8 | s4. | <d g>4 <d a>8 | s4.*2 | <fs b>4 <fs b>8 | s4.*2 | s4 |

          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        Come,8 | live4 with8 | me,4 and8 | be4 my8 | love,4 And8 | we4 will8 | all4 the8 | plea4 -- sures8 |
        prove4 That8 | hills4 and8 | val4 -- leys,8 | dale4 and8 | field,4 And8 | all4 the8 | crag4 -- gy8 | moun4 -- tains8 | yield.4 |

      }	% end lyrics verse one
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            b,8 | b,4 b,8 | e4 <d b>8 | <cs as>4 <b, b>8 | <fs as>4 a!8 | <d a>4 d8 | g4 d8 | e4 a8 |
            d4 r8 | r8 fs4 | g4 fs8 | e4 b,8 | fs4 fs8 | b4 d8 | g4 e8 | fs4 fs,8 | b,4 | \fine

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
