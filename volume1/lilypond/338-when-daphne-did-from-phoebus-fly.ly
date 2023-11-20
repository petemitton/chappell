\version "2.22.0"
\language "english"

global = {
  \time 3/4
  \key c \minor
}

mBreak = { \break }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

%  meter = \markup {\italic "Gracefully, and not too slow."}
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
            \repeat volta 2 { \partial 4 c8_( d) | ef2 f4 | g2 <ef c'>4 | <d b!>4. <ef c'>8 <f d'>4 | <ef c'>2 g8_( af) | bf4 g ef | \mBreak
                              f4 d bf, | c4. ef8 <b,! d>4 | \partial 2 c2 | }
            \repeat volta 2 { \partial 4 s4 | s2.*2 | c'4.^( d'8) c'4 | \mBreak
                              <d b!>4 <b,! g>2 | g4. af8 g4 | f4._( g8) ef4 | ef4._( f8) d4 | \partial 2 ef2 | } \partial 4 g8_( af) | bf4. af8 \noBeam bf c' | \mBreak
            <g bf>4^( g) ef | bf4. c'8 s4 | s2. | g4. f8 ef4 | d2 s4 | c'4.^( d'8) b!4 | \mBreak
            c'2 g8_( af) | bf4 g ef | f^( d) bf, | c4.^( ef8) <b,! d>4 | \partial 2 c2 \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4 | c2.~ | c2 s4 | s2.*2 | bf,2. |
            bf,2 s4 | s2. | s2 | c'8 d' | <g ef'>2 <g ef'>4 | <g d'>2 <d d'>4 | ef2 f4 |
            s2. | bf,!2. | c2 bf,4 | s2. | s2 | s4 | ef2 ef4 |
            s2. | ef2 <af d'>8 <g ef'> | <f f'>4^( d') bf | s2. | s2 c'4 | f2 f4 |
            ef2. | bf,2. | bf,2 s4 | s2. | s2 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        When4 | Daph2 -- ne4 | from2 fair4 | Phœ4. bus8 did4 | fly,2 The4 | west4 wind most |
        sweet4 -- ly did | blow4. in8 her4 | face,2 | 4 | Stay,2 Nymph,4 | stay,2 Nymph,4 | cries2 A-4 |
        -pol4 -- lo,2 | Tar4. -- ry,8 and4 | turn2 thee,4 | Sweet2 Nymph,4 | stay,2 | 
      }	% end lyrics verse one
      \new Lyrics \lyricmode {% verse two
        Her4 | silk2 -- en4 | scarf2 scarce4 | shad4. -- ow’d8 her4 | heyes,2 The4 | God cried, O |
        pi4 -- ty! and | held4. her8 in4 | chace.2 | 4 | Lion2 nor4 | ti2 -- ger4 | doth2 thee4 |
        fol4 -- low,2 | Turn4. thy8 fair4 | eyes,2 and4 | look2 this4 | way.2 | O4 | turn,4. O8 pretty4 |
        sweet,2 And4 | let4. our8 red lips | meet:2 O4 | pi4. -- ty8 me,4 | Daph2 -- ne!4 | pi2 -- ty4 |
        me,2 O4 | pi4 -- ty me, | Daph2 -- ne,4 | pi2 -- ty4 | me!2 |
      }% end lyrics verse two

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            d4\rest | c2 d4 | s2 c4 | g,2. | af,2 ef,8 f, | g,2. |
            s2 g4 | af2 s4 | af,,2 | s4 | s2.*3 |
            s2.*3 | af2 af4 | g2 | s4 | s2. |
            s2.*5 | s2 g,4 |
            af,2 ef,8 f, | g,2. | d,2 g4 | af2 s4 | c,2 | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s4 | s2. | ef2 s4 | s2.*3 |
            d,2 ef,4 | af,4. f,8 g,4 | s2 | d4\rest | c'2 c'4 | bf2 bf4 | af2 af4 |
            g2. | ef2. | af2 g4 | f2 bf,4 | ef2 | ef8 f | g4. f8 g af |
            ef2. | g2 f8 ef | d2. | <ef bf>2 <g bf>4 | <f af>2 <ef g>4 | d2 s4 |
            s2.*2 | s2 ef,4 | af,4. f,8 g,4 | s2 |
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