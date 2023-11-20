\version "2.22.0"
\language "english"

global = {
  \time 6/8
  \key f \major
}

mBreak = { \break }

\header {
  %	title = \markup {\medium \caps "Title."}
  %	poet = ""
  %	composer = ""

  % meter = \markup {\italic "Rather slow and gracefully."}
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
            <a, f>8 <f a>8 <f bf>8 <f c'>8 c'8 <f d'>8 | <c c'>8 g8 <e bf>8 a8. g16 f8 | <a, f>8 <f a>8 <f bf>8 c'8. bf16 <f a>8 | \mBreak
            <d g>8 f8 <g, e>8 <a, f>4 f8 | <a, f>8 <f a>8 <f bf>8 <f c'>8 c'8 <f d'>8 | <c c'>8 g8 <e bf>8 a8. g16 f8 | \mBreak
            <a, f>8 <f a>8 <f bf>8 c'8. bf16 <f a>8 | <d g>8 f8 <g, e>8 f4. \bar "||" | a8.\f g16 f8 a8 a8 <c g c'>8 | a8. g16 <c f>8 <c e g>4 c8 | \mBreak
            a8.\p g16 <d f>8 c'8. bf16 <f a>8 | <d g>8 f8 <g, e>8 <a, f>4. \bar ".." | a8.\f^\markup{\italic "Chorus."} g16 f8 a8 a8 <c g c'>8 | \mBreak
            a8. g16 f8 <c e g>4 c8 | a8.\pp g16 <d f>8 cs'8. bf16 <cs f a>8 | <d g>8 f8 <g, e>8 <a, f>4. \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s2. | s4. f4 s8 | s4. f4 s8 |
            s2.*2 | s4. f4 s8 |
            s4. f4 s8 | s4. a,4 s8 | <d f>4 s8 s4. | <c f>4 s8 s4. |
            <c f>4 s8 <c f>4 s8 | s2. | <d f>4 s8 s4. |
            <c f>4 s8 s4. | e4 s8 <cs g>4 s8 | s2. |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {
        % verse one
        Hen8 -- ry,8 our8 royal4 King,8 | would8 ride8 a8 hunt4 -- ing,8 | To8 the8 green8 fo8. -- rest16 so8 |
        plea8 -- sant8 and8 fair,4 To8 | see8 the8 harts8 skip8 -- ping,8 and8 | dain8 -- ty8 does8 trip8. -- ping16 Un8 |
        -to8 mer8 -- ry8 Sherwood4 his8 | no8 -- bles8 re8 -- pair.4. | Hawk8. and16 hound8 were8 16unbound,8 16 all8. things16 pre8 -- pa4 -- red8 |
        For8. the16 game,8 in8. the16 same,8 | with8 good8 re8 -- gard.4. | Hawk8. and16 hound8 were8 un8 -- bound,8 |
        all8. things16 pre8 -- pa4 -- red8 | For8. the16 game,8 in8. the16 same,8 | with8 good8 re8 -- gard.4. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            s4. a,4 bf,8 | e,4 g,8 f,4. | s4. a,4 s8 |
            bf,4 c8 f,8 a,8 c8 | s4. a,4 bf,8 | e,4 g,8 f,4. |
            s4. a,4 s8 | bf,4 c8 f,8 f8 e8 | d4.~ d4 e8 | s4 a,8 c4. |
            s4. a,4 s8 | bf,4 c8 f,8 f8 e8 | d4.~ d4 e8 |
            s4 a,8 c4. | cs4 s8 s4. | bf,4 c8 f,4. | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            f8 e8 d8 s4. | s2. | f8 e8 d8 s4 f8 |
            s2. | f8 e8 d8 s4. | s2. |
            f8 e8 d8 s4 f8 | s2.*2 | f4 s8 s4. |
            f8 e8 d8 s4 f8 | s2.*2 |
            f4 s8 s4. | s4 d8 e4 f8 |
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
        \override Staff.Rest.voiced-position=0
      }%end score
    }%end context
  }%end layout

}%end score