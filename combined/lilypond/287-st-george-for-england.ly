\version "2.22.0"
\language "english"

global = {
  \time 4/4
  \key a \major
}

mBreak = { \break }

\header {
                                %       title = \markup {\medium \caps "Title."}
                                %       poet = ""
                                %       composer = ""

%  meter = \markup {\italic ""}
                                %       arranger = ""
}
\score {

  \new ChoirStaff {
    <<
      \new Staff = "up"  {
        <<
          \global
          \new    Voice = "one"   \fixed c' {
            \voiceOne
            a4 a8 a a4. b8 | a g! fs e fs2 | fs8 b b b b b b4 | \mBreak
            b8 a gs fs gs4 e8 e | a4 a a a8 a | <ds a>4 a,8 a, e4 e8 e | \mBreak
            <ds b>4 b8 b b b b b | b a gs fs gs2 | a4 c'8 c' e' e' e' e' | \mBreak
            <e e'>4 e8 e e4 fs8 gs8 | <e a>4. e8 fs4. <a, cs>8 | \partial 2. <a, d> d <gs, b, e> e a,4 \bar "||" | \partial 4 b8\rest\f e8 | \mBreak
            <cs a>4. <d b>8 <e cs'>4 <cs a> | <d fs d'>2. cs'8 b | a2 <ds a>4 gs8 fs | <gs, e>2. <gs, d! e>4 | \mBreak
            <a, cs a>2. <a, cs a>4 | <a, d>2. <a, d fs>4 | <b, e>2. e4 | a,1 \fine |
          }       % end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            cs1 | cs2 d2 | ds1 |
            ds2 e | cs1 | s |
            s1 | ds2 e | e1 |
            s2 e4 e | s1 | s2. | s4 |
            s1 | s2. <d gs>4 | cs2 b,4. a,8 | s1 |
            s1*2 | a,4 gs,8 fs, <gs, b,>2 | s1 |
          } % end voice two
        >>
      } % end staff up
      \new Lyrics \lyricmode {        % verse one
        Why4 should8 we boast4. of8 | Ar -- thur and his knights,2 | Know8 -- ing well how many4 men |
        have8 en -- du -- red fights?4 For8 be -- sides4 King Ar -- thur8 and Lance4 -- lot8 do Lake,4 Or8 Sir
        Tris4 -- tram8 de Li -- o -- nel, that | fought for La -- dies’ sake,2 | Read4 in8 old his -- to -- ries and
        there4 you8 shall see,4 How8 St. | George,4. St.8 George4. the8 | Drag -- on made to flee.4 | 8 Saint |
        George4. he8 was4 for | England,2. St.4 | Den2 -- nis4 was8 for | France,2. Sing4 |
        Ho2. -- ni4 | soit2. qui4 | mal2.  y4 | pense.1 |
    }       % end lyrics verse one
      \new Staff = "down"
      {
    <<
        \clef bass
        \global
        \new Voice {
        \voiceThree
        s1*3 |
        s1*2 | a4 s2. |
        s1*3 |
        s1*2 | fs,4 e, a, | d4\rest |
        <a,, a,>2.. <a,, a,>8 | <b,, b,>4. <cs, cs>8 <d, d>4 <e, e> | <fs, fs>2 <b,, b,> | <e, e>4. <d,! d!>8 <cs, cs>4 <b,, b,> |
        <a,, a,>4. <b,, b,>8 <cs, cs>4 <a,, a,> | <b,, b,>4. <cs, cs>8 <d, d>4 <b,, b,> | <e, e>2 <e, d> | <a, cs>1 | \fine
        } % end voice three
        \new Voice {
          <a, e a>1 | <a, e a>2 <d a> | <b, fs b>1 |
          <b, fs b>2 <e b> | <a, e a>1 | fs2 <e gs b> | 
          <b, fs b>1 | <b, fs b>2 <e gs b> | <cs e a>1 |
          <cs e a>2 <e gs b>4 <d e b> | <cs e a>4. <cs a>8 <d a>4. a,8 | s2. | s4 |
          s1*4 |
          s1*4 |
          } % end voice four
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
