\version "2.24"
\language "english"

global = {
  \time 6/8
  \key d \major
}

mBreak = { }

\score {

  \new ChoirStaff {
    <<
      \new Staff = "up"  {
        <<
          \global
          \new 	Voice = "one" 	\fixed c' {
            %\voiceOne
            \partial 8 fs16 g | a4 8 <g a>8( b) cs' | <fs d'>4 cs'8 <fs b>4 a8 | <d b>4 b8 <d g> fs g | \mBreak
            <d a>4 a8 <d fs>4 fs8 | <b, g>4 g8 <a,( e> d) e | <a, fs>4 fs8 d4 8 | <g, g>4 g8 <gs, d e>4 e8 | <a, cs a>4 a8 4 fs16( g!) | \mBreak
            a4 8 <g a> b cs' | <fs d'>4 cs'8 <fs b>4 a8 | <d b>4 b8 <d g(> fs) g | <d a>4 a8 <d fs>4 e16 fs | <b, g>4 g8 <a, e> d e | \mBreak
            <a, fs>4 fs8 d( fs) g | <d fs a>4 r8 <e a cs'>4 r8 | <d a d'>4 r8 <b, e g>4 r8 | <a, d fs>4 r8 <cs e>4 r8 | \partial 8*5 d4.~4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            %\voiceTwo
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        ’Twas8 | God4 a8 -- bove4 that8 | made4 all8 things,4 The8 | heav‘ns,4 the8 earth,4 and8 |
        all4 there8 -- in,4 The8 | ships4 that8 on4 the8 | sea4 do8 swim4 To8 | guard4 from8 foes4 that8 | none4 come8 in;4 And8 | 
        let4 them8 all4 do8 | what4 they8 can,4 ‘Twas8 | for4 one8 end,4 -the8 | use4 of8 man,4 So16 I | wish4 in8 heav -- en his |
        soul4 may8 dwell,4 That8 | first4 8 found4 8 | out4 8 the4 8 | leather4 8 bot4. -- tél.2
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            d16 e fs4 r8 e4 r8 | d4 r8 d4 r8 | g4 r8 e4 r8 |
            fs4 r8 d4 r8 | e4 r8 cs4 r8 | d4 r8 b,4 r8 | e4 r8 e4 r8 | a,4 r8 r4 d16( e) |
            fs4 r8 e4 r8 | d4 r8 d4 r8 | g4 r8 e4 r8 | fs4 r8 d4 r8 | e4 r8 cs4 r8 |
            d4 r8 b,4 r8 | a,4 r8 g,4 r8 | fs,4 r8 e,4 r8 | a,4 r8 <a,, g>4 r8 | <d, fs>4.~4 | \fine
          } % end voice three

          \new 	Voice {
            \voiceThree
          }	% end voice four

        >>
      } % end staff down
    >>
  } % end choir staff

  \layout{
    \context{
      \Score {
        \omit  BarNumber
      }%end score
    }%end context
  }%end layout

  \midi{}

}%end score