\version "2.24"
\language "english"

global = {
  \time 4/4
  \key f \major
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
            <a c'>4. <g bf>8 <f a>4 <f d'> | <a c'> f f^( <e g>) | <f a> bf8( a) <c g>4 f | <e g>8( f) e( d) c2 | \mBreak
            <f c'>4. bf8 a4 <f d'> | <a c'> f f^( <e g>) | <f a>4 <d g bf> g4. f8 | <a, f>2. r4 | \mBreak
            f'4. e'8 d'4 <e' cs'> | <f d'> a a <f a>8 b! | <g c'!>4 <a d'> <e a d'> cs' | <f a d'>2^( <ef f c'!>) | \mBreak
            <d f c'>4 bf <c f bf> a | <d f d'> <c f a> <c e! g>( <c f>) | <bf, e> <a, c f> g4. f8 | <a, f>2. r4 | \fine 
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s1*6 | s2 \once \stemUp <bf, e>4 s4 | s1 |
            <f a>4 s2. | s1*3 |
            s1*2 | s2 \stemUp <bf, e>4 s4 | s1 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        Love4. me8 lit4 -- tle, | love me long,2 | Is4 the bur -- den | of my song,2 | 
        Love4. that8 is4 too | hot and strong2 | Burn4 -- eth soon4. to8 | waste.2. 4 | 
        Still4. I8 would4 not | have thee cold, Nor8 too | back4 -- ward nor too | bold;1 |
        Love4 that last -- eth | till ’tis old,2 | Fa4 -- deth not4. in8 | haste.2. 4 | 
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            f,2. bf,4 | f2. c4 | f2 e4 d | c2. a,4 |
            a,4. g,8 f,4 bf, | f2. c4 | f4 bf, c2 | f2 f,4 r4 |
            d2. a4 | d'2. d4 | e f8 g a4 a, | d2 a |
            bf2 f | bf,4 f bf a | g f c2 | f2 f,4 r | \fine
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