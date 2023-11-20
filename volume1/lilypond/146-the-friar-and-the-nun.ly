\version "2.22.0"
\language "english"

global = {
  \time 2/4
  \key bf \major
}

mBreak = { }

\header {
  %	title = \markup {\medium \caps "Title."}
  %	poet = ""
  %	composer = ""

  % meter = \markup {\italic "Quick."}
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
            \partial 8 g16 a16 | bf8 bf8 bf8 bf8 | bf4. bf8 | <f a c'>8 c'8 a8 bf8 | c'4. ef'8 | <f bf d'>8 bf8 bf8 bf8 | \mBreak
            bf4. bf8 | <c a>8 f8 f8 g8 | af4. af8 | <bf, ef g>8 ef8 ef8 f8 | g8 af8 bf8 bf8 | \mBreak
            <d f>8 f8 d8 ef8 | f4. af8 | <bf, g>8 ef8 ef8 f8 | g8 a!8 bf8 bf8 | a8 bf8 <a c'>8. bf16 | \partial 4. bf4. \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            ef8 | d2 | f4 d4 | s2 | <f a>2 | s2 |
            <bf, f>4 <c e!>4 | s2 | <c f>4 <bf, d>4 | s2 | ef2 |
            s2 | d4 bf,4 | s2 | ef4 d4 | ef4 ef4 | d4. |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {
        % verse one
        All8 in8 a8 mis8 -- ty8 morn4. -- ing,8 Cloudy4 was8 the8 weather,4. I8 meeting4 with8 an8
        old4. man8 Clothed4 all8 in8 leather,4. With8 ne’er8 a8 shirt8 up8 -- on8 his8 back,8 But8
        wool8 un8 -- to8 his8 skin.4. With8 how8 d’ye8 do,8 and8 how d’ye8 do,8 and8 how8 d’ye8 do8. a16 -- gain.4.
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            ef8 | bf,2 | d4 bf,4 | f2 | f4 f,4 | bf,2 |
            d4 c4 | f2 | f,4 bf,4 | ef,2 | ef4 g4 |
            bf2 | bf,4 d4 | ef2 | c4 g4 | f4 f4 | bf4. |
            \fine
          } % end voice three
        >>
      } % end staff down
    >>
  } % end choir staff

  \layout{
    \context{
      \Score {
        \omit  BarNumber
        %\override LyricText.self-alignment-X = #LEFT
        \override Staff.Rest.voiced-position=0
      }%end score
    }%end context
  }%end layout

}%end score