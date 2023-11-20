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

%  meter = \markup {\italic "Gracefully."}
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
            \partial 8 d8\p | <b, g>4 <b, g>8 <b, g>8( <c a>) <d b> | <c a>4 <e g>8 <c e>4. | <b, b>4^\markup { \caps "Chorus." } <d b>8 s4. | s4. g4 d8^\markup { \caps "Solo." } | \mBreak
            <b, d g>4 <b, ds g>8 <b, e g>( a) b | <c e a>4 <b, ds g>8 <g, e>4. | <b, g b>4^\markup {\caps "Chorus."} <fs b>8 s4. | \partial 8*5 s4 b8 g4 \bar "||" | \mBreak
            \partial 8 g8^\markup { \caps "Solo." } b4\f c'8 d'8.( e'16) d'8 | <g c'>4 b8 a4 g8 | fs4 e8 fs4 <b, d g>8 | <c e a> <b, d g> <a, c fs> <c e>4. | \mBreak
            d4.\pp^\markup {\caps "Chorus."} <d g> | fs8.( e16) fs8 e4. | d4 g8 <c g>8 a fs | \partial 8*5 <b, g>4.~ <b, g>4 \fine |

          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | s2.*2 s4. <g c'>8( d' <g e'>)| <g b d'>4 c'8 s4. |
            s2.*2 | s4. <e g c'>8( d' e') | <g b d'>4 s4. |
            s8 | g2. | s | c4.~ c4 s8 | s2. |
            s2. | c4 s8 s4. | s2. | s4. s4 |

          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        As8 | I4 lay8 mus4 -- ing8 | all4 a8 -- lone,4. | Fa4 8 la,4. | la4 la8 la,4 A8 |
        pret4 -- ty8 jest,4 I8 | thought4 up8 -- on,4. | Fa4 8 la,4. | la4 la8 la.4 |
        Then8 | listen4 a8 -- while,4 And8 | I4 will8 tell4 Of16 a16 | Friar4 that8 lov’d4 a8 | bonny4 lass8 well,4. |
        Fa4. la,4. | la4 la8 la,4. | Fa4 la8 lang8 -- tre down | dilly.8*5 |

      }	% end lyrics verse one
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            r8 | g,2.~ | g, | g,4. s4 c8 | s2. |
            g,4 fs,8 e,4. | a,4 b,8 s4. | s4. c4. | s4. s4 |
            s8 | s2.*3 | s4. fs4. |
            <g b>4. s4. | s4. fs4. | g4. s4. | g,4.~ g,4 | \fine
          } % end voice three
          \new Voice { % voice four
            \voiceFour
            s8 | s2.*2 | s4. e4 s8 | g4.~ g4 r8 |
            s2. | s4. e4. | e4 d8 s4. | g4.~ g4 |
            r8 | \grace{g,16^(} g4) a8 b8. c'16 b8 | \grace{g16^(} e'4) d'8 c'4 b8 | \grace{g,16^(} a4) g8 a4 r8 | g,2. |
            g,4. b, | a, c | b, d | s8*5 |

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
