\version "2.22.0"
\language "english"

global = {
  \time 2/4
  \key g \major
}

sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }
mBreak = { \break }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

%  meter = \markup {\italic "Boldly and slow."}
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
            \partial 8 <b, g>8 | g8.[ g16 g8. g16] | g8 c' b8. <e c'>16 | d'8. b16 g8 <cs a>| d4. <b, g>8 | \mBreak
            g8. g16 g8. g16 | g8. g16 <d g>8 <e a> | <d b>8 a16( g) d8 <c fs> | \partial 4. <b, g>4. \fine |

          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | b,4 b, | c4 d | g4 s4 | s2 |
            b,4 b, | c s | s2 | s4. |
          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        When8 | Ar8. -- thur16 first8. in16 | court8 be -- gan,8. And16 | was8. ap16 -- prov8 -- ed | King,4. By8 |
        force8. of16 arms,8. great16 | vic8. -- t’ries16 won,8 And | con -- quest home did | bring.4. |

      }	% end lyrics verse one
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            g8 | g4 <fs g> | <e g> <d g>8. <c g>16 | <b, g>4 <e g>8 <a, g> | <d fs>8 <g b> <fs a> <e g> |
            <e g>4 <d fs> | <c e> <b, g>8 <c g> | <d g>4 <d b>8 <d a> | <g, g>4. | \fine

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
