\version "2.22.0"
\language "english"

global = {
  \time 4/4
  \key g \major
}

sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }
mBreak = { \break }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

%  meter = \markup {\italic ""}
                                %	arranger = ""
}
\score {

  \new ChoirStaff {
	<<
      \new Staff = "up"  {
		<<
          \global
          \new 	Voice = "one" 	\fixed c' {
            %\voiceOne
            \repeat volta 2 { <b, d>4. d8 <b, g>4 <c e> | <a, fs>4. g8 a4 <d fs a> | <d g d'> d' <e g> c' | <d g b>2( <e g e'>) | \mBreak
            <fs d'>4. c'8 <g b>4 a8( b) | <e c'>4 a <d fs> d | <g, d g> d g, c | <g, b, d>2( <g, c e>) } |

          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo

          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        It4. be8 -- fell4 at | Mar4. -- tin8 -- mas,4 When | weath4 -- er4 wax4 -- ed4 | cold,2 2 |
        Cap4. -- tain8 Car4 said | to his men, We | must go take a | hold.1 |

      }	% end lyrics verse one
      \new Lyrics \lyricmode { %verse two%}
        Sick,2 sick,4 and4 | ve4. -- ry8 sick,4 And | sick and like to | die;2 The |
        sick4. -- est8 night4 that | I a bode, Good | Lord, have mercy on | me.1 |
    } % end lyrics verse two
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            s2 s4 c | s2. c4 | b,2 c | g, c, |
            s s | a, s | b, e4 s | g,2 c, |

          } % end voice three
          \new Voice { % voice four
            \voiceFour
            g2 e4 s | d2. s4 | s1*2 |
            d2 e | s d | s c | s1 |

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
