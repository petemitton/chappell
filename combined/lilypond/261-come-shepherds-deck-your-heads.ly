\version "2.22.0"
\language "english"

global = {
  \time 4/4
  \key g \minor
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
            \partial 4 g4 | <bf, g>4 a bf c' | d'2. <bf d'>4 | <g c' ef'> <f d'> <ef c'> <d g bf> | \mBreak
            <ef g c'>2 <d bf>4 g | g a bf c' | d'2. d'4 | ef' d' c' bf | \mBreak
            \partial 2. <ef a c'>2( <d bf>4) \bar "||" | \partial 4 c'4 | d'4. c'8 bf4 a | g2. <bf d'>4 | c' d' ef' g' | s2. <d a>4 | \mBreak
            <c g c'>4. <d g bf>8 <fs a>4 <d g> | fs2. g4 | a bf c' bf | \partial 2. <c fs a>2 <bf, g>4 \fine |

          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4 | s4 d2 fs4 | g4. g8 g4 g4 | s1 |
            s1 | d2. <c f!>4 | f4. f8 f4 bf | g2 a4 bf4 |
            s2. | s4 | <d a>2 <d fs> | d4. d8 d4 d4 | f2 <f a> | <f a ef'> <f bf d'>4 s4 |
            s1 | c4 ef4 d bf, | d2 <d fs> | s2. |
          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        Come,4 | Shep4 -- herds, deck your heads2. No4 | more with bays but
        wil2 -- lows;4 For -- sake your down -- y beds,2. And4 make the downs your
        pil2 -- lows:4 | And mourn4. with8 me,4 since | cross’d2. As4 | ne -- ver yet was | no2 man,4 For |
        shep4. -- herd8 ne4 -- ver | lost2. So4 | plain a deal -- ing | wo2 -- man.4 |

      }	% end lyrics verse one
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            r4 g fs g a | bf2. g4 | c2. g,4 |
            c,2( g,4) r | bf fs g a | bf2. g4 | c2 f4 g |
            f2( bf4) | r | fs,2 d4 c | bf,2. g,4 | a,2 f, | bf,2. fs,4 |
            ef4. d8 c4 bf, | a, c bf, ef | fs,2 d2 | g,2. | \fine
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
