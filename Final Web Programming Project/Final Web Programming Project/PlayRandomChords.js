var chordType;
var currentChord;
var isClicked = false;
var wrongAnswersCounter = 0;
var XP_ADDITION_FOR_CHORDS = 5;
ID_OF_USER_ANSWER_AUDIO_TAG = "UserAnswerSound";

$(document).ready(function () {
    hideCorrectAndWrongHeaders();
});


function playRandomChord() {

    hideCorrectAndWrongHeaders();

    if (!isClicked) {
        setChordType();

        switch (chordType) {
            case chordTypeEnum.MAJOR: setRandomMajorChordAsResource();
                break;
            case chordTypeEnum.MINOR: setRandomMinorChordAsResource();
                break;
            case chordTypeEnum.DIMINISHED: setRandomDiminishedChordAsResource();
                break;
            case chordTypeEnum.AUGMENTED: setRandomAugmentedChordAsResource();
                break;
        }

        playChord();

        isClicked = true;
    }
    else
        alert("You have to answer correctly first.");
}

function playChord() {
    if (currentChord != undefined && currentChord != null && chordType != undefined && chordType != null) {
        document.getElementById("audio").play();
    }
    else
        alert("You have to play something first in order to replay it.");
}


function setRandomMajorChordAsResource() {

    var majChords = get_maj_chords();
    currentChord = majChords[getRndInteger(0, majChords.length)];

    document.getElementById("audio").setAttribute("src", currentChord);
}

function setRandomMinorChordAsResource() {

    var minChords = get_min_chords();
    currentChord = minChords[getRndInteger(0, minChords.length)];

    document.getElementById("audio").setAttribute("src", currentChord);
}

function setRandomDiminishedChordAsResource() {

    var dimChords = get_dim_chords();
    currentChord = dimChords[getRndInteger(0, dimChords.length)];

    document.getElementById("audio").setAttribute("src", currentChord);
}

function setRandomAugmentedChordAsResource() {

    var augChords = get_aug_chords();
    currentChord = augChords[getRndInteger(0, augChords.length)];

    document.getElementById("audio").setAttribute("src", currentChord);
}

function checkMajAnswer() {
    hideCorrectAndWrongHeaders();

    if (chordType == chordTypeEnum.MAJOR) {
        document.getElementById("correct").style.visibility = "visible";
        gainXP();
        isClicked = false;
    }

    else {
        document.getElementById("wrong").style.visibility = "visible";
        wrongAnswersCounter++;
        playWrongSound(ID_OF_USER_ANSWER_AUDIO_TAG);
        checkGameOver();
    }
}

function checkMinAnswer() {
    hideCorrectAndWrongHeaders();

    if (chordType == chordTypeEnum.MINOR) {

        document.getElementById("correct").style.visibility = "visible";
        gainXP();
        isClicked = false;
    }

    else {
        document.getElementById("wrong").style.visibility = "visible";
        wrongAnswersCounter++;
        playWrongSound(ID_OF_USER_ANSWER_AUDIO_TAG);
        checkGameOver();
    }
}

function checkDimAnswer() {
    hideCorrectAndWrongHeaders();

    if (chordType == chordTypeEnum.DIMINISHED) {
        document.getElementById("correct").style.visibility = "visible";
        gainXP();
        isClicked = false;
    }

    else {
        document.getElementById("wrong").style.visibility = "visible";
        wrongAnswersCounter++;
        playWrongSound(ID_OF_USER_ANSWER_AUDIO_TAG);
        checkGameOver();
    }
}

function checkAugAnswer() {
    hideCorrectAndWrongHeaders();

    if (chordType == chordTypeEnum.AUGMENTED) {
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

function checkGameOver() {
    switch (wrongAnswersCounter) {
        case 1: document.getElementById("LifeIcon1").setAttribute("src", "Res/x_icon.png");
            break;
        case 2: document.getElementById("LifeIcon2").setAttribute("src", "Res/x_icon.png");
            break;
        case 3: document.getElementById("LifeIcon3").setAttribute("src", "Res/x_icon.png");
            break;
        default: //GAME OVER!
            break;
    }
}

function hideCorrectAndWrongHeaders() {
    document.getElementById("correct").style.visibility = "hidden";
    document.getElementById("wrong").style.visibility = "hidden";
}

function gainXP() {
    if (isClicked) {
        var currentXP = $("#CurrentXP").html().replace("XP: +", "");
        var XP = parseInt(currentXP) + XP_ADDITION_FOR_CHORDS;
        $("#CurrentXP").html("XP: + " + XP.toString());
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
var chordTypeEnum = {
    MAJOR: 0,
    MINOR: 1,
    DIMINISHED: 2,
    AUGMENTED: 3
};

function setChordType() {
    var rndNum = getRndInteger(0, 4);
    switch (rndNum) {
        case 0: chordType = chordTypeEnum.MAJOR;
            break;
        case 1: chordType = chordTypeEnum.MINOR;
            break;
        case 2: chordType = chordTypeEnum.DIMINISHED;
            break;
        case 3: chordType = chordTypeEnum.AUGMENTED;
            break;
    }
}