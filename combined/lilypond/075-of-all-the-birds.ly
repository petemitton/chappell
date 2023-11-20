\version "2.24.0"
\language "english"

global = {
	\time 6/8
	\key g \major
}

mBreak = { }

\header {
%	title = \markup {\medium \caps "Title."}
%	poet = ""
%	composer = ""

%	meter = \markup {\italic ""}
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
				\partial 8 b8 | b4 b8 b4 b8 | b8. c'16 d'8 e'4 e'8 | 
				d'4 d'8 d'8. c'16 b8 | <e c'>4 <fs a>8 <g b>4 b8 | \mBreak
				b8. b16 b8 b4 b8 | b8. c'16 d'8 e'4 e'8 | d'4 d'8 d'4 b8 | 
				<e c'>4 <fs a>8 g4 b8 | d'4 b8 d'4 b8 | \mBreak
				d'4 b8 d'4 b8 | s2.*2 | b8. b16 b8 b4 b8 | b8. c'16 d'8 e'4 e'8 | \mBreak
				d'8. d'16 d'8 <fs d'>4 <g b>8 | <e c'>4 <fs a>8 g4. | s2. | b8. c'16 d'8 e'4 e'8 |
				d'4 d'8 <fs d'>4 <g b>8 | \mBreak
				<e c'>4 <fs a>8 <g b>4. | b8 b b d'4 b8 | b8. c'16 d'8 e'4 e'8 | 
				d'4 d'8 <fs d'>4 <g b>8 | \partial 8*5 c'8. b16 a8 g4 \fine | 
			}	% end voice one
			\new Voice  \fixed c' {
				\voiceTwo
				s8 | g2. | g4. g | g fs4 g8 | s2. |
				g2. | g4. g | g fs4 g8 | s2.*2 |
				g2. | <g d'>4. <g c' e'> | <g b d'>~<g b d'>4 b8 | g2. | g4. g |
				g4. s | s2. | <g b>4. <g d'> | g g | g s |
				s2. | g4. g | f e | g s | e4 fs8 s4 |
			} % end voice two
		>>
		} % end staff up
		
		\new Lyrics \lyricmode {	% verse one
		  Of8 | all4 the8 birds4 that8 | e-8.ver16 I8 see,4 The8 | owl8 is8 the8 fairest4 in8 | her4 de8 -- gree;4 For8 |
		  all8. the16 day8 long4 she8 | sits8. in16 a8 tree,4 And8 | when4 the8 night4 comes,8 | 
		  away4  flies8 she:4 Te8 | whit4 te8 whoo!4 to8 |
		  whom4 drinkst8 thou?4 Sir8 | Knave,4. to4. | you.2 8 This8 | song8. is16 well8 sung4 I8 | make8. you16 a8 vow,4 And8 |
		  he8. is16 a8 knave4 that8 | 8 drinketh4 now:4. | Nose,4. nose,4. | jol8. -- ly16 red8 nose!4 And8 | who4 gave8 thee4 that8 |
		  jolly4 red8 nose?4. | 8 Cinnamon,4 gin4 -- ger,8 | nutmegs4 and8 cloves,4 And8 | that4 gave8 me4 my8 | jol8. -- ly16 red8 nose.4 |
		  		}	% end lyrics verse one
		
		\new   Staff = "down" {
		<<
			\clef bass
			\global
			\new Voice {
				\voiceThree
				s8 | s2.*3 | a4. s |
				s2.*3 | a4. s | s2. |
				s2.*5 |
				s2. | a4. s | s2. | g8. a16 b8 s4. | s2. |
				a4. s | s2. | g8. a16 b8 s4. | s2. | s2 s8 | \fine
			} % end voice three
			
			\new 	Voice {
				\voiceFour
				r8 | <g d'>2. | <g d'>4. <c c'> | <g b> <d a>4 <e g>8 | c4 d8 <g, g>4 r8 |
				<g d'>2. | <g d'>4. <c c'> | <g b> <d a>4 <e g>8 | c4 d8 <g b>4 r8 | r4. r4 g8 |
				b4 g8 b4 g8 | b4. c' | g4.~g4 r8 | <g d'>2. | <g d'>4. <c c'> |
				<g b>4. <d a>4 <e g>8 | c4 d8 <g b>4. | g4. b | g4. <c c'> | <g b>4. <d a>4 <e g>8 |
				c4 d8 <g, g>4. | g b4 g8 | g4. <c c'> | <d b> <d a>4 <e g>8 | <c a>4 <d a>8 <g b>4 |
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
			\override Staff.Rest.voiced-position=0
			}%end score
		}%end context
	}%end layout

}%end score