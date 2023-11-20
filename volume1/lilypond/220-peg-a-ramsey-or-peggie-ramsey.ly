\version "2.22.0"
\language "english"

global = {
  \time 2/4
  \key d \minor
}

sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }
mBreak = { \break }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

%  meter = \markup {\italic "Moderate time"}
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
            <f a c'>8[ d'8 <g c' ef'>8 c'8] | <bf d'>8 bf8 <d bf>8 d'8 | <f c'>8[ f8 <d f>8 <e! g>8] | <f a>4 <d f bf>4 | <f a c'>8[ d'8 <g c' ef'>8 c'8] |
            <bf d'>8 bf8 <d bf>8 d'8 | <f c'>8[ f8 <d f>8 <e! g>8] | <f a>4 <d f bf>4 | <c f a>8[ f8 <c f>8 a8] | <e g>8[ c8 c8 e8] | \mBreak
            <c f>8[ f8 <d f>8 <e g>8] | <f a>4 <d f bf>4 | <c f a>8[ f8 <c f>8 a8] | <e g>8[ c8 c8 e8 ] | <c f>8[ f8 <d f>8 <e g>8] | <f a>4( <d f bf>4) \fine |

          }	% end voice one
          \new Voice  \fixed c' {
            %\voiceTwo

          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        When8 I8 was8 a8 | Bache4 -- lor,8 I8 | liv’d8 a8 mer8 -- ry8 | life,4 But4 | now8 I8 am8 a8 |
        mar8 -- ried8 man,8 And8 | troubled4 with8 a8 | wife,4 I4 | can8 -- not8 do8 as8 | I8 have8 done,8 Be8 -- |
        cause8 I8 live8 in8 | fear,4 If4 | I8 go8 but8 to8 | Isl8 -- ing8 -- ton,8 My8 | wife8 is8 watch8 -- ing8 | there.2 |

      }	% end lyrics verse one
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            f4 c'4 | g4 g4 | a4 <c bf>4 | <f a>4 bf,4 | f4 c'4 |
            g4 g4 | a4 <c bf>4 | <f a>4 bf,4 | f,4 a,4 | c4 bf,4 |
            a,4 <c bf>4 | <f a>4 bf,4 | f,4 a,4 | c4 bf,4 | a,4 <c bf>4 | <f a>4 bf,4 | \fine

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
