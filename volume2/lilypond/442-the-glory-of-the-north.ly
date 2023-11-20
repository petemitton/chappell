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
            \repeat volta 2 { <e c'>4 4 \stemDown c'8. d'16 <b f'>4 | d'8.[ e'16 c'8. d'16] \stemUp <g b>4^( g) | e8.[ f16 g8. e16] a8.[ g16 f8. e16] | \mBreak
            d8. e16 d8. c16 c2 } | \repeat volta 2 { c'4 g8 e c'4 g8 e | c'4 g8 e d4. 8 | \mBreak 
            e8. f16 g8. e16 a8._( g16) f8. e16 | d8._( e16) d8. c16  c2 } | 
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s2 e4 s | a e s2 | s1 |
            s1*4 | s4 \stemUp b, s2 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        Come,4 Tom, foot8. it16 now,4 | Troth,8. I16 long8. to16 dance,2 | Strike8. up16 then,8. and16 let8. it16 go,8. And16 |
        Jone8. do16 thou8. ad16 -- vance.2 | Hey,4 how8 we ca4 -- per,8 Udz | foot,4 Joe,8 ’tis fine,4. No8 |
        Span8. -- ish16 Don,8. with16 ra4 -- pier,8. Can16 | take4 steps8. like16 mine.2 |
      }	% end lyrics verse one
      \new Lyrics \lyricmode { % verse two
        1*4 Hobb,4 Nell,8 a -- bout4 skip,8 That | they4 who8 us see4. Thus8 |  
        take8. the16 in8. and16 out4 trip,8. May16 | think4 none8. like16 we.2 |
      } % end verse two
      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            c'4 b a g | f a g8. a16 b4 | c' <b c'> <a c'> <d c'> |
            <g b>4 <g, g> <c e>2 | 4 <d f> <e g> <f a> | <g b> <a c'> b g |
            c'4 <b c'> <a c'> <d c'> | <g b> <g, g> <c e>2 |
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