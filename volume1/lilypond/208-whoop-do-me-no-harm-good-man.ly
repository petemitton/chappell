\version "2.22.0"
\language "english"

global = {
  \time 6/8
  \key d \major
}

sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }
mBreak = { \break }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

%  meter = \markup {\italic "Cheerfully."}
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
            \partial 8 d8 | fs8. g16 a8 a8. g16 a8 | b8. a16 g8 g8. fs16 e8 | fs8. g16 a8 a4 gs8 | \mBreak
            a4.~a4 d8 | fs8. g16 a8 a8. b16 c'!8 | b8. a16 g8 e4^\fermata <d d'>8 | fs8. g16 fs8 e8._(fs16) e8 | \partial 8*5 d4.~d4 \fine |

          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | s4. d4. | d4. cs4. | d4. d4. |
            cs8. d16 e8 a,4 s8 | s4. d4. | d4. d4 s8 | d4. cs4 s8 | s4. s4 |

          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        8 | 2.*5 | 2 Whoop!4 do8. me16 no8 8 harm,8 good8 | 4 man.4.  |

      }	% end lyrics verse one
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            <d fs>8 | <d a>4. fs,4. | g,4. a,4. | d4 cs8 b,4 e8 |
            a,4.~a,4 <d fs>8 | <d a>4. fs,4. | g,4. gs,4\fermata <gs, e>8 | <a, fs>4. <a, g>4. | <d fs>4.~<d fs>4 | \fine
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
