\version "2.24.0"
\language "english"

global = {
  \time 6/8
  \key bf \major
}

mBreak = {}

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
            \partial 8 bf8 |
            c'8.  bf16 f8 bf8 bf8 bf8 |
            c'4 c'8 d'4 d'8 |
            ef'8.  d'16 c'8 d'8.  c'16 bf8 |
            c'8.  d'16 c'8 bf4 bf8 | \mBreak
            c'8.  bf16 f8 bf8 bf8 bf8 |
            c'4 c'8 d'4 d'16 d'16 |
            ef'8.  d'16 c'8 d'8.  c'16 bf8 |
            \partial 8*5 c'8( g8.) a16 bf4 \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            \partial 8 r8 |
            d2. |
            ef4. d4. |
            f4. f4. |
            ef4. d4. |
            d2. |
            ef4. d4. |
            f4. f4. |
            ef4. d4 |
          } % end voice two
        >>
      } % end staff up
      
      \new Lyrics \lyricmode {	% verse one
        Who8 li8. -- veth16 so8 merry4 in8 | all4 this8 land,8 As4 | doth8. the16 poor8 widow4 that8 | selleth4 the8 sand,4 And8 |
        e8. -- ver16 she8 singeth4 as8 | I4 can8 guess,4 Will16  you16 |  buy4 any8 sand,4 any8 | sand,4. Mistress.4 |
      }	% end lyrics verse one
      
      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            \partial 8 r8 |
            <bf, f>2. |
            a4. bf4. |
            a4. bf4. |
            a4. bf4. |
            <bf, f>2. |
            a4. bf4. |
            a4. bf4. |
            f4. f4 | \fine
          } % end voice three
          
          \new 	Voice {
            \voiceFour
            \partial 8 s8 |
            s2.|
            <bf, f>2. |
            <bf, f>2. |
            <bf, f>2. |
            s2.|
            <bf, f>2. |
            <bf, f>2. |
            bf,4. bf,4 |
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