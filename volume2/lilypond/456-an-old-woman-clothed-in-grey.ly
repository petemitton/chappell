\version "2.22.2"
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
            \oneVoice
            \partial 4. <g bf>4. | <ef a>8 bf g <c fs> e! fs | <bf, g>4. <g bf> | <ef a>8 bf g <c fs> e! fs | \mBreak
            <bf, g>4. <g bf> | <ef a>8 bf g <c fs> e! fs | <bf, g>4. <g bf> | <ef a>8 bf g <c fs> e! fs | \mBreak
            <bf, g>4.~4 a16( bf) | <a c'>8 bf a c' bf a | <a c'>4.~4 bf16 a | <f bf>8 c' d' <a ef'> d' c' | <bf d>4.~4 a16( bf) | \mBreak
            <a c'>8 bf a <g c'> bf a | <fs c'>4. <g bf> | <ef a>8 bf g <c fs> e! fs | \partial 4. <bf, g>4. | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        Down,4. | down8 with po -- li -- ti -- cal | fools,4. Who | make8 of the state such a | 
        pother,4. While | they,8 but a pack of mere | tools,4. Help | states8 -- men to ride one an- | 
        8 -other4. 8 Give8 | me but a bot -- tle and | 8 glass,4. 8 With16 a | fried8 that is hon -- est and | 8 brave;4. 8 Con-
        -tent8 -- ed thro’ life we will | pass4. Till | death8 call us down to the | grave.4. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \oneVoice
            g4. | c d | ef g, | c d |  
            g g, | c d | ef g, | c d |
            g, g | f f, | f ef | d c | bf, bf |
            f ef | d g | c d | g, | \fine
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