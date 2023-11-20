\version "2.22.0"
\language "english"

global = {
  \time 3/4
  \key f \major
}

mBreak = { \break }
lalign = { \once \override  LyricText.self-alignment-X = #LEFT }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

%  meter = \markup {\italic "Moderate time, and Smoothly."}
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
            \repeat volta 2 { \partial 4 s4 | <e c'>4 s2 | <f f'>4_( c') <e c'> | <f a>4^( f) f | f2 c4 | <c f>8 e f g <f a> bf | <c c'>4_( g) <b,! g> | <c e>^( c) c | \mBreak
            c2. } | g4. a8 g f | e4_( c) c | a4. bf8 a g | f4_( d) d | bf4. c'8 bf a | g4^( <e c'>) <g bf> | <f a>4^( f) f | \partial 2 f2 \fine | \mBreak
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            c'4 | s4 c'8 d' <g e'> c' | s2.*6 |
            s2. | \stemUp d4 s2 | s2. | e4 s2 | s2. | f4 s2 | s2.*2 | s2 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one

      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            s4 | s2.*2 | s4 a a | a2 s4 | s2.*2 | s4 e e |
            e2. | s2.*6 | c'4 a a | a2 | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            d4\rest | c'2 bf4 | a2 c'4 | f2 f4 | f2 d4\rest | a2 f4 | e2 g4 | c2 c4 |
            c2. | <b,! g>^( | <c g>2) d4\rest | <cs a>2.^( | <d a>2) d4\rest | <d bf>2. | <e c'>4 <c c'>2 | f2 f4 | f2 |
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
