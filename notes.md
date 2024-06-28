```sql
CREATE TABLE artist (
    artist_id INT AUTO_INCREMENT PRIMARY KEY,
    firstname VARCHAR(50),
    lastname VARCHAR(50),
    age_when_joined INT,
    age_now INT,
    nickname VARCHAR(50),
    description TEXT,
    personal_quote TEXT,
    fun_fact TEXT,
    picture_url VARCHAR(255)
);

CREATE TABLE album (
    album_id INT AUTO_INCREMENT PRIMARY KEY,
    album_name VARCHAR(100),
    release_year YEAR
);

CREATE TABLE song (
    song_id INT AUTO_INCREMENT PRIMARY KEY,
    song_name VARCHAR(100),
    duration_seconds INT,
    album_id INT,
    artist_id INT,
    lyrics TEXT,
    FOREIGN KEY (album_id) REFERENCES album(album_id),
    FOREIGN KEY (artist_id) REFERENCES artist(artist_id)
);

INSERT INTO artist (firstname, lastname, age_when_joined, age_now, nickname, description, personal_quote, fun_fact, picture_url)
VALUES
('Melanie', 'Brown', 20, 49, 'Scary Spice', 'Known for her bold and fearless personality, Melanie Brown brought an edgy and wild energy to the group. She often wore leopard print and had a distinctive, powerful singing voice.', 'I\'ve always approached things with a hungry attitude.', 'Melanie Brown is a mother of three and has been a judge on the TV show "America\'s Got Talent."', 'url_to_picture_of_melanie_brown'),
('Melanie', 'Chisholm', 20, 50, 'Sporty Spice', 'Known for her athletic style and impressive vocal range, Melanie Chisholm often wore tracksuits and showcased a sporty, tomboy image.', 'It\'s about being true to yourself, whatever makes you feel good.', 'Melanie Chisholm has a black belt in karate and has released several solo albums post-Spice Girls.', 'url_to_picture_of_melanie_chisholm'),
('Emma', 'Bunton', 18, 48, 'Baby Spice', 'Known for her sweet and innocent demeanor, Emma Bunton often wore pigtails and baby doll dresses, embodying a youthful, playful spirit.', 'Be yourself and believe in what you do.', 'Emma Bunton has a successful career as a radio presenter and has appeared on several TV shows.', 'url_to_picture_of_emma_bunton'),
('Geri', 'Halliwell', 22, 51, 'Ginger Spice', 'Known for her vibrant personality and fiery red hair, Geri Halliwell often wore bold and patriotic outfits, including the iconic Union Jack dress.', 'We are obsessed with the idea that we can change ourselves, our lives, our luck, and our bodies.', 'Geri Halliwell is an author of children\'s books and has served as a judge on talent shows like "Australia\'s Got Talent."', 'url_to_picture_of_geri_halliwell'),
('Victoria', 'Adams', 20, 50, 'Posh Spice', 'Known for her sophisticated and glamorous style, Victoria (now) Beckham often wore high-fashion outfits and little black dresses, embodying a posh and elegant persona.', 'I love fashion and that\'s how I express myself.', 'Victoria Beckham has a highly successful fashion line and is married to retired soccer star David Beckham.', 'url_to_picture_of_victoria_beckham')
;

INSERT INTO album (album_name, release_year)
VALUES
('Spice', 1996),
('Spiceworld', 1997),
('Forever', 2000)
;

INSERT INTO song (song_name, duration_seconds, album_id, artist_id, lyrics)
VALUES
('Wannabe', 173, 1, 1, "Ha ha ha ha ha
Yo, I'll tell you what I want, what I really, really want
So tell me what you want, what you really, really want
I'll tell you what I want, what I really, really want
So tell me what you want, what you really, really want
I wanna, (ha) I wanna, (ha) I wanna, (ha) I wanna, (ha)
I wanna really, really, really wanna zigazig ah
If you want my future, forget my past
If you wanna get with me, better make it fast
Now don't go wasting my precious time
Get your act together we could be just fine
I'll tell you what I want, what I really, really want
So tell me what you want, what you really, really want
I wanna, (ha) I wanna, (ha) I wanna, (ha) I wanna, (ha)
I wanna really, really, really wanna zigazig ah
If you wanna be my lover, you gotta get with my friends
(Gotta get with my friends)
Make it last forever, friendship never ends
If you wanna be my lover, you have got to give
Taking is too easy, but that's the way it is
Oh, what do you think about that?
Now you know how I feel
Say you can handle my love, are you for real?
(Are you for real?)
I won't be hasty, I'll give you a try
If you really bug me then I'll say goodbye
Yo, I'll tell you what I want, what I really, really want
So tell me what you want, what you really, really want
I wanna, (ha) I wanna, (ha) I wanna, (ha) I wanna, (ha)
I wanna really, really, really wanna zigazig ah
If you wanna be my lover, you gotta get with my friends
(Gotta get with my friends)
Make it last forever, friendship never ends
If you wanna be my lover, you have got to give
(You've got to give)
Taking is too easy, but that's the way it is
So, here's a story from A to Z
You wanna get with me, you gotta listen carefully
We got Em in the place who likes it in your face
You got G like MC who likes it on a
Easy V doesn't come for free, she's a real lady
And as for me, ha you'll see
Slam your body down and wind it all around
Slam your body down and wind it all around
If you wanna be my lover, you gotta get with my friends
(Gotta get with my friends)
Make it last forever, friendship never ends
If you wanna be my lover, you have got to give
(You've got to give)
Taking is too easy, but that's the way it is
If you wanna be my lover
You gotta, you gotta, you gotta, you gotta, you gotta
Slam, slam, slam, slam (make it last forever)
Slam your body down and wind it all around
Slam your body down and wind it all around
Ha, ha, ha, ha, ha
Slam your body down and wind it all around
Slam your body down and zigazig ah
If you wanna be my lover"),

('Say You\'ll Be There', 236, 1, 1, "Oh, say you'll be there
I'm giving you everything
All that joy can bring
This I swear, ow
Last time that we had this conversation
I decided we should be friends, yeah
But now, we're going 'round in circles
Tell me will this déjà vu never end? No
And now you tell me that you're falling in love
Well, I never ever thought that would be, hey
This time, you gotta take it easy
Throwing far too much emotions at me
But any fool can see they're falling
I gotta make you understand
I'm giving you everything
All that joy can bring
This I swear (I'll give you everything)
And all that I want from you
Is a promise you will be there
Say you will be there, ow
Say you will be there
Ah, won't you sing it with me?
If you put two and two together
You will see what our friendship is for, oh
If you can't work this equation
Then I guess I'll have to show you the door
There is no need to say you love me
It would be better left unsaid
I'm (I'm) giving you everything (I'll give you everything)
All that joy can bring
This I swear (yes, I swear)
And (and) all that I want from you (all I want from you)
Is a promise you'll be there (is a promise you)
Yeah, I want you
Any fool can see they're falling
I gotta make you understand
I'll give you everything, on this I swear
Just promise you'll always be there
I'm giving you everything (I'm giving you everything)
All that joy can bring (all that joy can bring)
This I swear (yes, I swear)
And all that I want from you (all that I want from you)
Is a promise you
Will be there (yeah) (I want you)
I'm giving you everything
All that joy can bring
This I swear
And all that I want from you
Is a promise you
Will be there
I'm giving you everything
All that joy can bring
This I swear
And all that I want from you
Is a promise you
Will be there
I'm giving you everything"),

('2 Become 1', 241, 1, 1, "Candlelight and soul forever
A dream of you and me together
Say you believe it, say you believe it
Free your mind of doubt and danger
Be for real, don't be a stranger
We can achieve it, we can achieve it
Come a little bit closer baby
Get it on, get it on
'Cause tonight is the night when two become one
I need some love like I've never needed love before (wanna make love to ya', baby)
I had a little love, now I'm back for more (wanna make love to ya', baby)
Set your spirit free
It's the only way to be
Silly games that you were playing
Empty words we both were saying
Let's work it out boy, let's work it out boy
Any deal that we endeavor
Boys and girls feel good together
Take it or leave it, take it or leave it
Are you as good as I remember, baby?
Get it on, get it on
'Cause tonight is the night when two become one
I need some love like I've never needed love before (wanna make love to ya', baby)
I had a little love, now I'm back for more (wanna make love to ya', baby)
Set your spirit free
It's the only way to be
Be a little bit wiser baby
Put it on, put it on
'Cause tonight is the night when two become one
I need some love like I've never needed love before (wanna make love to ya', baby)
I had a little love, now I'm back for more (wanna make love to ya', baby)
I need some love like I've never needed love before (wanna make love to ya', baby)
I had a little love, now I'm back for more (wanna make love to ya', baby)
Set your spirit free
It's the only way to be
It's the only way to be
It's the only way to be"),

('Love Thing', 218, 1, 1, "You know I don't wanna know,
Don't wanna know about that love thing
Give me what I'm needing
You know what I'm dreaming of
Don't wanna know about love thing
Been broken hearted before (oh)
But that's the last time it happens to me yeah
I keep on giving still you're asking for more
Too much emotion baby, why can't you see
I'm not afraid of your love
(I'm not afraid of your love)
Why can't you see I've had my share of that
You're what I want boy
You know you got boy
You gotta want me
It's just what I need
I'm not that easy as a matter of a fact
There's no room for lovin'
Stop that push and shovin' yeah
Don't wanna know about that love thing
Give me what I'm needing
You know what I'm dreaming of
Don't wanna know about that love thing
Now don't go wasting my time
(Don't go wasting my time)
You're not the only thing I've got on my mind
My friends are with me when you ain't been around
Your precious words and promises ain't bringin' me down
I've got some living to do
(I've got some living to do)
Don't assume I'm gonna be with you
Your what I want boy
You know you got boy
You gotta want me
It's just what I need
I'm not that easy as a matter of a fact
There's no room for lovin'
Stop that push and shovin' yeah
Don't wanna know about that love thing
Give me what I'm needing
You know what I'm dreaming of
Don't wanna know about that love thing
Stop pushing
You're rushing (you're losing my lovin')
I hope it (I see it)
Just play it (you feel it)
Gotta be bold (bold and oh so strong)
Get with this and you got it goin' on
On and on with the girls named Spice
You wanna get with us then you'd better think twice
God help the mister (yeah God help the mister)
That comes between me and my sisters
I'm not afraid of your love
(I'm not afraid of your love)
Why can't you see I've had my share of that
You're what I want boy
You know you got boy
You gotta want me
It's just what I need
I'm not that easy as a matter of a fact
There's no room for lovin'
Stop that push and shovin' yeah
Don't wanna know about that love thing
Give me what I'm needing
You know what I'm dreaming of
Don't wanna know about that love thing
There's no room for lovin'
Stop that push and shovin' yeah
Don't wanna know about that love thing
Give me what I'm needing
You know what I'm dreaming of
Don't wanna know about that love thing
There's no room for lovin'
Stop that push and shovin' yeah
Don't wanna know about that love thing
Give me what I'm needing
You know what I'm dreaming of"),

('Last Time Lover', 251, 1, 1, "Listen up I gotta tell ya
About the ins and outs and goings on
I wouldn't tell just anybody (oh)
About the fox that I've been chasing (chasing)
He's resistant, not persistent
It didn't stop me from homing in
'Cause I'm choosy not a floozy
I get my hit and then I run with it
Last time lover (lover)
Do you think I'm really cool and sexy?
And I know you wanna get with me
Last time lover (lover)
Do you wanna be my last time, baby?
Could it be your first time maybe?
We got up and down to it (oh, yeah)
Like the dirty bass in the music
I got my major chords strummin'
Took some time and then we're really buzzin'
First bite wet my appetite (mm-hmm)
Second helping's always better
Started gettin' burnin' hot
I found my pride, I'm not easy
Slowed it down I said stop (I said stop)
Last time lover (lover)
Do you think I'm really cool and sexy?
And I know you wanna get with me
Last time lover (lover)
Do you wanna be my last time, baby?
Could it be your first time maybe?
Last time lover (treat me right)
Lovin' under cover (all night)
Last time lover (makes me feel good)
Lovin' under cover (like you should)
Last time lover
Last time lover (treat me right)
Lovin' under cover (all night)
Cool sexy, ever ready
Someone fine, always steady
Gentle hands, dirty mind
Use your head and don't be blind
Words of love they don't wash with me
What's the rush no urgency you see
Crazy boy, potential lover
First and last lover brother, there ain't no other
Crazy, sweety, cool but racy
Steady, ready, go, yes!
Last time lover (lover)
Do you think I'm really cool and sexy?
And I know you wanna get with me
Last time lover (lover)
Do you wanna be my last time, baby?
Could it be your first time maybe?
Last time lover (lover)
Do you think I'm really cool and sexy?
And I know you wanna get with me
Last time lover (lover)
Do you wanna be my last time, baby?
Could it be your first time maybe?
Last time lover (treat me right)
Lovin' under cover (all night)
Do you think I'm really cool and sexy?
And I know you wanna get with me
Last time lover (makes me feel good)
Lovin' under cover (like you should)
Do you wanna be my last time, baby?
Could it be your first time maybe?
Last time lover (treat me right)
Lovin' under cover (all night)
Do you think I'm really cool and sexy?
And I know you wanna get with me"),

('Mama', 300, 1, 1, "She used to be my only enemy and never let to me be free
Catching me in places that I knew I shouldn't be
Every other day, I crossed the line, I didn't mean to be so bad
I never thought you would become the friend I never had
Back then, I didn't know why
Why you were misunderstood
So now, I see through your eyes
All that you did was love
Mama, I love you
Mama, I care
Mama, I love you
Mama, my friend (you're my friend)
I didn't want to hear it then, but I'm not ashamed to say it now
Every little thing you said and did was right for me
I had a lot of time to think about, about the way I used to be
Never had a sense of my responsibility
Back then, I didn't know why
Why you were misunderstood
So now, I see through your eyes
All that you did was love
Mama, I love you
Mama, I care
Mama, I love you
Mama, my friend (you're my friend)
You're my friend
But now, I'm sure I know why (I know why)
Why you were misunderstood
So now, I see through your eyes
All I can give you is love (all I can give you is love)
Mama, I love you
Mama, I care
Mama, I love you
Mama, my friend
Mama, I love you
Mama, I care
Mama, I love you
Mama, my friend
Oh, oh-oh (you're my friend)
Mama (you're my friend)
Whoa, oh-oh
Mama, my love
Oh, oh-oh, Mama, I love you (me loving you, you loving me)
Mama, I care (a love that's true, and guaranteed)
Whoa, oh-oh, Mama, I love you (me loving you, me loving you)
(You loving me, you loving me)
Mama, my friend (a love that's true, a love that's true)
(And guaranteed, so true)
Mama, I love you (me loving you, me loving you)
(You loving me, you loving me)
Mama, I care (a love that's true, a love that's true)
(And guaranteed, so true)
Mama, I love you (me loving you, me loving you)
(You loving me, you loving me)
Mama, I care (a love that's true, a love that's true)
(And guaranteed, so true)
Mama, I love you (me loving you, me loving you)
(You loving me, you loving me)
Mama, I care (a love that's true, a love that's true), oh, oh, oh
(And guaranteed, so true)
Mama, I love you (me loving you, me loving you)
(You loving me, you loving me)
Mama, I care (a love that's true, a love that's true)
(It's so true)"),

('Who Do You Think You Are', 240, 1, 1, "The race is on to get out of the bottom
The top is high so your roots are forgotten
Giving is good as long as you're getting
What's driving you it's ambition and betting
I said who do you think you are
Oh, oh (do you think you are, I said)
Ooh some kind of superstar (oh, oh, oh)
You have got to swing it, shake it, move it, make it
Who do you think you are
Trust it, use it, prove it, groove it
Show me how good you are
Swing it, shake it, move it, make it
Who do you think you are
Trust it, use it, prove it, groove it
Show how good you are
You're swelling out in the wrong direction
You've got the bug, superstar, you've been bitten
Your trumpet's blowing for far too long
Climbing the snake of the ladder, but you're wrong
I said who do you think you are (oh, oh)
(Do you think you are, I said)
(Oh) some kind of superstar (oh, oh, oh)
You have got to swing it, shake it, move it, make it
Who do you think you are
Trust it, use it, prove it, groove it
Show me how good you are
Swing it, shake it, move it, make it
Who do you think you are
Trust it, use it, prove it, groove it
Show how good you are
You have got to reach on up, never lose your soul
You have got to reach on up, never lose control
I said who do you think you are (oh, oh)
(Do you think you are, I said)
(Oh) some kind of superstar (oh, oh, oh)
You have got to swing it, shake it, move it, make it
Who do you think you are?
Trust it, use it, prove it, groove it
Show me how good you are
Swing it, shake it, move it, make it
Who do you think you are
Trust it, use it, prove it, groove it
Show me how good you are
Swing it, shake it, move it, make it
Who do you think you are?
Trust it, use it, prove it, groove it
Show me how good you are
Swing it, shake it, move it, make it
Who do you think you are
Trust it, use it, prove it, groove it
Show me how good you are
Swing it, shake it, move it, make it
Who do you think you are
Trust it, use it, prove it, groove it
Show me how good you are
Swing it, shake it, move it, make it
Who do you think you are
Trust it, use it, prove it, groove it
Show me how good you are"),

('Something Kinda Funny', 223, 1, 1, "Oh yeah
Oh yeah
We've got something kinda funny goin' on (we've got it, yeah)
We've got something kinda funny goin' on
Wherever you're going, high or low
Remember to sure enjoy the show
So climb aboard my journey deep inside
Better late than dead on time
Ooh, it's you I know I have got to feed, yeah, yeah
Ooh, don't take from me more than you really need
More than you really need
We've got something kinda funny goin' on (we've got it)
We've got something kinda funny goin' on (we've got it, oh)
Happiness is just a state of your mind
Keep searching, who knows what you may find
Rules are for fools, and fool's paradise is hard to find
Play my game or get left behind
Ooh, it's you I know that I have got to feed, yeah, yeah
Ooh, take from me what you feel that you need
You feel that you need
We've got something kinda funny goin' on (we've got it)
We've got something kinda funny goin' on (we've got it, ooh)
You've got it, you've got it, hey, hey
You've got it, you've got it, hey, ey, ey
You've got it, you've got it, hey, ey, ey
Hey, hey, ey, ey, ey, ey
Feelin' kinda funny (ey)
Feelin' kinda queezy I ain't that easy (hey, hey, ey, ey, ey, ey)
We've got something kinda funny goin' on (we've got it, we've got it, ooh)
Something kinda funny
We've got something kinda funny goin' on
Ooh, yeah, ooh, yeah (we've got it, we've got it, ooh)
We've got something kinda funny goin' on (something kinda funny)
(We've got it, we've got it)
We've got something kinda funny goin' on (ooh, ooh, yeah)
(We've got it, we've got it oh) there's something kinda funny
We've got something kinda funny goin' on (we've got it, we've got it, ooh)
There's something kinda funny
We've got something kinda funny goin' on (ooh yeah)"),

('Naked', 266, 1, 1, "Naivety and childhood left behind, deprived of the goodness of mankind
Past encounters have made her strong, strong enough to carry on and on
Undress you with her eyes, uncover the truth from the lies
Strip you down, no need to care, lights are low exposed and bare
Naked
Nothing but a smile upon her face
Naked
She wants to play seek and hide, no one to hide behind
Naked
This child has fallen from grace
Naked
Don't be afraid to stare, she is only naked
She knows exactly what to do with men like you
Inside out in her mind there's no doubt where you're coming from
Mystery will turn you on
Undress you with her eyes, uncover the truth from the lies
Strip you down, no need to care, lights are low exposed and bare
Naked
Nothing but a smile upon her face
Naked
She wants to play seek and hide no one to hide behind
Naked
This child has fallen from grace
Naked
Don't be afraid to stare, she is only naked (naked)
Hello? It's me
I thought you'd understand
Well maybe I should have kept my mouth shut
I keep seeing such a pretty picture
I'd rather be hated than pitied
Maybe I should have left it to your imagination
I just want to be me
This angel's dirty face is sore, holding on to what she had before
Not sharing secrets with any old fool, now she's gonna keep her cool
She wants to get naked
She wants to get naked
Naked
Nothing but a smile upon her face
Naked
She wants to play seek and hide, no one to hide behind
Naked
This child has fallen from grace
Naked
Don't be afraid to stare, she is only naked
Naked
Nothing but a smile upon her face
Naked
She wants to play seek and hide, no one to hide behind
Naked
This child has fallen from grace
Naked
Don't be afraid to stare, she is only naked
Naked
Nothing but a smile upon her face
Naked
She wants to play seek and hide, no one to hide behind
Naked
This child has fallen from grace
Naked"),

('If U Can\'t Dance', 229, 1, 1, "If you can't dance, if you can't dance
If you can't dance, if you can't dance
If you can't dance to this, you can't do nothing for me baby
If you can't dance, if you can't dance
If you can't dance, if you can't dance
If you can't dance to this, you can't do nothing for me baby
Now we got the flavor, the bad behavior
The rhythm, the melody, the juice for you to savor
Rockin' and vibin' somebody is jivin'
You need to take a tip, sort it out, get a grip
Whenever I go out, whenever it may be
There never is a Keanu but the dweeb lookin' at me
But then even if I did score, he's a looser in the dance floor
Take a deep breath count one, two, three
Even when his eyes met mine
His slamming moves were out of time
Can't you just feel the groove?
Why don't you move?
It's easy, can't you see?
Take my hands and dance with me
If you can't dance, if you can't dance
If you can't dance, if you can't dance
If you can't dance to this, you can't do nothing for me baby
If you can't dance, if you can't dance
If you can't dance, if you can't dance
If you can't dance to this, you can't do nothing for me baby
Hey macho, te ví el otro día, me dio mucha, mucha alegría
Escucha la música, Ay madre mía!
Hey chico, tu no tienes nada
Que susto, que sueco, que polla, que tieso
Oh, no me toques, ay que pero, feo
Venga, venga, marcha salida, toma esa música
Me cantas deprisa, cuidado, cuidado, hey chico
Que loco, toma mi ritmo, me voy contigo
Hey macho te quiero, quiero un hombre, necesito si
Pero no tú, un hombre, hey macho, hey macho
Si no bailas esto no puedes nada conmigo
If you can't dance, if you can't dance
If you can't dance, if you can't dance
If you can't dance to this, you can't do nothing for me baby
If you can't dance, if you can't dance
If you can't dance, if you can't dance
If you can't dance to this, you can't do nothing for me baby
You can't do nothing for me baby
Oh-whoa-whoa-whoa
Nothing baby
Oh-whoa-whoa-whoa
The rhythm
You can't do nothing for me baby
Even when his eyes met mine (oh-whoa-whoa-whoa)
His slamming boots were out of time
Can't you just feel the groove?
Why don't you move? (Oh-whoa-whoa-whoa)
It's easy can't you see?
Take my hands and dance with me
If you can't dance, if you can't dance
If you can't dance, if you can't dance
If you can't dance to this, you can't do nothing for me baby
If you can't dance, if you can't dance
If you can't dance, if you can't dance
If you can't dance to this, you can't do nothing for me baby
Can't do nothing for me baby (if you can't dance, if you can't dance)
If you can't dance, if you can't dance
If you can't dance to this, you can't do nothing for me baby
If you can't dance, if you can't dance
If you can't dance, if you can't dance
If you can't dance to this, you can't do nothing for me baby
If you can't dance, if you can't dance (you can't do nothing for me baby)
If you can't dance, if you can't dance
If you can't dance to this, you can't do nothing for me baby"),

('Spice Up Your Life', 175, 2, 1, ''),
('Stop', 204, 2, 1, ''),
('Too Much', 271, 2, 1, ''),
('Saturday Night Divas', 266, 2, 1, ''),
('Never Give Up on the Good Times', 270, 2, 1, ''),
('Move Over', 173, 2, 1, ''),
('Do It', 241, 2, 1, ''),
('Denying', 227, 2, 1, ''),
('Viva Forever', 309, 2, 1, ''),
('The Lady Is a Vamp', 228, 2, 1, ''),
('Holler', 255, 3, 1, ''),
('Tell Me Why', 254, 3, 1, ''),
('Let Love Lead the Way', 251, 3, 1, ''),
('Right Back at Ya', 235, 3, 1, ''),
('Get Down with Me', 220, 3, 1, ''),
('Wasting My Time', 254, 3, 1, ''),
('Weekend Love', 257, 3, 1, ''),
('Time Goes By', 251, 3, 1, ''),
('If You Wanna Have Some Fun', 261, 3, 1, ''),
('Oxygen', 238, 3, 1, ''),
('Goodbye', 275, 3, 1, '')
;


```