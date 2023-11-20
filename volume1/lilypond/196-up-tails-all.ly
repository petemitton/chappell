\version "2.22.0"
\language "english"

global = {
  \time 2/4
  \key f \major
}

sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }
mBreak = { \break }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

  % meter = \markup {\italic "Moderate time and lightly."}
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
            \partial 8 a16_(bf16) | c'8 c'8 a8 g16_(a16) | bf8 bf8 g8 a16_(bf16) | c'8 c'8 a8. bf16 |
            c'4. d'16_(e'16) | f'8 f'8 c'8 bf16_(c'16) | d'8 d'8 a8 a16_(bf16) | <f a c'>4 c4 | \partial 4. <a, f>4. \fine |

          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            f8 | e4 f4 | d4 e4 | e4 f4 |
            e4 bf4 | a4 f4 | f4 d8 f8 | s2 | s4. |

          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        Fly,8 | mer8 -- ry8 news,8 a8 -- mong8 the8 crews,8 That8 | love8 to8 hear8. of16 |
        jests,4. &c.8 | 2*2 | Up4 tails4 | all!4. |

      }	% end lyrics verse one
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            f,8 | c,4 f,4 | g,4 c4 | a,4 d4 |
            c4 c'4 | d'4 a8 g16 a16 | bf4 f8 d8 | c4 <c e g>4 | \sdown <f, f>4. | \fine

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
