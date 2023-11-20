\version "2.22.0"
\language "english"

global = {
  \time 3/4
  \key a \major
}

sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }
mBreak = { }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

  % meter = \markup {\italic "Slow."}
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
            \partial 4 e8 a8 | <d gs>4. <cs e a>8\noBeam b8 b8 | cs'16_( b16) a4. a8 gs8 | fs4. e8\noBeam fs8 gs8 | \mBreak
            <cs e a>2 e8 a8 | <d gs>4. <cs e a>8\noBeam b8 b8 | cs'16_( b16) a4. a8 gs8 | <d fs>4. <a, e>8\noBeam <d fs>8 <b, d gs>8 | \mBreak
            <cs a>4. a16 b16 s4 | <fs d'>8 <e cs'>8 <d b>8 <cs a>8\noBeam cs'8 d'8 |
            <a e'>4. a16 b16 s4 | <a d'>8 <gs cs'>8 <fs b>8 <d a>8\noBeam <e a cs'>8 <d gs b>8 | \partial 2 <cs a>2 \fine |

          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            cs4 | s2 e4 | e2 e4 | d2 d4 |
            s2 cs4 | s2 e4 | e2 e4 | s2. |
            s2  <a cs'>8 <gs e'>8 | s2 a4 | s2 cs'8 <b e'>8 | s2. | s2 |

          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        Will8 you8 | hear4. a8 Span8 -- ish8 | la8 -- dy,4. How8 she8 | wooed4. an8 English4 |
        man?2 Garments4 | gay,4. and8 rich8 as8 | may8 be,4. Deck’d8 with8 Jew4. -- els8 she8 had8 |
        on.4. Of16 a16 come8 -- ly8 | 8 countenance8 8 and8 grace8 was8 | she,4. And16 by16 birth8 and8 pa8 -- 16 rentage8 16 of8 high8 de8 -- gree.2 |

      }	% end lyrics verse one
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            a4 | b4. a8 <gs b>4 | a2 <cs a>4 | <d a>2 b,4 |
            a,4^( a4) a4 | b4. a8 <gs b>4 | a2 <cs a>4 | <d a>4. cs8\noBeam b,8 e8 |
            a4^(a,4) a,4 | a2 fs4 | cs4^(a,4) a8 gs8 | fs8 e8 d8 fs8 e4 | a4(a,4) | \fine

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
