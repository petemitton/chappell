\version "2.22.0"
\language "english"

global = {
  \time 6/8
  \key c \major
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

            \partial 8 g8 | <e g>4 g8 <f a>4 <d b>8^\< | <e c'>4. <g d'>4. | <f f'>4 a8^\> <e c'>4 <g, c e>8\! | \mBreak
            <f, b, d>4 c8 c4 g8 | <d g>4 g8 <d a>4 <d gs b>8 | <c a c'>4. <bf e'>4. | <a f'>4 <f a>8 <g c'>4 <g, c e>8 | \partial 8*5 <f, b, d>4 c8 c4 \bar "||" | \mBreak
            \partial 8 \stemUp c'8 | g4 g8 a8.(b16) c'8 | e4 e8 f8._(g16) a8 | d4 e8 f8._(g16) a8 | <c e g>4.~<c e g>4 <c f a>8 | \mBreak
            <bf, d g>4 f8 e4 d8 | <a, d f>4 g8 a4 <d f b!>8 | <c g c'>4 <c e>8 <b, d>4 c8 | \partial 8*5 c4.^~c4 \fine | \mBreak

          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s2.*8 |
            s8 | c2. | c2. | b,4. b,4. | s2. |

          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        In8 | sad4 and8 ash4 -- y8 | weeds4. I4. | sigh,4 I8 groan,4 I8 |
        pine,4 I8 mourn;4 My8 | oat4 -- en8 yel4 -- low8 | reeds4. I4. | all4 to8 jet4 and8 | e4 -- bon8 turn.4 |
        My8 | wa4 -- t’ry8 eyes,4 Like8 | win4 -- ter’s8 skies,4 My8 | fur4 -- fow’d8 cheeks4 o’er8 -- flow:4. 4 All8 |
        heav’n4 know8 why,4 Men8 | mourn4 as8 I!4 And8 | who4 can8 blame4 my8 | woe?8*5 |

      }	% end lyrics verse one
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            r8 | <c g>2.~ | <c g>4. <c bf>4. | <c a>4._( <c g>4) c,8 |
            g,4 \stemUp e8 e4 \stemDown r8 | b,4. f4 e8 | a4. <g bf>4. | <f c'>4.^(<e c'>4) \stemUp c,8 | g,4 e8 e4 |
            r8 | s2. | c4. s4. | s4. g,4. | c4.~c4 f,8 |
            g,2. | s2.*2 | s8*5 | \fine

          } % end voice three
          \new Voice { % voice four
            \voiceFour
            s8 | s2.*3 |
            s4 c8 c4 s8 | s2.*3 | s4 c8 c4 |
            s8 | e4. f8. g16 a8 | s4. d8. e16 f8 | g4. s4. | s2. |
            s2. | d4.^~d4 d8 | e4 <c g>8 <g, f>4 <c e>8 | <c e>4.~<c e>4 |

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
