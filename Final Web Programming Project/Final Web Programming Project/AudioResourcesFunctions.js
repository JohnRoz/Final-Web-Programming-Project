﻿//CHORDS

function get_aug_chords() {
    var augChords = [];
    for (var i = 1; i <= 41; i++)
        augChords.push("Resources/aug_chord_" + i + ".wav");
    return augChords;
}

function get_dim_chords() {
    var dimChords = [];
    for (var i = 1; i <= 43; i++)
        dimChords.push("Resources/dim_chord_" + i + ".wav");
    return dimChords;
}

function get_maj_chords() {
    var majChords = [];
    for (var i = 1; i <= 24; i++)
        majChords.push("Resources/maj_chord_" + i + ".wav");
    return majChords;
}

function get_min_chords() {
    var minChords = [];
    for (var i = 1; i <= 24; i++)
        minChords.push("Resources/min_chord_" + i + ".wav");
    return minChords;
}

function get_all_chords() {
    augChords = get_aug_chords();
    dimChords = get_dim_chords();
    majChords = get_maj_chords();
    minChords = get_min_chords();

    return augChords.concat(dimChords, majChords, minChords);
}

//NOTES

function get_A_notes() {
    var A_notes_list = [];
    for (var i = 1; i <= 6; i++)
        A_notes_list.push("Resources/a_note_" + i + ".wav");
    return A_notes_list;
}

function get_B_bemolle_notes() {
    var B_bemolle_notes_list = [];
    for (var i = 1; i <= 5; i++)
        B_bemolle_notes_list.push("Resources/b_bemolle_note_" + i + ".wav");
    return B_bemolle_notes_list;
}

function get_B_notes() {
    var B_notes_list = [];
    for (var i = 1; i <= 5; i++)
        B_notes_list.push("Resources/b_note_" + i + ".wav");
    return B_notes_list;
}

function get_C_notes() {
    var C_notes_list = [];
    for (var i = 1; i <= 6; i++)
        C_notes_list.push("Resources/c_note_" + i + ".wav");
    return C_notes_list;
}

function get_C_diese_notes() {
    var C_diese_notes_list = [];
    for (var i = 1; i <= 4; i++)
        C_diese_notes_list.push("Resources/c_diese_note_" + i + ".wav");
    return C_diese_notes_list;
}

function get_D_notes() {
    var D_notes_list = [];
    for (var i = 1; i <= 4; i++)
        D_notes_list.push("Resources/d_note_" + i + ".wav");
    return D_notes_list;
}

function get_E_bemolle_notes() {
    var E_bemolle_notes_list = [];
    for (var i = 1; i <= 4; i++)
        E_bemolle_notes_list.push("Resources/e_bemolle_note_" + i + ".wav");
    return E_bemolle_notes_list;
}

function get_E_notes() {
    var E_notes_list = [];
    for (var i = 1; i <= 4; i++)
        E_notes_list.push("Resources/e_note_" + i + ".wav");
    return E_notes_list;
}

function get_F_notes() {
    var F_notes_list = [];
    for (var i = 1; i <= 5; i++)
        F_notes_list.push("Resources/f_note_" + i + ".wav");
    return F_notes_list;
}

function get_F_diese_notes() {
    var F_diese_notes_list = [];
    for (var i = 1; i <= 5; i++)
        F_diese_notes_list.push("Resources/f_diese_note_" + i + ".wav");
    return F_diese_notes_list;
}

function get_G_notes() {
    var G_notes_list = [];
    for (var i = 1; i <= 5; i++)
        G_notes_list.push("Resources/g_note_" + i + ".wav");
    return G_notes_list;
}

function get_G_diese_notes() {
    var G_diese_notes_list = [];
    for (var i = 1; i <= 5; i++)
        G_diese_notes_list.push("Resources/g_diese_note_" + i + ".wav");
    return G_diese_notes_list;
}

function get_all_notes() {
    A = get_A_notes();
    bB = get_B_bemolle_notes();
    B = get_B_notes();
    C = get_C_notes();
    Cd = get_C_diese_notes();
    D = get_D_notes();
    bE = get_E_bemolle_notes();
    E = get_E_notes();
    F = get_F_notes();
    Fd = get_F_diese_notes();
    G = get_G_notes();
    Gd = get_G_diese_notes();

    return A.concat(bB, B, C, Cd, D, bE, E, F, Fd, G, Gd);
}

function getRndInteger(min, max) {
    // This function return a random number between min (included) and max (excluded)
    return Math.floor(Math.random() * (max - min)) + min;
}

/**
* This method is to play the 'wrong_sound' mp3 file every time the user makes a mistake.
* audioTagID - is the ID of the audio tag that is supposed to play the 'wrong_sound'.
*/
function playWrongSound(audioTagID) {
    $("#" + audioTagID).setAttribute("src", "Res/wrong_sound.mp3");
    $("#" + audioTagID).play();
}