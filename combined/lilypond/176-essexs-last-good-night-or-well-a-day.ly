\version "2.22.0"
\language "english"

global = {
  \time 6/8
  \key d \major
}

sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }
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
            d4_( e8) fs4 g8 | a4 b8 a4. | b8._( a16) g8 g8_( a8 b8) | a4 fs8 <a, fs>4. | cs4_( d8) e4 fs8 | \mBreak
            g4 a8 <d b>4. | <d a>4 fs8 d8^( e8 <cs fs>8) | <cs e>4.^( d4.) \bar "||" | d'4. b4 cs'8 | d'4 d'8 b4 d'8 | b8._( a16) g8 <d fs>8_( e8) d8 | \mBreak
            e2. | <e a e'>4. \sdown <e a cs'>8 d'8 e'8 | \sup <e g>8 a8 b8 <b, e>4^( g8) | <a, d fs>8 e8 d8 e8 cs4 | d2. \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s2. | d2. | d4. d4. | d4. s4. | a,2. |
            d4. s4. | s2. | s2. | d2. | d2. | d4. s4. |
            d8 cs8 b,8 cs4. | s2.*4 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {
        % verse one
        Sweet4. England’s4. | prize4 is8 gone!4. | Well4 -- a8 -- day,4. | well4 -- a8 -- day;4. |  Which4. makes4 her8 |
        sigh4 and8 groan4. | E4 -- ver8 -- more4. | still.4. 4. | He4. did4 her8 | fame4 advance,4. In8 | Ireland,4. Spain,4 and8 |
        France,2. | And4. by4 a8 | sad4 mis8 -- chance,4. | Is4. from8 us4 | ta’en.2. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            s2.*6 | fs4.~ fs8 g8 a8 |
            s2.*6 | s4. g,4. | a,4. g4. | fs2. | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            <d fs a>2. | \sup <fs, d>2. | <g, d>4. \sdown <b, g>4. | <d fs>4. d4. | <a, e>2. |
            \sup <b, d>4. <g, g>4. | \sdown a,4.~ a,4 a,8 | <d g>4.^( <d fs>4.) | <b, fs>2.| <b, fs>2. | <g, g>4. <d a>4. |
            <g, g>2. | <cs g>4. <a, g>4. | <e b>4. s4. |   s4. a,4. | d4. \sup d,4. |
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