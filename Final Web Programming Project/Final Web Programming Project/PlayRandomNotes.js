var noteType;
var currentNote;
var isClicked = false;
var isGameOver = false;
var wrongAnswersCounter = 0;
var XP_ADDITION_FOR_NOTES = 20;
var XP = 0;
ID_OF_USER_ANSWER_AUDIO_TAG = "UserAnswerSound";

$(document).ready(function () {
    hideCorrectAndWrongHeaders();
});


function playRandomNote() {

    hideCorrectAndWrongHeaders();
    if (!isGameOver) {
        if (!isClicked) {
            setNoteType();

            switch (noteType) {
                case notesEnum.A: setRandomANoteAsResource();
                    break;
                case notesEnum.B_BEMOLLE: setRandomBBemolleNoteAsResource();
                    break;
                case notesEnum.B: setRandomBNoteAsResource();
                    break;
                case notesEnum.C: setRandomCNoteAsResource();
                    break;
                case notesEnum.C_DIESE: setRandomCDieseNoteAsResource();
                    break;
                case notesEnum.D: setRandomDNoteAsResource();
                    break;
                case notesEnum.E_BEMOLLE: setRandomEBemolleNoteAsResource();
                    break;
                case notesEnum.E: setRandomENoteAsResource();
                    break;
                case notesEnum.F: setRandomFNoteAsResource();
                    break;
                case notesEnum.F_DIESE: setRandomFDieseNoteAsResource();
                    break;
                case notesEnum.G: setRandomGNoteAsResource();
                    break;
                case notesEnum.G_DIESE: setRandomGDieseNoteAsResource();
                    break;
            }

            playNote();

            isClicked = true;
        }
        else
            alert("You have to answer correctly first.");
    }
    else
        alert("The game is over...refresh to restart.");

}

function playNote() {
    if (!isGameOver) {
        if (currentNote != undefined && currentNote != null && noteType != undefined && noteType != null) {
            document.getElementById("audio").play();
        }
        else
            alert("You have to play something first in order to replay it.");
    }
    else
        alert("The game is over...refresh to restart.");
}

function setRandomANoteAsResource() {

    var A_notes = get_A_notes();
    currentNote = A_notes[getRndInteger(0, A_notes.length)];

    document.getElementById("audio").setAttribute("src", currentNote);
}

function setRandomBBemolleNoteAsResource() {

    var B_bemolle_notes = get_B_bemolle_notes();
    currentNote = B_bemolle_notes[getRndInteger(0, B_bemolle_notes.length)];

    document.getElementById("audio").setAttribute("src", currentNote);
}

function setRandomBNoteAsResource() {

    var B_notes = get_B_notes();
    currentNote = B_notes[getRndInteger(0, B_notes.length)];

    document.getElementById("audio").setAttribute("src", currentNote);
}

function setRandomCNoteAsResource() {

    var C_notes = get_C_notes();
    currentNote = C_notes[getRndInteger(0, C_notes.length)];

    document.getElementById("audio").setAttribute("src", currentNote);
}

function setRandomCDieseNoteAsResource() {

    var C_diese_notes = get_C_diese_notes();
    currentNote = C_diese_notes[getRndInteger(0, C_diese_notes.length)];

    document.getElementById("audio").setAttribute("src", currentNote);
}

function setRandomDNoteAsResource() {

    var D_notes = get_D_notes();
    currentNote = D_notes[getRndInteger(0, D_notes.length)];

    document.getElementById("audio").setAttribute("src", currentNote);
}

function setRandomEBemolleNoteAsResource() {

    var E_bemolle_notes = get_E_bemolle_notes();
    currentNote = E_bemolle_notes[getRndInteger(0, E_bemolle_notes.length)];

    document.getElementById("audio").setAttribute("src", currentNote);
}

function setRandomENoteAsResource() {

    var E_notes = get_E_notes();
    currentNote = E_notes[getRndInteger(0, E_notes.length)];

    document.getElementById("audio").setAttribute("src", currentNote);
}

function setRandomFNoteAsResource() {

    var F_notes = get_F_notes();
    currentNote = F_notes[getRndInteger(0, F_notes.length)];

    document.getElementById("audio").setAttribute("src", currentNote);
}

function setRandomFDieseNoteAsResource() {

    var F_diese_notes = get_F_diese_notes();
    currentNote = F_diese_notes[getRndInteger(0, F_diese_notes.length)];

    document.getElementById("audio").setAttribute("src", currentNote);
}

function setRandomGNoteAsResource() {

    var G_notes = get_G_notes();
    currentNote = G_notes[getRndInteger(0, G_notes.length)];

    document.getElementById("audio").setAttribute("src", currentNote);
}

function setRandomGDieseNoteAsResource() {

    var G_diese_notes = get_G_diese_notes();
    currentNote = G_diese_notes[getRndInteger(0, G_diese_notes.length)];

    document.getElementById("audio").setAttribute("src", currentNote);
}

//CHECK USER ANSWERS:

//USER ANSWERED A
function checkAAnswer() {
    checkNoteAnswer(notesEnum.A);
}

//USER ANSWERED B BEMOLLE
function checkBBemolleAnswer() {
    checkNoteAnswer(notesEnum.B_BEMOLLE);
}

//USER ANSWERED B
function checkBAnswer() {
    checkNoteAnswer(notesEnum.B);
}

//USER ANSWERED C
function checkCAnswer() {
    checkNoteAnswer(notesEnum.C);
}

//USER ANSWERED C DIESE
function checkCDieseAnswer() {
    checkNoteAnswer(notesEnum.C_DIESE);
}

//USER ANSWERED D
function checkDAnswer() {
    checkNoteAnswer(notesEnum.D);
}

//USER ANSWERED E BEMOLLE
function checkEBemolleAnswer() {
    checkNoteAnswer(notesEnum.E_BEMOLLE);
}

//USER ANSWERED E
function checkEAnswer() {
    checkNoteAnswer(notesEnum.E);
}

//USER ANSWERED F
function checkFAnswer() {
    checkNoteAnswer(notesEnum.F);
}

//USER ANSWERED F DIESE
function checkFDieseAnswer() {
    checkNoteAnswer(notesEnum.F_DIESE);
}

//USER ANSWERED G
function checkGAnswer() {
    checkNoteAnswer(notesEnum.G);
}

//USER ANSWERED G DIESE
function checkGDieseAnswer() {
    checkNoteAnswer(notesEnum.G_DIESE);
}


//CHECK THE ANSWERS HERE:
function checkNoteAnswer(currentNoteType) {
    hideCorrectAndWrongHeaders();
    if (!isGameOver) {
        if (noteType == currentNoteType) {
            document.getElementById("correct").style.visibility = "visible";
            gainXP();
            isClicked = false;
        }

        else {
            if (isClicked) {
                document.getElementById("wrong").style.visibility = "visible";
                wrongAnswersCounter++;
                playWrongSound(ID_OF_USER_ANSWER_AUDIO_TAG);
                checkGameOver();
            }
            else
                alert("you don't want to lose more life, do you?");
        }
    }
    else
        alert("The game is over...refresh to restart.");
}




function checkGameOver() {
    switch (wrongAnswersCounter) {
        case 1: document.getElementById("LifeIcon1").setAttribute("src", "Res/x_icon.png");
            break;
        case 2: document.getElementById("LifeIcon2").setAttribute("src", "Res/x_icon.png");
            break;
        case 3:
            document.getElementById("LifeIcon3").setAttribute("src", "Res/x_icon.png");
            gameOver();
            break;
    }
}

function gameOver() {
    isGameOver = true;
    alert("GAME OVER! Don't forget to save your progress!");
    $("#XP").val(XP.toString());
}

function hideCorrectAndWrongHeaders() {
    document.getElementById("correct").style.visibility = "hidden";
    document.getElementById("wrong").style.visibility = "hidden";
}

function gainXP() {
    if (isClicked) {
        //Play Correct answer sound
        playCorrectSound(ID_OF_USER_ANSWER_AUDIO_TAG);

        var currentXP = $("#CurrentXP").html().replace("XP: +", "");
        XP = parseInt(currentXP) + XP_ADDITION_FOR_NOTES;
        $("#CurrentXP").html("XP: + " + XP.toString());
        $("#XP").val(XP.toString());
    }
    else
        alert("Don't be greedy...you won't get more XP that way...")
}


/**
* This method is to play the 'wrong_sound' mp3 file every time the user makes a mistake.
* audioTagID - is the ID of the audio tag that is supposed to play the 'wrong_sound'.
*/
function playWrongSound(audioTagID) {
    document.getElementById(audioTagID).setAttribute("src", "Res/wrong_sound.mp3");
    document.getElementById(audioTagID).play();
}

/**
* This method is to play the 'correct sound' file every time the user answers correctly.
* audioTagID - is the ID of the audio tag that is supposed to play the 'correct sound'.
*/
function playCorrectSound(audioTagID) {
    document.getElementById(audioTagID).setAttribute("src", "Resources/c_note_5.wav");
    document.getElementById(audioTagID).play();
}


//Enums:

/**JavaScript Enum:
*DEFINE:
* 
* var enum = {
*   ITEM1: value1,
*   ITEM2: value2,
*   ITEM3: value3
* };
*
*USAGE:
* var v = enum.ITEM1;
* var chordType = chordTypeEnum.MAJOR;
* var myNote = notesEnum.A;
*/
var notesEnum = {
    A: 0,
    B_BEMOLLE: 1,
    B: 2,
    C: 3,
    C_DIESE: 4,
    D: 5,
    E_BEMOLLE: 6,
    E: 7,
    F: 8,
    F_DIESE: 9,
    G: 10,
    G_DIESE: 11
};


function setNoteType() {
    var rndNum = getRndInteger(0, 12);
    switch (rndNum) {
        case 0: noteType = notesEnum.A;
            break;
        case 1: noteType = notesEnum.B_BEMOLLE;
            break;
        case 2: noteType = notesEnum.B;
            break;
        case 3: noteType = notesEnum.C;
            break;
        case 4: noteType = notesEnum.C_DIESE;
            break;
        case 5: noteType = notesEnum.D;
            break;
        case 6: noteType = notesEnum.E_BEMOLLE;
            break;
        case 7: noteType = notesEnum.E;
            break;
        case 8: noteType = notesEnum.F;
            break;
        case 9: noteType = notesEnum.F_DIESE;
            break;
        case 10: noteType = notesEnum.G;
            break;
        case 11: noteType = notesEnum.G_DIESE;
            break;
    }
}