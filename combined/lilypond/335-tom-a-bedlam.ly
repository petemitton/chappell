\version "2.22.0"
\language "english"

global = {
  \time 4/4
  \key c \major
}

mBreak = { \break }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

%  meter = \markup {\italic "Pompously."}
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
            \repeat volta 2 { \partial 4 a8_\p a | c'4. b8 a4 <e g> | <b, gs> e b\rest e | g!4. f8 e4 <b, d> | <c e> c b\rest c^\cresc | \mBreak
                              g4 e a <c g> | s2 \stemDown e'4.^\f s8 \stemUp | b4^\p a a gs | <c a> <c e a> b2\rest | } \mBreak
            <c e g>4^\mf g8 g g4 a8 b | <c a c'>4 <e g>8 b <g c'>4 c | <e g>4^\p g8_( f) e4 <b, d> | <c e> c b2\rest |
            <e e'>2 <gs d'>4 <e b> | <c a> c' <f b>8 a g f | e4 a a gs | \partial 2. <c e a> <c e a> b\rest \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            \stemUp s4 | e4 s2. | s1 | e4 s2. | s1 |
            \stemDown s1 | <e c'>4 <g b d'> <g c'> s8 d'16^( c') | f2 b, | s1 |
            s1*4 |
            s1*2 | s2 <b, e> | s2. | 
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        Am8 I | mad,4. O8 no4 -- ble | Fest -- us,4 4 When | zeal4. and8 god4 -- ly | know -- ledge4 4 Have |
        put4 me8 in hope4 To | deal with8 the8 Pope4. As8 | well4 as8 the best4 in | Col -- lege?4 2 |
        Bold4 -- ly8 I preach,4 hate8 a | cross,4 hate8 a sur4 -- plice, | Mi4 -- tres, copes and | roch -- ets.4 2 |
        Come,2 hear4 me | pray nine times8 a day, And | fill4 your heads with | crotch4 -- ets.4 4 |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            d4\rest | a,2. d4 | e2 d\rest | c2. g,4 | c,2 d\rest |
            d4\rest c f e | a g c'2 | d e | a,4 a, d2\rest |
            c1 | f,4 f e2 | c2. g,4 | c,2 d\rest |
            c2 b,4 gs, | a,2 d2 | c4 a, e2 | a,4 a, d\rest | \fine
          } % end voice three

          \new 	Voice {
            
          }	% end voice four

        >>
      } % end staff down
    >>
  } % end choir staff

  \layout{
    \context{
      \Score {
        \omit  BarNumber
                                %\override LyricText.self-alignment-X = #LEFT
      }%end score
    }%end context
  }%end layout

  \midi{}

}%end score