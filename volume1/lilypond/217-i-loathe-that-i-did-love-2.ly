\version "2.22.0"
\language "english"

global = {
  \time 4/4
  \key a \minor
}

sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }
mBreak = { \break }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

%  meter = \markup {\italic "Slow"}
%  arranger = \markup {\caps "Second Tune."}
}
\score {

  \new ChoirStaff {
	<<
      \new Staff = "up"  {
		<<
          \global
          \new 	Voice = "one" 	\fixed c' {
            \voiceOne
            \partial 4 g4 | g4. g8 g4 f8( e8) | g2. g4 | g4 g4 c'4 c'4 | <d b>2. g4 |
            c'4 b4 a4 g4 | <d g>4 d4 e4 fs8( g8) | <c fs a>4 g2 fs!4 | <b, d g>2. g8( a8) | \mBreak
            b4 c'4 d'4 <b, g>4 | <c g c'>4 <c f c'>4 <d g b>4 s4 | s2 c'4 b4 | \partial 2. <e g c'>2. \fine |

          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4 | e2. s4 | e1 | d2 c2 | s1 |
            c1 | s1 | s4 d4 <a, d>2 | s1 |
            <d g>2. s4 | s2. <e g e'>4 | <f b d'>4 <g c'>4 <d g>2 | s2. |

          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        I4 loathe4. that8 I4 did4 | love!2. In4 youth4 that4 I4 thought4 | sweet2. (As4 |
        time4 re4 -- quires4 for4 | my4 be4 -- hove,4 for4 | my2. be4 -- hove),2. Me-4  |
        -thinks4 it4 is4 not4 | meet,4 Me4 -- thinks,4 me4 -- thinks,4 it4 is4 not4 | meet.2. |


      }	% end lyrics verse one
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            s4 | s1*4 |
            <e g>1 | g1 | a,4 b,8 c8 d2 | g,1 |
            s1 | s2. c4 | s1 | c2. | \fine


          } % end voice three
          \new Voice { % voice four
            \voiceFour
            r4 | <c g>1 | <c g>1 | <b, g>2 <a, fs>2 | <g, g>1 |
            s1 | b,2 c2 | s1*2 |
            f!1 | e4 a4 g4 s4 | d4 e8 f8 g2 | s2. |
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
