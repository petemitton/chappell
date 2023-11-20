\version "2.22.0"
\language "english"

global = {
  \time 6/8
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
            \partial 8 <d f bf>8 | 4 g8 <ef a>4 <f bf>8 | <g c'>4 bf8 <c a_(>8 g f) | <f bf>4. <bf, g>4 ef8 | <bf, f_(>8 g) <ef a> <d bf>4 <d f bf>8 | \mBreak
            <d f bf>4 g8 <ef a>4 <f bf>8 | <g c'>4 bf8 <c a_(>8 g f) | <f bf>4. <bf, g>4 ef8 | \partial 8*5 <bf, f_(>8 [g) <ef a>] <d bf>4 \bar "||" | \partial 8 <f f'>8 | \mBreak
                                                                                                                        ef'4 c'8 d'4 bf8 | <f c'>4 a8 f4 <d bf>8 | <bf, g>4 ef8 <bf, f>4 <af, bf, d>8 | <g, bf, ef>4 f8 <ef g>4 a!8 | \mBreak
            <d bf_(>8 a) g f4 <f d'>8 | <ef c'_(>8 bf) c' <d bf>4  \dynamicsX #-3 bf8^\pp | <d bf_(>8 a) g f4 <f bf d'>8 | \partial 8*5 <ef a c'_(>8 bf) c' <d bf>4 \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | s2.*4 |
            s2.*4 |
            f2. | s2.*3 |
            s2.*3| s8*5 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        Young8 | Pal4 -- mus8 was4 a8 | Fer4 -- ry8 \lalign man,4. | Whom4. Shel4 -- dra8 | \lalign fair4 did8 love,4 At8 |
        Shack4 -- ley,8 where4 her8 | sheep4 did8 \lalign graze,4. | She there4 his8 | thoughts4 did8 prove:4 | But8 |
        he4 un8 -- kind4 -- ly8 | stole4 a8 -- way,4 And8 | left4 his8 love4 at8 | \lalign Shack4 -- \hyphen ley8 --  hay,4 So8 |
        \lalign loud4 at8 Shack4 -- ley8 | \lalign did4 she8 cry,4 The8 | \lalign words4 re8 -- sound4 at8 | \lalign Shack4 -- \hyphen ley8 -- hay.4 |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
                                %\voiceThree
            bf,8 | 4. c4 d8 | ef4. f | d ef4 c8 | d4 f,8 bf,4 8 |
            bf,4. c4 d8 | ef4. f | d ef4 c8 | d4 f,8 bf,4 | d8 |
            c4 a,8 bf,4 g,8 | a,4 r8 r4 d8 | ef4 c8 d4 bf,8 | ef4. <c ef> |
            <g, g>4. <d bf>4 <bf, bf>8 | <f a>4. <bf, bf>4 r8 | g4.^( d4) bf,8 | f4.^( bf,4) | \fine
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
