\version "2.22.0"
\language "english"

global = {
  \time 2/4
  \key f \major
}

sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }
mBreak = {\break}

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
            \repeat volta 2 { \partial 8 f8 | a8.[ bf16 c'8 c'8] | bf8[ a8 g8] g16 a16 | bf8 bf16 c'16 d'8 d'16 e'16 | f'4. e'16 d'16 | \mBreak
            c'8 a16 bf16 c'4~ | c'8 bf16 a16 bf8 <c e g>8 | \partial 4. <a, f>4. } | \repeat volta 2 { \partial 8 c'8 | c'8 <f c'>8 <f d'>8 <f c'>8 | \mBreak
            bf8[ <f a>8 <f g>8 <e g>8] | <d a d'>4_(<d b>8) g8 | <c g c'>4_(<c a>8) c'8 | s2 | s4 <d bf>8 <c a>8 | \mBreak
            <c g c'>4_(<c a>8) f8 | bf8[ a8 g8] <e g c'>8 | <f c'>16 bf16 a16 g16 f8 s8 | s4 s8 <f bf d'>8 | \mBreak
            s4 g8 <d g bf>8 | a8. a16 g8 g8 | \partial 4. f4. } |

          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | f4. c8 | d16 e16 f8 f8 e8 | d4. bf8 | a4 s4 |
            s4. f16 e16 | d4. s8 | s4.| s8 | s2 |
            d16 e16 s4. | s2*2 | <f c' f'>4(<f d'>8) bf8 | <f bf d'>8 <a c'>8 s4 |
            s2 | d4 e8 s8 | s4 s8 <a c' f'>8 | <bf f'>16 e'16 d'16 c'16 bf8 s8 |
            <g bf d'>16 c'16 bf16 a16 s4 | g8[ f8 f8 e8] | s4. |

          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        It8 was8. a16 16 lover8 16  | and8 his8 lass,8 With16 a16 | hey,8 with16 a16 ho,8 with16 a16 | hey4. non16 ne16 |
        no,8 And16 a16 hey8 "."16 "."16 | "."8 non16 ne16 no8 ni8 | no.4. | That8 | o’er8 the8 green8 corn-8 |
        -field,8 did8 pass,8 In8 | Spring4 time,8 in | Spring4 time,8 in8 | Spring4 time;8 The8 | on8 -- ly8 pret8 -- ty8 |
        ring4 time,8 When8 | birds8 do8 sing,8 Hey8 | ding16 a16 ding16 a16 ding,8 Hey8 | ding16 a16 ding16 a16 ding,8 Hey8 |
        ding16 a16 ding16 a16 ding,8 Sweet8 | lov8 -- ers8 love8 the8 | Spring.4. |

      }	% end lyrics verse one
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            r8 | f8[ d8 a,8 a8] | g8 f8 c'8 c8 | g4. g,8 | d8 c16 bf,16 a,8 r8 |
            r4 r8 a,8 | bf,4. c8 | f4(f,8) | r8 | r8 a8[ bf8 a8] |
            g8[ f8 c'8 c8] | f4(g4) | e4(f4) a,4(bf,!8) d8 | f4. f8 |
            e4(f8) a8 | g4 c'8 c'16 bf16 | a4 r8 f16 e16 | d4 r8 bf,16 a,16 |
            g,4 r8 g8 | c'4 <c bf>4 | <f a>4(f,8) |

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
        \override Beam.auto-knee-gap=#2
      }%end score
    }%end context
  }%end layout

}%end score
