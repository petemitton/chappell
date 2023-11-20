\version "2.22.0"
\language "english"

global = {
  \time 4/4
  \key a \major
}

mBreak = { \break }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

%  meter = \markup {\italic "Majestically."}
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
            \repeat volta 2 {cs4. cs8 d4. d8 | <gs, e> <a, fs> <b, gs> <a, fs> <gs, e>4 <a, e> | <a, fs>8 <d gs> <e a> <fs b> <e a cs'>4 b8. a16 | <cs a>4 <cs a> <cs a>2 |} \mBreak
            \key c \major \repeat volta 2 { <c a>8 b c' d' e'4 e' | d' c' b <e gs c'> | <c a> <c e a> <e gs> <ds fs> |} \alternative {{<b, e gs>4 <gs, e> b2\rest} {<b, e gs>4 <gs, e> b4\rest b8\rest e8 }} \bar "||" | \mBreak
            \repeat volta 2 {<b, gs>4 e b4. b8 | <e c'>4 a s2 | s2 d'4. c'8 | } \alternative {{c'4 <e c'>4 b\rest b8\rest e } {c'4 <e c'> b2\rest }} | \repeat volta 2 { <c c'>2^\>_( <e b>4 <c a>)\! | \mBreak
            gs2. gs4 | s1 | }  \alternative {{ s1 } { <gs b>2. e4 }} | \key a \major \repeat volta 2 { s2. <cs a>4 | s1 | s2 \stemDown e'4. \stemUp s8 |} 
            \alternative {{ s1 } { <a cs'>4 <e a cs'> b\rest a }} \bar "||" | \time 6/4 a4. b8 cs'4 cs'4. d'8 e'4 | e2. e2 e4 | e4. fs8 gs4 gs4. a8 b4 | \mBreak
            d2. d2 d4 | d4._( e8) fs4 fs4. gs8 a4 | e2. s | \stemDown cs'4. \stemUp s8 s2. a4 | <cs a>1. | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            \stemUp s2 a,4 s | s1 | s2. <d gs>4 | s1 |
            \stemDown s1*2 | s2 b, | s1*2 |
            s2 \stemUp e4 \stemDown s | s2 <a e'>4. <a f'>8 | <b d'>4 <c' e'> c' b8 c' | c'4 s2. | c'4 s2. | s1 |
            e1 | <e e'>2^\> <gs d'>4^( <e c'>) | <gs b>1\! | s1 | <e a cs'>4 cs' cs' s | <e b e'> e' e' <e a cs'> | <a d'>8^( e') <a d' fs'>4 <gs b>4 s 8 d' |
            <a cs'>4 <e a cs'> b2\rest | s1 | \stemUp e4 s2 e4 s2 | s1.*2 |
            s1. | s2. \stemUp d4 s2 \stemDown | s2. <e b e'> | <e a>4 s8 d' cs'4 <d gs b>2 s4 | s1. |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        Tom4. is8 come4. to8 view the world a -- gain,4 To | see8 if he can ease4 his8. dis16 -- temp4 -- er’d brain.2 |
        Through8 the woods I wan4 -- der | night and day, To | find my stragg -- ling | sen -- ses,4 2 | 2. When4 |
        he4 me spies,4. a8 -- way4 he flies,4. For8 Time4 will stay4. for8 | no4 man; 2 With4 | 1 | Cold2. and4 |
        com2. -- fort4 -- less2 I | lie,1 | 1 | hark!4 I hear A -- pol -- lo’s team, The | car4 -- man ’gins4. to8 |
        whis4 -- tle;4 2 | 2. Come,4 | Vul4. -- can,8 with4 tools4. and8 with4 | tac2. -- kles,2 And4 | knock4. off8 my4 troub4. -- le8 -- some4 |
        shack2. -- les,2 Bid4 | Char4. -- les8 make4 rea4. -- dy8 his4 | wain,2. To | fetch4. my8 five4 senses2 a4 -- gain.1. |
      }	% end lyrics verse one
      \new Lyrics \lyricmode {% verse two
        -to4. doth8 laugh,4. and8 | Pros8 -- er -- pine is glad4 To | see8 poor nak -- ed Tom4 of | Bed4 -- lam mad.2 |
        In8 an an -- gry mood4 I | met old Time With8 a | whip4 for4 my of- | 1 | -fences;2 2 |
        hid4 -- eous cries4. I8 | rend4 the skies,4. How8 | pi4 -- ty is4. not8 | 1 | common.2 2 | Help,2 4 oh |
        help!2. or4 | else2 I | 1 | die.2. Now4 | Chaste Di -- a -- na | bends her bow, The | boar be -- gins4. to8 |
        1 | bris4 -- tle.4 2 |
      }% end lyrics verse two



      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            s1 | s2. <cs, cs>4 | <d, d>8 <b,, b,> <cs, cs> <d, d> <e, e>4 <e, e> | <a, a> <a, e a>  <a, e a>2 |
            \key c \major
            <a,, a,>4 d\rest \clef treble c'8 d' e' fs' | <b gs'>4 <a a'> <e' gs'> \clef bass s4 | s a, b,2 | e,2 d\rest | e, d\rest |
            s1*5 | a,2 g,4 f, |
            e,1 | c2_( b,4 a, | e,1) | e, | \key a \major a,2. s4 | s1 | s2. e,4 |
            a,4 a, d2\rest | a,4 a, d2\rest | \time 6/4 s1.*3 |
            s1.*3 | s2 cs4 s2. | s1. | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            <a, a>2 <fs, fs> | <e, e>2. s4 | s1*2 |
            s2. c'4 | s2. e4 | a4 s2. | s1*2 |
            e2 gs | a c'4. d'8 | g'4 c' g' g | c' c' s2 | c'4 c' s2 | s1 |
            s1*4 | s2. a4 | gs2. a4 | fs d e s |
            s1*2 | <a cs'>2. a | <gs b>1. | <e gs b>2. <e b> |
            <b, fs b>1. | <d fs a>2. <d a> | <cs a> <gs, e> | <a, e>2 s4 e2. | a1. |
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