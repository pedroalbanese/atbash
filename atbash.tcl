set plaintext [gets stdin]
set ciphertext ""

foreach letter [split $plaintext ""] {
    if {[string is alpha $letter]} {
        if {[string is upper $letter]} {
            set ascii_offset 65
        } else {
            set ascii_offset 97
        }
        set distance_from_a [expr {[scan $letter %c]-$ascii_offset}]
        set new_char [format %c [expr {$ascii_offset + 25 - $distance_from_a}]]
        append ciphertext $new_char
    } else {
        append ciphertext $letter
    }
}

puts $ciphertext