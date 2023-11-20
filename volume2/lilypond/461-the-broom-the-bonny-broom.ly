\version "2.22.2"
\language "english"

global = {
  \time 4/4
  \key c \major
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
            \voiceOne
            g4. a8 d4. a8 | g f e d c2 | c'4 8_( d') e'_( d') c'_( b) | a2. b4 | \mBreak 
            \oneVoice c'4. d'8 e'4 d'8 e' | c'4 c8_( d) e4 d8_( c) | d4 d a4. f8 | d1 | \fine
          }	% end voice one 
          \new Voice  \fixed c' {
            \voiceTwo
            d1 | e2 s | e gs | s1 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        O4. the8 broom,4.  the8 | bon8 -- ny, bon -- ny broom,4 The4 | broom4 of Cow -- don | Knowes2. Fain4 |
        would4. I8 be4 in8 the | North4 Coun -- try, To | milk my Dad4. -- dy’s8 | ewes.1 | 
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \oneVoice
            b,1 | c2. b,4 | a,2 e, | a, a,,4 <g d'> 
            <c' e'>2 <a c'> | <e g>4 <f a> <c g>2 | <f a>2. <d a>4 | <g b>1 | \fine
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