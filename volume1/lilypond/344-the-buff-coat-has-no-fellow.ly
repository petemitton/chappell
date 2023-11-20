\version "2.22.0"
\language "english"

global = {
  \time 6/8
  \key bf \major
}

mBreak = { \break }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

%  meter = \markup {\italic "Boldly."}
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
            \repeat volta 2 { <bf, d bf>4\f b8\rest <bf, d>4 b8\rest | c4 b8\rest <c f a>4 <ef g>16 a | <d bf>4 b8\rest d4 c8 | d8 bf,4 b4.\rest } | \mBreak
            bf8. c'16 bf8 g a bf | s4. a8 g f | s2.*2 | \mBreak
            s2. | s4. a8 g f | bf4 f8 d4 c8 | d8 bf,4 b4.\rest \fine | \mBreak
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s2.*4 |
            s2. | c'8. bf16 c'8 s4. | bf4 bf8 c' d' ef' | d'4.^( f') | \mBreak
            d'8. c'16 d'8 bf c' d' | c'8. bf16 c'8 s4. | s2.*2 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        Drink,4 8 laugh,4 8 | sing,4 8 boys,4 For16 the | sol4 -- dier8 has4 no8 fel8 -- low.4 4. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            <bf,, bf,>4 d8\rest s4. | g4 d8\rest s4. | s4. <d, d>4 <c, c>8 | <bf,, bf,>2. |
            s2.*3 | f'2. |
            s2. | s4. s4 <f, f>8 | s4 <f, f>8 <d, d>4 <c, c>8 | <bf,, bf,>2. | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s4. <g, g>4 d8\rest | <g, ef>4 d8\rest <f, f>4 <f, f>8 | <bf, bf>4 <f, f>8 s4. | s2. |
            <d f bf>4 d8\rest <ef g bf>4 d8\rest | <ef g c'>4 d8\rest <f c'>4 d8\rest | <g bf>4 d8\rest <a c' f'>4 d8\rest | bf4. d' |
            <bf, f bf>4 d8\rest <g bf d'>4 d8\rest | <ef g c'>4 d8\rest <f a c'>4 s8 | <bf, bf>4 s8 s4. | s2. |
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
