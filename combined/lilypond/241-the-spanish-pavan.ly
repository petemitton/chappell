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
            \partial 4 d4 | g bf a g | <a, fs> d d e! | fs g a fs | \mBreak
            g4. a8 <g bf>4 <f a>4 | <e! g> <c e> <c f> <bf, e g> | <a, f a> f2 s4 | c'4. s4. <e bf>4 | \partial 2. a4.( g8) f4 \bar "||" | \mBreak
            \partial 4 s4 | d' c' bf a | bf4. c'8 d'4 c'8 bf8 | c'4 bf a g | <a, fs> d d e! | \mBreak
            fs4 g a fs | g a bf c' | d' c'8( bf) <fs a>( <e! g>) <fs a>4 | \partial 2. g2. \fine|

          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4 | bf,2 ef | s1 | a,2 c |
            bf,2 s2 | s1 | s2. c'4 | <e! g>4 s8 d' c'4 s | f4 s2 |
            <f c'>4 | f2 f | d g | g ef | s1 |
            a,2 c | bf, g | g s | s2. |

          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        When4 | Sam -- son was a | tall young man, His | pow’r and strength in4 -- |
        creas4. -- ed8 then,4 And | in the host and | tribe8 of8 Dan,2 The4 | Lord4. did8 bless4 him | al2  way.4 |
        It4 | chan -- ced so up -- on4. a8 day,4 16 As8. | he4 was walk -- ing | on his way, He |
        saw4 a maid -- en | fresh and gay, In | Tim -- nath,4 16 in8. Tim4 -- 4 nath.2 |

      }	% end lyrics verse one
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            s4 | s2 c2 | d1 | s1 |
            s2 g, | c4 bf, a, g, | f,2 a, | s2. c'4 | c'4. bf8 a4 |
            a,4 | bf,2 s | s bf, | s c | d1 |
            s1*3 | s2. | \fine
          } % end voice three
          \new Voice { % voice four
            \voiceFour
            r4 | g2 s | s1 | d2 d2 |
            g2 s | s1*2 | c1 | f2. |
            s4 | s2 d | g s | ef s | s1 |
            d2 d | g ef | <d bf> <d c'> | <g bf>2. |
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
