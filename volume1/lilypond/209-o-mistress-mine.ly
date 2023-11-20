\version "2.22.0"
\language "english"

global = {
  \time 3/4
  \key f \major
}

sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }
mBreak = { \break }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

%  meter = \markup {\italic "Moderate time and very smoothly."}
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
            <a, f>4 a8 a8 <c g>4 | <a, f>4 a8 b!8 c'8 c'8 | f8.(g16) a8 a8 <c g>4 | <a, f>4 a8 b!8 c'8 c'8 | \mBreak
            <ef g c>4^\markup {\italic "rall."} <d a d'>8 <d bf d'>8 <d fs d'>4 | <c f! a>4 <c g c'>8 <c a c'>8 <c e c'>4 | <f c'>4^\markup {\italic "a tempo."} <f bf d'>8(<f c'>) <f a f'>4 |
            <e a>4 <d g>8 <c f>8 <bf, e bf>4 | <c f a>4 <c g>8(<a, f>) <c f c'>8 c'8 | \mBreak
            f8. g16 <c f a>8_(<bf, e g>8) f4 | <c f c'>4 <f bf d'>8(<f c'>8) <f a f'>4 | <e a>4 <d g>8 <c f>8 <bf, e bf>4 | <c f a>4 <c g>8(<a, f>8) c'8 c'8 | f8.( g16 <c f a>8) <bf,e g>8 <a, f>4 \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4 f4 s4 | s4 f4 <e g>4 | s4 f4 s4 | s4 f4 <e g>4 |
            s2.*5 |
            d4 s2 | s2.*2 | s2 <c f>4 | d4 s2 |
          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        O4 mist8 -- ress8 mine,4 | where4 are8 you8 roam8 ing?8 | O4 mist8 -- ress8 mine,4 | where4 are8 you8 roam8 -- ing?8 |
        O4 stay8 and8 hear;4 | your4 true8 love’s8 coming,4 | That4 can4 sing4 | both4 high8 and8 low:4 | Trip4 no4 fur8 -- ther,8 |
        pret8. -- ty16 sweet4 -- ing,4 | Jour4 -- neys4 end4 | in4 lo8 -- vers’8 meeting,4 | Ev’4 -- ry4 wise8 man’s8 | 8 son8 doth4 know.4 |
      }	% end lyrics verse one
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            s2. | s2 c8 bf,!8 | a,4 s2 | s2 c4 |
            s2 d4 | s2 c4 | s2.*2 | s2 a,4 |
            bf,4 c4 a8 bf8 | s2.*2 | s2 a,4 | bf,4 c4 f,4 | \fine
          } % end voice three
          \new Voice { % voice four
            \voiceFour
            f2 e4 | d2 s4 | s4 f4 e4 | d2 s4 |
            c'4 fs8 g8 s4 | f!4 e!8 f8 s4 | a4 bf8 a8 d'4 | c'4 bf8 a8 g4 | f4 e8 d8 s4 |
            s2 f8 g8 | a4 bf8 a8 d'4 | c'4 bf8 a8 g4 | f4 e8 d8 s4 | s2. |
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
