\version "2.22.0"
\language "english"

global = {
  \time 6/8
  \key d \major
}

mBreak = { \break }

\header {
  %	title = \markup {\medium \caps "Title."}
  %	poet = ""
  %	composer = ""

  % meter = \markup {\italic "Gracefully."}
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
            \partial 8 a8 | d'4 d'8 cs'4 a8 | b4. a4. | <d d'>4 d'8 <e cs'>4 a8 | <d gs b>8. a16 b8 <cs a>4. | \mBreak
            <d g! d'>4 d'8 <e a cs'>4 a8 | <cs  e b>4. <d a>4 a8 | <gs d'>4. <a cs>4( a8) | <d b>8. a16 <gs b>8 <cs a>4. | \mBreak
            g!8( b4) fs8 a4 | <cs e>8 g4 <d fs>4 d8 | g8( b4) fs8 a4 | <b, d g>8. <a, fs>16 <g, cs e>8 d4 d8 | \mBreak
            g8 b4 fs8 a4 | <cs e>8( g4) <d fs>4( d8) | g8( b4) fs8 a4 | \partial 8*5 <b, d g>8. <a, fs>16 <g, cs e>8 d4 |
            \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | d2. | d2. | s2.*2 |
            s2.*2 | e2. | fs4 s8 s4. |
            d2. | s2. | d2. | s2. |
            d2. | s2. | d2. | s4. s4 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {
        % verse one
        As8 I4 abroad4. was8 walk4. -- ing4. By4 the8 break4 -- ing8 of8. the16 day,8 In4. -- 
        to4 a8 plea4 -- sant8 mea4. -- dow4 A8 young4. man4. took4 his8 way,4.
        And4. look8 -- ing4 round8 a4 bout4 him,8 To4. mark8 what4 he4 could8 see,4 At8
        length8 he4 spied8 a4 fair4. maid4. Un4. -- der8 a4 myr4 -- tle8 tree.4
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            r8 | b4. a4. | g4. fs4. | s2.*2 |
            s2.*4 |
            b4 d8 a4 fs8 | g4 e8 a4 d8 | b,4 g,8 d,4 fs,8 | g,4 a,8 fs4 d8 |
            b4 g8 a4 fs8 | g4 e8 a4 d8 | b,4 g,8 d,4 fs,8 | g,4 a,8 fs4 |
            \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s8 | d2. | d2. | <b, gs>4. <a, a>4 cs8 | e4. a4. |
            b4. a4. | g4. fs4. | e2. | e4. a4. |
            d2. | d4.~ d4 s8 | s2. | s4. d4 s8 |
            d2. | d4.~ d4 s8 | s2. | s4. d4 |
          }	% end voice four

        >>
      } % end staff down
    >>
  } % end choir staff

  \layout{
    \context{
      \Score {
        \omit  BarNumber
        \set lyricMelismaAlignment = #CENTER
        %\override LyricText.self-alignment-X = #LEFT
        \override Staff.Rest.voiced-position=0
      }%end score
    }%end context
  }%end layout

}%end score