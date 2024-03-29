import Carbon.HIToolbox.Events

// copied from the "header" above
public enum KeyCode: UInt16, Equatable, Hashable, CaseIterable, RawRepresentable, Codable {
    case a,
         s,
         d,
         f,
         h,
         g,
         z,
         x,
         c,
         v,
         b,
         q,
         w,
         e,
         r,
         y,
         t,
         _1,
         _2,
         _3,
         _4,
         _6,
         _5,
         equal,
         _9,
         _7,
         minus,
         _8,
         _0,
         rightBracket,
         o,
         u,
         leftBracket,
         i,
         p,
         l,
         j,
         quote,
         k,
         semicolon,
         backslash,
         comma,
         slash,
         n,
         m,
         period,
         grave,
         keypadDecimal,
         keypadMultiply,
         keypadPlus,
         keypadClear,
         keypadDivide,
         keypadEnter,
         keypadMinus,
         keypadEquals,
         keypad0,
         keypad1,
         keypad2,
         keypad3,
         keypad4,
         keypad5,
         keypad6,
         keypad7,
         keypad8,
         keypad9,
         `return`,
         tab,
         space,
         delete,
         escape,
         command,
         shift,
         capsLock,
         option,
         control,
         rightCommand,
         rightShift,
         rightOption,
         rightControl,
         `function`,
         f17,
         volumeUp,
         volumeDown,
         mute,
         f18,
         f19,
         f20,
         f5,
         f6,
         f7,
         f3,
         f8,
         f9,
         f11,
         f13,
         f16,
         f14,
         f10,
         f12,
         f15,
         help,
         home,
         pageUp,
         forwardDelete,
         f4,
         end,
         f2,
         pageDown,
         f1,
         leftArrow,
         rightArrow,
         downArrow,
         upArrow
}

extension KeyCode {
    public var number: Int? {
        switch self {
        case ._0, .keypad0: 0
        case ._1, .keypad1: 1
        case ._2, .keypad2: 2
        case ._3, .keypad3: 3
        case ._4, .keypad4: 4
        case ._5, .keypad5: 5
        case ._6, .keypad6: 6
        case ._7, .keypad7: 7
        case ._8, .keypad8: 8
        case ._9, .keypad9: 9
        default: nil
        }
    }
}

extension KeyCode: Comparable {
    public static func <(lhs: Self, rhs: Self) -> Bool {
        lhs.rawValue < rhs.rawValue
    }
}

extension KeyCode {
    public init(kc: Int) {
        self = switch kc {
        case kVK_ANSI_A: .a
        case kVK_ANSI_S: .s
        case kVK_ANSI_D: .d
        case kVK_ANSI_F: .f
        case kVK_ANSI_H: .h
        case kVK_ANSI_G: .g
        case kVK_ANSI_Z: .z
        case kVK_ANSI_X: .x
        case kVK_ANSI_C: .c
        case kVK_ANSI_V: .v
        case kVK_ANSI_B: .b
        case kVK_ANSI_Q: .q
        case kVK_ANSI_W: .w
        case kVK_ANSI_E: .e
        case kVK_ANSI_R: .r
        case kVK_ANSI_Y: .y
        case kVK_ANSI_T: .t
        case kVK_ANSI_1: ._1
        case kVK_ANSI_2: ._2
        case kVK_ANSI_3: ._3
        case kVK_ANSI_4: ._4
        case kVK_ANSI_6: ._6
        case kVK_ANSI_5: ._5
        case kVK_ANSI_Equal: .equal
        case kVK_ANSI_9: ._9
        case kVK_ANSI_7: ._7
        case kVK_ANSI_Minus: .minus
        case kVK_ANSI_8: ._8
        case kVK_ANSI_0: ._0
        case kVK_ANSI_RightBracket: .rightBracket
        case kVK_ANSI_O: .o
        case kVK_ANSI_U: .u
        case kVK_ANSI_LeftBracket: .leftBracket
        case kVK_ANSI_I: .i
        case kVK_ANSI_P: .p
        case kVK_ANSI_L: .l
        case kVK_ANSI_J: .j
        case kVK_ANSI_Quote: .quote
        case kVK_ANSI_K: .k
        case kVK_ANSI_Semicolon: .semicolon
        case kVK_ANSI_Backslash: .backslash
        case kVK_ANSI_Comma: .comma
        case kVK_ANSI_Slash: .slash
        case kVK_ANSI_N: .n
        case kVK_ANSI_M: .m
        case kVK_ANSI_Period: .period
        case kVK_ANSI_Grave: .grave
        case kVK_ANSI_KeypadDecimal: .keypadDecimal
        case kVK_ANSI_KeypadMultiply: .keypadMultiply
        case kVK_ANSI_KeypadPlus: .keypadPlus
        case kVK_ANSI_KeypadClear: .keypadClear
        case kVK_ANSI_KeypadDivide: .keypadDivide
        case kVK_ANSI_KeypadEnter: .keypadEnter
        case kVK_ANSI_KeypadMinus: .keypadMinus
        case kVK_ANSI_KeypadEquals: .keypadEquals
        case kVK_ANSI_Keypad0: .keypad0
        case kVK_ANSI_Keypad1: .keypad1
        case kVK_ANSI_Keypad2: .keypad2
        case kVK_ANSI_Keypad3: .keypad3
        case kVK_ANSI_Keypad4: .keypad4
        case kVK_ANSI_Keypad5: .keypad5
        case kVK_ANSI_Keypad6: .keypad6
        case kVK_ANSI_Keypad7: .keypad7
        case kVK_ANSI_Keypad8: .keypad8
        case kVK_ANSI_Keypad9: .keypad9
        case kVK_Return: .`return`
        case kVK_Tab: .tab
        case kVK_Space: .space
        case kVK_Delete: .delete
        case kVK_Escape: .escape
        case kVK_Command: .command
        case kVK_Shift: .shift
        case kVK_CapsLock: .capsLock
        case kVK_Option: .option
        case kVK_Control: .control
        case kVK_RightCommand: .rightCommand
        case kVK_RightShift: .rightShift
        case kVK_RightOption: .rightOption
        case kVK_RightControl: .rightControl
        case kVK_Function: .`function`
        case kVK_F17: .f17
        case kVK_VolumeUp: .volumeUp
        case kVK_VolumeDown: .volumeDown
        case kVK_Mute: .mute
        case kVK_F18: .f18
        case kVK_F19: .f19
        case kVK_F20: .f20
        case kVK_F5: .f5
        case kVK_F6: .f6
        case kVK_F7: .f7
        case kVK_F3: .f3
        case kVK_F8: .f8
        case kVK_F9: .f9
        case kVK_F11: .f11
        case kVK_F13: .f13
        case kVK_F16: .f16
        case kVK_F14: .f14
        case kVK_F10: .f10
        case kVK_F12: .f12
        case kVK_F15: .f15
        case kVK_Help: .help
        case kVK_Home: .home
        case kVK_PageUp: .pageUp
        case kVK_ForwardDelete: .forwardDelete
        case kVK_F4: .f4
        case kVK_End: .end
        case kVK_F2: .f2
        case kVK_PageDown: .pageDown
        case kVK_F1: .f1
        case kVK_LeftArrow: .leftArrow
        case kVK_RightArrow: .rightArrow
        case kVK_DownArrow: .downArrow
        case kVK_UpArrow: .upArrow
        default:
            fatalError("unrecognized keycode \(kc)")
        }
    }
}


import Cocoa

extension NSEvent {
    @inlinable
    public var logicalKeyCode: KeyCode {
        KeyCode(kc: Int(self.keyCode))
    }
}

//public enum KeyCode : UInt16 {
//
//    case A                    = 0x00,
//         S                    = 0x01,
//         D                    = 0x02,
//         F                    = 0x03,
//         H                    = 0x04,
//         G                    = 0x05,
//         Z                    = 0x06,
//         X                    = 0x07,
//         C                    = 0x08,
//         V                    = 0x09,
//         B                    = 0x0B,
//         Q                    = 0x0C,
//         W                    = 0x0D,
//         E                    = 0x0E,
//         R                    = 0x0F,
//         Y                    = 0x10,
//         T                    = 0x11,
//         k1                    = 0x12,
//         k2                    = 0x13,
//         k3                    = 0x14,
//         k4                    = 0x15,
//         k6                    = 0x16,
//         k5                    = 0x17,
//         Equal                = 0x18,
//         k9                    = 0x19,
//         k7                    = 0x1A,
//         Minus                = 0x1B,
//         k8                    = 0x1C,
//         k0                    = 0x1D,
//         RightBracket         = 0x1E,
//         O                    = 0x1F,
//         U                    = 0x20,
//         LeftBracket          = 0x21,
//         I                    = 0x22,
//         P                    = 0x23,
//         L                    = 0x25,
//         J                    = 0x26,
//         Quote                = 0x27,
//         K                    = 0x28,
//         Semicolon            = 0x29,
//         Backslash            = 0x2A,
//         Comma                = 0x2B,
//         Slash                = 0x2C,
//         N                    = 0x2D,
//         M                    = 0x2E,
//         Period               = 0x2F,
//         Grave                = 0x32,
//         KeypadDecimal        = 0x41,
//         KeypadMultiply       = 0x43,
//         KeypadPlus           = 0x45,
//         KeypadClear          = 0x47,
//         KeypadDivide         = 0x4B,
//         KeypadEnter          = 0x4C,
//         KeypadMinus          = 0x4E,
//         KeypadEquals         = 0x51,
//         Keypad0              = 0x52,
//         Keypad1              = 0x53,
//         Keypad2              = 0x54,
//         Keypad3              = 0x55,
//         Keypad4              = 0x56,
//         Keypad5              = 0x57,
//         Keypad6              = 0x58,
//         Keypad7              = 0x59,
//         Keypad8              = 0x5B,
//         Keypad9              = 0x5C,
//         Return                    = 0x24,
//         Tab                       = 0x30,
//         Space                     = 0x31,
//         Delete                    = 0x33,
//         Escape                    = 0x35,
//         Command                   = 0x37,
//         Shift                     = 0x38,
//         CapsLock                  = 0x39,
//         Option                    = 0x3A,
//         Control                   = 0x3B,
//         RightShift                = 0x3C,
//         RightOption               = 0x3D,
//         RightControl              = 0x3E,
//         Function                  = 0x3F,
//         F17                       = 0x40,
//         VolumeUp                  = 0x48,
//         VolumeDown                = 0x49,
//         Mute                      = 0x4A,
//         F18                       = 0x4F,
//         F19                       = 0x50,
//         F20                       = 0x5A,
//         F5                        = 0x60,
//         F6                        = 0x61,
//         F7                        = 0x62,
//         F3                        = 0x63,
//         F8                        = 0x64,
//         F9                        = 0x65,
//         F11                       = 0x67,
//         F13                       = 0x69,
//         F16                       = 0x6A,
//         F14                       = 0x6B,
//         F10                       = 0x6D,
//         F12                       = 0x6F,
//         F15                       = 0x71,
//         Help                      = 0x72,
//         Home                      = 0x73,
//         PageUp                    = 0x74,
//         ForwardDelete             = 0x75,
//         F4                        = 0x76,
//         End                       = 0x77,
//         F2                        = 0x78,
//         PageDown                  = 0x79,
//         F1                        = 0x7A,
//         LeftArrow                 = 0x7B,
//         RightArrow                = 0x7C,
//         DownArrow                 = 0x7D,
//         UpArrow                   = 0x7E
//
//}
