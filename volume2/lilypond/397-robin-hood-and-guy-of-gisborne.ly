\version "2.22.0"
\language "english"

global = {
  \time 4/4
  \key ef \major
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
            \partial 4 <ef g c'> | ef'4. 8 d'8_([ ef') f'_( d')] | <g ef'>4 bf4 4 c' | bf af g <d f> | \mBreak
            ef2. s4 | \stemDown ef'4. \stemUp ef'8 d' ef' f' d' | <g ef'>4 bf bf c' | bf af g <d f> | \mBreak
            \partial 2. ef2. \bar "||" | \partial 4 <ef g c'>4 | ef'4. 8 <af d'>4 <g b!> | c'8_( ef') d'_( c')  <g b!>4 <b,! g> | <c af> <g c'> c' b! | \mBreak
            <ef c'>2. <ef af c'>4 | ef'4. 8 d'_( ef')  f'_( d') | <g ef'>4 bf <ef bf> c' | bf af g <d f> | \partial 2. ef2. | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4 | \stemUp <ef bf>4 s \stemDown af2 | s2. ef4~ | 4 ef2 s4 |
            s2. <ef af c'>4 | <ef bf> s af2 | s2. ef4~ | 4 2 s4 |
            s2. | s4 | \stemUp <ef g>4 s2. | \stemDown g4 f s2 | s2 f |
            s1 | \stemUp <ef bf>4 s4 \stemDown af2 | s2. ef4~ | 4 2 s4 | s2. |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        When4 | shaws4. are8 sheen,4 and | shrubs full fair, And | leaves both large and |
        long,2. It’s4 | mer4. -- ry8 walk -- ing in the | fair4 fo -- rest To | hear the small birds’ |
        song.2. | The4 | wood4. -- weele8 sang,4 and | would not cease, Sit -- ting up -- on the |
        spray,2. So4 | loud4. he8 wa4 -- ken’d | Ro -- bin Hood In8 the | Green4 -- wood where he | lay.2. |
      }	% end lyrics verse one
      \new Lyrics \lyricmode { % verse two
        4 | [woods4. are8 bright,]4
      } % end lyrics verse two

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            c'4 | g2 f | ef2. af4 | g c' bf <bf, af> |
            <ef g>4 c' bf af | g2 f | ef2. af4 | g c' bf <bf, af> |
            <ef g>2. | <c g>4 | <c g c'>2 f4 g | af2 g4 4 | f ef d g |
            c4 c' bf af | af g f bf, | c g, g, af | g c' bf <bf, af> | <ef g>2. | \fine
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