\version "2.22.0"
\language "english"

global = {
  \time 3/4
  \key f \major
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

%  meter = \markup {\italic "With expression."}
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
            s2. | s4 a bf | <e a> d e | f2 <f d'>4 | \mBreak
            c'4 d' bf | g bf8_( a) g_( f) | <c e>2 <c a>4 | g^( a) <bf, e>4 | <c f>4 d' c' | \mBreak
            bf4 a <f g> | g4.^( a8) <d bf!>4 | a4^( d') <d f> | e^( g8 f) <cs e>^( d) | d2. \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            d'8.^( e'16) f'4  <g cs' e'>4 | <f d'>4 d2 | s2.*2 | f2 4 | d2 4 | s2. | c2 s4 | s4 f2 |
            f2 s4 | \once \stemUp e4 s2 | <d f>2 s4 | d2 s4 | s2. | 
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
 As4 it fell | out on a | long sum -- mer’s | day,2 Two4 |
 lo4 -- vers they | sat on a | hill;2 They4 | sat2 to4 | ge -- ther that |
 long4 sum -- mer’s | day,2 And4 | could2 not4 | talk2 their4 | fill.2. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            s2.*2 | d2 g4 | a2 s4 |
            a,4 bf, d | bf, g, bf, | c2 s4 | s2.*2 |
            s2.*5 | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            d'2 a4 | bf f g | s2 c4 | f,2 bf,4 |
            s2.*2 | s2 f4 | e f g | a bf a |
            d'4 c' b! | c'2 g4 | a2 bf4 | g e <a, g> | <d f>2. |
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