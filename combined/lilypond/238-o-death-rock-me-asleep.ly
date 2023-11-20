\version "2.22.0"
\language "english"

global = {
  \time 4/4
  \key c \major
}

sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }
mBreak = { \break }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

%  meter = \markup {\italic "Moderate time, and like recitative."}
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
            \partial 4 e'4 | e'2. e'4 | d' c' b4. b8 | <c a>2 <e a e'> | <f a d'>4 <e c'> <d b> <c a> | \mBreak
            <e gs b>2. b4 | b2. b4 | b b <e fs b> <ds fs b> | b2. e'4 | <a e'>2. a4 | <e gs c'> <d b> <c a>2 | \mBreak
            r2 r4 <c a> | <a c'> <g b>^\< b4. a8 | gs2. a4 | c'\> b a4. a8 | gs2.\! b8 b | \mBreak
            <e a c'>4. <c e a>8 <d f b>4 <c e a> | r2 r4 <e gs b> | <e a c'>4. <c e a>8 <d f b>4 <c e a> | r2 r4 <f a b>4 | \mBreak
            <e a c'>4. <c e a>8 <d f b>4 <d gs b> | a2. a4^\> | a2. a4 | a2.\! a4 | a2. a4 | a4^\pp a a2 \fine |

          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4 | <e c'>1 | <f a>2 <d gs> | s1*2 |
            s1 | <e g!>1 | <e g>2 s | <e g>1 | e2 f! | s1 |
            s1 | s2 f2 | e1 | f2 d | e1 |
            s1*4 |
            s1 | c2 f | e d | c d | <c e> <d f> | <cs e>1 |

          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        O4 | Death!2. O4 | Death,4 rock me4. a8 -- sleep!2 Bring | me4 to qui -- et |
        rest:2. Let4 | pass2. my4 | wea -- ry, guilt -- less | life2. Out4 | of2. my4 | care -- ful breast.2
        2. Toll4 | on the pass4. -- ing8 | bell,2. Ring4 | out my dole4. -- ful8 | knell2. Let8 thy |
        sound4. my8 death4 tell. | 2 4 Death | doth4. draw8 near4 me, | 2 4 There |
        is4. no8 re4 -- me -- dy2. no4 re2. -- me4 -- dy,2. There4 | is2. no4 | re4 -- me -- dy.2 |

      }	% end lyrics verse one
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            s4 | s1*2 | s2 c | s2. f4 |
            s1 | e,2. fs,4 | g, a, b,2 | s1 | c2 s | s1 |
            f1^\f | c2 d | s c | s1*2 |
            a,1 | e,^\pp | a, | d^\f |
            s2 e, | a, s | c b, | a1 | s1*2 | \fine

          } % end voice three
          \new Voice { % voice four
            \voiceFour
            r4 | a,1 | d2 e | f s | d2. s4 |
            e2. r4 | s1*2 | e2 d | s d | e a |
            s1*2 | e2 s | d f| e1^\p |
            s1*4 |
            e2 s | s d( | s1 | a,2) f( | e d) | <a, e a>1 |

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
