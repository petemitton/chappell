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

%  meter = \markup {\italic "Lightly, and in moderate time."}
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
            \partial 8 c'8 | c'8.( d'16) e'8 c'8.( d'16) e'8 | c'4.~c'4 g8 | c'8.( d'16) e'8 c'8.( d'16) e'8 | c'4.~ c'4 c'8 | \mBreak
            d'8.( e'16) d'8 d'4 c'8 | <d b>4. <f a> | <e g>4 g8 <b, g>4 f8 | <c e>4.~ <c e>4 c8 | \mBreak
            e4 f8 g4 e8 | a4 g8 c'4\fermata g8 | g8.( a16) g8 f8.( g16) e8 | \partial 8*5 <b, d>4 c8 c4 \fine|

          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | e2.~ | e2. | e2.~ | e2. |
            a2. | s2.*3 |
            c2. | c4. c4 c8 | c4.~ c4 c8 | s8*5 |

          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        Come8 | fol4 -- low,8 fol4 -- low8 | me,2 8 Ye8 | fai4 -- ry8 elves4 that8 | be,2 8 Which8 |
        cir4 -- cle8 on4 the8 | green,4. Come | fol4 -- low8 Mab,4 your8 | queen.4 "."8 "."8  4 |
        Hand4 in8 hand4 let’s8 | dance4 a8 -- round,4 8 | For4 this8 place4 is8 | fai4 -- ry8 ground.4 |

      }	% end lyrics verse one
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            r8 | c2.~ | c4 c8 c4 b,8 | a,2.~ | a,4 a,8 a,4 g,8 |
            f,2. | g,4. b, | c g, | c,4 c8 c4.~ |
            c4 d8 e4 c8 | f4 e8 a4_\fermata e8 | e4. d4 c8 | <g, f>4 <c e>8 <c e>4 | \fine

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
