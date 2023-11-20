\version "2.22.0"
\language "english"

global = {
  \time 6/8
  \key d \minor
}

mBreak = { \break }
lalign = { \once \override  LyricText.self-alignment-X = #LEFT }
dynamicsX =
#(define-music-function (offset)(number?)
  #{
  \once \override DynamicText.X-offset = $offset
  \once \override DynamicLineSpanner.Y-offset = #0
  #})

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

%  meter = \markup {\italic "Moderate time."}
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
            \partial 8 d8 | d4 e8 <a, d f>4 g8 | <a, d a>4 a8 <d f a>4. | <d g bf>4. <d a>4 a8 | <d g d'>4 d'8 <e a cs'>4 d8 | \mBreak
            d4 e8 <a, d f>4 g8 | <a, d a>4 a8 <d f a>4. | <d g bf>4. <d a>4 a8 | <d g d'>4 d'8 <e a cs'>4 a8 | \mBreak
            <e a c'! e'>4 c'8 <f a f'>4 d'8 | <e a e'>8 c'4 a4^( <e b!>8) | <c e c'>8^( a4) <b,! d gs>4 <a, e a>8 | a8 gs4 <c e a>4 a8 | \mBreak
            <d f>4 g8 a8.( bf16) a8 | <d bf>8 a4 <d g>4. | <d a>4 d'8 <g cs'>4 <f a d'>8 | \partial 8*5 e'8 cs'4 <f a d'>4 \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | s2.*4 |
            s2.*4 |
            s2.*3 | <b,! e>4. s4. |
            s4. \stemUp d4 s8 | s2.*2 | \stemDown <e a>4. s4 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        Sweet,8 | youth4 -- ful,8 charm4 -- ing8 | la4 -- dies8 fair4. | Fram’d4. of4 the8 | pu4 -- rest8 mould,4 With8 |
        ro4 -- sy8 cheeks4 and8 | silk4 -- en8 hair,4. | Which4. shine4 like8 | threads4 of8 gold;4 Soft8 |
        tears4 of8 pi4 -- ty8 | here8 be4 -- \lalign stow,4. | \lalign On4. the4 un8 -- hap8 -- py4 fate4 Of8 |
        Ro4 -- sa8 -- \lalign mond,4 who8 | long a4 -- go,4. | Prov4 -- ed8 most4 un8 -- for -- tu4 -- nate.4 |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
                                %\voiceThree
            <d, d>8 | <d, d>4 r8 d4. | f d | g f | bf a4 <d, d>8 |
            <d, d>4 r8 d4. | f d | g f | bf a |
            a,4. d | c~ 4 gs,8 | a,4. b,!4 c8 | e,4. a, |
            bf!4. f | g e | f e4 d8 | a,4. d4 | \fine
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
