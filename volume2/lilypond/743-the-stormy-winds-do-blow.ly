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
            \voiceOne
            \partial 4 fs8._( g16) | <d a>4 a8. fs16 <d a>4 a8. b16 | a8._( g16) fs8. e16 d4 a8. 16 | <d b>4 g <g d'> cs'8._( b16) | \mBreak 
            \stemNeutral <fs a>2. b8. cs'16 | <fs d'>4 <g d'> d'8._([ cs'16) a8. fs16] | \stemNeutral g8._([ fs16) g8. a16] b4 cs'8.( d'16) | \mBreak
            \stemUp a4 8. fs16 a8._([ g16) e8. fs16] | d8.[ e16 <cs fs>8. <b, g>16] <d a>4 d'8. b16 | %
            <d fs a>4 a8. fs16 a8._([ g16) e8. fs16] | \partial 2. d2. \bar "||" | \mBreak
            \textMark \markup { \italic "Chorus." } \partial 4 fs8. g16 | <d a>4 fs a8._([ g16) e8._( cs16)] | %
            d8.[ cs16 d8. e16] fs4 d8. 16 | <d b>4 g <g d'> cs'8._( b16) | \mBreak
            \stemNeutral <fs a>2. b8.( cs'16) | <fs d'>4 <g d'> d'8._([ cs'16) a8. fs16] | g8._([ fs16) g8. a16] b4 cs'8. d'16 | \mBreak
            a4 8. fs16 a8._([ g16) e8. fs16] | d8.[ e16 <cs fs>8. <b, g>16] <d a>4 \stemUp d'8. b16 | %
            <d fs a>4 a8. fs16 a8._([ g16) e8. fs16] | \partial 2. d2. | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            \stemUp s4 | s1 | cs4 s2 d4 | s1 |
            s1 | s2 a4 s | s1 |
            s4 d cs s | s2. <d g>4 | s2 cs4 s | s2. |
            s4 | s2 cs4 s | s1*2 |
            s1 | s2 a4 s | s1 |
            s4 d cs s | s2. <d g>4 | s2 cs4 s | s2. |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Then | up spoke the cap -- tain of | our gal -- lant ship, And a | brave young man was |
        he; “I have | sixty gallant sea -- men a -- board of my ship, But |
        none half so gal -- lant as | he, as he, as he, But there’s | none half so gal -- lant as he.” |
        While the | vi -- vid light -- nings | "flash,   .   .   .   ." _ _ _ _  And the | storm -- y winds do | 
        blow; While | we poor sea -- men are | up, up a -- loft, And the |
        lands -- men are all down be -- low, be -- low, be -- low, And the | lands -- men are all down be -- low. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            d4\rest | s1 | e4 a fs fs, | g,2 s2 |
            s1*2 | b4.. s16 s2 |
            s1*3 | s2. |
            s4 | s1*3 | 
            s1*2 | b4.. s16 s2 |
            s1*3 | s2. |
          } % end voice three

          \new 	Voice {
            \voiceFour
            s4 | <d fs>2 2 | a,2 b,4 s | s2 b4 a8. g16 |
            d4 a8. 16 d'4 d\rest | <b d'>4 4 <a e'> cs'8. a16 | g4 s8. cs'16 d'4 <g b> |
            \stemNeutral <fs d'>4 fs8. d16 a,4 <a, g> | <b, fs> a,8. g,16 fs,4 e, | a,2 <a, e>4 <a, g> | <d fs>2. |
            d4\rest | <d fs>2 <a, g> | <b, fs>2. fs,4 | g,2 b4 a8.^( g16) |
            d4 a8. 16 d'4 d\rest | <b d'>4 4 <a e'> cs'8. a16 | g4 s8. cs'16 d'4 <g b> |
            <fs d'>4 fs8. d16 a,4 <a, g> | <b, fs> a,8. g,16 fs,4 e, | a,2 <a, e>4 <a, g> | <d fs>2. | \fine
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