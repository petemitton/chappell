\version "2.22.0"
\language "english"

global = {
  \time 2/4
  \key g \minor
}

mBreak = { \break }

\header {
  %	title = \markup {\medium \caps "Title."}
  %	poet = ""
  %	composer = ""

  % meter = \markup {\italic "Rather slow."}
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
            \partial 8 bf8 |
            <g bf>8. a16 g8 a8 |
            bf4 <d bf_(>8 c'16 bf16) |
            <f a>8 f8 f8 f8 | f4 f8 f8 | \mBreak
            g8 g8 g8 a8 |
            bf8_( c'16 bf16)  a8 g8 |
            <fs d'>4 <fs d'>4 |
            <fs d'>4. c'8 |
            bf8 bf8 <g bf>8 <a c'>8  | \mBreak
            <d bf d'>4 c'8 bf8 |
            c'8 c'8 c'8 c'8 |
            <f a c'>4 c'8 bf16_( c'16)  |
            d'8 d'8 c'8 bf8 |
            <fs a>8 < e! g>8  <fs_( a>8 <a) c'>8  |
            <g bf>4 <d g>4 |
            \partial 4. <d g>4. | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | s2*3 | c4 s4 |
            ef2 |
            s2|
            s2|
            s2|
            <d g>4 ef4 |
            s4 f4 |
            <f a>4 < e! g>4 |
            s4 g4 |
            g2 |
            s2|
            s2|
            s4.
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {
        % verse one
        I8. am16 the8 Duke8 of8 | Nor4 folk,8 "."16 "."16 | New8 -- ly8 come8 to8 Suf4 -- folk,8 Say8
        shall8 I8 be8 at8 -- tend4 ed,8 or8 no,4 no,4 no?4. Good8 Duke8 be8 not8 of8 -- fended,4. And8
        you8 shall8 be8 at8 -- tend4 -- ed,8 And8 you8 shall8 be8 at8 -- tend4 -- ed,4 now,4 now,4 now.4.
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            r8 | d'8. c'16 bf8 c'8 | d'4 s4 | s2*2 |
            s2*5
            bf,4 d4 |
            f4 c4 |
            f,4 <ef! c'>4 |
            bf4 a8 g8 |
            s2*2 |
            s4. | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s8 | g2~ | g4 <g bf>4 | <f c'>2~ | <f c'>4 <f a>4 |
            <ef bf>2 |
            <ef g bf>4 <ef g c'>4 |
            <d a d'>4 <d a d'>4 |
            <d a d'>2 |
            g4 f!4 |
            s2*3 |
            d2  |
            <d d'>2 |
            <g d'>4 <g bf>4 |
            <g bf>4.
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