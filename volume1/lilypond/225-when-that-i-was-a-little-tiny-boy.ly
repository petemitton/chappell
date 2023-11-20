\version "2.22.0"
\language "english"

global = {
  \time 2/4
  \key e \minor
}

sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }
mBreak = { \break }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

%  meter = \markup {\italic "In moderate time."}
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
            <b, g b>8 b16 b16 <b, e g>8 g8 | <c fs a>16 <g b>16 <fs a>16 <e g>16 <ds fs>8 g16 a16 |
            <e b>4 g8. g16 | <c fs a>16( <g b>16) <fs a>16 <e g>16 <ds fs>8 <b, ds>8 | \mBreak
            <b, e>8 <a, ds fs>8 <g, e g>8 <e a>8 | <ds fs b>16( a16) <b, ds g>16( fs) <b, e>8 <a, ds>8 |
            <g, b, e>8 <b, fs>8 <b, e g>8 <a, e a>8 | <ds fs b>16( a16) <b, ds g>16( <a, fs>16) <g, e>8 <b, e g>16 a16 | \mBreak
            <b, e b>4 g8. g16 | <c fs a>16( <g b>16) <fs a>16 <e g>16 <ds fs>8 <b, ds>16 ds16 | <b, e>8[ <a, ds fs> <g, e g> <fs b>] | <e b>16( a) <ds g>( fs) e4 \fine |

          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s2*2 | s4 e4 | s2 |
            s2*4 |
            s4 e4 | s2*3 |

          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        When8 that16 I16 was8 a8 | little8 tiny8 boy,8 With16 a16 | heigh4 ho!8. the16 | wind8 and16 the16 rain,8 A8 |
        fool8 -- ish8 thing8 was8| but8 a8 toy,8 For16 the16 rain8 it8 rain8 -- eth8 | ev’8 -- ry8 day,8 With16 a16 |
        heigh4 ho!8. the16 | wind8 and16 the rain,8 And16 the | rain8 it rain -- eth | ev’ -- ry day.4 |

      }	% end lyrics verse one
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            e,4 s4 | a,4 b,4 | g,4 c,4 | a,4 b,8 a,8 |
            g,8[ fs,8 e,8 c8] | b,8 b,16 a,16 g,8 fs,8 | e,8 d,!8 c,8 c8 | b,8 b,8 e,8 s8 |
            s2*3 | s8 b16 a s4 | \fine

          } % end voice three
          \new Voice { % voice four
            \voiceFour
            s4 e4 | s2*3 |
            s2*3 | s4. e16 fs16 |
            g4 c'4 | a b8 a | g[ fs e d!] | c b, <e g>4 |

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
