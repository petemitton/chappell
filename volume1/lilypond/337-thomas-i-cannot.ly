\version "2.22.0"
\language "english"

global = {
  \time 6/8
  \key d \major
}

mBreak = { \break }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

%  meter = \markup {\italic "Gaily."}
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
            \repeat volta 2 { \partial 8 d8 | fs g a b4 a8 | d'4 cs'8 b4 a8 | fs g fs <cs e>4 d8 | \mBreak
                              \partial 8*5 d8 d'4~ d' | }
            \partial 8 d'8 | cs'4 d'8 e' d' cs' | d' e' cs' b4 a8 | cs'4 d'8 e'4 fs8 | \mBreak
            g!8 a fs e4 <fs d'>8 | <g cs'>4 <a d'>8 <b e'> <a d'> <g cs'> | <fs b> cs' <e a> <fs d'>4 <d a>8 | \mBreak
            <d fs>8 g fs <cs e>4 d8 | b d' a b d' a | <d fs> g fs <cs e>4 d8 | \partial 8*5 d s2 \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | d2. | d2. | d4. s4. |
            s2. | e2.~ | e4. gs4 a8 | e4.~ e4 d8 |
            cs4 d8 cs4 s8 | s2.*2 |
            s2. | d4. d4 s8 | s2. | s8 d'4^~ d' |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        My8 | scan -- dal -- ous neighbours4 of8 | Portu4 -- gal8 Street,4 Come8 | list8 -- en a -- while to my |
        dit8 -- ty;2 | As8 | merry4 a8 son -- net as | times can af -- ford,4 Of8 | Egling4 -- ton,8 Walker,4 Jack8 |
        Hall8 and my Lord;4 If16 you | doubt8 what I say, to con -- firm ev’ -- ry word,4 I'll8 |
        call8 as a witness4 Will8 | Thom -- as, Will Thom -- as, I’ll | call as a witness4 Will8 | Thom8 -- as.2 |
      }	% end lyrics verse one
      \new Lyrics \lyricmode {% verse two
        I'll8 | sing you16 a16 song8 though4 my8 | voice be not sweet,4 And8 | that8 you will say is a |
        pi8 -- ty.2 |
      }% end lyrics verse two


      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            d8\rest | d e fs g4 fs8 | b4 a8 g4 fs8 | a4. <a, g> |
            <d fs>4.~ <d fs>4 | d8\rest | a4 b8 cs' b a | gs4 a8 e4 a,8 | a,4 b,8 cs4 d8 |
            e4 d8 a4 d8 | e4 fs8 g fs e | d4 cs8 b,4 fs,8 |
            a,4. <a, g>4 <b, fs>8 | <g, g>4 <d fs>8 <g, g>4 <d fs>8 | <a, a>4. <a, g> | <d fs>4.^~ <d fs>4 | \fine
          } % end voice three

          \new 	Voice {
            
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