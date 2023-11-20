\version "2.22.2"
\language "english"

global = {
  \time 4/4
  \key d \major
}

mBreak = { \break }
lalign = { \once \override  LyricText.self-alignment-X = #LEFT }
dynamicsX =
#(define-music-function (offset)(number?)
   #{
     \once \override DynamicText.X-offset = $offset
     \once \override DynamicLineSpanner.Y-offset = #0
   #})
hyphen = { \once \override LyricHyphen.minimum-distance = #1.0 }

\header {
  %	title = \markup {\medium \caps "Title."}
  %	poet = ""
  %	composer = ""

  meter = \markup {\italic ""}
  %	arranger = ""
}
\score {

  \new ChoirStaff {
    <<
      \new Staff = "up"  {
        <<
          \global
          \new 	Voice = "one" 	\fixed c' {
            %\voiceOne
            \repeat volta 2 { d2. a,4 | d <d fs> <cs e a>2 | <d b d'>4. <a cs>8 <g b>2~ | 4 a8_( b) <b, d>4. e8 | <a, d fs>2. <d fs d'>4 | \mBreak
            <fs d'>2. <fs d' fs'>4 | <a d'>4 <d a> <d g b> <d fs a> | <d g b> cs'8^( d') <d fs>4 e8_( d) | <b, g>4 e <b, cs fs> <as, cs fs> | \mBreak
            <b, d b>1 } | \time 6/8 \repeat volta 2 { fs4 g8 a4 b8 | a4 fs8 e4 d8 | g4 fs8 g4 a8 | \mBreak
            <d b>4.~ 4 cs'8 | \stemUp d'4 cs'8 d'4 e'8 | \stemDown <a fs'>4 e'8 d'4 cs'8 | \stemUp <d gs b>4 <cs a>8 <b, d a>4 gs8 |  \mBreak       
            \partial 8*5 <cs a>4.~4 } | \repeat volta 2 { \stemDown \partial 8 cs'16^( d') | <fs e'>4 cs'8 <fs e'>4 <as e'>8 | <fs b fs'>4^( e'8) d'4 <g cs'>8 | <fs d'>8 b4 <e cs'>8 \stemUp as4 | \mBreak 
            <d b>4. <d b d'> | fs8. e16 fs8 g8. a16 <cs fs>8 | <b, e>4 d8 cs8. b,16 a,8 | <a, d>4 fs8 fs8. g16 fs8 |  \mBreak
            <d fs>4 b8 b8. cs'16 b8 | e4 \stemDown e'8 e'8. fs'16 e'8 | a4 d'8 4 <a e'>8 | <fs fs'>8 d' fs' <e e'> cs' e' | \mBreak
            \stemUp <d  d'>8 b d' cs'8. b16 a8 | \stemDown <e d'>8 e' <d' fs'> \stemUp <g b>4 <e cs'>8 | \partial 8*5 <e cs'>4.~4 |
            }
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s1*10 | 
            d2.~ | 4 s2 | 2. |
            s2. | a2. |
            s2.*7 | \stemUp d4 s8 d4 s8 | s4. a,4 s8 | s4. d4 s8 |
            s4. d4 s8 | s2.*3 |
            s4. e4 s8 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        He2. that4 | is a clear2 Ca4. -- va8 -- liar2. __ will4 not4. re8 -- pine,2. Al-4 | 
        -though2. his4 | sub -- stance grow so | ve -- ry low that | he can -- not drink |
        wine.1 | Vir4 -- tue8 is4 its8 | own4 re8 -- ward,4 And8 | For4 -- tune8 is4 a8 |
        8 jade4. 8 Whom8 | none4 but8 fools4 and8 knaves4 re8 -- gard,4 Or8 | e’er4 im8 -- plore4 for8 |
        8 aid.4. 8 | While8 | we4 who8 fight4 for8 | fame,4. Shall4 the8 | ways8 of4 ho8 -- nour4 |
        prove4. All | they8. who16 make8 sport8. of16 us,8 | Shall4 fall8 short8. of16 us,8 | Fate4 will8 flat8. -- ter16 them8 |
        And4 will8 scat8. -- ter16 them,8 | Whilst4 our8 loy8. -- al16 -- ty8 | Looks4 to8 Royal4 -- ty8 | We that live peace -- ful -- ly |
        May be suc -- cess8. -- ful16 -- ly8 | Crown’d with a crown4 at8 | 8 last.4. 8 |
      }	% end lyrics verse one
      \new Lyrics \lyricmode { % verse two
         For2. -- tune4 | is a lass2 | will4. em8 -- brace,2. but4 soon4. des8 -- troy,2. Born4 | 
         free,2. in4 | li -- ber -- ty will | e -- ver be, and | still sing \markup { \italic "Vive" } \markup { \italic "le" } |
         \markup { \italic "Roy." }1 | He4 that8 is4 a8 | lus4 -- ty8 Ro4 -- ger,8 | And4 will8 serve4 his8 |
         8 king,4. 8 Al8 -- though4 he8 be4 a8 | tat4 -- ter’d8 sol4 -- dier,8 | Yet4 will8 skip4 and8 | 
         8 sing.4. 8 | And8 | though4 an8 ho4 -- nest8 | man4. May | now8 be4 quite8 un-4 |
         -done4. He’ll | shew8. his16 al8 -- le8. -- gi16 -- ance8 | Love8 and o -- be8. -- di16 -- ence,8 | They4 will8 raise8. him16 up8 |
         Ho4 -- nour8 stay8. him16 up,8 | Vir4 -- tue8 keep8. him16 up,8 | We4 will8 praise him up, | While the vain court -- iers dine |
         With bot -- tles full8. of16 wine,8 | Ho8 -- nour will hold4 him8 | 8 fast.4. 8 |
      } % end verse two
      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            <fs a>2. e4 | fs4 s <a,, a,>2 | <g,, g,> <g,, g,> | s1 | s2. <b,, b,>4 | 
            <b,, b,>2. 4 | \stemDown <fs, fs> <fs, fs> <g, g> <d, d> | <g, g>2 <b, b> | \stemUp <e, e>4 <g, g> <fs, fs> <fs, fs> | 
            <b,, b,>1 | \stemDown d4 e8 fs4 g8 | fs4 d8\rest d4.\rest | b4 a8 b4 fs8 | 
            g4 d8 g,4 d8\rest | fs4 e8 fs4 cs8 | d4 d8\rest d4.\rest | e4. e |
            a,4 e8 a4 | d8\rest | as,4. b,4 cs8 | d4.~4 e8 | fs4. fs |
            b4. g | d4 cs8 b,4 a,8 | g,4. a, | fs, d, |
            b,4. g, | <g b> <e g cs'> | <fs a d'>~4 <a cs'>8 | \stemUp d'4. cs' |
            b4. a | <d a>4 b,8 g,4 a,8 | d,4 a,8 d4 |
          } % end voice three

          \new 	Voice {
            \voiceFour
            <d, d>2. <cs, cs>4 | <b,, b,> <b,, b,> s2 | s1 | <g, g>2-> <g, d g> | <d, d>2. s4 |  
            s1*5 | s2.*18 | d2.~ |
            2.
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