\version "2.22.0"
\language "english"

global = {
  \time 6/8
  \key f \major
}

mBreak = { \break }

\header {
  %title = \markup {\medium "CHRISTMAS CAROL."}
  %	poet = ""
  %composer = "About 1460."

  %meter = \markup {\italic "The Burden or Chorus."}
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
            \partial 8 g8^\f | <bf, d g>4 bf8 <d f a>4 f8 | a8._\( g16\) f16_\( e16\) d4 d8^\markup{ \super a } | <d g>4 <d bf>8 <d a>4 <d f>8 | <cs e>4.~<cs e>4 d8^\p |\mBreak
            <bf d f>4 <bf d f>8 <bf d g>4 <c e g>8 | <c f a>4 a8 <c f>4. | g8 bf8 a8 g4 <a d f>8 | <c e g>2. | <bf, d g>4^\f^\markup{\italic "Carol."} g8 <d f a>4 bf8 |\mBreak 
            <c g c'>4 bf8 <c f a>4 <c g>8 |<bf, e bf>4 <c f a>8 <d f>8 <d g>4| <cs e a>4.~<cs e a>4 d8^\p |<bf, d f>4 <bf,d f>8 <bf,d g>4 <c e g>8 |<c f a>4 a8 <c f>4.|\mBreak
            g8 bf8 a8 g4 <a,d f>8 |\partial 8*7 <c ef g>4.~<c ef g>4 \bar "||" \partial 8 <d f d'>8^\f|<f c'>4
            <bf,e bf>8 <c f a>4 <cs g>8|<d f>4 e8 d4 d8|<d f>4 <d g>8 <d f>8 <cs e>4|\mBreak
            d4.~d4 d8^\p|<bf,d f>4 <bf,d f>8 <bf,d g>4 <c e g>8|<c f(a>4 a8) <c f>4.|g8  bf8 a8 g4 <a,d f>8 |\partial 8*5 <c e g>4.~<c e g>4 \bar "||"
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            \partial 8 s8 | s2. | <cs e>8 s4 s4. | s2.*2 |
            s2.*2 | d4.~d4 s8 | 
            s2.*7|
            d4.~d4 s8 | s2.*7
            d4.~d4 s8|
          } % end voice two
        >>
      } % end staff up
      
      \new Lyrics \lyricmode {
        Now-8 | ell,4 nowell4. now-8 | ell,4 nowell,4.  [Now-8 | ell,4 now-ell,4. now-8 | ell.]2 8 This8 |
        is4 the8 sa-4 lu-8 | ta-4 tion8 of4. | the8 an-8 gel8 Ga-4 bri-8 el.2. | Ti-dings4. true4 there8 |
        be4 come8 new,4 sent8 | fromh4 the8 Trin-4 i-8 | ty,4. 4 By8 | Ga-4 bri-8 el4 to8 Na-4 za-8 reth,4. |
        ci-8ty8 of8 Ga-4li-8 | lee:2 8   A8 | clean4 maiden4. and8 | pure4 virgin,4.  Through8 | her4 hu-8mi-8li-4 |
        -ty.4. 4 Hath8| con-4cei-8ved4 the8 | per4-8son4. | second4 in8 De-4i-8 | ty.4. 4|
      }	% end lyrics
      
      \new Lyrics \lyricmode {
        8 | Bring4 us8 in4 good8 | ale,4 good8 ale,4 And8 | bring4 us8 in4 good8 | ale:2 4 |
        For4 our8 bless-ed4. | La-dy's4. sake,4. | bring4 us8 in4 good8 | ale.2. | Bring4 us8 in4 no8
        brown4. bread,4 for8 | that4 is8 made8 of4 | bran,4. 4  Nor8 | bring4 us8 in4 no8 | white4 bread,8 For4.
        there8-8in8 is4 no8 | gain.2 8 But8 | bring4 us8 in4 good8 | ale,4 good8 ale,4 And8 | bring4 us8 in8 good4 |
        ale.4. 4. | For8  our4 blessed4.| La-4dy's8 sake,4. | Bring4 us8 in4 good8 | ale.4. 4 |
      }	% end lyrics verse 2
      \new   Staff = "down" {
        <<
          \clef bass
          \global
          
          \new 	Voice {
            \voiceThree
            \partial 8 r8 | <g,,  g,>4.^\f <d, d>4. | <a,, a,>4. <bf,, bf,>4. | <bf,, bf,>4 \ottava #-1 g,,8 f,,4 d,,8 | \ottava #0 <a,, a,>4.~<a,, a,>4 bf,8^\p |
            b,4 a,8 g,4 c8 | f,4. a,4. |bf,4.~bf,4 d8|c2. \bar "||" <g, d g>4.^\f <d,d>4.|
            <e,c e>4. <f, c f >4 <e, e>8|<g, g>4 <f, f>8 <bf, bf >4 <bf, bf>8|<a, a>4.~<a, a>4 bf,8^\p|bf,4 a,8 g,4 c8|f,4. a,4.|
            bf,4.~bf,4 d8|\partial 8*7 c4.~c4 \bar "||" \partial 8 <bf, bf>8^\f |<a,a>4 <g,g>8 <f,f>4
            <e,e g>8|<d,d a>4 <c,! c! a >8 <bf,,bf, f bf>4.|<a,,a,a>4 
            <g,,g, bf>8 <a,,a,a>8 <a,,a,g>4|
            <d,d f>4.~<d,d f>4 bf,8^\p |bf,4 a,8 g,4 c8|f,4. a,4.|bf,4.~bf,4 d8|c4.~c4||
          }	
          % end voice three

        >>
      } % end staff down
    >>
  } % end choir staff

  \layout{
    \context{
      \Score {
        \omit  BarNumber
        \override LyricText.self-alignment-X = #LEFT
      }%end score
    }%end context
  }%end layout

}%end score