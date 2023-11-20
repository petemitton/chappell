\version "2.22.0"
\language "english"

global = {
  \time 6/8
  \key c \major
}

mBreak = { \break }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

%  meter = \markup {\italic "Moderate time."}
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
            \partial 8 d'8 | d'4 d'8 d'4 c'8 | b4 c'8 d'4 g8 | a4 a8 b8.( a16) b8 | <e c'>4.~ <e c'>4 s8 | \mBreak
            d'4 d'8 d'4 c'8 | b4 c'8 d'4 g8 | a4 a8 b8.( a16) b8 | <e c'>4.~ <e c'>4 s8 | \mBreak
            f8._( g16) f8 e8._( d16) e8 | d4 d8 b8.( a16) b8 | <c c'>4 g8 <b, a>8 g4 | <c_( e>4. c4) d16 e | \mBreak
            f8._( g16) f8 e8._( d16) e8 | d4 d8 b8.( a16) b8 | <c c'>4 g8 <b, a>8 g4 | \partial 8*5 <c e^(>4. c4) \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | f2. | d2. | f4 s8 f4. | s4. s4 d'8 |
            f2. | d2. | f4 s8 f4. | s4. s4 d'8 |
            s2. | s4. \stemUp e4 s8 | s2.*2 |
            \stemDown s2. | s4. \stemUp e4 s8 | s2. | s8*5 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        Come8 | ba4 -- che8 -- lors4 and8 | mar4 -- ried8 men,4 And8 | lis4 -- ten8 to4 my8 | song,8*5 And8 |
        I4 will8 shew4 you8 | plain4 -- ly8 then,4 The8 | in4 -- ju8 -- ry4 and8 | wrong8*5 That8 |
        con4 -- stant8 -- ly4 I8 | do4 sus8 -- tain4 Through8 | my4 un8 -- hap4 -- py8 | life,8*5 The8 |
        which4 does8 put4 me8 | to4 great8 pain,4 By8 | my4 un8 -- qui -- et4 | wife.8*5  |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            s8 | s2. | g4 a8 b4. | s2. | c4. s |
            s2. | g4 a8 b4. | s2. | c4. s |
            c'2. | s | s4. <g, d>4 d8\rest | c4. c |
            c'2. | s | s4. <g, d>4 d8\rest | c4. c4 | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            d8\rest | <d a>2. | g2. | <f c'>4. <d d'> | s c' |
            <d a>2. | g2. | <f c'>4. <d d'> | s c' |
            a4. g | f8. e16 f8 g4 f8 | e4 d8\rest s4. | s2. |
            a4. g | f8. e16 f8 g4 f8 | e4 d8\rest s4. | s8*5 |
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
