vARTIST="HALDIN MUSIC"
vALBUM="Classical Music for Christmas"

A=(
  "Bach - Jesu, Joy of Man’s Desiring (Arr. for String Orchestra)"
  "O Holy Night (Arr. for String Orchestra)"
  "Silent Night (Arr. for String Orchestra)"
  "Schubert - Ave Maria"
  "Corelli - Concerto Grosso No. 1 in D Major, Op. 6: I. Largo"
  "Greensleeves (Arr. for Cello and Violin)"
  "Adeste Fideles (Arr. for String Quartet)"
  "Have Yourself a Merry Little Christmas (Arr. for String Quartet)"
  "Santa Claus Is Coming to Town (Arr. for Cello Quartet)"
  "Jingle Bells (Arr. for Cello Quartet)"
  "Let it Snow! Let It Snow! Let It Snow! (Arr. for String Quartet)"
  "Deck the Halls / Good King Wenceslaw / In the Bleak Midwinter / Joy to the World / Once in Royal David's City (Medley for String Quartet)"
  "While Shepherds Watched Their Flocks by Night / The First Noel / See, amid the Winter's Snow / O Come, All Ye Faithful (Medley for String Quartet)"
  "Sibelius - Andante Festivo"
  "We Wish You a Merry Christmas (Arr. for String Orchestra)"
  "Händel - The Messiah, HWV 56: No. 23, Hallelujah"
  "Buxtehude - Cantate Domino Canticum Novum"
  "White Christmas (for Voice and Cello)"
  "Chestnuts Roasting on an Open Fire (The Christmas Song) (for Voice and Cello)"
  "Away in a Manger / Do You Hear What I Hear? (Arr. for Cello)"
  "Joy to the World (Arr. for Cello Quartet)"
  "Angels We Have Heard on High (Arr. for Cello Quartet)"
  "Corelli - Concerto Grosso No. 9 in F Major, Op. 6 (I. Preludio. Largo)"
  "Corelli - Concerto Grosso No. 9 in F Major, Op. 6 (II. Allemanda. Allegro)"
  "Corelli - Concerto Grosso No. 9 in F Major, Op. 6 (III. Corrente. Vivace)"
  "IV. Gavotta. Allegro"
  "Tchaikovsky - The Nutcracker Suite, Op. 71a (No. 2a, March of the Toy Soldiers)"
  "Tchaikovsky - The Nutcracker Suite, Op. 71a (No. 2b, Dance of the Sugar Plum Fairy)"
  "Tchaikovsky - The Nutcracker Suite, Op. 71a (No. 2c, Russian Dance)"
  "No. 2f, Dance of the Mirlitons"
  "Tchaikovsky - The Nutcracker, Op. 71a: Waltz of the Flowers (Arr. for Two Cellos)"
)

youtube-dl -f 140 https://www.youtube.com/watch?v=ky4u-lH9q9g
mv *.m4a out.m4a

ffmpeg -i out.m4a -metadata track=1  -ss 00:00:00 -to 00:04:17 -metadata title="${A[0]}" -metadata artist="${vARTIST}" -metadata album_artist="${vARTIST}" -metadata album="${vALBUM}" -async 1  CCxmas_1.m4a
ffmpeg -i out.m4a -metadata track=2  -ss 00:04:17 -to 00:08:20 -metadata title="${A[1]}" -metadata artist="${vARTIST}" -metadata album_artist="${vARTIST}" -metadata album="${vALBUM}" -async 1  CCxmas_2.m4a
ffmpeg -i out.m4a -metadata track=3  -ss 00:08:20 -to 00:12:51 -metadata title="${A[2]}" -metadata artist="${vARTIST}" -metadata album_artist="${vARTIST}" -metadata album="${vALBUM}" -async 1  CCxmas_3.m4a
ffmpeg -i out.m4a -metadata track=4  -ss 00:12:51 -to 00:17:51 -metadata title="${A[3]}" -metadata artist="${vARTIST}" -metadata album_artist="${vARTIST}" -metadata album="${vALBUM}" -async 1  CCxmas_4.m4a
ffmpeg -i out.m4a -metadata track=5  -ss 00:17:51 -to 00:20:47 -metadata title="${A[4]}" -metadata artist="${vARTIST}" -metadata album_artist="${vARTIST}" -metadata album="${vALBUM}" -async 1  CCxmas_5.m4a
ffmpeg -i out.m4a -metadata track=6  -ss 00:20:47 -to 00:24:15 -metadata title="${A[5]}" -metadata artist="${vARTIST}" -metadata album_artist="${vARTIST}" -metadata album="${vALBUM}" -async 1  CCxmas_6.m4a
ffmpeg -i out.m4a -metadata track=7  -ss 00:24:15 -to 00:26:43 -metadata title="${A[6]}" -metadata artist="${vARTIST}" -metadata album_artist="${vARTIST}" -metadata album="${vALBUM}" -async 1  CCxmas_7.m4a
ffmpeg -i out.m4a -metadata track=8  -ss 00:26:43 -to 00:29:17 -metadata title="${A[7]}" -metadata artist="${vARTIST}" -metadata album_artist="${vARTIST}" -metadata album="${vALBUM}" -async 1  CCxmas_8.m4a
ffmpeg -i out.m4a -metadata track=9  -ss 00:29:17 -to 00:30:59 -metadata title="${A[8]}" -metadata artist="${vARTIST}" -metadata album_artist="${vARTIST}" -metadata album="${vALBUM}" -async 1  CCxmas_9.m4a
ffmpeg -i out.m4a -metadata track=10 -ss 00:30:59 -to 00:32:16 -metadata title="${A[9]}" -metadata artist="${vARTIST}" -metadata album_artist="${vARTIST}" -metadata album="${vALBUM}" -async 1  CCxmas_10.m4a
ffmpeg -i out.m4a -metadata track=11 -ss 00:32:16 -to 00:33:35 -metadata title="${A[10]}" -metadata artist="${vARTIST}" -metadata album_artist="${vARTIST}" -metadata album="${vALBUM}" -async 1 CCxmas_11.m4a
ffmpeg -i out.m4a -metadata track=12 -ss 00:33:35 -to 00:38:33 -metadata title="${A[11]}" -metadata artist="${vARTIST}" -metadata album_artist="${vARTIST}" -metadata album="${vALBUM}" -async 1 CCxmas_12.m4a
ffmpeg -i out.m4a -metadata track=13 -ss 00:38:33 -to 00:43:27 -metadata title="${A[12]}" -metadata artist="${vARTIST}" -metadata album_artist="${vARTIST}" -metadata album="${vALBUM}" -async 1 CCxmas_13.m4a
ffmpeg -i out.m4a -metadata track=14 -ss 00:43:27 -to 00:47:34 -metadata title="${A[13]}" -metadata artist="${vARTIST}" -metadata album_artist="${vARTIST}" -metadata album="${vALBUM}" -async 1 CCxmas_14.m4a
ffmpeg -i out.m4a -metadata track=15 -ss 00:47:34 -to 00:50:23 -metadata title="${A[14]}" -metadata artist="${vARTIST}" -metadata album_artist="${vARTIST}" -metadata album="${vALBUM}" -async 1 CCxmas_15.m4a
ffmpeg -i out.m4a -metadata track=16 -ss 00:50:23 -to 00:54:16 -metadata title="${A[15]}" -metadata artist="${vARTIST}" -metadata album_artist="${vARTIST}" -metadata album="${vALBUM}" -async 1 CCxmas_16.m4a
ffmpeg -i out.m4a -metadata track=17 -ss 00:54:16 -to 00:56:21 -metadata title="${A[16]}" -metadata artist="${vARTIST}" -metadata album_artist="${vARTIST}" -metadata album="${vALBUM}" -async 1 CCxmas_17.m4a
ffmpeg -i out.m4a -metadata track=18 -ss 00:56:21 -to 00:59:39 -metadata title="${A[17]}" -metadata artist="${vARTIST}" -metadata album_artist="${vARTIST}" -metadata album="${vALBUM}" -async 1 CCxmas_18.m4a
ffmpeg -i out.m4a -metadata track=19 -ss 00:59:39 -to 01:03:42 -metadata title="${A[18]}" -metadata artist="${vARTIST}" -metadata album_artist="${vARTIST}" -metadata album="${vALBUM}" -async 1 CCxmas_19.m4a
ffmpeg -i out.m4a -metadata track=20 -ss 01:03:42 -to 01:06:00 -metadata title="${A[19]}" -metadata artist="${vARTIST}" -metadata album_artist="${vARTIST}" -metadata album="${vALBUM}" -async 1 CCxmas_20.m4a
ffmpeg -i out.m4a -metadata track=21 -ss 01:06:00 -to 01:07:15 -metadata title="${A[20]}" -metadata artist="${vARTIST}" -metadata album_artist="${vARTIST}" -metadata album="${vALBUM}" -async 1 CCxmas_21.m4a
ffmpeg -i out.m4a -metadata track=22 -ss 01:07:15 -to 01:08:50 -metadata title="${A[21]}" -metadata artist="${vARTIST}" -metadata album_artist="${vARTIST}" -metadata album="${vALBUM}" -async 1 CCxmas_22.m4a
ffmpeg -i out.m4a -metadata track=23 -ss 01:08:50 -to 01:10:58 -metadata title="${A[22]}" -metadata artist="${vARTIST}" -metadata album_artist="${vARTIST}" -metadata album="${vALBUM}" -async 1 CCxmas_23.m4a
ffmpeg -i out.m4a -metadata track=24 -ss 01:10:58 -to 01:13:52 -metadata title="${A[23]}" -metadata artist="${vARTIST}" -metadata album_artist="${vARTIST}" -metadata album="${vALBUM}" -async 1 CCxmas_24.m4a
ffmpeg -i out.m4a -metadata track=25 -ss 01:13:52 -to 01:15:47 -metadata title="${A[24]}" -metadata artist="${vARTIST}" -metadata album_artist="${vARTIST}" -metadata album="${vALBUM}" -async 1 CCxmas_25.m4a
ffmpeg -i out.m4a -metadata track=26 -ss 01:15:47 -to 01:16:51 -metadata title="${A[25]}" -metadata artist="${vARTIST}" -metadata album_artist="${vARTIST}" -metadata album="${vALBUM}" -async 1 CCxmas_26.m4a
ffmpeg -i out.m4a -metadata track=27 -ss 01:16:51 -to 01:19:28 -metadata title="${A[26]}" -metadata artist="${vARTIST}" -metadata album_artist="${vARTIST}" -metadata album="${vALBUM}" -async 1 CCxmas_27.m4a
ffmpeg -i out.m4a -metadata track=28 -ss 01:19:28 -to 01:21:18 -metadata title="${A[27]}" -metadata artist="${vARTIST}" -metadata album_artist="${vARTIST}" -metadata album="${vALBUM}" -async 1 CCxmas_28.m4a
ffmpeg -i out.m4a -metadata track=29 -ss 01:21:18 -to 01:22:24 -metadata title="${A[28]}" -metadata artist="${vARTIST}" -metadata album_artist="${vARTIST}" -metadata album="${vALBUM}" -async 1 CCxmas_29.m4a
ffmpeg -i out.m4a -metadata track=30 -ss 01:22:24 -to 01:24:55 -metadata title="${A[29]}" -metadata artist="${vARTIST}" -metadata album_artist="${vARTIST}" -metadata album="${vALBUM}" -async 1 CCxmas_30.m4a
ffmpeg -i out.m4a -metadata track=31 -ss 01:24:55 -to 01:27:21 -metadata title="${A[30]}" -metadata artist="${vARTIST}" -metadata album_artist="${vARTIST}" -metadata album="${vALBUM}" -async 1 CCxmas_31.m4a

for i in *.m4a; do
  AtomicParsley "$i" --artwork ClassXmas.png --overWrite
done
