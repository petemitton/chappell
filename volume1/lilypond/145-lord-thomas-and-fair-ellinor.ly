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
            \partial 8 e8 | a8 b8 cs'8 b4 a8 | <e gs>8 fs8 gs8 e4 b8 | cs'8 d'8 e'8 cs'4 a8 | \mBreak
            <e b>4.~ <e b>4 b8 | cs'8 d'8 e'8 cs'4 a8 | <e gs>8( fs8) gs8 e4 e8 | a8 b8 cs'8 cs'4 b8 | \partial 8*5 <cs a>4.~ <cs a>4 \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | cs4. fs4. | s2. | e4. e4. |
            s2. | e4. e4. | s2. | e4. <d gs>4. | s2 s8 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {
        % verse one
        Lord8 Thomas4 he8 was4 a8 bold8 fo8 -- res8 -- ter,4 And16 a16 chaser4 of8 the4 king’s8
        8 deer,4. 8 Fair8 El8 -- li8 -- nor8 was4 a8 fine4 woman,4. And16 Lord16 Thomas4 he8 loved4 her8 8 dear.4. 8
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            r8 | a4. d4. | e4.~ e4 r8 | a4. <a, a>4. |
            <e a>4.~ <e a>4 r8 | a4. a,4. | e4. d4. | cs4. e4. | a4.( a,4) | 
            \fine
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