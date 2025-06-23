/*
 * Copyright 2013 Canonical Ltd.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; version 3.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.4

import MaliitKeyboard 2.0

import keys 1.0

KeyPad {
    anchors.fill: parent

    content: c1
    symbols: "languages/Keyboard_symbols.qml"

    Column {
        id: c1
        anchors.fill: parent
        spacing: 0

        Row {
            anchors.horizontalCenter: parent.horizontalCenter;
            spacing: 0

            CharKey { label: "q"; shifted: "Q"; extended: ["%", "1"]; extendedShifted: ["%", "1"]; leftSide: true; }
            CharKey { label: "w"; shifted: "W"; extended: ["\"", "2"]; extendedShifted: ["\"", "2"] }
            CharKey { label: "e"; shifted: "E"; extended: ["|", "3", "ę"]; extendedShifted: ["|", "3", "Ę"] }
            CharKey { label: "r"; shifted: "R"; extended: ["=", "4"]; extendedShifted: ["=", "4"] }
            CharKey { label: "t"; shifted: "T"; extended: ["[", "5"]; extendedShifted: ["[", "5"] }
            CharKey { label: "y"; shifted: "Y"; extended: ["]", "6"]; extendedShifted: ["]", "6"] }
            CharKey { label: "u"; shifted: "U"; extended: ["<", "7"]; extendedShifted: ["<", "7"] }
            CharKey { label: "i"; shifted: "I"; extended: [">", "8"]; extendedShifted: [">", "8"] }
            CharKey { label: "o"; shifted: "O"; extended: ["{", "9", "ó"]; extendedShifted: ["{", "9", "Ó"] }
            CharKey { label: "p"; shifted: "P"; extended: ["}", "0"]; extendedShifted: ["}", "0"]; rightSide: true; }
        }

        Row {
            anchors.horizontalCenter: parent.horizontalCenter;
            spacing: 0

            CharKey { label: "a"; shifted: "A"; extended: ["@", "ą"]; extendedShifted: ["@", "Ą"]; leftSide: true; }
            CharKey { label: "s"; shifted: "S"; extended: ["#", "ś"]; extendedShifted: ["#", "Ś"] }
            CharKey { label: "d"; shifted: "D"; extended: ["$"]; extendedShifted: ["$"] }
            CharKey { label: "f"; shifted: "F"; extended: ["_"]; extendedShifted: ["_"] }
            CharKey { label: "g"; shifted: "G"; extended: ["&"]; extendedShifted: ["&"] }
            CharKey { label: "h"; shifted: "H"; extended: ["-"]; extendedShifted: ["-"] }
            CharKey { label: "j"; shifted: "J"; extended: ["+"]; extendedShifted: ["+"] }
            CharKey { label: "k"; shifted: "K"; extended: ["("]; extendedShifted: ["("] }
            CharKey { label: "l"; shifted: "L"; extended: [")", "ł"]; extendedShifted: [")", "Ł"]; rightSide: true; }
        }

        Row {
            anchors.horizontalCenter: parent.horizontalCenter;
            spacing: 0

            ShiftKey {}
            CharKey { label: "z"; shifted: "Z"; extended: ["*", "ż", "ź"]; extendedShifted: ["*", "Ż", "Ź"] }
            CharKey { label: "x"; shifted: "X"; extended: ["\""]; extendedShifted: ["\""] }
            CharKey { label: "c"; shifted: "C"; extended: ["'", "ć"]; extendedShifted: ["'", "Ć"] }
            CharKey { label: "v"; shifted: "V"; extended: [":"]; extendedShifted: [":"] }
            CharKey { label: "b"; shifted: "B"; extended: [";"]; extendedShifted: [";"] }
            CharKey { label: "n"; shifted: "N"; extended: ["!", "ń"]; extendedShifted: ["!", "Ń"] }
            CharKey { label: "m"; shifted: "M"; extended: ["?"]; extendedShifted: ["?"] }
            BackspaceKey {}
        }

        Item {
            anchors.left: parent.left
            anchors.right: parent.right

            height: panel.keyHeight + Device.row_margin;

            SymbolShiftKey { id: symShiftKey;                            anchors.left: parent.left; height: parent.height; }
            LanguageKey    { id: languageMenuButton;                     anchors.left: symShiftKey.right; height: parent.height; }
            LeftKey        { id: leftKey                                 anchors.left: languageMenuButton.right; height: parent.height; }
            UpKey          { id: upKey                                   anchors.left: leftKey.right; height: parent.height; }
            SpaceKey       { id: spaceKey;                               anchors.left: upKey.right; anchors.right: rightKey.left; noMagnifier: true; height: parent.height; }
            RightKey       { id: rightKey                                anchors.left: spaceKey.right; height: parent.height; }
            DownKey        { id: downKey                                 anchors.left: rightKey.right; height: parent.height; }
            ReturnKey      { id: enterKey;                               anchors.right: parent.right; height: parent.height; }
        }
    } // column
}
