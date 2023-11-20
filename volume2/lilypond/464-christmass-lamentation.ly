\version "2.22.2"
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
            <bf, g>4. <d a>8 <g bf> <a c'> <bf d'>4 | <c' ef'> <bf d'>8 <a c'> <bf d'>4 <a c'>8 <g bf> | <a c'>4 f8 f f4 <f g>8 a | \mBreak
            <f bf>8( c') <f bf d'>4 <ef a c'>4. bf8 | <d bf>1 | <bf, g>4. <d a>8 <g bf>8 <a c'> <bf d'>4 | <c' ef'>4 <bf d'>8 <a c'> <bf d'>4 <a c'>8 <g bf> | \mBreak
            <a c'>4 f8 f  f4 <f g>8 a | <f bf>8( c') <f bf d'>4 <ef a c'>4. bf8 | <d bf>1 | \repeat volta 2 { <d d'>4 c'8 bf <d c'>4 bf8 a | \mBreak
            <d bf>4 a8 g <fs a>2 | <fs bf>4 <g bf>8 bf <g c'>4 <g d'> | <g ef'> d'8 c' <bf d'>4 g8 g | \mBreak
            g2. e'!8 fs' | <g g'>2. <bf, g>8 <c a> | <d g bf>4 <ef g bf>8 bf <c fs a>4. g8 | <bf, g>1 | \fine 
            }
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        Christ4. -- mas8 is my name,4 | far have8 I gone,4 Have8 I | gone,4 have8 I gone,4 Have8 I |
        gone,4 with -- out4. re8 -- gard;1 | Where4. -- as8 great men by4 | flocks there8 be flown,4 There8 be | 
        flown,4 there8 be flown,4 There8 be | flown4 to Lon4. -- don8 -- ward.1 | There4 they8 in pomp4 and |
        plea4 sure8 do waste2 | That4 which8 old Christ4 -- mas8 was | wont4 -- fs8 to feast,4 16 Well-a8 16 |
      }	% end lyrics verse one
      \new Lyrics \lyricmode { % verse two
        1 * 10 | 
        Houses4 where mu -- sic8 was |
        wont4 for8 to ring,2 | No4 -- thing8 but bats4 and | owl -- ets8 do sing.4 16 Well-a8 16 | 
        -day!2. 16 well-a8 16 -- day,2. 16 Well-a8 16 -- day,4 where4 should4. I8 | stay?1 |
      } % end lyrics verse two

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            \stemDown <g, g>1-> \stemNeutral | g2-> g-> | f2. ef4 |
            d4 bf, f f, | bf,4. c8 d e! fs4 | g1 | c2 g, |
            f,2. ef4 | d bf f f, | bf, f, d, bf,, | bf-> a8 g a4 g8 fs |
            g4 f!8 ef d2 | d4 ef ef bf, | c bf,8 a, g,2 |
            r4 <c' ef'> <bf d'> <a c'> | <g bf> <c ef g> <g, bf, d g> ef | d c d d, | g,1 |
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