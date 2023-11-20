\version "2.22.0"
\language "english"

global = {
  \time 3/8
  \key c \major
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
e16_( f16) g8 e8 | <b, d>8 e8 c8 | g8 g8 c'8 | <f a>4 g8 | e16_( f16) g8 e8 | \mBreak
<b, d>8 e8 c8 | g8 g8 c'8 | <f a>4 <e g>8 \bar "||" | c'8. d'16 e'16_( d'16) | <e a c'>8 <f a>8 <e g>8 | c'8 c'8 d'8 | \mBreak
            <g c' e'>4 <f b d'>8 | c'8._( d'16) e'16 d'16 | <e a c'>8 <f a>8 <e g>8 | c'8 c'8 d'8 | <c' e'>4 <b d'>8 \bar "||" | e'8^\f e'8 d'8 |
            c'8. d'16 e'8 | <d g>^\p <c e>8 <c e>8 | <b, d>4 c8 | s4.*2 | g8^\pp e8 <c e>8 | <b, d>4 c8 \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
c8 c4 | s4. | c4 c8 | c4 d8 | c8 c4 |
            s4. | c4 <c e>8 | c4. | e4 <e gs>8 | s4. g4 <a c'>8 |
            s4. | e4 <e gs>8 | s4.| g4 <a c'>8 | g4. | <e b>4. |
            e4 <e c'>8 | s4.*2 | <e e'>8^\f <e e'>8 <e d'>8 | <e c'>8. <e d'>16 <e e'>8 | s4.*2 |
          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
All8 in8 the8 | month8 of8 May,8 | When8 all8 things8 | blos4 -- som,8 | As8 in8 my8 |
bed8 I8 lay,8 | Sleep8 it8 grew8 | loath4 -- some.8 | Up8. I16 rose,8 | and8 did8 walk8 | O8 -- ver8 yon8 |
mountains4. | Through4 meadows8 | and8 through8 dales,8 | Over8 rocks8 and8 | foun4 -- tains;8 | I8 heard8 a8 |
voice8 to8 sing,8 | Sweetheart,4 come8 | cheer4 me,8 | Thou8 hast8 been8 | long4 away,8 | Lady,4 lie8 | near4 me.8 |
      }	% end lyrics verse one
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
\voiceThree
c8 e8 c8 | s8 g8 e8 | c,4 a,8 | f,16 g,16 a,8 b,8 | c8 e8 c8 |
s8 g8 e8 | e,4 c,8 | f,8 a,8 c8 | s4. | a,8 f,8 c,8 | s4. |
s4.*2 | a,8 f,8 c,8 | s4.*3 |
s4 a,8 | b,8_( c8) e,8 | g,4_( c8) | s4.*2 | g!4 s8 | s4. | \fine
          } % end voice three
          \new Voice { % voice four
\voiceFour
s4. | g,4 a,8 | s4.*3 |
g,4 a,8 | s4.*2 | a4 e8 | s4. e4 f8 |
g4 gs8 | a4 e8 | s4. | e4 f8 | g4. | gs4. |
a4 s8 | s4.*2 | <b, e gs>8 <b, e gs>8 <b, e gs>8 | <a, e a>8. <b, e gs>16 <c e a>8 | e8 c8 <c g>8 | <g, f>4^( <c e>8) |
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
