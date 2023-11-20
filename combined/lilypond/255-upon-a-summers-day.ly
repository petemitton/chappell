\version "2.22.0"
\language "english"

global = {
  \time 6/8
  \key c \major
}

sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }
mBreak = { \break }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

%  meter = \markup {\italic "Slowly and smoothly."}
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
            \partial 8 g8 | <c g>4 g8 e4 c8 | g4.( g8) a b | c'4 b8^\< c'4 d'8 | s4.\>s4 e8\! | <c e>4\pp e8 d4 c8 | \mBreak
            <d e b>4. <c e c'> | <d a d'>4 <c e>8 <b, d>4 c8 | \partial 8*5 c4.~c4 \bar "||" | \partial 8 s8 | <d b d'>4 d'8 b4 g8 | d'4.~d'4 b8 | \mBreak
            c'4^\< b8 c'4 d'8\! | s4._\f^\> s4 s8\! | <c e>4\pp e8 d4 c8 | <d e b>4.( <c e c'>) | <c d'>4 e8 <b, d>4 c8 | \partial 8*5 c4.~c4 \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | s2.*2 | f2. | <e e'>4.~<e e'>4 s8 | s2. |
            s2.*2 | s4. s4 | d'8 | s2. | s4. f4. |
            f2. | <e e'>4.~<e e'>4 s8 | s2.*3 | s4. s4 |

          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        Up8 -- on4 a8 time4 I8 | 8 chanc’d4 8 To4 | walk4 a8 -- long4 a8 | 8 green,4. 8 Where8 | pret4 -- ty8 lass4 -- es8 |
        danced4. In4. | strife,4 to8 choose4 a8 | 8 Queen4. 8 | Some8 | home4 -- ly8 dress’d,4 some8 | hand4. -- some,4 Some8 |
        pret4 -- ty,8 and4 some8 | 8 gay,4. 8 But8 | who4 ex8 -- cell’d4 in8 | dancing,4. Must4. | be4 the8 Queen4 of8 | 8 May.4. 8 |
      }	% end lyrics verse one
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            s8 | s2. | s4. c | a4 g8 a4 b8 | c'2. | a, |
            gs,4. a, | f, s | s4. s4 | s8 | g,2.~ | g,4. s4. |
            a4 g8 a4 b8 | c'2. | a,2. | gs,4. a,4. | s2. | s4. s4 | \fine
          } % end voice three
          \new Voice { % voice four
            \voiceFour
            r8 | <c e>2.~ | <c e>4. s | c2. | c4.( b,4.) | s2. |
            s2. | s4. <g, f>4 <c e>8 | <c e>4.~<c e>4 | r8 | s2. | s4. g4. |
            c2. | c4.( b,) | s2.*2 | \stemUp \grace d,16( \stemDown fs4.) \stemUp \grace g,16( \stemDown f!4) <c e>8 | <c e>4.~<c e>4 |
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
