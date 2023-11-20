\version "2.24"
\language "english"

global = {
  \time 4/4
  \key g \major
}

mBreak = { \break }

\score {

  \new ChoirStaff {
    <<
      \new Staff = "up"  {
        <<
          \global
          \new 	Voice = "one" 	\fixed c' {
            %\voiceOne
            \partial 2 b4. c'8 | <g d'>4 <g b> <g e'> <e g>8( b16 c') | b8.( a16) g4 b4. cs'8 | <a d'>4 <b e'> <fs d'>^( <e cs'>) | \mBreak
            <fs d'>2 <d d'>4 a8 <d b> | <fs c'> d' <g b>4 a8( e) a( g) | fs8.( e16) d4 \once \stemUp d'4( g8) \noBeam 8 | \mBreak
            <e e'>4 a8( b16 c') <g b>4 <fs a> | \partial 2 g4 4 \bar "||" | %
            \partial 2 \textMark \markup {\caps Chorus. } <d g b>4.\f <d g c'>8 | <d g d'>4 <d g> <c fs c'> <d g b> | \mBreak
            <d g b>4 <fs a> <e a e'>4. <fs a d'>8 | <g cs'>4 <fs a d'>4 4 <e a cs'> | <fs a d'>2 \textMark \markup { \caps Solo. } <g d'>4. <d b>8 | \mBreak
            <e g e'>4. <g d'>8 c'^( b) a g | <a, fs>4 d \textMark \markup {\caps Chorus. } <d g d'>4. <d g>8 | <e g e'>4 a8( b16 c') <d g b>4 <c fs a> | \partial 2 <b, g>2 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            g4 s4 | s1 | \once \stemUp g4 s4 g4 s4 | s1 |
            s1 | s2 \stemDown e4 c | a,4 s <d g> s | 
            s1*6 |
            s2 fs8 g d( e) | s1 | s4 e4 s2 | s2 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Con -- ci -- na -- mus, O so -- da -- les! E -- ja, quid si -- le-
        -mus? No -- bi -- le | can -- ti -- cum, dul -- ce | me -- los, Do mum, |
        do -- mum re -- so | ne -- mus. | Do -- mum, | do -- mum, dul -- ce |
        do -- mum Dul -- ce | do -- mum re -- so | nemus, Do -- mum, |
        do -- mum dul -- ce _ | do -- mum, Dul -- ce | do -- mum re -- so -- nemus.
      }	% end lyrics verse one

      \new Lyrics \lyricsto "one" {	% verse two
        Come, com -- pan -- ions, join your | voi -- ces, Hearts with | plea -- sure bound |
        -ing; Sing we the | no -- ble lay, Sweet song_of | holi -- day, Joys of |
        home, sweet home, re -- sound -- ing. | Home! sweet home, with ev’ -- ry |
        plea -- sure! Home, with | ev’ -- ry bless -- ing | crown’d: Home, our |
        best de -- light and _ | trea -- sure! Home, the | wel -- come song, re -- sound! |
      }	% end lyrics verse two
      
      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            g,4. a,8 | b,4 g, c d | g2 4. e8 | fs4 g a a, | 
            d2 fs,4. g,8 | a,4 g, c a, | d2 b,4. 8 | 
            c4 c d d | g g | <g, g>4. <a, a>8 | <b, b>4 4 <a, a> <g, g> |
            <d, d>2 <cs, cs>4. <d, d>8 | <e, e>4 <fs, fs>8 <g, g> <a, a>4  <a,, a,>4 | <d, d>4 <c,! c!> <b,, b,>4. <g,, g,>8 |
            c4. b,8 a, g, fs, e, | d,4 <d, d> <b,, b,>4. 8 | <c, c>4 4 <d, d>4 4 | <g, g>2 | \fine
          } % end voice three

          \new 	Voice {
            %\voiceFour
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