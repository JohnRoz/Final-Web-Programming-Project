var chordType;
var currentChord;
var isClicked = false;

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


function setRandomMajorChordAsResource(){

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
        isClicked = false;
        document.getElementById("correct").style.visibility = "visible";
    }

    else
        document.getElementById("wrong").style.visibility = "visible";
}

function checkMinAnswer() {
    hideCorrectAndWrongHeaders();

    if (chordType == chordTypeEnum.MINOR) {
        isClicked = false;
        document.getElementById("correct").style.visibility = "visible";
    }

    else
        document.getElementById("wrong").style.visibility = "visible";
}

function checkDimAnswer() {
    hideCorrectAndWrongHeaders();

    if (chordType == chordTypeEnum.DIMINISHED) {
        isClicked = false;
        document.getElementById("correct").style.visibility = "visible";
    }

    else
        document.getElementById("wrong").style.visibility = "visible";
}

function checkAugAnswer() {
    hideCorrectAndWrongHeaders();

    if (chordType == chordTypeEnum.AUGMENTED) {
        isClicked = false;
        document.getElementById("correct").style.visibility = "visible";
    }

    else
        document.getElementById("wrong").style.visibility = "visible";

}

function hideCorrectAndWrongHeaders() {
    document.getElementById("correct").style.visibility = "hidden";
    document.getElementById("wrong").style.visibility = "hidden";
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