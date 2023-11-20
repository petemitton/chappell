\version "2.22.0"
\language "english"

global = {
  \time 4/4
  \key g \major
}

mBreak = { \break }

\header {
  %	title = \markup {\medium \caps "Title."}
  %	poet = ""
  %	composer = ""

  % meter = \markup {\italic "Slow."}
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
            \partial 4 g8._( a16) | b4. b8 <g b>4 <fs g d'>4 | <e g c'>4 <d g b>4 <d fs a> <b, g>4 | g2 fs4 g8._( a16) | \mBreak
            b4. b8  <g b>4 <d g d'>4 | <e g c'>4 <d g b>4 a4. g8 | \partial 2. <b, g>2. \bar "||" |
            \partial 4 b8._( c'16) | d'4. b8 <b, e g>4 <b, fs b>4 | \mBreak
            <e g c'>4 <d b>4 <c fs a>4 <b, g>4 | <d a>2. <e g>8. <fs a>16 | b4. b8 <b, g b>4 <g d'>4 |
            <e g c'>4 <d g b>4 a4. g8 | \partial 2. <b, g>2. \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            b,4 | <d g>4 s2. | s1 | <d a>2. b,4 |
            g4 s2. | s2 <c g>4 <d fs>4 | s2. | <d g>4 | <d g>4 s2. |
            s1 | g2 fs4 d4 | <b, fs>4 s2. | s2 <c g>4 <d fs>4 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {
        % verse one
        \markup{ \caps "Death."}16 Fair8. La4. -- dy,8 lay4 your4 cost4 ly4 robes4 a4 side,2 4 No4
        lon4. ger8 may4 you4 glo4 ry4 in4. your8 pride;2. Take4 leave4. of8 ev’4 -- ry4
        car4 -- nal4 vain4 de4 light,2. I’m4 come4. to8 sum4 -- mon4 you4 a4 -- way4. this8 night.2.
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            g,4 | g2. b,4 | c4 g,4 d4 e4 | d2. g4 |
            e2. b,4 | c4 g,4 a,4 d,4 | g,2( g,,4) | g4 | b,2 e4 d4 |
            c2 d4 e4 | d2. d4 | ds2 e4 b,4 | c4 g,4 a,4 d,4 | g,2. \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
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