\version "2.22.0"
\language "english"

global = {
  \time 6/8
  \key g \minor
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

%  meter = \markup {\italic "Rather slowly."}
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
            \partial 8 d8 | g8.^( a16) g8 <a, c fs>4 <bf, d g>8 | <c ef a>4 <d bf>8 <ef c'> bf a | bf8.^( c'16) d'8 d4 <d fs bf>8 | <c fs a>4. <bf, g>4 d8 | \mBreak
            g8.( a16) g8 <c fs>4 <d g>8 | <ef g a>4 <d g bf>8 <c g c'> bf <ef g a> | bf8.( c'16) d'8 d4 <d fs bf>8 | \partial 8*5 <c fs a>4. <bf, g>4 \bar "||" |  \partial 8 \dynamicsX #-2 <g bf d'>8^\f  | \mBreak
            f'8.( ef'16) <f bf d'>8 c'8.( bf16) <f a>8 | <d bf>4 <g c'>8 <fs d'>4 a8 | \dynamicsX #-2 bf8.^\p( c'16) d'8 d4 <d fs bf>8 | <c fs a>4. <bf, g>4 \dynamicsX #-2 <g bf d'>8^\f | \mBreak
            f'8.( ef'16) <f bf d'>8 c'8.( bf16) <f a>8 | <d bf>4 <g c'>8 <fs d'>4 a8 | \dynamicsX #-2 bf8.^\p( c'16) d'8 d4 <d fs bf>8 | \partial 8*5 <c fs a>4. <bf, g>4 \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            \stemUp s8 | <bf, d>4 s2 | s2. | <d g>4 s2 | s2. |
            bf,4 s8 s4. | s2. | <d g>4 s8 s4. | s8*5 | s8 |
            <f c'>4 s8 g4 s8 | s2. | g4 s8 s4. | s2. |
            <f c'>4 s8 g4 s8 | s2. | g4 s8 s4. | s4. s4 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        In8 | an4 -- cient8 times4 when8 | as4 plain8 deal -- ing Was | most4 of8 all4 in8 | fash4. -- ion,4 There8 |
        was4 not8 then4 half8 | so4 much8 steal -- ing, Nor | men4 so8 giv’n4 to8 | pas4. -- sion:4 | But8 |
        \lalign now4 a8 \lalign days,4 truth8 | so4 de8 -- cays,4 And8 | \lalign false4 knaves8 there4 are8 | plen4. -- ty,4 So8 |
        pride4 ex8 -- ceeds4 all8 | o4 -- ther8 deeds,4 And8 | Mock8. -- beg16 -- gar8 Hall4 stands8 emp4. -- ty.4 |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
                                %\voiceThree
            r8 | g,2.~ | g,2.~ | g,4 bf,8 d4._~ | d4 d8 g4 r8 |
            g,4. a,4 bf,8 | c4 d8 ef4 c8 | d4.~ 4 d,8 | g,4 d8 g4 | g8 |
            a4 bf8 ef4 f8 | g4 ef8 d4. | g,4 bf,8 d4 d,8 | g,4.~ 4 g8 |
            a4 bf8 ef4 f8 | g4 ef8 d4. | g,4 bf,8 d4 d,8 | g,4.~ 4 | \fine
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
