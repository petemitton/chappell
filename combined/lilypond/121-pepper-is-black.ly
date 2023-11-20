\version "2.22.0"
\language "english"

global = {
  \time 6/8
  \key g \major
}

mBreak = { \break }

\header {
  %	title = \markup {\medium \caps "Title."}
  %	poet = ""
  %	composer = ""

  % meter = \markup {\italic "Moderate time."}
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
            \partial 8 <b, g>8 | %0
            <a, fs>4 d8 a4 <b, g>8 | %1
            fs8._( e16) d8 a4 d8 | %2
            g8. a16 g8 a8.( b16) c'16( d'16) | %3
            <d b>4. g4 <b, g>8 | \mBreak %4
            a8. b16 c'8 c'8. d'16 c'8 | %5
            a8._( b16) c'8 c'8._( b16) c'8 | %6
            b4 c'8 d'8. e'16 c'8 | %7
            \partial 8*5 <g b>4. g4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | %0
            s2. | %1
            a,8 s8*5 | %2
            d4. d4. | %3
            s2. |%4
            e4. e4. | %5
            e4. e4. | %6
            g4. fs4. | %7
            s2 s8 | %8
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {
        % verse one
        Look8 up,4 my8 lords4 and8 mark4 my8 words,4 And8 hear4 what8 I4 shall8 sing4. ye;4 And8
        sub4 jects8 all,4 both8 great4 and8 small,4 Now8 mark4 what8 words4 I8 bring4. ye.4
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            s8 | %0
            s2.*2 | %1-2
            b,4. fs,4. | %3
            g,4.~ g,4 g,8 | %4
            c4. a,4. | %5
            c4. a,4. | %6
            d4. d,4. | %7
            g,4._~ g,4 | \fine %8

          } % end voice three

          \new 	Voice {
            \voiceFour
            g8 | %1
            d4 r8 r4 g8 | %2
            d4 r8 r4 d8 | %3
            s2. | %4

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