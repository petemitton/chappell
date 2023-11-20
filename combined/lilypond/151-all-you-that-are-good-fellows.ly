\version "2.22.0"
\language "english"

global = {
  \time 4/4
  \key c \major
}

mBreak = { \break }

\header {
  %	title = \markup {\medium \caps "Title."}
  %	poet = ""
  %	composer = ""

  % meter = \markup {\italic "In marching time."}
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
            \partial 4 g8 g8 | <e c'>4 g4 \stemDown <e c'>4 <g d'>4 | <c' e'>2 <g d'>4 \stemUp b4 | <c g c'>4 <c f a>4 <b, d g>4 <d f b>4 | \mBreak
            <c e c'>2. <b, d g>4 | <c g c'>4 g4 <e c'>4 <g b d'> | \stemDown <g c' e'>2 <b d'>4 <f b>4 | \stemUp <e c'>4 <f a>4 <e g>4 <d g b>4 | \partial 2. <e g c'>2. |
            \bar "||" \mBreak
            \partial 4 s4 | <b d'>4. <c' e'>8 <d' f'>4 \stemDown <g c' e'>4 \stemUp | <fs a c'>2. <d fs a>4 | <d g d'>4. <e g c'>8 <d g b>4 <c fs a>4 | <b, g>2. \stemDown <g d' g'>4 |
            \mBreak
            <g c' e'>4 <g c'>4 <a d'>4 <f b>4 | \stemUp <e c'>4 <f a>4 <e g>4 <c g c'>4 <c f a>4 <c f>4 <c e>4 <b, d g>4 | \partial 2. <c e c'>2. | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4 | s1 | s2. <d g>4 | s1*5 | s2. |
            <e c'>4 | g2. s4 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {
        % verse one
        All4 you4 that4 are4 good4 fel2 lows,4 Come4 heark4 -- en4 to4 my4
        song2. I4 | know4 you4 do4 not4 hate4 good4 cheer,4 Nor4 li4 -- quor4 that4 is4 strong.2.
        I4 hope4. there8 is4 none4 here,2. But4 soon4. will8 take4 my4 part,2. See4
        ing4 my4 mas4 -- ter4 and4 my4 dame4 Say4 wel4 -- come4 with4 their4 heart.2.
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r4 | c,2 <e c'>4 <g d'>4 | <c' e'>2 <g d'>4 <f, f>4 | <e, e>4 <f, f>4 <g, g>4 <g,, g,>4 |
            <c, c>4 a,4 g,4 f,4 | e,2 a,4 g,4 | c4 e4 g4 g,4 | a,4 f,4 g,4 g,4 | c,2. |
            b,4 | g,2. c4 | d4. e8 d4 c4 | b,4. c8 d4 d4 | g4. fs8 g4 b,4 |
            c4 e4 f!4 g4 | a4 f4 c'4 e4 | f4 d4 g2 | c2. |
            \fine
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