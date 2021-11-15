import Carbon.HIToolbox.Events

// copied from the "header" above
public enum KeyCode: UInt16, Equatable, Hashable {
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
        case ._0, .keypad0: return 0
        case ._1, .keypad1: return 1
        case ._2, .keypad2: return 2
        case ._3, .keypad3: return 3
        case ._4, .keypad4: return 4
        case ._5, .keypad5: return 5
        case ._6, .keypad6: return 6
        case ._7, .keypad7: return 7
        case ._8, .keypad8: return 8
        case ._9, .keypad9: return 9
        default: return nil
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
        switch kc {
        case kVK_ANSI_A: self = .a
        case kVK_ANSI_S: self = .s
        case kVK_ANSI_D: self = .d
        case kVK_ANSI_F: self = .f
        case kVK_ANSI_H: self = .h
        case kVK_ANSI_G: self = .g
        case kVK_ANSI_Z: self = .z
        case kVK_ANSI_X: self = .x
        case kVK_ANSI_C: self = .c
        case kVK_ANSI_V: self = .v
        case kVK_ANSI_B: self = .b
        case kVK_ANSI_Q: self = .q
        case kVK_ANSI_W: self = .w
        case kVK_ANSI_E: self = .e
        case kVK_ANSI_R: self = .r
        case kVK_ANSI_Y: self = .y
        case kVK_ANSI_T: self = .t
        case kVK_ANSI_1: self = ._1
        case kVK_ANSI_2: self = ._2
        case kVK_ANSI_3: self = ._3
        case kVK_ANSI_4: self = ._4
        case kVK_ANSI_6: self = ._6
        case kVK_ANSI_5: self = ._5
        case kVK_ANSI_Equal: self = .equal
        case kVK_ANSI_9: self = ._9
        case kVK_ANSI_7: self = ._7
        case kVK_ANSI_Minus: self = .minus
        case kVK_ANSI_8: self = ._8
        case kVK_ANSI_0: self = ._0
        case kVK_ANSI_RightBracket: self = .rightBracket
        case kVK_ANSI_O: self = .o
        case kVK_ANSI_U: self = .u
        case kVK_ANSI_LeftBracket: self = .leftBracket
        case kVK_ANSI_I: self = .i
        case kVK_ANSI_P: self = .p
        case kVK_ANSI_L: self = .l
        case kVK_ANSI_J: self = .j
        case kVK_ANSI_Quote: self = .quote
        case kVK_ANSI_K: self = .k
        case kVK_ANSI_Semicolon: self = .semicolon
        case kVK_ANSI_Backslash: self = .backslash
        case kVK_ANSI_Comma: self = .comma
        case kVK_ANSI_Slash: self = .slash
        case kVK_ANSI_N: self = .n
        case kVK_ANSI_M: self = .m
        case kVK_ANSI_Period: self = .period
        case kVK_ANSI_Grave: self = .grave
        case kVK_ANSI_KeypadDecimal: self = .keypadDecimal
        case kVK_ANSI_KeypadMultiply: self = .keypadMultiply
        case kVK_ANSI_KeypadPlus: self = .keypadPlus
        case kVK_ANSI_KeypadClear: self = .keypadClear
        case kVK_ANSI_KeypadDivide: self = .keypadDivide
        case kVK_ANSI_KeypadEnter: self = .keypadEnter
        case kVK_ANSI_KeypadMinus: self = .keypadMinus
        case kVK_ANSI_KeypadEquals: self = .keypadEquals
        case kVK_ANSI_Keypad0: self = .keypad0
        case kVK_ANSI_Keypad1: self = .keypad1
        case kVK_ANSI_Keypad2: self = .keypad2
        case kVK_ANSI_Keypad3: self = .keypad3
        case kVK_ANSI_Keypad4: self = .keypad4
        case kVK_ANSI_Keypad5: self = .keypad5
        case kVK_ANSI_Keypad6: self = .keypad6
        case kVK_ANSI_Keypad7: self = .keypad7
        case kVK_ANSI_Keypad8: self = .keypad8
        case kVK_ANSI_Keypad9: self = .keypad9
        case kVK_Return: self = .`return`
        case kVK_Tab: self = .tab
        case kVK_Space: self = .space
        case kVK_Delete: self = .delete
        case kVK_Escape: self = .escape
        case kVK_Command: self = .command
        case kVK_Shift: self = .shift
        case kVK_CapsLock: self = .capsLock
        case kVK_Option: self = .option
        case kVK_Control: self = .control
        case kVK_RightCommand: self = .rightCommand
        case kVK_RightShift: self = .rightShift
        case kVK_RightOption: self = .rightOption
        case kVK_RightControl: self = .rightControl
        case kVK_Function: self = .`function`
        case kVK_F17: self = .f17
        case kVK_VolumeUp: self = .volumeUp
        case kVK_VolumeDown: self = .volumeDown
        case kVK_Mute: self = .mute
        case kVK_F18: self = .f18
        case kVK_F19: self = .f19
        case kVK_F20: self = .f20
        case kVK_F5: self = .f5
        case kVK_F6: self = .f6
        case kVK_F7: self = .f7
        case kVK_F3: self = .f3
        case kVK_F8: self = .f8
        case kVK_F9: self = .f9
        case kVK_F11: self = .f11
        case kVK_F13: self = .f13
        case kVK_F16: self = .f16
        case kVK_F14: self = .f14
        case kVK_F10: self = .f10
        case kVK_F12: self = .f12
        case kVK_F15: self = .f15
        case kVK_Help: self = .help
        case kVK_Home: self = .home
        case kVK_PageUp: self = .pageUp
        case kVK_ForwardDelete: self = .forwardDelete
        case kVK_F4: self = .f4
        case kVK_End: self = .end
        case kVK_F2: self = .f2
        case kVK_PageDown: self = .pageDown
        case kVK_F1: self = .f1
        case kVK_LeftArrow: self = .leftArrow
        case kVK_RightArrow: self = .rightArrow
        case kVK_DownArrow: self = .downArrow
        case kVK_UpArrow: self = .upArrow
        default:
            fatalError("unrecognized keycode \(kc)")
        }
    }
}


import Cocoa

extension NSEvent {
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
