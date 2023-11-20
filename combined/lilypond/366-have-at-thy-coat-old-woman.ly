\version "2.22.0"
\language "english"

global = {
  \time 4/4
  \key f \major
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

%  meter = \markup {\italic "Merrily."}
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
            \partial 4 a8 bf | c'4. d'8 c'4. a8 | bf g4. d'4 a8_( bf) | c'4. d'8 <e c'>4 g | \mBreak
            a8 f4._~ 4 s4 | f'8.( e'16) d'4 c'8.( bf16) a4 | g8.( a16) g4 d' a8_( bf) | c'4. d'8 <e c'>4 g | \partial 2. a8 f4._~ 4 \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4 | f1 | d1 | f2 s2 |
            s2. d'8 e' | f2 f | d1 | f2 s2 | s2. |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        My4 | name4. is8 ho4. -- nest8 | Har8 -- ry,4. 4 And | I4. love8 lit4 -- tle |
        Ma8 -- \lalign ry;8*5 In4 | spite of Cis, or | jeal -- ous Bess, \lalign I'll | have4. my8 own4 va -- ga8 -- \lalign ry.8*5 |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
                                %\voiceThree
            f8 g | a4. bf8 a4. f8 | g1 | <c a>2 <c g> |
            f2. bf8 c' | d'8. c'16 bf4 a8. g16 f4 | bf1 | <c a>2 <c g> | <f, f>2. | \fine
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
