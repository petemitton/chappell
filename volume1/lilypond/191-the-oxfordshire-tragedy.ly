\version "2.22.0"
\language "english"

global = {
  \time 3/4
  \key c \major
}

sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }
mBreak = { \break }

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
            \partial 4. g8 <d g b>8 g8 | <c g c'>4 <c e>4 <a, f>8 <b, d>8 |
            c4. c'8 b8 a8 | <d g d'>4 <b, g>4 <e a>8 <d fs>8 | \partial 4. <b, g>4. \bar "||" | \mBreak
            \partial 4. <b, g>8 <c g c'>8 <f b d'>8 | <e c' e'>4 <g b d'>4 <e c'>8 e8 |
            <c g>4. <c e>8 <c f>8 <e g>8 | <e a>4 <c g>4 <a, f>8 <b,! d>8 | \partial 4. c4. \fine |


          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4. | s2. | s4. <d fs>4 s8 | s2. | s4. |

          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        Near8 Wood8 -- stock8 | town,4 in4 Ox8 -- ford8 -- shire,4. As8 I8 walk’d8 | forth4 to4 take8 the8 | air.4. |
        To8 view8 the8 | fields4 and4 mead8 -- ows8 | round4. Me8 -- thought8 I8 | heard4 a4 dread8 -- ful8 | sound.4. |

      }	% end lyrics verse one
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            r8 f4 | e4 a4 d8 g8 | e4^(c8) r8 c4 | b,4 e4 c8 d8 | g4_(g,8) |
            f!8 e8 d8 | c4 g,4 a,4 | e,4. bf8 a8 <g bf>8 | <f a>4 e4 d8 g8 | c4. | \fine

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
