# Atbash Cipher
### Low-Tech Encryption Scheme
<div align="center">
 <img src="atbash.png" width="25%" height="25%"></img>
</div>

Atbash (Hebrew: אתבש; also transliterated Atbaš) is a monoalphabetic substitution cipher originally used to encrypt the Hebrew alphabet. It can be modified for use with any known writing system with a standard collating order.

The Atbash cipher is a particular type of monoalphabetic cipher formed by taking the alphabet (or abjad, syllabary, etc.) and mapping it to its reverse, so that the first letter becomes the last letter, the second letter becomes the second to last letter, and so on. For example, the Latin alphabet would work like this:

<pre>
Plain  A B C D E F G H I J K L M N O P Q R S T U V W X Y Z
Cipher Z Y X W V U T S R Q P O N M L K J I H G F E D C B A
</pre>

Due to the fact that there is only one way to perform this, the Atbash cipher provides no communications security, as it lacks any sort of key. If multiple collating orders are available, which one was used in encryption can be used as a key, but this does not provide significantly more security, considering that only a few letters can give away which one was used. 
