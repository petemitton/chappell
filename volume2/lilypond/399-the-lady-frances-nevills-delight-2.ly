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
              bf,2. bf8 c' | <g bf d'>4 <fs a d'> <g d'> c'8 d' | <g ef'>8 d' c' bf <g c'>4 <d f> | <ef g>8 a bf c' <d bf d'>4 <ef a c'> | \mBreak
              \partial 2. <d bf>2. \bar "||" | \partial 4 a8 bf | <f a c'>4 c' c' <f bf d'> | <ef a c'>8 <g bf> <f a> <g bf> <a c'>4 a8 bf | <f c'>8 d' c' <g bf> <f a>4 <bf, e! g> | \mBreak
              <a, f>2. <ef g>8 a | <d bf>4 a8 bf d4 ef8 f | g4 g c d8 ef | \mBreak
              <bf, f>8 g f <c ef> <bf, d>4 <a, c> | bf,2. <ef g>8^\markup{\smallCaps "Chorus."} a | <d bf>4 a8 bf <bf, d>4 ef8 f | \mBreak
              <bf, ef g>4 g <a, c> d8 ef | <bf f>8 g f <c ef> <bf, d>4 <a, c> | \partial 2. bf,2. | \fine
          }	% end voice one 
          \new Voice  \fixed c' {
            %\voiceTwo
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        name,2. Tho’8 with | shaft4 and bow, He8 de -- par -- ted long a -- go,4 Un -- per8 -- ish -- ing shall be4 his | 
        fame.2. | Like8 a | no4 -- ble soul He | doa8 -- ted on the bowl,4 And8 a | gob8 -- let of the best4 love | 
        we;2. So,8 though | bold4 Ro8 -- bin’s gone,4 Still8 his | heart4 lives on, And8 we |
        drink8 to him with three4 times | three.2. So,8 though | bold4 Ro8 -- bin’s gone,4 Still8 his | 
        heart4 lives on, And8 we | drink to him with three4 times | three.2. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            bf,2. r4 | <g, g> <d a> <g bf> r | <ef bf>2 <a, f>4 bf, | ef d8 c f4 f, |
            bf,2. | r4 | f2. bf,4 | f,2. f8 g | a4. bf8 c'4 c |
            f8 g f ef! d4 c | bf,4 r <g bf> r | <ef bf>4 r <f a> bf,8 c | 
            d4. ef8 f4 f, | g,8 g f ef d4 <c, c>4^\f | <bf,, bf,> r <g, g> r | 
            <ef, ef>4 r <f, f> <bf,, bf,>8 <c, c> | <d, d>4. <ef, ef>8 <f, f>4 <f, ef> | <bf, d>2. | \fine
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