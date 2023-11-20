\version "2.22.0"
\language "english"

global = {
  \time 6/8
  \key g \minor
}

mBreak = {\break}

\header {
  %	title = \markup {\medium \caps "Title."}
  %	poet = ""
  %	composer = ""

  % meter = \markup {\italic "In moderate time and smoothly."}
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
            \partial 8 g16_( a16) |
            bf8.  a16 g8 fs8.  e!16 fs8 |
            g8 a8 g8  fs8._(  g16) a8 | \mBreak
            bf8.  c'16 d'8 a8.  bf16 c'8 | 
            bf8 a8 g8 fs4 fs8 |
            g8.  a16 bf8 a8.  bf16 c'8 | \mBreak
            <f d'>4 <f d'>8 <f d'_(>8 c'8) bf8 | 
            a4 g8 fs8 e!8 fs8 |
            \partial 8*5 <bf, g>8 g8 c8 g4 \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8|
            s2.|
            s2.|
            s4. ef4 s8 |
            d4.~d4 s8 |
            d4. f4. |
            s2.|
            ef4 s8 c4. |
            s2 s8 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {
        % verse one
        If8 e8. -- ver16 I8 mar8. -- ry,16 I'll8 mar8 -- ry8 a8 16 maid:8. To8
        16 marry8. a8 16 widow8. I’m8 sore4 a8 -- fraid;4 For8 maids8. they16 are8 sim8. -- ple,16 and8
        never4 will8 16 grutch,8. But8 widows4 full8 oft,8 as8 they8 say,8 know8 too8 much.4
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            r8 |
            <g bf>4. <a c'>4. |
            <bf d'>4. <a c'>4. |
            <g bf>4. c4. |
            d4.~d4 r8 |
            <g bf>4. <f c'>4. |
            <bf, f bf>4 <bf, f bf>8 <bf, f bf>4. |
            c4. d4. |
            g,4. g,4 \fine |
          } % end voice three


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