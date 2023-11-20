\version "2.22.0"
\language "english"

global = {
  \time 6/8
  \key a \major
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
            \partial 8 a8 | cs'8.( d'16) e'8 cs'8.( b16) a8 |  <d b>4 gs8 <cs e>4 a8 | cs'8. d'16 e'8 a8. b16 cs'8 | \mBreak
            <e b>4.~ <e b>4 b8 | cs'8. d'16 e'8 cs'8. b16 a8 | <d b>4 gs8 e8. d16 cs8 | d8.  e16 fs8 e8. fs16 gs8 | \partial 8*5 <cs a>4.~ <cs a>4 \fine | \mBreak
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | e2. | s2. | e4. e |
            s2. | e2. | \stemUp s4. cs4 s8 | b,4 s8 \stemDown d4 s8 | s2 s8 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {
        % verse one
        Who8 list4 to8 lead4 a8 sol4 -- dier’s8 life.4
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            s8 | s2. | <gs, e>4. <a, a>4. | s2. |
            s2.*2 | <gs,  e>4. s4. | s4. gs8. a16 b8 | s2 s8 |
            \fine
          } % end voice three
          \new 	Voice {
            \voiceFour
            r8 | <a, a>2. | s2. | <a, a>4. <cs a>4. |
            <e a>4.~ <e a>4 r8 | <a, a>2. | s4. <a, a>4. | <b, fs>4. e4. | a4.~ a4 |
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