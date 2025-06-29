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

            EscapeKey { padding: 0 }
            CharKey { label: "q"; shifted: "Q"; extended: ["1"]; extendedShifted: ["1"] }
            CharKey { label: "w"; shifted: "W"; extended: ["2"]; extendedShifted: ["2"] }
            CharKey { label: "e"; shifted: "E"; extended: ["3", "è", "é", "ë", "ê", "€"]; extendedShifted: ["3", "È","É", "Ë", "Ê", "€"] }
            CharKey { label: "r"; shifted: "R"; extended: ["4"]; extendedShifted: ["4"] }
            CharKey { label: "t"; shifted: "T"; extended: ["5", "þ"]; extendedShifted: ["5", "Þ"] }
            CharKey { label: "z"; shifted: "Z"; extended: ["6"]; extendedShifted: ["6"] }
            CharKey { label: "u"; shifted: "U"; extended: ["7", "ü","ù","ú","û"]; extendedShifted: ["7", "Ü","Ù","Ú","Û"] }
            CharKey { label: "i"; shifted: "I"; extended: ["8", "ì","í","î","ï","ı"]; extendedShifted: ["8", "Ì","Í","Î","Ï","İ"] }
            CharKey { label: "o"; shifted: "O"; extended: ["9", "ö","ò","ó","ô","õ","ø"]; extendedShifted: ["9", "Ö","Ò","Ó","Ô","Õ","Ø"] }
            CharKey { label: "p"; shifted: "P"; extended: ["0"]; extendedShifted: ["0"] }
            CharKey { label: "ü"; shifted: "Ü"; }
        }

        Row {
            anchors.horizontalCenter: parent.horizontalCenter;
            spacing: 0

            TabKey { padding: 0 }
            CharKey { label: "a"; shifted: "A"; extended: ["ä","à","á","ã","â","å","æ"]; extendedShifted: ["Ä","À","Â","Á","Ã","Å","Æ"] }
            CharKey { label: "s"; shifted: "S"; extended: ["ß","ş","$"]; extendedShifted: ["ẞ","Ş","$"] }
            CharKey { label: "d"; shifted: "D"; }
            CharKey { label: "f"; shifted: "F"; }
            CharKey { label: "g"; shifted: "G"; extended: ["ğ"]; extendedShifted: ["Ğ"]; }
            CharKey { label: "h"; shifted: "H"; }
            CharKey { label: "j"; shifted: "J"; }
            CharKey { label: "k"; shifted: "K"; }
            CharKey { label: "l"; shifted: "L"; extended: ["ł","£"]; extendedShifted: ["Ł","£"] }
            CharKey { label: "ö"; shifted: "Ö"; }
            CharKey { label: "ä"; shifted: "Ä"; }
        }

        Row {
            anchors.horizontalCenter: parent.horizontalCenter;
            spacing: 0

            ShiftKey { padding: 0 }
            CharKey { label: "y"; shifted: "Y"; extended: ["ÿ","¥"]; extendedShifted: ["Ÿ","¥"] }
            CharKey { label: "x"; shifted: "X"; }
            CharKey { label: "c"; shifted: "C"; extended: ["ç","¢"]; extendedShifted: ["Ç","¢"] }
            CharKey { label: "v"; shifted: "V"; }
            CharKey { label: "b"; shifted: "B"; }
            CharKey { label: "n"; shifted: "N"; extended: ["ñ"]; extendedShifted: ["Ñ"] }
            CharKey { label: "m"; shifted: "M"; }
            CharKey { label: ","; shifted: ","; extended: ["'", "\"", ";", ":", "@", "&", "(", ")"]; extendedShifted: ["'", "\"", ";", ":", "@", "&", "(", ")"]; }
            CharKey { label: "."; shifted: "."; extended: ["?", "-", "_", "!", "+", "%","#","/"]; extendedShifted: ["?", "-", "_", "!", "+", "%","#","/"]; }
            CharKey { label: "-"; shifted: "-"; extended: ["_"]; extendedShifted: ["_"]; }
            BackspaceKey { padding: 0 }
        }

        Item {
            anchors.left: parent.left
            anchors.right: parent.right

            height: panel.keyHeight + Device.row_margin;

            ControlKey     { id: controlKey; label: "strg"; shifted: "strg"; anchors.left: parent.left; height: parent.height; }
            SymbolShiftKey { id: symShiftKey; anchors.left: controlKey.right; height: parent.height; }
            LanguageKey    { id: languageMenuButton; anchors.left: symShiftKey.right; height: parent.height; }
            SpaceKey       { id: spaceKey; anchors.left: languageMenuButton.right; anchors.right: enterKey.left; noMagnifier: true; height: parent.height; }
            ReturnKey      { id: enterKey; anchors.right: parent.right; height: parent.height; }
        }
    } // column
}
