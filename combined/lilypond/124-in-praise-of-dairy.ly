\version "2.22.0"
\language "english"

global = {
  \time 6/8
  \key e \minor
}

mBreak = { \break }

\header {
  %	title = \markup {\medium \caps "Title."}
  %	poet = ""
  %	composer = ""

  % meter = \markup {\italic "Moderate time and smoothly."}
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
            \partial 8 b,8 | %0
            e8 fs8 g8 fs8 g8 a8 | %1
            g8 fs8 e8 <ds fs>4 b,8 | %2
            g8 a8 b8 a8 b8 g8 | %3
            \partial 8*5 fs8 e8 ds8 <g ,e>4  \bar "||" | \mBreak %4
            \partial 8 b8 | %-
            b8 d'8 cs'8 b4 fs8 | %5
            b8 d'8 cs'8 b4 fs8 | %6
            b8 d'8 cs'8 <d b>8 <e cs'>8 <fs d'>8 | %7
            <g e'>8 <fs d'>8 <e cs'>8 <d b>4 d'8 | \mBreak %8
            b8 a8 g8 <d a>8 fs8 d8 | %9
            g8 fs8 e8 <ds fs>4 b,8 | %10
            g8 a8 b8 a8 b8 g8 | %11
            \partial 8*5 fs8 e8 ds8 <g, e>4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | %0
            s2.*2 | %1-2
            b,4. ds4 e8 | %3
            c4 b,8 s4 | %4
            s8 | %-
            d!4.~ d4 e8 | %5
            fs4.~ fs4 cs8 | %6
            fs4. s4. | %7
            s2. | %8
            d4. s4. | %9
            b,4. s4. | %10
            b,4. ds4 e8 | %11
            c4 b,8 s4 | %12
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {
        % verse one
        In8 praise8 of8 a8 dai8 -- ry8 I pur8 -- pose8 to8 sing,4 But8 all8 things8 in8 order;4 first8 God8 save8 the King!4 |
        "And the"8 Queen8 I8 may8 say;4 That8 ev’8 -- ry8 Mayday,4. Has8 ma8 -- ny8 fair8 dai8 -- ry8 maids8 all8 fine8 and8 gay:4 As8 -- 
        -sist8 me8 fair8 8 damsels,8 to8 16 finish8. my8 theme,4 In8 spiring4 my8 fan8 -- cy8 with8 8 strawberry4 cream.4
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            s8 | %0
            g4. b4. | %1
            b4. b,4. | %2
            s2. | %3
            a,4 b,8 e,4 | %4
            s8 | %-
            s2.*7 | %5-11
            a,4 b,8 e,4 \fine | %12
          } % end voice three

          \new 	Voice {
            \voiceFour
            s8 | %0
            e4. ds4. | %1
            e4. s4. | %2
            e4 g8 fs4 e8 | %3
            s2 s8 | %4
            r8 | %-
            <b, fs>4.~ <b, fs>4 <cs as>8 | %5
            <d b>4.~ <d b>4 <e as>8 | %6
            <d b>4. <g b>4. | %7
            <e b>4 <fs as>8 <b, b>4 r8 | %8
            <g, g>4. <d fs>4. | %9
            <e g>4. <b, b>4 r8 | %10
            e4 g8 fs4 e8 | %11
            s2 s8 | %12


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