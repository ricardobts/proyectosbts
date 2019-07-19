#!/bin/bash
C_FOLDERS="Programs Windows Users"
USERS_FOLDERS="User1 User2 User3"
USER_FOLDERS="Desktop Documents Downloads Music Pictures Videos Games Stuff Scripts"
PROGRAMS_FOLDERS="VisualStudioCode LeagueofLegends GoogleChrome Firefox Safari Calendar Skype Notepad Spotify Drive"
PROGRAMS_FILES="file1.txt file2.txt"
WINDOWS_FOLDERS="root Apps Containers Cursors Debug System32"
WINDOWS_FILES="file1.txt file2.txt file3.txt file4.txt file5.txt file6.txt file7.txt file8.txt file9.txt file10.txt"
SYSTEM32_FILES="file11.txt file12.txt file13.txt file14.txt file15.txt"
DOCUMENTS_FILES="Doc1.docx Doc2.docx Doc3.docx Doc4.docx Doc5.docx Doc5.docx Doc6.docx Doc7.docx Doc8.docx Doc9.docx Doc10.docx Doc11.docx Doc12.docx Doc13.docx Doc14.docx Doc15.docx"
DOWNLOADS_FILES="torrent1.tr torrent2.tr torrent3.tr torrent4.tr torrent5.tr torrent6.tr torrent7.tr torrent8.tr torrent9.tr torrent10.tr torrent11.tr torrent12.tr torrent13.tr torrent14.tr torrent15.tr"
PICTURES_FILES="image1.jpg image2.jpg image3.jpg image4.jpg image5.jpg image6.jpg image7.jpg image8.jpg image9.jpg image10.jpg image11.jpg image12.jpg image13.jpg image14.jpg image15.jpg"
VIDEOS_FILES="video1.mp4 video2.mp4 video3.mp4 video4.mp4 video5.mp4 video6.mp4 video7.mp4 video8.mp4 video9.mp4 video10.mp4 video11.mp4 video12.mp4 video13.mp4 video14.mp4 video15.mp4"
GAMES_FILES="LoL Starcraft Warcraft AoE AoM Heartstone Overwatch Horizon AssassinsCreed Pinball PokerStars YuGiOh RocketLeague FIFA PES"
STUFF_FILES="stuff1 stuff2 stuff3 stuff4 stuff5 stuff6 stuff7 stuff8 stuff9 stuff10 stuff11 stuff12 stuff13 stuff14 stuff15"
SCRIPT_FILES="script1.sh script2.sh script3.sh script4.sh script5.sh script6.sh script7.sh script8.sh script9.sh script10.sh script11.sh script12.sh script13.sh script14.sh script15.sh"
MUSIC_FOLDERS="ACDC Aerosmith BlackSabbath CCR Cream DeepPurple Dio Dokken Eagles Europe GunsNRoses IronMaiden JimiHendrix Journey Kansas PinkFloyd LedZeppelin Megadeth Metallica Pantera"
MUSIC_FILES="song1.mp3 song2.mp3 song3.mp3 song4.mp3 song5.mp3"

mkdir "C:"
cd C:/

echo "Creating C: folders"
for FOLDER in $C_FOLDERS
  do
    mkdir $FOLDER
done

cd Programs

echo "Creating Programs folders and files"
for FOLDER in $PROGRAMS_FOLDERS
  do
    mkdir $FOLDER
    cd $FOLDER
    touch $PROGRAMS_FILES
    cd ../
done

cd ../Windows

echo "Creating Windows folders and files"
for FOLDER in $WINDOWS_FOLDERS
  do
    mkdir $FOLDER
    cd $FOLDER
    touch $WINDOWS_FILES
    cd ../
done

echo "Creating remaining System32 files"
cd System32
touch $SYSTEM32_FILES

cd ../../Users

echo "Creating Users folders"
mkdir $USERS_FOLDERS

for USER in $USERS_FOLDERS
  do
    cd $USER
    mkdir $USER_FOLDERS
    cd ../
done

for USER in $USERS_FOLDERS
  do
    cd $USER
    cd Desktop
    touch $WINDOWS_FILES $SYSTEM32_FILES
    cd ../
    cd Documents
    touch $DOCUMENTS_FILES
    cd ../
    cd Downloads
    touch $DOWNLOADS_FILES
    cd ../
    cd Pictures
    touch $PICTURES_FILES
    cd ../
    cd Music
    mkdir $MUSIC_FOLDERS
    for FOLDER in $MUSIC_FOLDERS
      do
        cd $FOLDER
        touch $MUSIC_FILES
        cd ../
    done
    cd ../
    cd Videos
    touch $VIDEOS_FILES
    cd ../
    cd Games
    touch $GAMES_FILES
    cd ../
    cd Stuff
    touch $STUFF_FILES
    cd ../
    cd Scripts
    touch $SCRIPT_FILES
    cd ../../
done