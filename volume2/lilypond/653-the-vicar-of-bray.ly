\version "2.24"
\language "english"

global = {
  \time 4/4
  \key d \major
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
            \partial 4 a | <fs d'> cs'8( b) a4 <fs b> | g <e a> fs <d g> | <d a> <b, d> <cs g> <d fs> | <cs e>2 d4 a | \mBreak
            \once \stemUp d'4 cs'8( b) a4 <d b> | <d g> <cs a> <d fs> <d g> | <d a> <b, d> <cs g>  <d fs> | \partial 2. <cs e>2 d4 \bar "||" | \partial 4 a | \mBreak
            <fs d'>4 <gs b> <a cs'> <e a> | <fs d'> cs'8( b) <a cs'>4 a | %
            <a d'> <gs cs'>8( <fs d'>) <e e'>4 <gs d'>8( <a cs'>) | <gs b>2 a4 <cs a>4 | \mBreak
            <d a d'>4 cs'8( b) <d fs a>4 <d fs b> | <d g> <cs e a> <d fs> <d g> | <d a> <b, d> <cs g> <d fs> | <cs e>2 d4 a | \mBreak
            <d fs d'>4 cs'8( b) <e a cs'>4 <e a> | d'8( cs') d'( b) <e a cs'>4 <cs a> | %
            <d a d'> <e gs d'>8( <fs d'>) <e a e'>4 <fs gs d'>8( <e cs'>) | <d gs b>2 <cs a>4 4 | \mBreak
            <d a d'>4 cs'8( b) <d fs a>4 <d fs b> | <d g> <cs e a> <d fs> %
            <d g> | <cs d a> <b, d>8 <a, d> <g, b, g> <cs g> <a, d fs>4 | \partial 2. <cs e>2 d4| \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4 | s4 g4 s2 | s1*3 |
            d2. s4 | s1*3 |
            s1 | s4 gs s2 | s1*2 |
            s4 <d g> s2 | s1*3 |
            s4 <e gs>4 s2 | <fs a>4 <e gs> s2 |s1*2 | 
            s4 <d g!>4 s2 | s1*2 | s2. |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        In | good King Charl -- es’s | gol -- den days, When | loy -- al -- ty no | harm meant, A |
        zeal -- ous high-church _ -- man was I,  And |so I got pre -- fer -- ment. | To |
        teach my flock I | ne -- ver miss’d Kings | were by God ap -- point -- ed, And |
        lost are those that | dare re -- sist Or | touch the Lord’s a -- noint -- ed. And |
        this is law that | I’ll main -- tain Un -- til my dy -- ing | day, Sir, That |
        what-so -- _ e -- ver | King shall reign, Still | I’ll be the Vi -- car of | Bray, Sir. 
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r4 | d e fs d | e cs d b, | fs, g, e, d, | a, a,, d, r | 
            b4 a8 g fs4 g | e a, d b, | fs, g, e, fs,8 g, |  a,4 a,, d, | r |
            b4 e' a cs' | b e a cs | fs e8( d) cs4 b,8( a,) | e4 e, a, g! |
            fs g d b, | e a, d b, | fs, g, e, fs,8( g,8) | a,4 a,, d, r |
            <b, b>4 <e, e> <g, g> <cs cs'> | <b, b> <e, e> <a, a>4. <g,! g!>8 | <fs, fs>4 <e, e>8( <d, d>) <cs, cs>4 <d, d> | <e, e> e, <a,, a,> <g,!  g!> |
            <fs, fs>4 <g, g> <d, d> <b,, b,> | <e, e> <a,, a,> <d, d> <b,, b,> | <fs,, fs,> <g,, g,> \ottava -1 e,, d,, | \ottava 0 \stemUp g2 fs,4 | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s1*8 |
            s4 | s1*15 | <a,, a,>4 a,, \ottava -1 fs,, |
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