\version "2.22.0"
\language "english"

global = {
  \time 4/4
  \key d \major
}

mBreak = { \break }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

%  meter = \markup {\italic "Rather slow, and with expression."}
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
            \partial 4 <cs e>4 | <d fs> a d <cs e> | d4._( e8) d4 <cs e> | <d fs>4 a d a | b^( d'2) cs'8 b | \mBreak
            <d fs a>4 <d fs> <cs e> d | b, b2 a8 g | <d a>4 fs e4. d8 | \partial 2. d2. \bar "||" | \partial 4 b8_( cs') | \mBreak
            d'8_( cs') b_( a) <d d'>4 fs | e4 s2 e4 | d4. e8 fs_( e) d_( cs) | b,4_( b2) <d g b>8 cs' | \mBreak
            d'8_( cs') b_( a) <d d'>4 fs | e4. fs8 <b, g>4 <c! fs a> | <b, g b> <a, fs> e4. d8 | \partial 2. d2. \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4 | s1*2 | s2 d | <d g>1 |
            s1*2 | s2 \stemUp cs4 s | s2. | <d g>4 |
            <d a>4 s2. \stemDown | s4 e'2 s4 |  \stemUp s2 as,4 s | s1 |
            <d a>4 s2. | s1 | s2 cs!4 s | s2. |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        O4 | come4 you from New -- cas2 -- tle,4 Come | you not there a -- way?2. O4 |
        met4 you not my | true love,2 Rid8 -- ing | on4 a bon4. -- ny8 bay?2. | Why4 |
        should4 not I love my love,2 Why4 should4 not8 my love4 love4 | \markup{me?\super a}2. [Why4 |
                             should4 not I speed | af4. -- ter8 him,4 Since | love4 to all4. is8 | free?]2. |                                                   
                                                                               
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            a4^( | a2.) a4 | fs2. a4^( | a2) s | g, b, |
            s1*2 | fs4 d s2 | s2. | s4 |
            s1*2 | s2 fs, | b, b,,4 s |
            s1*2 | g,4 d, g2 | fs2. | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            a,4 | d,2 fs,4 a, | d2. a,4 | d,2 fs, | s1 |
            d4 <d fs> <e g> <fs a> | g2 <e g> | a, <a, g> | <d fs>2. | g4 |
            fs2 b | <g b> <e g> | <fs b> s | s2. g4 |
            fs2 b | <g b> e4 d | s2 a, | d2. |
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
      }%end score
    }%end context
  }%end layout

  \midi{}

}%end score