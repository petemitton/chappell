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
            \partial 8 g8 | <c e g>4 g8 <b, f g>4 g8 | <c g>4 g8 <c e>4 e8 | <c f>4 e8 f4 <c g>8 | \mBreak
            <c a>4.~4 d8 | <b, d>4 d8 <bf, d>4 e8 | <a, f>4 g8 a4 <f b!>8 | <g c'>4 e8 <b, d>4 c8 | \mBreak
            \partial 8*5 c4.~4 \bar "||" | \partial 8 g8 | <c e>4.~4  g8 | <b, d>4.~4 <d a(>16 b) | <g c'>4 c8 e4 c8 | <b, d>8 d4~4 <g b>8 | \mBreak
            <g c'>4 <b d'>8 <c' e'>4 <b d'>8 | <c' f'>4 a8 <e g>4 a16( b) | <g c'>4 e8 <b, d>4 c8 | \partial 8*5 c4.~4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        When8 | Love4 was8 young,4 and8 | men4 were8 strong,4 And8 | maids4 be8 -- liev’d4 them8 |
        8 true,4. 8 A | shep4 -- herd8 came,4 with8 | pret4 -- ty8 song,4 Un8 -- to4 a8 maid,4 to8 |
        8 woo:4. 8 | “O8 | 8 fair,4. 8 O8 | 8 sweet,4. 8  Shall8 | I4 con8 -- sume4 in8 | sor8 -- 8 row?”4 8 “Pluck8 |
        up4 thy8 heart,4 thou8 | gen4 -- tle8 swain,4 And8 | I’ll4 be8 thine4 to8 -- mor4. -- row.”4 |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r8 | c4 r8 d4 r8 | e4 r8 c4 r8 | a4.~4 e8 |  
            f4 e8 f4 r8 | g4 r8 g,4 r8 | d4 r8 r4 d8 | e4 c8 <g, f>4. |
            <c e>4. c,4 | r8 | c4 c,8 c,4 r8 | g4 g,8 g,4 f8 | e4 r8 c4 r8 | g4. f |
            e4 g8 c'4 g8 | a4 f8 c4 r8 | e4 c8 <g, f>4. | <c e>4. c,4 | \fine
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