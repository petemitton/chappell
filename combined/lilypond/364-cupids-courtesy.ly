\version "2.22.0"
\language "english"

global = {
  \time 3/4
  \key g \minor
}

mBreak = { \break }
lalign = { \once \override  LyricText.self-alignment-X = #LEFT }
dynamicsX =
#(define-music-function (offset)(number?)
  #{
  \once \override DynamicText.X-offset = $offset
  \once \override DynamicLineSpanner.Y-offset = #0
  #})

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

%  meter = \markup {\italic "Smoothly."}
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
            \dynamicsX #-4 <d bf d'>4_\p g <fs a> | <g bf> s2 | s2. | <fs a>2 g4 | <d bf d'> g <fs a> | \mBreak
            <g bf>4 s2 | s2.*4 | \mBreak
            s2.*2 | s4 g <fs a> | \dynamicsX #-2 s^\pp c' <d d'> | <a c'> <bf d'> <ef c'>8 <g bf> | <c fs a>2 <bf, g>4 \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s2. | s4 c' <g d'> | <ef c'> d' <ef c'>8^( <g bf>) | s2.*2 |
            s4 c' <g d'> | <ef c'> d' <ef c'>8^( <g bf>) | <fs a>2 g4 \bar "||" | \dynamicsX #-2 <f! a f'>^\f <f bf f'> <f c' f'> | <f d' f'> <c' ef'>8 <bf d'> <f c'> <d bf> |
            <f c' f'>4 <bf d' f'> <g bf g'> | <a d' fs'> <fs a d'>2 | <bf d'>4 s2 | <g bf>4 f!8 ef s4 | f8 ef d4 s | s2. |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        Through4 the cool | sha -- dy woods | As I was | ran2 -- ging,4 | I heard the |
        pret4 -- ty birds | Notes sweet -- \lalign ly | chan2 -- ging4 | Down by the | mea -- \lalign  dow’s \lalign side |
        There4 runs a | ri -- ver;2 | A4 lit -- tle | boy I spied | With bow \lalign and | qui2 -- ver.4 |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
                                %\voiceThree
            g,2 d4 | g2 bf,4 | c2. | d4^( d, g,) | g,2 d4 |
            g2 bf,4 | c2. | d4^( d, g,) | f, g, a, | bf, bf,,2 |
            a,4 bf, ef, | d, d2 | g,4_( bf, d | g a bf) | f_( bf,) c | d d, g, | \fine
          } % end voice three

          \new 	Voice {
            %\voiceFour
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
