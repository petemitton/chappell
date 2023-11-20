\version "2.22.0"
\language "english"

global = {
  \time 6/8
  \key d \major
}

sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }
sauto = { \override Stem.direction = #center }
mBreak = { \break }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

%  meter = \markup {\italic "Slow & very smoothly."}
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
            fs8 fs fs d'8. e'16 d'8 | cs'8 a4 b4 a8 | <d fs>8 d4 <cs e>4 <cs e>8 | <d fs>4 <e g>8 <fs a>8 <d fs>4 | \mBreak
            fs8 fs fs d'4 d'8 | cs'8 a4 <cs e b>4 <d a>8 | <d fs>8 d4 <d e>4 <cs e>8 | <d fs>4 <e g>8 <fs a>8 <d fs>4 \bar "||" | \mBreak
            fs8 fs fs d'4 d'8 | cs'8 a4 b4 a8 | fs8 a4 cs'8.( b16) cs'8 | <fs d'>8 <d fs>4 <cs e>4 e8 | \mBreak
            fs8 a4 cs'8.( b16) a8 | b8 d' e'16( d') cs'8( d') b | <d a> fs d e4 e8 | <d fs>4 <e g>8 <fs a>8 <d fs>4 \fine |

          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            d4. d | d d | s2.*2 |
            d4 s8 <e gs>4. | e s | s2.*2 |
            d4. d | d d | d e4 s8 | s2. |
            d4. g4 a8 | g4. g | s cs | s2. |

          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        Sweet8 mis -- tress Money,4 I8 | here8 will4 declare Thy8 | beauty8 which4 ev’4 -- ry8 | one4 ador -- eth.8 The8 |
        lof8 -- ty gal -- lant4 and8 | beg8 -- gar8 so8 bare,4 Some8 | help8 and4 comfort from8 | thee4 im8 -- plor8 -- eth,8 For8 |
        thou8 art be -- come4 the8 | world’s sweet4 -- heart, While8 | ev’8 -- ry4 one4 doth8 | make8 thee8 their8 honey,4 And8 |
        loth8 they4 are4 from8 | thee8 to de -- part,4 So8 | well8 they do love4 sweet8 | Mis4 -- tress8 Mo8 -- ney.4 |

      }	% end lyrics verse one
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            s2.*2 | d4. a, | d,2. |
            s2.*4 |
            d4. b | a8 fs4 g fs8 | d4. a, | d, a, |
            s2.*2 | fs8 d fs e4. | <d, d>2. | \fine
          } % end voice three
          \new Voice { % voice four
            \voiceFour
            d4. b |  a8 fs4 g fs8 | s2.*2 |
            b4. e | a g!4 fs8 | b4. g4 a8 | d2. |
            d2. | d | d4. s | s2. |
            \grace{d,16^(} d4.) e4 fs8 |
            \grace{g,16^(} g8)  b cs'16 b as8 b g |
            a,4. a, | s2. |
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
