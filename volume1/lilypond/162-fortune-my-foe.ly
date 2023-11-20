\version "2.22.0"
\language "english"

global = {
  \time 4/4
  \key g \minor
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
            <bf, d g>2 <d g>4. <d fs a>8 | <d g bf>2. <d fs a>4 | g4 d'4 c'4 bf4 | a1 | g2 <c ef g>4. a8 |  \mBreak
            <d g bf>2. <c fs a>4 | g4 d'4 <ef c'>4 <g bf>4 | <fs a>1 |
            <d f! d'>2 <d f d'>4. <d f d'>8 | <d f d'>2. d'4 | <f bf d'>4 f'4 <g ef'>4 <bf d'>4  | \mBreak
            c'1 | <f c'>2 <a f'>4. ef'8 | d'2. c'8_( bf8) | <fs a>4 g4 g4 fs4 | <bf, d g>1 \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s1*2 | d2 ef4 g4 | g2 fs2 | s1 |
            s1 | d2 s2 | s1*4 |
            bf2 a2 | s1 | bf2 ef2 | s2 <a, d>2 | s1 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {
        % verse one
        For2 -- tune4. my8 foe,2. why4 dost4 thou4 frown4 on4 me?1 And2 will4. thy8
        fa2. vours4 ne4 -- ver4 great4 -- er4 be?1 Wilt2 thou,4. I8 | say,2. for4 ev4 -- er4 breed4 me4
        pain,1 And2 wilt4. thou8 not2. re4 -- store4 my4 joys4 a4 gain?1
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            g,2 bf,4. d8 | g2. d4 | bf,2 <c g>2 | <d d'>1 | <ef bf>2 c2 |
            g,2. a,4 | bf,2 c2 | d1 | <bf, f! bf>2 <bf, f bf>4. <bf, f bf>8 | <bf, f bf>1 | bf,2 ef2 |
            f1 | <a, f>2 f,2 | g,2 c2 | d4 ef4 d2 | g,1 | \fine
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