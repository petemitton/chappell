\version "2.22.0"
\language "english"

global = {
  \time 4/4
  \key d \major
}

sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }
mBreak = { \break }
chorus = ^\markup {\caps "Chorus."}
solo =  ^\markup {\caps "Solo."}



\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

%  meter = \markup {\italic "Jovially, and in moderate time."}
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
            d'4 d' cs' e' | b b a4. a8 | b4 b <e a cs'> a | \mBreak
            d'2. a4 | d' d'8 d' cs' cs' e'4 | d' cs'8 b a4 <d fs a> | <d g b> <e g b> <e a cs'> a | \partial 2 <d fs d'>2 \bar "||" | \mBreak
            \partial 2 <e a>2\ff\chorus | <d fs d'>4 <d a> <d g b> a8( g) | fs4. g8 a4 g8 fs | <d e>4 <d fs> <d g> <a, e a> | <a, d fs>4. e8 d4( <a, cs e>) | \mBreak
            fs4. e8 d4 e | fs4. e8 d4 e | fs8( g) a4 e4. d8 | d1 \fine |

          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            fs2 g | g a4 <d fs> | <d g> <e g> s2 |
            <d a>2 s2 | fs2 g | <d g> <d a>4 s | s1 | s2 |
            s2 | s2. <cs e>4 | d2 d | s1*2 |
            <a, d>2 b,4 b, | <as, cs>2 b,4 cs | d d d cs | s1 |

          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        Cold’s4 the wind, and wet’s the rain,4. Saint8 | Hugh4 be our good |
        speed;2. 4 | Ill is8 the weather4 that | bring4 -- eth8 no gain,4 Nor | helps good hearts in | need2 |
        Hey2 down4 a down, hey | down4. a8 down,4 Hey der -- ry der -- ry | down4. a8 8 down.4 8 |
        Ho!4. well8 done,4 To | me4. let8 come,4 Ring | com -- pass, gen4. -- tle8 | joy.1 |

      }	% end lyrics verse one
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            <d a>2 <e g> | <g b> <fs d'>4 d | g4 e a4. g8 |
            fs4. e8 d4 r | <d a>2 <e g> |  b4 a8 g fs4 d | g e a a | d2 |
            cs2 | b,4 fs, g, a, | b,2 fs, | g,4 a, b, cs | d2. a,4 |
            d,2 g,4 g, | fs,2 b,4 a,! | d4 fs a a, | d1 | \fine
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
