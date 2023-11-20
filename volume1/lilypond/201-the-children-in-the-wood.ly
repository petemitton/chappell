\version "2.22.0"
\language "english"

global = {
  \time 3/4
  \key d \major
}

sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }
mBreak = { \break }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

  % meter = \markup {\italic "Slowly and smoothly."}
                                %	arranger = ""
}
\score {

  \new ChoirStaff {
	<<
      \new Staff = "up"  {
		<<
          \global
          \new 	Voice = "one" 	\fixed c' {
            % \voiceOne
            \partial 4 r8  <cs e>8 | <d fs>8 e8 d4. <cs e>8 | <d fs>8 e8 d4. <d fs>8 | <d g>8 b8 <d a>4. <d fs>8 | \mBreak
            <cs e>2 r8 <a, fs>8 | <b, g>8 b8 <e a>4. <d fs>8 | <cs a>8 fs8 d4. <d a>8 | <d b>8 d'8 fs4. e8 | \partial 2 d2 \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4 | s2.*6 |
            s4 d4 cs4 | s2 |

          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        8 Now8 pon8 -- der8 well,4. You8 | parents4 dear,4. These8 | words8 which8 I4. shall8 |
        write;2 8 A8 | dole8 -- ful8 sto4. -- ry8 | you8 shall8 hear,4. In8 | time8 brought8 forth4. to8 | light.2 |

      }	% end lyrics verse one
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            a,4 | d2 a,4 | d,2 d4 | b,4 fs,4 g,4 |
            a,4 a,,4 a,4 | e4 cs4 d4 | a,4 b,4 fs,4 | g,4 a,4 <g, g>4 | <d fs>2 | \fine

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
