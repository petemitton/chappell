\version "2.22.0"
\language "english"

global = {
  \time 6/8
  \key ef \major
}

sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }
mBreak = { \break }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

%  meter = \markup {\italic "Boldly and not too fast."}
%  arranger = \markup {\caps "Song in praise of Christmas." }
}
\score {

  \new ChoirStaff {
	<<
      \new Staff = "up"  {
		<<
          \global
          \new 	Voice = "one" 	\fixed c' {
            \voiceOne
            \partial 8 c8 | ef8. d16 c8 <c g>4 <ef c'>8 | <ef bf>8. af16 <ef g>8 <ef ef'>4 <d ef>8 | f4 g8 <c af>8. bf16 af8 | <b, g>4.~<b, g>4 c8 | \mBreak
            ef8. d16 c8 <c g>4 <ef c'>8 | <ef bf>8. af16 <ef g>8 <ef ef'>4 <d ef>8 | <c f>4 g8 <c af>8. bf16 af8 | \partial 8*5 <b,! g>4.~<b, g>4 \bar "||" | \mBreak
            \partial 8 <c ef c'>8 | <ef bf>8. g16 ef8 bf4 <c c'>8 | <c af>8. g16 f8 af4 <bf, f bf>8 |
            <bf, ef g>8. <d f>16 <c ef>8 <b, d>4 c8 | s2. | \mBreak
            <g bf>8. g16 ef8 <f bf>4 <e c'>8 | <f af>8. g16 f8 <f af>4 <d f bf>8 | <ef g>8. f16 ef8 <b, d>8. c16 d8 | \partial 8*5 c4.~c4 \fine |

          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | s2.*2 | c4. s4. | s2. |
            s2.*3 | s8*5 |
            s8 | s2.*3 | <ef ef'>4.~<ef ef'>8. d'16^(<f c'>8)
          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        All8 hail8. to16 the8 days4 that8 | me8. -- rit16 more8 praise4 Than8 | all4 the8 rest8. of16 the8 | 4 year,8 4 And8
        wel8. -- come16 the8 nights4 that8 | dou8. -- ble16 de8 -- lights,4 As8 | well8 for8 the8 poor8. as16 the8 | 4 peer!8 4 |
        Good8 | fort8. -- une16 at8 -- tend4 each8 | mer8. -- ry16 man’s8 friend,4 That8 | doth8. but16 the8 best8 that8 he8 | 8. may;8 4 For-8. |
        -get8. -- ting16 old8 wrongs,4 with8 | ca8. -- rols16 and8 songs,4 To8 | drive8. the16 cold8 win8. -- ter16 a8 -- 4 way. 8 4 |

      }	% end lyrics verse one
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            <c ef>8 | <c g>4. ef4 af8 | g4 ef8 c'4 bf8 | af4. f4. | g4. g,4 <c ef>8 |
            <c g>4. ef4 af8 | g4 ef8 c'4 bf8 | af4. f4. | g4. g,4 |
            af8 | <ef g>4.^\p~<ef g>4 <ef g>8 | <f af>4.~<f af>4 <d f>8 | <ef g>4 f8 g4 af8 | <c g c'>8. b16 c'8 <c af>4 <d af>8 |
            <ef g>4. <df bf>4 <c g>8 | <f af>4. <d! bf>4 bf,8 | ef4 c8 g4 g,8 | c4. c,4 | \fine

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
