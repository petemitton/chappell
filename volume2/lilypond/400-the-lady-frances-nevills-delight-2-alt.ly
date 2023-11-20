\version "2.22.0"
\language "english"

global = {
  \time 4/4
  \key bf \major
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
            %\voiceOne
              \partial 4 a8 bf | <f a c'>4 c' c' <f bf d'> | <f a c'>8 <g bf> <f a> <g bf> <a c'>4 f | <ef g>8 a bf c' a4. g8 | \mBreak
              <bf, g>2. g8 a | <g bf>4 <fs c'> <g d'> <ef c'>8 d' | <d g bf>4 <c fs a>8 bf <bf, g>4 d8 ef | <bf, f>4 <bf, g> <a, c>4. bf,8 | \partial 2. bf,2. | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            \stemUp s4 | s1*2 | s2 <c fs>4 s 
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        Like8 a | no4 -- ble soul, &c. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r4 | f2. bf,4 | f,2. f4 | c2 d |
            g2. r4 | g, a, bf, c | d d ef bf,8 c | d4 ef <f, ef>2 | <bf d>2. | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
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