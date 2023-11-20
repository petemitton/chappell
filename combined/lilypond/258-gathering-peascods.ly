\version "2.22.0"
\language "english"

global = {
  \time 4/4
  \key g \major
}

sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }
mBreak = { \break }
rall = \markup {\italic "rall."}
atempo = \markup {\italic "a tempo."}

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

%  meter = \markup {\italic "Moderate time, and sustained"}
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
            d'2\f d'4 d' | b4. c'8 d'4 <g b d'> | <g c' e'> <g d'> <fs c'> <g b> | <fs a>2.\pp <fs b>4^\rall | \mBreak
            <e a>4 <d g> g fs | <b, g>1 | d'2\f^\markup{\italic "a tempo."} d'4 d' | b4. c'8 d'4 d' | e' d' <a c'> <g b> | \mBreak
            <fs a>2. <fs b>4^\rall |<e a>\pp <d g> g fs | \partial 2. <b, g>2. \bar "||" | \partial 4 g4\mf^\atempo | fs d fs g | <d a>2 b4 a | \mBreak
            g8( a) b4 a g | <d fs>2. <cs fs>4_\p^\rall | <b, e> <a, d> e4. d8 | d1 | d'2\mf^\atempo d'4 d'4 | \mBreak
            b4. c'8 d'4 d' | e' d' <e c'> <d b> | <c a>2. <fs b>4\p^\rall | <e a> <d g> g fs | <b, g>1 \fine |

          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            g1 | g2. s4 | s1*2 |
            s2 c2 | s1 | <g b>2 <fs a> | g g4 fs | e2 s2 |
            s1 | s2 c | s2. | s4 | a,1 | s2 d |
            d2 cs2 | s1 | s2 b,4 cs | s1 | g2 <fs a> |
            g2 a | <gs b> gs | a4 g!4 <d fs!> s | s2 c2 | s1 |

          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        How2 plea4 -- sant4 | is4. it8 in4 the | blos -- som of the | year,2. To4 |
        stray4 and find a | nook,1 | Where2 nought4 doth | fill4. the8 hol4 -- low | of the list’ -- ning |
        ear,2. Ex4 -- cept the mur -- m’ring | brook;2. | Or4 | bird in neigh -- b’ring | grove,2 That4 in |
        so4 -- li -- tude doth | love2. To4 | breathe his lone4. -- ly8 | hymn!1 | Lost2 in4 the |
        min4. -- gled8 song,4 I | care -- less roam a -- long,2. From4 | morn to twi -- light | dim.1

      }	% end lyrics verse one
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            <g b>1 | d'2 s2 | s1 | s2. d4 |
            c4 b, a, d | g,1 | s2 d2 | s b, | c a, |
            d2. d4 | c b, a, d | g,2. | r4 | d2 d,4 e, | fs,2 g,4 fs,|
            e,2 a, | b,2. a,4 | g, fs, g2 | fs1 | b,2 d |
            s1*2 | s2 d4 d | c b, a, d | g1 | \fine

          } % end voice three
          \new Voice { % voice four
            \voiceFour
            s1 | g4. a8 b4 g | c' b a g | d'2. s4 |
            s1*2 | g2 s | e s | s1 |
            s1*2 | s2. | s4 | s1*2 |
            s1*2 | s2 e,4 a, | d,2 d4. c!8 | s1 |
            g2 f! | e e | a s | s1*2 |

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
