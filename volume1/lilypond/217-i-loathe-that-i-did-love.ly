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

%  meter = \markup {\italic "Slow."}
%  arranger = \markup {\caps "First Tune."}
}
\score {

  \new ChoirStaff {
	<<
      \new Staff = "up"  {
		<<
          \global
          \new 	Voice = "one" 	\fixed c' {
           % \voiceOne
            \partial 4 a4 | <c e a>4. a8 <e gs c'>4 <d b>4 | <c a>2. <b, d g!>4 | <c f a c'>4. <e g c'>8 <d a d'>4 <d g b>4 | <e g c'>2. <d f a>4 |
            <e a c'>4. c'8 <d f b>4 <d a>4 | <c e c'>4. c'8 <d f b>4 a4 | a4. gs8 gs4 a4 | \partial 2. <c e a>2. \fine |

          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4 | s1*6 | <b, e>1 | s2.

          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        I4 loathe4. that8 I4 did4 | love!2. In4 | youth4. that8 I4 thought4 | sweet,2. (As4
        time4. re8 -- quires4 for4 | my4. behove,)4. Me4 -- thinks4. it8 is4 not4 | meet2. |

      }	% end lyrics verse one
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            r4 | a2 e2 | f2. g4 | c2 f4 g4 | c2. d4 |
            a,2 d4 f4 | a2 d2 | e1 | a,2. | \fine

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
