\version "2.22.2"
\language "english"

global = {
  \time 6/8
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
            %\voiceOne
            \repeat volta 2 { \partial 8 a16 a | a4 8 4 g8 | a4 c'8 e4. | g8 g g g4 e8 | \mBreak
            g4 e8 g4 8 | a4 8 4 g8 | a4 c'8 e4 8 | e8( f) d e4 8 | \partial 8*5 <c a>4.~4 } | 
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | c2.~2. | c2.~
            2. | c2.~2. | 
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        By16 the | bor4 -- der’s8 side4 as8 | I4 did8 pass,4. | All8 in the time4 of8 |
        Lenton4 it8 was,4 I8 | heard4 a8 Scotch4 -- man8 | and4 his8 lass4 Were8 | talk4 -- ing8 love4 and8 | 4 lee.4 8 |
      }	% end lyrics verse one
      \new Lyrics \lyricmode { % verse two
        He8 | court4 -- ed8 her4 in8 Scot4 -- tish8 words,4 Like8 | lan8 -- guage4 as the8 |
        land4 aff8 -- ords,4 Wilt8 | thou4 not8 leave4 these8 | lairds4 and8 lords4 My8 | Joe,4 and8 ‘gang’4 with8 | 4 me.4 8 |
      } % end lyrics verse two
      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r8 | f4.->~4 e8 | f4 a8 c4. | e4.->~4 c8 |
            e4 c8 e4. | f4.->~4 e8 | f4 a8 c4. | \stemUp a4. <gs b> | \stemDown <a, a>4.~4 |
          } % end voice three

          \new 	Voice {
            \voiceFour
            s8 | s2.*6 | f4. e | s4. s4 |
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