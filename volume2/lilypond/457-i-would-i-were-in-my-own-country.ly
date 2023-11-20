\version "2.22.2"
\language "english"

global = {
  \time 4/4
  \key  bf \major
}

mBreak = { \break }
lalign = { \once \override  LyricText.self-alignment-X = #LEFT }
dynamicsX =
#(define-music-function (offset)(number?)
   #{
     \once \override DynamicText.X-offset = $offset
     \once \override DynamicLineSpanner.Y-offset = #0
   #})
hyphen = { \once \override LyricHyphen.minimum-distance = #1.0 }

\header {
  %	title = \markup {\medium \caps "Title."}
  %	poet = ""
  %	composer = ""

  meter = \markup {\italic ""}
  %	arranger = ""
}
\score {

  \new ChoirStaff {
    <<
      \new Staff = "up"  {
        <<
          \global
          \new 	Voice = "one" 	\fixed c' {
            \oneVoice
            \partial 4 d4 | g g8 a bf4 a8 g | a4 8 bf c'4 bf8_( a) | g4 8 a bf4 a8 g | \mBreak
            fs4 d'8. cs'16 d'4 d'8( ef') | <f! f'!>4 d'8 c' bf4 a8 bf | <a c'>4 a8 g f4 <ef! g>8( a) | \mBreak
            <d g bf>4 a8 g <d fs>8 g <c a>4 | <bf, g>4 d'8. cs'16 d'4 8 ef' | <af f'>4\> d'8 c'\! <g bf>4 a!8 bf | \mBreak 
            <ef f c'>8\> bf a\! g <d f>4 <cs g(>8 a) | <d g bf>4 a8 g <d fs> g <c! fs a>4 | \partial 2. <bf, g>4 g8.( fs16) <bf, d g>4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceOne
            s4 | s1*11 | s4 <c ef>
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
      A4 | North- Count8 -- ry lass4 Up8 to | Lon4 -- don8 did pass,4 Al -- though4 with8 her na4 -- ture8 it |
      did4 not8. a16 -- gree,4 Which | made4 her8 re -- pent,4 And8 so of4 -- ten8 la -- ment,4 Still |
      wish4 -- ing8 a -- gain in the4 | North for8 to be.4 O8 the | oak,4 and8 the ash,4 and8 the |
      bon8 -- ny i -- vy tree4 Do4 | flou4 -- rish8 at home in my4 | own coun -- try. | 
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \oneVoice
            r4 | <g bf d'>1 | <g c' ef'> | <g bf d'>2 <ef g cs'> | 
            <d a d'>2. r4 | \grace bf,16( d'2) <g e'!> | \stemUp f'4 s2  \oneVoice c4 | 
            d2 d | g2. <g bf>4 | <d bf>2( <ef bf>4) r | 
            a,!2( bf,4) ef | d2 d | g4 c g, | \fine
          } % end voice three 

          \new 	Voice {
            \voiceFour
            s4 | s1*5 | f2. s4 | 
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