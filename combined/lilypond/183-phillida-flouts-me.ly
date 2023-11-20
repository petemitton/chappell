\version "2.22.0"
\language "english"

global = {
  \time 3/8
  \key bf \major
}

sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }
mBreak = { \break }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

  % meter = \markup {\italic "Slowly and gracefully."}
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
\repeat volta 2 { <bf, d>16_( <c ef>16) <d f>8 <d f>8 | <ef g>8 <d f>8 <d bf>8 | <bf, d>16_( ef16) <bf, f>8 <d f>8 | <a, f>4 <bf, d>8 } | \repeat volta 2 { bf8 c'8 d'8 | \mBreak
            d'8. c'16 bf8 | bf8 c'8 bf8 | s4. } | <d d'>8 <ef c'>8 <f bf>8 | <f a>8. <ef g>16 <d f>8 | <bf, d>16 ef16 <bf, f>8 <d f>8 | \mBreak
            s4. | <d d'>8 <ef c'>8 <f bf>8 | <f a>8. <ef g>16 <d f>8 | <bf, d>16_( ef16) <bf, f>8 <d f>8 | <a, f>4 <bf, d>8 \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
s4.*4 | g4. |
            fs4 g8 | e!4. | <f a f'>4_( <f bf d'>8) | s4. | bf,4 s8 | s4. |
            <ef ef'>8 <f c'>8 <f d'>8 | s4. | bf,4 s8 | s4.*2 |
          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
O8 what8 a8 | plague8 is8 love!8 | I8 can8 -- not8 | bear4 it;8 | It8 so8 tor8 -- |
-- ments8 my8 mind,8 | That8 my8 heart8 | fail4 -- eth.8 | Please8 her8 the8 | best8. I16 may,8 | She8 loves8 still8
to8 gain8 -- say,8 | A-8lack,8 and8 | well8. a16 -- day!8 | Phil8 -- li8 -- da8 | flouts4 me.8 |
      }	% end lyrics verse one

      \new Lyrics \lyricmode { % verse two
        She8 will8 in8 | constant4 prove8 | I8 great8 -- ly8 | fear4 it:8 | She8 wa8 -- vers8 |
with8 the8 wind8 | As8 a8 ship8 sail4 -- eth.8
      }
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
bf,4. | bf,4. | bf,16 c16 d8 bf,8 | f,4 bf,8 | <g d'>4. |
<d a d'>4 <g bf d'>8 | <g bf>4. | <f c'>4 <bf d'>8 | <bf, bf>8 <c a>8 <d bf>8 | ef16 f16 g16 a16 bf8 | bf,16 c16 d8 bf,8 |
g,8 a,8 bf,8 | <bf, bf>8 <c a>8 <d bf>8 | ef16 f16 g16 a16 bf8 | bf,16 c16 d8 bf,8 | f,4( bf,8) \fine
} % end voice three
          \new Voice { % voice four

          } % end voice four
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
