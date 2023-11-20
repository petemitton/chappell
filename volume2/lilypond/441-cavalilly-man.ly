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
            \voiceOne
            \partial 8 \stemDown c'8 \stemUp | <e c'>4 c'8 <d gs b>4 <c a>8 | a8._( b16) c'8 <c e>4 e8 | e8._( f16) g8 <d g>4 g8 | c'8._( d'16) c'8 b8._( a16) g8 | \mBreak
            <c c'>4 c'8 <d gs b>4 <c a>8 | a8._( b16) <c c'>8 <a, e>4 <gs, d e>8 | f8._( e16) <a, d>8 <a, c e>4 e8 | \partial 8*5 e8._( <a, f>16) <b, gs>8 <c a>4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            %
            \voiceTwo
            s8 | s2. | \stemUp c4 s8 s4. | c4 s8 s4. | c4 s8 d4 s8 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        As8 | from4 New8 -- cast4 -- le8 | I4 did8 pass,4 I8 | heard4 a8 blithe4 and8 | bon4 -- ny8 lass4 That8 |
        in4 the8 Scot4 -- tish8 | ar4 -- my8 was,4 Say,8 | “Prithee4 let8 me4 gang8 | with4 thee,8 man.”4 |
      }	% end lyrics verse one
      \new Lyrics \lyricmode { % verse two
        Un8 -- to4 a8 jol4 -- ly8 | Caval4 -- ier8 blade,4 As8 | I4 sup8 -- pose,4 her8 | moan4 she8 made,4 For8 |
        ev4 -- er8 -- more4 these8 | words4 she8 said,4 “I’ll8 | fol8. -- low16 my8 Cav4 -- a8 -- lil4 -- ly8 Man.”4 |
      } % end lyrics verse two

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r8 | a4. e4 f8 | f4 <a, f>8 <c g>4. | 4. <b, g> | <a, fs>4. <g, g>4 r8 |
            a4. e4 f8 | 4 <a, f>8 c4 b,8 | a,4 f,8 e,4. | e a,4 | \fine     
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