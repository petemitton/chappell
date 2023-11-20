\version "2.22.0"
\language "english"

global = {
  \time 9/8
  \key d \major
}

sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }
mBreak = { }

\header {
  %	title = \markup {\medium \caps "Title."}
  %	poet = ""
  %	composer = ""

  % meter = \markup {\italic "Cheerfully."}
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
            \partial 8 d8 | d4 a8\noBeam fs8_( d8) <d a>8 <d b>4 <d a>8 | d4 a8 fs8_( d8) <d a>8 <d d'>4 <d a>8 | \mBreak
            d4 a8 fs8_( d8) <d a>8  <d b>4 <g cs'>8 | \partial 8*8 <d d'>8^( a8) <d b>8 <fs a>8^( fs8) d8 <cs e>4 \bar "||" |
            \partial 8 d8 | <d d'>4 a8 \sdown d'8^( a8) <a d'> <cs' e'>4 <a fs'>8 | \mBreak
            <fs d'>4 \sup a8 \sdown d'^( fs'8) <gs d' e'>8 <a cs' e'>4 \sup a8 | \sdown <a d'>4 \sup <g a>8 \sdown <fs d'>8^( a8) <a d'>8 <gs d' e'>4  <g! cs' fs'>8 |
            \partial 8*8 <fs d'>8[^( a8) <d b>8] \sup <d a>8[^( fs8) d8] <cs fs>4 \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo

          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {
        % verse one
        The8 fit’s4 up8 on4 me8 now,4 The8 | fit’s4 up8 on4 me8 now,4 Come8 |
        quick4 -- ly8 gen4 -- tle8 lady,4 The8 | fit’s4 up8 -- on4 me8 now.4 | The8 world4 shall8 know4 they’re8 fools,4 And8 |
        so4 shalt8 thou4 do8 too,4 ‘Let8 | cob4 -- blers8 mend4 their8 tools,’4 The8 | fit’s4 up8 -- on4 me8 now.4 |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            <d, d>8 | <d, d>4.~ <d, d>4 \sdown fs8 g4 \sup <d, d>8 | <d, d>4. <d, d>4 \sdown fs8 b4 \sup <d, d>8 |
            <d, d>4.~ <d, d>4 \sdown fs8 g4 e8 | fs4 g8 d4 b8 a4 | \sup <d, d>8 | <d, d>4.~ <d, d>4 \sdown fs8 a4 \sup <d, d>8 |
            <d, d>4.~ <d, d>4 <e, e>8 <a,, a,>4 <g, g>8 | <fs, fs>4 <e, e>8 <d, d>4 <cs, cs>8 <b,, b>4 <a,, a,>8 | <d, d>4 \sdown g8 fs4 b8 a4 | \fine
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