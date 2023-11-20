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

%  meter = \markup {\italic "Trippingly and moderately fast."}
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
            <fs d'>8 <g d'> <a d'> <b d'>4 <g b>8 | <e cs'>4 <fs d'>8 e'4 cs'8 | d'8 d' d' d'4 cs'8 | <g b>8 <fs a> <e g> <d fs>4. \bar "||" | \mBreak
            fs8( g) a b4 a8 | b4 a8 b4 e8 | fs( g) a b16 b8. a8 | g( fs) e d4. \fine |

          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s2. | s4. g4. | fs4 b8 a4. | s2. |
            d2. | d4.~d4 cs8 | d2. | d4 cs8 s4. |

          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        \markup {\caps Rosaline.--}2. | 2.*3 |
        \markup {\caps Boyet.--}2. | 2*3 |

      }	% end lyrics verse one
      \new Lyrics \lyricmode {	% verse two
        Thou8 canst not hit4 it,8 | hit4 it,8 hit4 it,8 | Thou canst not hit4 it,8 | my good4 man.4. |
        An4 I8 can4 -- not,8 | can4 -- not,8 can4 -- not,8 | An4 I8 can16 -- not,8. an8 -- o4 -- ther8 can.4. |

      }	% end lyrics verse two

      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            d8 e fs g4 g,8 | a,2. | b,8 a, g, fs,4. | g,4 a,8 b,4. |
            d8 e fs g4 fs8 | g4 fs8 g4 a8 | d e fs g4 fs8 | e4 a8 d4. | \fine
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
