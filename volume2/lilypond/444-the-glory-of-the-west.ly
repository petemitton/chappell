\version "2.22.2"
\language "english"

global = {
  \time 2/4
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
            \repeat volta 2 { <d bf>16 a bf a g8 g | <f a>16 g a g f8 f | <d bf> a16 bf <g c'>8 bf16 c' | <fs a d'> c' bf a g8 g } | \mBreak
            <f d'>16 c' d' c' bf8 f' | <f d'>16 c' d' c' bf8 bf | <bf f'>8 f'16. g'32 <a c'>8 c' | <bf f'>8 f'16. g'32 <a c'>8 c' | <c' g'> g'16. a'32 <bf f'>8 <c' f'>16 ef' | \mBreak   
            d'16 ef' <a c'> d' bf8 bf | <c' f'>8 f'16 ef' d'8 c'16 bf | c' bf a g f8 f | <d bf>8 a16 bf <g c'>8 bf16 c' | <fs d'>16 c' bf a g8 g | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        Shall16 I, moth -- er, shall8 I, |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            <g bf>2-> | <f c'>2-> | <g bf>4 ef | d g8 g |  
            bf2-> | bf2-> | d'4 f' | d' f' | ef'4^\sf d'8 a |  
            bf8 f g r | a4-> bf8 a16 g | f2 | g4 ef | d g8 g | \fine 
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