\version "2.22.0"
\language "english"

global = {
  \time 4/4
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
            d8._([ e16) f8. g16] <f a>4 d | <f d'>4 cs'8. d'16 <cs' e'>4 a | \stemDown <a f'>4 e'8. d'16 c'!8. bf16 \stemUp a4 | \mBreak
            g8. a16 f8. g16 e4 c4 | <a, f>4 <bf, d>8 d <a, f>4 c8 c | <a, f>4^( <b,! d>8) d <c e g>4 e | \mBreak
            c'8.[ d'16 c'8. bf16] a8. g16 f4 | g8._([ a16) f8. g16] <cs e>4 d | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s1*2 | s4 a g s |
            s1*3 |
            \stemUp g4 s2. | cs4  d4  s2 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        Lay4 by8. your16 plead4 -- ing, | Love4 lies8. a16 bleed4 -- ing, | Burn4 all8. your16 poe8. -- try,16 And4 |
        throw8. a16 -- way8. your16 read4 -- ing, | Pie4 -- ty8 is paint4 -- ed,8 And | 8 truth8 8 is8 taint4 -- ed, |
        Love8. is16 call’d8. a16 re -- pro8 -- bate,16 And4 | schism now8. is16 saint4 -- ed. |
              }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            d2. f4 | bf2 a | d e4 f | 
            bf,2 c | d4 bf, f, r | d d c r |
            e2 f | e4 d a, d |
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