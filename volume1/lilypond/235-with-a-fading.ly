\version "2.22.0"
\language "english"

global = {
  \time 6/8
  \key f \major
}

sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }
mBreak = { \break }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

%  meter = \markup {\italic "Trippingly and in moderate time."}
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
            \partial 8 c8 | <a, f>4 c8 <c f>4 g8 | a8.( bf16) a8 <e g>4 e8 | <c f>4 f8 s4. | \mBreak
           d'8.( e'8) f'16 s4. | <f f'>8 e' d' <f c> bf a | <e g> a bf <f a>4 <f a>8 | <f a>4.->~<f a>8 g f | \mBreak
            <e g>4.-> c4-> c8 | <a, f>8 g a <c a> g f | \partial 8*5 <f a> c' r8 r4 \fine|


          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | s2. | f4 s8 s4. | s4. <a c'>4 c'8  |
            bf4 s8 <g e'>4 e'8 | s2.*3 |

          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        The8 | cour4 -- tiers8 scorn4 us8 | coun4 -- try8 clowns;4 We8 | coun4 -- try8 clowns4 do8 |
        scorn4 the8 court,4 For8 | we8 are as mer -- ry up -- on4 the8 downs4 As8 | you2 are8 at |
        mid4. -- night4 with8 | all8 your4 sport.8 \markup {\italic With} 8 \markup {\italic a} 8 \markup {\italic fad} 8  -- \markup {\italic ing.} 8

      }	% end lyrics verse one
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            r8 | f,4. a, | f, c | a, f, |
            bf,4. c | d a, | c f, | f,8 a, c f4 r8 |
            c8 e g c'4 r8 | f,4. f | f,4 r8 r4 | \fine

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
