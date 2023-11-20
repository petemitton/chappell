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

%  meter = \markup {\italic "In rowing time."}
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
            \partial 8 g8 | g e4 d4. | g8 e4 g4 g8 | c'4 c'8 b4 a8 | <g d'>4. d | \mBreak
            g8 e4 g4. | g8 e4 g4 g8 | c'4 d'8 e'4 d'8 | \partial 8*5 c'4.( d4) \bar "||" | \mBreak
            \partial 8 g8 | c'4 d'8 e'4 d'8 | c'4 b8 a4 g8 | <d f>4 f8 e4 d8 | s4. d4. | \mBreak
            g8 e4 g4. | g8 e4 g4 g8 | c'4 d'8 e'4 d'8 | \partial 8*5 c'4.( d4) \fine |

          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | s2.*2 | e2. | s2. |
            s2.*2 | fs4. f!4. | e4. s4 |
            s8 | g2. | e2. | s2. | d'4. s4. |
            s2.*2 | fs4. f!4. | e4. s4 |

          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        Ye8 | Church -- ales4 and4 ye8 | Mor -- ris4 -- es, With8 | hob4 -- by8 -- horse4 ad8 -- van4. -- cing,4 Ye 8 |
        round8 games4 with4 fine8 | Sim8 and4 Sis4 A8 | bout4 the8 May4 -- pole8 | dan4. -- cing.4 |
        Ye8 | nim4 -- ble8 joints,4 that8 | with4 red8 points4 and8 | rib4 -- bons8 deck4 the8 | bri4. -- dal,4 Lock8 |
        up8 your4 pumps,4 and8 | rest8 your4 stumps,4 For8 | you4 are8 now4 down8 -- cried4. all.4 |

      }	% end lyrics verse one
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            r8 | c'2. | <b c'> | <a c'> | <g c'>4. <f g b> |
           <e g c'>2. | <bf c'> | <a c'>4. <g b!> | <c c'>4 r8 r4 |
            r8 | <e c'>2. | <a c'> | <d c'> | <g c'>4. <f g b> |
            <e g c'>2. | <bf c'> | <a c'>4. <g b!> | <c c'>4 r8 r4 | \fine
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
