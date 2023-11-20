\version "2.22.0"
\language "english"

global = {
  \time 6/8
  \key g \major
}

sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }
mBreak = { \break }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

%  meter = \markup {\italic "Moderate time."}
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
            \partial 8 d8 | <b, g>4 d8 <b, g>4 a8 | <g b>8.( c'16) b8 <d a>8( fs8) d8 | <d g>8.( a16) g8 <e g d'>4 s8 | <d g b>4.( <d fs a>4) d8 | \mBreak
            a4 b8 c'8.( d'16) c'8 | b8.( c'16) b8 <c a>8.( g!16) <ds fs>8 | <b, e g>8.( a16) g8 <a, ds fs>8.( g16) fs8 | \partial 8*5 e4. d4 \fine |


          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | s2.*2 | s4. s4 c'8 | s2. |
            f!4. e4. | <d gs>4. s4. | s2. | b,4 cs8 d4 |

          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        In8 | eighty4. -- eight,4 ere8 | I4 was8 born,4 As8 | I4 can8 well4 re8 -- mem4. ber,4 In8 |
        Au4 -- gust8 was4 a8 | fleet4 pre8 -- par’d,4 The8 | month4 be8 -- fore4 Sep8 -- tem4. -- ber.4 |

      }	% end lyrics verse one
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            r8 | g,4. e4. | d4. c4. | b,4. a,4. | d4.~d4 r8 |
            d4. a,4. | e,4. a,4 b,8 | e,4. fs,4. | g,4 <a, g>8 <d fs>4 | \fine

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
